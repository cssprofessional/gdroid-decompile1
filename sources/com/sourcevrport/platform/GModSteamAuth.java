package com.sourcevrport.platform;

import com.sourcevrport.platform.GModServerDirectory;
import in.dragonbra.javasteam.enums.EAuthSessionResponse;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket;
import in.dragonbra.javasteam.steam.handlers.steamauthticket.TicketInfo;
import in.dragonbra.javasteam.steam.handlers.steamauthticket.callback.TicketAuthCompleteCallback;
import in.dragonbra.javasteam.steam.handlers.steamuser.LogOnDetails;
import in.dragonbra.javasteam.steam.handlers.steamuser.SteamUser;
import in.dragonbra.javasteam.steam.handlers.steamuser.callback.LoggedOffCallback;
import in.dragonbra.javasteam.steam.handlers.steamuser.callback.LoggedOnCallback;
import in.dragonbra.javasteam.steam.steamclient.SteamClient;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager;
import in.dragonbra.javasteam.steam.steamclient.callbacks.ConnectedCallback;
import in.dragonbra.javasteam.steam.steamclient.callbacks.DisconnectedCallback;
import in.dragonbra.javasteam.util.compat.Consumer;
import java.io.Closeable;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class GModSteamAuth {
    private static Job active;
    private static volatile GModServerDirectory.IdentityProvider identity;

    private GModSteamAuth() {
    }

    public static void initialize(GModServerDirectory.IdentityProvider identityProvider) {
        identity = identityProvider;
    }

    public static synchronized void shutdown() {
        cancel();
        identity = null;
    }

    public static synchronized void cancel() {
        Job job = active;
        active = null;
        if (job != null) {
            job.close();
        }
    }

    public static synchronized void request(String str, int i, long j, boolean z) {
        String str2 = str + ":" + i + ":" + Long.toUnsignedString(j) + ":" + z;
        Job job = active;
        if (job == null || !job.key.equals(str2)) {
            cancel();
            Job job2 = new Job(str2, j);
            active = job2;
            job2.worker.start();
        }
    }

    public static synchronized int state() {
        Job job;
        job = active;
        return job == null ? 0 : job.state;
    }

    public static synchronized String error() {
        Job job;
        try {
            job = active;
        } finally {
        }
        return job == null ? "" : job.failure;
    }

    public static synchronized long steamID() {
        Job job;
        job = active;
        return job == null ? 0L : job.userID;
    }

    public static synchronized byte[] ticket() {
        Job job = active;
        if (job != null && job.state >= 2 && active.cookie != null) {
            return (byte[]) active.cookie.clone();
        }
        return null;
    }

    public static byte[] connectionCookie(long j, byte[] bArr) throws IOException {
        if (j == 0 || bArr == null || bArr.length == 0 || bArr.length > 2040) {
            throw new IOException("Steam returned an invalid game session ticket");
        }
        return ByteBuffer.allocate(bArr.length + 8).order(ByteOrder.LITTLE_ENDIAN).putLong(j).put(bArr).array();
    }

    public static final class Job {
        final CallbackManager callbacks;
        final SteamClient client;
        volatile boolean closed;
        final CompletableFuture<Void> connected;
        volatile byte[] cookie;
        volatile String failure;
        final String key;
        final CompletableFuture<EResult> loggedOn;
        final Thread pump;
        final long serverID;
        volatile int state;
        final ArrayList<Closeable> subscriptions;
        volatile TicketInfo ticket;
        volatile long userID;
        final Thread worker;

        public Job(String str, final long j) {
            SteamClient steamClient = new SteamClient();
            this.client = steamClient;
            CallbackManager callbackManager = new CallbackManager(steamClient);
            this.callbacks = callbackManager;
            ArrayList<Closeable> arrayList = new ArrayList<>();
            this.subscriptions = arrayList;
            this.connected = new CompletableFuture<>();
            this.loggedOn = new CompletableFuture<>();
            this.state = 1;
            this.failure = "";
            this.key = str;
            this.serverID = j;
            if (steamClient.getHandler(SteamAuthTicket.class) == null) {
                steamClient.addHandler(new SteamAuthTicket());
            }
            arrayList.add(callbackManager.subscribe(ConnectedCallback.class, new Consumer() { // from class: com.sourcevrport.platform.GModSteamAuth$Job$$ExternalSyntheticLambda0
                @Override // in.dragonbra.javasteam.util.compat.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$new$0((ConnectedCallback) obj);
                }
            }));
            arrayList.add(callbackManager.subscribe(LoggedOnCallback.class, new Consumer() { // from class: com.sourcevrport.platform.GModSteamAuth$Job$$ExternalSyntheticLambda1
                @Override // in.dragonbra.javasteam.util.compat.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$new$1((LoggedOnCallback) obj);
                }
            }));
            arrayList.add(callbackManager.subscribe(DisconnectedCallback.class, new Consumer() { // from class: com.sourcevrport.platform.GModSteamAuth$Job$$ExternalSyntheticLambda2
                @Override // in.dragonbra.javasteam.util.compat.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$new$2((DisconnectedCallback) obj);
                }
            }));
            arrayList.add(callbackManager.subscribe(LoggedOffCallback.class, new Consumer() { // from class: com.sourcevrport.platform.GModSteamAuth$Job$$ExternalSyntheticLambda3
                @Override // in.dragonbra.javasteam.util.compat.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$new$3((LoggedOffCallback) obj);
                }
            }));
            arrayList.add(callbackManager.subscribe(TicketAuthCompleteCallback.class, new Consumer() { // from class: com.sourcevrport.platform.GModSteamAuth$Job$$ExternalSyntheticLambda4
                @Override // in.dragonbra.javasteam.util.compat.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$new$4(j, (TicketAuthCompleteCallback) obj);
                }
            }));
            Thread thread = new Thread(new Runnable() { // from class: com.sourcevrport.platform.GModSteamAuth$Job$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$5();
                }
            }, "GMod Steam authentication callbacks");
            this.pump = thread;
            Thread thread2 = new Thread(new Runnable() { // from class: com.sourcevrport.platform.GModSteamAuth$Job$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.prepare();
                }
            }, "GMod Steam authentication");
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
            if (this.closed) {
                return;
            }
            fail("Steam connection lost. Reconnect to the server.");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(LoggedOffCallback loggedOffCallback) {
            if (this.closed) {
                return;
            }
            fail("Steam signed out. Sign in again in the launcher.");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$4(long j, TicketAuthCompleteCallback ticketAuthCompleteCallback) {
            TicketInfo ticketInfo = this.ticket;
            if (this.closed || ticketInfo == null || ticketAuthCompleteCallback.getTicketCRC() != ((int) ticketInfo.getTicketCRC$javasteam())) {
                return;
            }
            if (j == 0 || ticketAuthCompleteCallback.getSteamID().convertToUInt64() == j) {
                if (ticketAuthCompleteCallback.getAuthSessionResponse() == EAuthSessionResponse.OK) {
                    this.state = 3;
                    return;
                }
                fail("Steam game-server authentication failed: " + ticketAuthCompleteCallback.getAuthSessionResponse());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$5() {
            while (!this.closed) {
                try {
                    this.callbacks.runWaitCallbacks(250L);
                } catch (Exception unused) {
                    if (this.closed || Thread.currentThread().isInterrupted()) {
                        return;
                    }
                    fail("Could not process Steam authentication. Reconnect to the server.");
                    return;
                }
            }
        }

        public void prepare() {
            try {
                GModServerDirectory.IdentityProvider identityProvider = GModSteamAuth.identity;
                if (identityProvider == null) {
                    throw new IOException("Steam sign-in is unavailable in this game session. Restart the app.");
                }
                LogOnDetails logOnDetailsSavedIdentity = identityProvider.savedIdentity();
                if (logOnDetailsSavedIdentity == null) {
                    throw new IOException("Sign in to Steam in the launcher and remember the session to join Steam servers.");
                }
                if (this.closed) {
                    return;
                }
                this.pump.start();
                this.client.connect();
                CompletableFuture<Void> completableFuture = this.connected;
                TimeUnit timeUnit = TimeUnit.SECONDS;
                completableFuture.get(30L, timeUnit);
                if (this.closed) {
                    return;
                }
                ((SteamUser) this.client.getHandler(SteamUser.class)).logOn(logOnDetailsSavedIdentity);
                EResult eResult = this.loggedOn.get(45L, timeUnit);
                logOnDetailsSavedIdentity.setAccessToken(null);
                if (eResult != EResult.OK) {
                    throw new IOException("Steam sign-in failed: " + eResult + ". Sign in again in the launcher.");
                }
                if (this.closed) {
                    return;
                }
                this.userID = this.client.getSteamID().convertToUInt64();
                TicketInfo ticketInfo = ((SteamAuthTicket) this.client.getHandler(SteamAuthTicket.class)).getAuthSessionTicket(4000).get(45L, timeUnit);
                synchronized (this) {
                    try {
                        if (this.closed) {
                            ticketInfo.close();
                            return;
                        }
                        this.ticket = ticketInfo;
                        this.cookie = GModSteamAuth.connectionCookie(this.userID, ticketInfo.getTicket());
                        this.state = 2;
                    } finally {
                    }
                }
            } catch (Exception e) {
                if (this.closed) {
                    return;
                }
                fail(e instanceof IOException ? e.getMessage() : "Could not obtain a Steam game session ticket. Check that this account owns Garry's Mod and sign in again.");
                close();
            }
        }

        public void fail(String str) {
            this.failure = str;
            this.state = -1;
            IOException iOException = new IOException(str);
            this.connected.completeExceptionally(iOException);
            this.loggedOn.completeExceptionally(iOException);
        }

        public synchronized void close() {
            try {
                if (this.closed) {
                    return;
                }
                this.closed = true;
                if (this.cookie != null) {
                    Arrays.fill(this.cookie, (byte) 0);
                    this.cookie = null;
                }
                if (this.ticket != null) {
                    try {
                        this.ticket.close();
                    } catch (Exception unused) {
                    }
                    this.ticket = null;
                }
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
                    } catch (IOException unused2) {
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
