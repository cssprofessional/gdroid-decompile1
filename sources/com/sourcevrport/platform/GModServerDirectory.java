package com.sourcevrport.platform;

import com.google.protobuf.ByteString;
import com.google.protobuf.UnknownFieldSet;
import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.steam.handlers.steamuser.LogOnDetails;
import in.dragonbra.javasteam.steam.handlers.steamuser.SteamUser;
import in.dragonbra.javasteam.steam.handlers.steamuser.callback.LoggedOnCallback;
import in.dragonbra.javasteam.steam.steamclient.SteamClient;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager;
import in.dragonbra.javasteam.steam.steamclient.callbacks.ConnectedCallback;
import in.dragonbra.javasteam.steam.steamclient.callbacks.DisconnectedCallback;
import in.dragonbra.javasteam.util.compat.Consumer;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class GModServerDirectory {
    private static volatile IdentityProvider identity;
    private static final AtomicInteger NEXT = new AtomicInteger(1);
    private static final ConcurrentHashMap<Integer, Job> JOBS = new ConcurrentHashMap<>();

    public interface IdentityProvider {
        LogOnDetails savedIdentity() throws Exception;
    }

    private GModServerDirectory() {
    }

    public static void initialize(IdentityProvider identityProvider) {
        identity = identityProvider;
    }

    public static void shutdown() {
        identity = null;
        Iterator<Integer> it = JOBS.keySet().iterator();
        while (it.hasNext()) {
            cancel(it.next().intValue());
        }
    }

    public static int start() {
        ConcurrentHashMap<Integer, Job> concurrentHashMap = JOBS;
        if (concurrentHashMap.size() >= 8) {
            return 0;
        }
        int andIncrement = NEXT.getAndIncrement();
        Job job = new Job();
        concurrentHashMap.put(Integer.valueOf(andIncrement), job);
        job.worker.start();
        return andIncrement;
    }

    public static String[] poll(int i) {
        String strPoll;
        Job job = JOBS.get(Integer.valueOf(i));
        if (job == null) {
            return new String[]{"done"};
        }
        ArrayList arrayList = new ArrayList();
        while (arrayList.size() < 256 && (strPoll = job.events.poll()) != null) {
            arrayList.add(strPoll);
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static void cancel(int i) {
        Job jobRemove = JOBS.remove(Integer.valueOf(i));
        if (jobRemove != null) {
            jobRemove.close();
        }
    }

    public static SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse response(SteammessagesClientserverGameservers.CMsgClientGMSServerQuery.Builder builder) throws IOException {
        List<ByteString> lengthDelimitedList = builder.getUnknownFields().getField(1).getLengthDelimitedList();
        if (lengthDelimitedList.size() != 1) {
            throw new IOException("Steam returned an invalid directory reply");
        }
        return SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.parseFrom(lengthDelimitedList.get(0));
    }

    public static String address(SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.Server server, SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.Server server2) {
        SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.Server serverBuild = server2.toBuilder().mergeFrom(server).build();
        int v4 = serverBuild.hasServerIp() ? serverBuild.getServerIp().getV4() : serverBuild.getDeprecatedServerIp();
        int queryPort = serverBuild.getQueryPort();
        if (v4 == 0 || queryPort <= 0 || queryPort > 65535) {
            return null;
        }
        return ((v4 >>> 24) & 255) + "." + ((v4 >>> 16) & 255) + "." + ((v4 >>> 8) & 255) + "." + (v4 & 255) + ":" + queryPort;
    }

    public static final class DirectoryService extends UnifiedService {
        @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
        public void handleNotificationMsg(String str, PacketClientMsgProtobuf packetClientMsgProtobuf) {
        }

        public DirectoryService(SteamUnifiedMessages steamUnifiedMessages) {
            super(steamUnifiedMessages);
        }

        @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
        public String getServiceName() {
            return "GameServers";
        }

        @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
        public void handleResponseMsg(String str, PacketClientMsgProtobuf packetClientMsgProtobuf) {
            if ("MasterServerQuery".equals(str)) {
                postResponseMsg(SteammessagesClientserverGameservers.CMsgClientGMSServerQuery.class, packetClientMsgProtobuf);
            }
        }
    }

    public static final class Job {
        final CallbackManager callbacks;
        final SteamClient client;
        volatile boolean closed;
        final CompletableFuture<Void> connected;
        final ConcurrentLinkedQueue<String> events;
        final CompletableFuture<EResult> loggedOn;
        final Thread pump;
        final ArrayList<Closeable> subscriptions;
        final Thread worker;

        public Job() {
            SteamClient steamClient = new SteamClient();
            this.client = steamClient;
            CallbackManager callbackManager = new CallbackManager(steamClient);
            this.callbacks = callbackManager;
            this.events = new ConcurrentLinkedQueue<>();
            ArrayList<Closeable> arrayList = new ArrayList<>();
            this.subscriptions = arrayList;
            this.connected = new CompletableFuture<>();
            this.loggedOn = new CompletableFuture<>();
            arrayList.add(callbackManager.subscribe(ConnectedCallback.class, new Consumer() { // from class: com.sourcevrport.platform.GModServerDirectory$Job$$ExternalSyntheticLambda0
                @Override // in.dragonbra.javasteam.util.compat.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$new$0((ConnectedCallback) obj);
                }
            }));
            arrayList.add(callbackManager.subscribe(LoggedOnCallback.class, new Consumer() { // from class: com.sourcevrport.platform.GModServerDirectory$Job$$ExternalSyntheticLambda1
                @Override // in.dragonbra.javasteam.util.compat.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$new$1((LoggedOnCallback) obj);
                }
            }));
            arrayList.add(callbackManager.subscribe(DisconnectedCallback.class, new Consumer() { // from class: com.sourcevrport.platform.GModServerDirectory$Job$$ExternalSyntheticLambda2
                @Override // in.dragonbra.javasteam.util.compat.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$new$2((DisconnectedCallback) obj);
                }
            }));
            Thread thread = new Thread(new Runnable() { // from class: com.sourcevrport.platform.GModServerDirectory$Job$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$3();
                }
            }, "GMod server directory callbacks");
            this.pump = thread;
            Thread thread2 = new Thread(new Runnable() { // from class: com.sourcevrport.platform.GModServerDirectory$Job$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.query();
                }
            }, "GMod server directory");
            this.worker = thread2;
            thread.setDaemon(true);
            thread2.setDaemon(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(ConnectedCallback connectedCallback) {
            this.connected.complete(null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(LoggedOnCallback loggedOnCallback) {
            this.loggedOn.complete(loggedOnCallback.getResult());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(DisconnectedCallback disconnectedCallback) {
            IOException iOException = new IOException("Steam server directory disconnected");
            this.connected.completeExceptionally(iOException);
            this.loggedOn.completeExceptionally(iOException);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3() {
            while (!this.closed) {
                try {
                    this.callbacks.runWaitCallbacks(250L);
                } catch (Exception unused) {
                    if (this.closed || Thread.currentThread().isInterrupted()) {
                        return;
                    }
                }
            }
        }

        public void query() {
            try {
                try {
                } catch (Exception e) {
                    if (!this.closed) {
                        System.err.println("GMod server directory failed while connecting: " + e);
                        ConcurrentLinkedQueue<String> concurrentLinkedQueue = this.events;
                        StringBuilder sb = new StringBuilder();
                        sb.append("error=");
                        sb.append(e instanceof IOException ? e.getMessage() : "Could not query the Steam server directory. Check the network and refresh.");
                        concurrentLinkedQueue.add(sb.toString());
                    }
                }
                if (!this.closed) {
                    this.pump.start();
                    this.client.connect();
                    CompletableFuture<Void> completableFuture = this.connected;
                    TimeUnit timeUnit = TimeUnit.SECONDS;
                    completableFuture.get(25L, timeUnit);
                    if (!this.closed) {
                        IdentityProvider identityProvider = GModServerDirectory.identity;
                        LogOnDetails logOnDetailsSavedIdentity = identityProvider == null ? null : identityProvider.savedIdentity();
                        if (logOnDetailsSavedIdentity == null) {
                            ((SteamUser) this.client.getHandler(SteamUser.class)).logOnAnonymous();
                        } else {
                            ((SteamUser) this.client.getHandler(SteamUser.class)).logOn(logOnDetailsSavedIdentity);
                        }
                        EResult eResult = this.loggedOn.get(25L, timeUnit);
                        EResult eResult2 = EResult.OK;
                        if (eResult != eResult2) {
                            throw new IOException("Sign in to Steam again in the launcher to browse Internet servers.");
                        }
                        SteamUnifiedMessages steamUnifiedMessages = (SteamUnifiedMessages) this.client.getHandler(SteamUnifiedMessages.class);
                        steamUnifiedMessages.createService(DirectoryService.class);
                        ServiceMethodResponse serviceMethodResponse = (ServiceMethodResponse) steamUnifiedMessages.sendMessage(SteammessagesClientserverGameservers.CMsgClientGMSServerQuery.Builder.class, "GameServers.MasterServerQuery#1", SteammessagesClientserverGameservers.CMsgClientGMSServerQuery.newBuilder().setAppId(4000).setUnknownFields(UnknownFieldSet.newBuilder().addField(2, UnknownFieldSet.Field.newBuilder().addLengthDelimited(SteammessagesClientserverGameservers.CMsgClientGMSServerQuery.newBuilder().setAppId(4000).setFilterText("\\appid\\4000").setRegionCode(255).setMaxServers(20000).build().toByteString()).build()).build()).build()).toFuture().get(25L, timeUnit);
                        if (serviceMethodResponse.getResult() == EResult.AccessDenied) {
                            throw new IOException("Sign in to Steam in the launcher and remember the session to browse Internet servers.");
                        }
                        if (serviceMethodResponse.getResult() != eResult2) {
                            throw new IOException("Steam directory query failed: " + serviceMethodResponse.getResult());
                        }
                        SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse cMsgGMSClientServerQueryResponseResponse = GModServerDirectory.response((SteammessagesClientserverGameservers.CMsgClientGMSServerQuery.Builder) serviceMethodResponse.getBody());
                        if (!cMsgGMSClientServerQueryResponseResponse.getError().isEmpty()) {
                            throw new IOException("Steam refused the directory query");
                        }
                        HashSet hashSet = new HashSet();
                        for (SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.Server server : cMsgGMSClientServerQueryResponseResponse.getServersList()) {
                            if (!this.closed) {
                                String strAddress = GModServerDirectory.address(server, cMsgGMSClientServerQueryResponseResponse.getDefaultServerData());
                                if (strAddress != null && hashSet.add(strAddress)) {
                                    this.events.add("address=" + strAddress);
                                }
                            }
                        }
                        if (hashSet.isEmpty()) {
                            this.events.add("error=Steam returned no Garry's Mod servers");
                        }
                        this.events.add("done");
                        close();
                    }
                }
            } finally {
                this.events.add("done");
                close();
            }
        }

        public synchronized void close() {
            try {
                if (this.closed) {
                    return;
                }
                this.closed = true;
                this.client.disconnect();
                this.pump.interrupt();
                Thread threadCurrentThread = Thread.currentThread();
                Thread thread = this.worker;
                if (threadCurrentThread != thread) {
                    thread.interrupt();
                }
                Iterator<Closeable> it = this.subscriptions.iterator();
                while (it.hasNext()) {
                    try {
                        it.next().close();
                    } catch (IOException unused) {
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
