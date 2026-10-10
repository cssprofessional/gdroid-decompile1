package com.gmodvr.flat;

import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import in.dragonbra.javasteam.rpc.service.ContentServerDirectory;
import in.dragonbra.javasteam.rpc.service.PublishedFile;
import in.dragonbra.javasteam.steam.authentication.AuthPollResult;
import in.dragonbra.javasteam.steam.authentication.AuthSessionDetails;
import in.dragonbra.javasteam.steam.authentication.CredentialsAuthSession;
import in.dragonbra.javasteam.steam.authentication.IAuthenticator;
import in.dragonbra.javasteam.steam.cdn.Client;
import in.dragonbra.javasteam.steam.cdn.Server;
import in.dragonbra.javasteam.steam.handlers.steamapps.PICSProductInfo;
import in.dragonbra.javasteam.steam.handlers.steamapps.PICSRequest;
import in.dragonbra.javasteam.steam.handlers.steamapps.SteamApps;
import in.dragonbra.javasteam.steam.handlers.steamapps.callback.DepotKeyCallback;
import in.dragonbra.javasteam.steam.handlers.steamapps.callback.PICSProductInfoCallback;
import in.dragonbra.javasteam.steam.handlers.steamapps.callback.PICSTokensCallback;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.steam.handlers.steamuser.LogOnDetails;
import in.dragonbra.javasteam.steam.handlers.steamuser.SteamUser;
import in.dragonbra.javasteam.steam.handlers.steamuser.callback.LoggedOffCallback;
import in.dragonbra.javasteam.steam.handlers.steamuser.callback.LoggedOnCallback;
import in.dragonbra.javasteam.steam.steamclient.SteamClient;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager;
import in.dragonbra.javasteam.steam.steamclient.callbacks.ConnectedCallback;
import in.dragonbra.javasteam.steam.steamclient.callbacks.DisconnectedCallback;
import in.dragonbra.javasteam.steam.steamclient.configuration.ISteamConfigurationBuilder;
import in.dragonbra.javasteam.steam.steamclient.configuration.SteamConfiguration;
import in.dragonbra.javasteam.types.AsyncJobMultiple;
import in.dragonbra.javasteam.types.ChunkData;
import in.dragonbra.javasteam.types.DepotManifest;
import in.dragonbra.javasteam.types.KeyValue;
import in.dragonbra.javasteam.util.compat.Consumer;
import java.io.Closeable;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes.dex */
final class SteamSession implements AutoCloseable {
    private final Map<Integer, KeyValue> appInfo;
    final SteamApps apps;
    private final Map<String, String> authTokens;
    private final CallbackManager callbacks;
    private final Client cdn;
    final AtomicInteger cdnRetries;
    final SteamClient client;
    private volatile boolean closed;
    private final CompletableFuture<Void> connected;
    private final Set<String> deniedTokens;
    final ContentServerDirectory directory;
    private volatile boolean disconnected;
    final OkHttpClient http;
    private final CompletableFuture<EResult> loggedOn;
    private final AtomicInteger preferredContentServer;
    final PublishedFile published;
    private final Thread pump;
    private List<Server> servers;
    private final List<Closeable> subscriptions;

    public interface CdnRequest<T> {
        T run(Server server, String str) throws Exception;
    }

    public interface Status {
        void show(String str);
    }

    public static final class ConnectionLost extends IOException {
        public ConnectionLost() {
            super("Steam disconnected. Resume to reconnect.");
        }
    }

    public SteamSession() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        this(builder.connectTimeout(20L, timeUnit).readTimeout(45L, timeUnit).callTimeout(75L, timeUnit).followSslRedirects(false).build(), null);
    }

    public SteamSession(final OkHttpClient okHttpClient, List<Server> list) {
        ArrayList arrayList = new ArrayList();
        this.subscriptions = arrayList;
        this.connected = new CompletableFuture<>();
        this.loggedOn = new CompletableFuture<>();
        this.appInfo = new HashMap();
        this.authTokens = new ConcurrentHashMap();
        this.deniedTokens = ConcurrentHashMap.newKeySet();
        this.cdnRetries = new AtomicInteger();
        this.preferredContentServer = new AtomicInteger();
        this.http = okHttpClient;
        this.servers = list == null ? null : new ArrayList(list);
        SteamClient steamClient = new SteamClient(SteamConfiguration.create(new Consumer() { // from class: com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda2
            @Override // in.dragonbra.javasteam.util.compat.Consumer
            public final void accept(Object obj) {
                ((ISteamConfigurationBuilder) obj).withHttpClient(okHttpClient);
            }
        }));
        this.client = steamClient;
        CallbackManager callbackManager = new CallbackManager(steamClient);
        this.callbacks = callbackManager;
        this.apps = (SteamApps) steamClient.getHandler(SteamApps.class);
        SteamUnifiedMessages steamUnifiedMessages = (SteamUnifiedMessages) steamClient.getHandler(SteamUnifiedMessages.class);
        this.directory = (ContentServerDirectory) steamUnifiedMessages.createService(ContentServerDirectory.class);
        this.published = (PublishedFile) steamUnifiedMessages.createService(PublishedFile.class);
        this.cdn = new Client(steamClient);
        arrayList.add(callbackManager.subscribe(ConnectedCallback.class, new Consumer() { // from class: com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda3
            @Override // in.dragonbra.javasteam.util.compat.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$new$1((ConnectedCallback) obj);
            }
        }));
        arrayList.add(callbackManager.subscribe(LoggedOnCallback.class, new Consumer() { // from class: com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda4
            @Override // in.dragonbra.javasteam.util.compat.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$new$2((LoggedOnCallback) obj);
            }
        }));
        arrayList.add(callbackManager.subscribe(DisconnectedCallback.class, new Consumer() { // from class: com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda5
            @Override // in.dragonbra.javasteam.util.compat.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$new$3((DisconnectedCallback) obj);
            }
        }));
        arrayList.add(callbackManager.subscribe(LoggedOffCallback.class, new Consumer() { // from class: com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda6
            @Override // in.dragonbra.javasteam.util.compat.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$new$4((LoggedOffCallback) obj);
            }
        }));
        Thread thread = new Thread(new Runnable() { // from class: com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$5();
            }
        }, "Steam callbacks");
        this.pump = thread;
        thread.setDaemon(true);
        thread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(ConnectedCallback connectedCallback) {
        this.connected.complete(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(LoggedOnCallback loggedOnCallback) {
        this.loggedOn.complete(loggedOnCallback.getResult());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(DisconnectedCallback disconnectedCallback) {
        this.disconnected = true;
        ConnectionLost connectionLost = new ConnectionLost();
        this.connected.completeExceptionally(connectionLost);
        this.loggedOn.completeExceptionally(connectionLost);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(LoggedOffCallback loggedOffCallback) {
        this.disconnected = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5() {
        while (!this.closed) {
            try {
                this.callbacks.runWaitCallbacks(500L);
            } catch (Exception unused) {
                if (this.closed || Thread.currentThread().isInterrupted()) {
                    return;
                }
            }
        }
    }

    public AuthPollResult login(String str, String str2, String str3, boolean z, IAuthenticator iAuthenticator, Status status) throws Exception {
        status.show("Connecting to Steam…");
        this.client.connect();
        await(this.connected, 45);
        AuthPollResult authPollResult = null;
        if (str3 == null || str3.isEmpty()) {
            status.show("Signing in to Steam…");
            AuthSessionDetails authSessionDetails = new AuthSessionDetails();
            authSessionDetails.username = str;
            authSessionDetails.password = str2;
            authSessionDetails.persistentSession = z;
            authSessionDetails.deviceFriendlyName = "GDroid device";
            authSessionDetails.authenticator = iAuthenticator;
            try {
                AuthPollResult authPollResultWaitForCodeOrApproval = waitForCodeOrApproval((CredentialsAuthSession) await(this.client.getAuthentication().beginAuthSessionViaCredentials(authSessionDetails), 60), iAuthenticator, status);
                authSessionDetails.password = null;
                String accountName = authPollResultWaitForCodeOrApproval.getAccountName();
                str3 = authPollResultWaitForCodeOrApproval.getRefreshToken();
                authPollResult = authPollResultWaitForCodeOrApproval;
                str = accountName;
            } catch (Throwable th) {
                authSessionDetails.password = null;
                throw th;
            }
        }
        LogOnDetails logOnDetails = new LogOnDetails();
        logOnDetails.setUsername(str);
        logOnDetails.setAccessToken(str3);
        logOnDetails.setShouldRememberPassword(z);
        logOnDetails.setLoginID(Integer.valueOf(new SecureRandom().nextInt(2147483646) + 1));
        ((SteamUser) this.client.getHandler(SteamUser.class)).logOn(logOnDetails);
        EResult eResult = (EResult) await(this.loggedOn, 60);
        if (eResult != EResult.OK) {
            throw new IOException("Steam sign-in failed: " + eResult + ". Sign out and try again.");
        }
        status.show("Connected to Steam");
        return authPollResult;
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x009d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00e7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00db A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0068 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private in.dragonbra.javasteam.steam.authentication.AuthPollResult waitForCodeOrApproval(in.dragonbra.javasteam.steam.authentication.CredentialsAuthSession r13, in.dragonbra.javasteam.steam.authentication.IAuthenticator r14, com.gmodvr.flat.SteamSession.Status r15) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 249
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gmodvr.flat.SteamSession.waitForCodeOrApproval(in.dragonbra.javasteam.steam.authentication.CredentialsAuthSession, in.dragonbra.javasteam.steam.authentication.IAuthenticator, com.gmodvr.flat.SteamSession$Status):in.dragonbra.javasteam.steam.authentication.AuthPollResult");
    }

    public void anonymous() throws Exception {
        this.client.connect();
        await(this.connected, 45);
        ((SteamUser) this.client.getHandler(SteamUser.class)).logOnAnonymous();
        if (await(this.loggedOn, 45) != EResult.OK) {
            throw new IOException("Anonymous Steam connection failed");
        }
    }

    public static <T> T await(CompletableFuture<T> completableFuture, int i) throws Exception {
        try {
            return completableFuture.get(i, TimeUnit.SECONDS);
        } catch (InterruptedException | TimeoutException e) {
            completableFuture.cancel(true);
            throw e;
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof Exception) {
                throw ((Exception) cause);
            }
            throw new IOException("Steam operation failed", cause);
        }
    }

    public KeyValue app(int i) throws Exception {
        if (this.appInfo.containsKey(Integer.valueOf(i))) {
            return this.appInfo.get(Integer.valueOf(i));
        }
        AsyncJobMultiple.ResultSet resultSet = (AsyncJobMultiple.ResultSet) await(this.apps.picsGetProductInfo(new PICSRequest(i, ((PICSTokensCallback) await(this.apps.picsGetAccessTokens(Integer.valueOf(i), (Integer) null).toFuture(), 45)).getAppTokens().getOrDefault(Integer.valueOf(i), 0L).longValue()), (PICSRequest) null, false).toFuture(), 45);
        if (!resultSet.getComplete() || resultSet.getFailed()) {
            throw new IOException("Steam app metadata was incomplete");
        }
        Iterator it = resultSet.getResults().iterator();
        while (it.hasNext()) {
            PICSProductInfo pICSProductInfo = ((PICSProductInfoCallback) it.next()).getApps().get(Integer.valueOf(i));
            if (pICSProductInfo != null && !pICSProductInfo.isMissingToken() && !pICSProductInfo.getKeyValues().getChildren().isEmpty()) {
                this.appInfo.put(Integer.valueOf(i), pICSProductInfo.getKeyValues());
                return pICSProductInfo.getKeyValues();
            }
        }
        throw new IOException("Steam did not return app " + i + ". Check account ownership.");
    }

    public static final class Depot {
        final int app;
        final int depot;
        final byte[] key;
        final long manifest;

        public Depot(int i, int i2, long j, byte[] bArr) {
            this.app = i;
            this.depot = i2;
            this.manifest = j;
            this.key = bArr;
        }
    }

    public Depot depot(int i, int i2, long j) throws Exception {
        KeyValue keyValue = app(i).get("depots").get(Integer.toString(i2));
        HashSet hashSet = new HashSet();
        hashSet.add(Integer.valueOf(i));
        int i3 = i;
        while (j == 0 && SteamCatalog.value(keyValue.get("manifests").get("public").get("gid")).isEmpty()) {
            String strValue = SteamCatalog.value(keyValue.get("depotfromapp"));
            if (strValue.isEmpty()) {
                return null;
            }
            i3 = Integer.parseInt(strValue);
            if (!hashSet.add(Integer.valueOf(i3)) || hashSet.size() > 8) {
                throw new IOException("Cyclic shared Steam depot metadata");
            }
            keyValue = app(i3).get("depots").get(Integer.toString(i2));
        }
        if (j == 0) {
            j = Long.parseUnsignedLong(SteamCatalog.value(keyValue.get("manifests").get("public").get("gid")));
        }
        long j2 = j;
        DepotKeyCallback depotKeyCallback = (DepotKeyCallback) await(this.apps.getDepotDecryptionKey(i2, i).toFuture(), 45);
        if (depotKeyCallback.getResult() != EResult.OK || depotKeyCallback.getDepotKey().length != 32) {
            throw new IOException("Steam denied depot " + i2 + " (" + depotKeyCallback.getResult() + "). This account needs access to the game.");
        }
        return new Depot(i3, i2, j2, depotKeyCallback.getDepotKey());
    }

    public synchronized List<Server> servers(int i) throws Exception {
        try {
            if (this.servers == null) {
                ServiceMethodResponse serviceMethodResponse = (ServiceMethodResponse) await(this.directory.getServersForSteamPipe(SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_Request.newBuilder().setCellId(this.client.getCellID() == null ? 0 : this.client.getCellID().intValue()).setMaxServers(32).build()).toFuture(), 45);
                if (serviceMethodResponse.getResult() != EResult.OK) {
                    throw new IOException("Steam CDN discovery failed: " + serviceMethodResponse.getResult());
                }
                this.servers = new ArrayList();
                for (SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfo cContentServerDirectory_ServerInfo : ((SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_Response.Builder) serviceMethodResponse.getBody()).getServersList()) {
                    if (!cContentServerDirectory_ServerInfo.getUseAsProxy() && !cContentServerDirectory_ServerInfo.getSteamChinaOnly() && (cContentServerDirectory_ServerInfo.getType().equals("CDN") || cContentServerDirectory_ServerInfo.getType().equals("SteamCache"))) {
                        if (cContentServerDirectory_ServerInfo.getHttpsSupport().equals("mandatory") || cContentServerDirectory_ServerInfo.getHttpsSupport().equals("optional")) {
                            String host = cContentServerDirectory_ServerInfo.getVhost().isEmpty() ? cContentServerDirectory_ServerInfo.getHost() : cContentServerDirectory_ServerInfo.getVhost();
                            if (!host.isEmpty()) {
                                this.servers.add(Server.fromHostAndPort(host, 443));
                            }
                        }
                    }
                }
                if (this.servers.isEmpty()) {
                    throw new IOException("Steam returned no HTTPS content servers");
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.servers;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private <T> T fromCdn(com.gmodvr.flat.SteamSession.Depot r12, com.gmodvr.flat.SteamSession.CdnRequest<T> r13, java.lang.String r14) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 201
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gmodvr.flat.SteamSession.fromCdn(com.gmodvr.flat.SteamSession$Depot, com.gmodvr.flat.SteamSession$CdnRequest, java.lang.String):java.lang.Object");
    }

    private String token(Depot depot, Server server) throws Exception {
        ServiceMethodResponse serviceMethodResponse = (ServiceMethodResponse) await(this.directory.getCDNAuthToken(SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_Request.newBuilder().setAppId(depot.app).setDepotId(depot.depot).setHostName(server.getHost()).build()).toFuture(), 30);
        if (serviceMethodResponse.getResult() != EResult.OK) {
            throw new IOException("Steam CDN authorization failed: " + serviceMethodResponse.getResult());
        }
        return ((SteammessagesContentsystemSteamclient.CContentServerDirectory_GetCDNAuthToken_Response.Builder) serviceMethodResponse.getBody()).getToken();
    }

    public DepotManifest manifest(final Depot depot) throws Exception {
        ServiceMethodResponse serviceMethodResponse = (ServiceMethodResponse) await(this.directory.getManifestRequestCode(SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_Request.newBuilder().setAppId(depot.app).setDepotId(depot.depot).setManifestId(depot.manifest).build()).toFuture(), 45);
        final long manifestRequestCode = ((SteammessagesContentsystemSteamclient.CContentServerDirectory_GetManifestRequestCode_Response.Builder) serviceMethodResponse.getBody()).getManifestRequestCode();
        if (serviceMethodResponse.getResult() != EResult.OK || manifestRequestCode == 0) {
            throw new IOException("Steam denied this content manifest. Check game ownership and try again.");
        }
        return (DepotManifest) fromCdn(depot, new CdnRequest() { // from class: com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda0
            @Override // com.gmodvr.flat.SteamSession.CdnRequest
            public final Object run(Server server, String str) {
                return this.f$0.lambda$manifest$6(depot, manifestRequestCode, server, str);
            }
        }, "Could not download the Steam manifest. Check the connection and retry.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ DepotManifest lambda$manifest$6(Depot depot, long j, Server server, String str) throws Exception {
        DepotManifest depotManifest = (DepotManifest) await(this.cdn.downloadManifestFuture(depot.depot, depot.manifest, j, server, depot.key, null, str), 80);
        if (!depotManifest.getFilenamesEncrypted() && depotManifest.getDepotID() == depot.depot && depotManifest.getManifestGID() == depot.manifest) {
            return depotManifest;
        }
        throw new IOException("Steam returned the wrong manifest or could not decrypt filenames");
    }

    public byte[] chunk(final Depot depot, final ChunkData chunkData) throws Exception {
        return (byte[]) fromCdn(depot, new CdnRequest() { // from class: com.gmodvr.flat.SteamSession$$ExternalSyntheticLambda1
            @Override // com.gmodvr.flat.SteamSession.CdnRequest
            public final Object run(Server server, String str) {
                return this.f$0.lambda$chunk$7(chunkData, depot, server, str);
            }
        }, "Steam content servers could not supply a verified chunk. Resume to retry.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ byte[] lambda$chunk$7(ChunkData chunkData, Depot depot, Server server, String str) throws Exception {
        byte[] bArr = new byte[Math.max(chunkData.getCompressedLength(), chunkData.getUncompressedLength())];
        int iIntValue = ((Integer) await(this.cdn.downloadDepotChunkFuture(depot.depot, chunkData, server, bArr, depot.key, null, str), 80)).intValue();
        if (iIntValue != chunkData.getUncompressedLength()) {
            throw new IOException("Steam chunk length mismatch");
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, iIntValue);
        if (SteamTransfer.matchesChunk(chunkData, bArrCopyOf)) {
            return bArrCopyOf;
        }
        throw new IOException("Steam chunk failed SHA-1 verification");
    }

    public SteammessagesPublishedfileSteamclient.PublishedFileDetails workshop(int i, long j) throws Exception {
        ServiceMethodResponse serviceMethodResponse = (ServiceMethodResponse) await(this.published.getDetails(SteammessagesPublishedfileSteamclient.CPublishedFile_GetDetails_Request.newBuilder().setAppid(i).addPublishedfileids(j).setIncludechildren(true).setIncludetags(true).build()).toFuture(), 45);
        return workshopDetails(j, serviceMethodResponse.getResult(), ((SteammessagesPublishedfileSteamclient.CPublishedFile_GetDetails_Response.Builder) serviceMethodResponse.getBody()).getPublishedfiledetailsList());
    }

    public List<SteammessagesPublishedfileSteamclient.PublishedFileDetails> workshopBatch(int i, List<Long> list) throws Exception {
        check();
        ServiceMethodResponse serviceMethodResponse = (ServiceMethodResponse) await(this.published.getDetails(SteammessagesPublishedfileSteamclient.CPublishedFile_GetDetails_Request.newBuilder().setAppid(i).addAllPublishedfileids(list).setIncludechildren(true).setIncludetags(true).setShortDescription(true).build()).toFuture(), 60);
        if (serviceMethodResponse.getResult() != EResult.OK) {
            throw new IOException("Workshop lookup failed (Steam result " + serviceMethodResponse.getResult().code() + ": " + serviceMethodResponse.getResult() + "). Resume to retry.");
        }
        return ((SteammessagesPublishedfileSteamclient.CPublishedFile_GetDetails_Response.Builder) serviceMethodResponse.getBody()).getPublishedfiledetailsList();
    }

    public static SteammessagesPublishedfileSteamclient.PublishedFileDetails workshopDetails(long j, EResult eResult, List<SteammessagesPublishedfileSteamclient.PublishedFileDetails> list) throws IOException {
        String str = "Workshop item " + Long.toUnsignedString(j);
        EResult eResult2 = EResult.OK;
        if (eResult != eResult2) {
            throw new IOException(str + " lookup failed (Steam result " + eResult.code() + ": " + eResult + "). Resume to retry.");
        }
        if (list.size() != 1) {
            throw new IOException("Steam returned incomplete details for " + str);
        }
        SteammessagesPublishedfileSteamclient.PublishedFileDetails publishedFileDetails = list.get(0);
        if (publishedFileDetails.getResult() == EResult.FileNotFound.code()) {
            throw new IOException(str + " was not found (Steam result 9: FileNotFound). Check the Workshop link and that the item is visible to this Steam account. Owning the game alone does not guarantee access to an item.");
        }
        if (publishedFileDetails.getResult() == eResult2.code()) {
            if (publishedFileDetails.getPublishedfileid() == j) {
                return publishedFileDetails;
            }
            throw new IOException("Steam returned details for a different Workshop item; expected " + Long.toUnsignedString(j));
        }
        throw new IOException(str + " lookup failed (Steam result " + publishedFileDetails.getResult() + "). Check the item's availability for this Steam account.");
    }

    public void check() throws Exception {
        if (Thread.currentThread().isInterrupted() || this.closed) {
            throw new InterruptedException();
        }
        if (this.disconnected) {
            throw new ConnectionLost();
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.closed = true;
        this.client.disconnect();
        this.pump.interrupt();
        Iterator<Closeable> it = this.subscriptions.iterator();
        while (it.hasNext()) {
            try {
                it.next().close();
            } catch (IOException unused) {
            }
        }
        this.http.dispatcher().cancelAll();
        this.cdn.close();
    }
}
