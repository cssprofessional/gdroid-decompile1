package in.dragonbra.javasteam.steam.cdn;

import in.dragonbra.javasteam.steam.cdn.Server;
import in.dragonbra.javasteam.steam.steamclient.SteamClient;
import in.dragonbra.javasteam.types.ChunkData;
import in.dragonbra.javasteam.types.DepotManifest;
import in.dragonbra.javasteam.util.SteamKitWebRequestException;
import in.dragonbra.javasteam.util.Strings;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import java.io.Closeable;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CompletableFuture;
import kotlin.ResultKt;
import kotlin.ULong;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorKt;
import okhttp3.Call;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.coroutines.ExecuteAsyncKt;

/* JADX INFO: compiled from: Client.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Client implements Closeable {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(Client.class);
    private final OkHttpClient httpClient;
    private final CoroutineScope scope;

    public final CompletableFuture<Integer> downloadDepotChunkFuture(int i, ChunkData chunk, Server server, byte[] destination) {
        Intrinsics.checkNotNullParameter(chunk, "chunk");
        Intrinsics.checkNotNullParameter(server, "server");
        Intrinsics.checkNotNullParameter(destination, "destination");
        return downloadDepotChunkFuture$default(this, i, chunk, server, destination, null, null, null, 112, null);
    }

    public final CompletableFuture<Integer> downloadDepotChunkFuture(int i, ChunkData chunk, Server server, byte[] destination, byte[] bArr) {
        Intrinsics.checkNotNullParameter(chunk, "chunk");
        Intrinsics.checkNotNullParameter(server, "server");
        Intrinsics.checkNotNullParameter(destination, "destination");
        return downloadDepotChunkFuture$default(this, i, chunk, server, destination, bArr, null, null, 96, null);
    }

    public final CompletableFuture<Integer> downloadDepotChunkFuture(int i, ChunkData chunk, Server server, byte[] destination, byte[] bArr, Server server2) {
        Intrinsics.checkNotNullParameter(chunk, "chunk");
        Intrinsics.checkNotNullParameter(server, "server");
        Intrinsics.checkNotNullParameter(destination, "destination");
        return downloadDepotChunkFuture$default(this, i, chunk, server, destination, bArr, server2, null, 64, null);
    }

    public final CompletableFuture<DepotManifest> downloadManifestFuture(int i, long j, long j2, Server server) {
        Intrinsics.checkNotNullParameter(server, "server");
        return downloadManifestFuture$default(this, i, j, j2, server, null, null, null, 112, null);
    }

    public final CompletableFuture<DepotManifest> downloadManifestFuture(int i, long j, long j2, Server server, byte[] bArr) {
        Intrinsics.checkNotNullParameter(server, "server");
        return downloadManifestFuture$default(this, i, j, j2, server, bArr, null, null, 96, null);
    }

    public final CompletableFuture<DepotManifest> downloadManifestFuture(int i, long j, long j2, Server server, byte[] bArr, Server server2) {
        Intrinsics.checkNotNullParameter(server, "server");
        return downloadManifestFuture$default(this, i, j, j2, server, bArr, server2, null, 64, null);
    }

    public Client(SteamClient steamClient) {
        Intrinsics.checkNotNullParameter(steamClient, "steamClient");
        this.scope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO().plus(SupervisorKt.SupervisorJob$default(null, 1, null)));
        this.httpClient = steamClient.getConfiguration().getHttpClient();
    }

    /* JADX INFO: compiled from: Client.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ HttpUrl buildCommand$default(Companion companion, Server server, String str, String str2, Server server2, int i, Object obj) {
            if ((i & 4) != 0) {
                str2 = null;
            }
            if ((i & 8) != 0) {
                server2 = null;
            }
            return companion.buildCommand(server, str, str2, server2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final HttpUrl buildCommand(Server server, String str, String str2, Server server2) {
            int port;
            String strReplace$default;
            String str3 = server.getProtocol() == Server.ConnectionProtocol.HTTP ? "http" : "https";
            String vHost = server.getVHost();
            String str4 = (vHost == null && (vHost = server.getHost()) == null) ? "" : vHost;
            int port2 = server.getPort();
            if (server2 == null || !server2.getUseAsProxy() || server2.getProxyRequestPathTemplate() == null) {
                port = port2;
                strReplace$default = str;
            } else {
                String proxyRequestPathTemplate = server2.getProxyRequestPathTemplate();
                Intrinsics.checkNotNull(proxyRequestPathTemplate);
                strReplace$default = StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(proxyRequestPathTemplate, "%host%", str4, false, 4, (Object) null), "%path%", "/" + str, false, 4, (Object) null);
                String vHost2 = server2.getVHost();
                str4 = (vHost2 == null && (vHost2 = server2.getHost()) == null) ? "" : vHost2;
                port = server2.getPort();
            }
            HttpUrl.Builder builderAddPathSegments = new HttpUrl.Builder().scheme(str3).host(str4).port(port).addPathSegments(StringsKt__StringsKt.trimStart(strReplace$default, '/'));
            if (str2 != null && str2.length() > 0) {
                Iterator it = StringsKt__StringsKt.split$default((CharSequence) str2, new String[]{"&"}, false, 0, 6, (Object) null).iterator();
                while (it.hasNext()) {
                    List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) it.next(), new String[]{"="}, false, 2, 2, (Object) null);
                    if (listSplit$default.size() == 2) {
                        builderAddPathSegments.addQueryParameter((String) listSplit$default.get(0), (String) listSplit$default.get(1));
                    } else if (listSplit$default.size() == 1 && ((CharSequence) listSplit$default.get(0)).length() > 0) {
                        builderAddPathSegments.addQueryParameter((String) listSplit$default.get(0), "");
                    }
                }
            }
            return builderAddPathSegments.build();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        CoroutineScopeKt.cancel$default(this.scope, null, 1, null);
        this.httpClient.connectionPool().evictAll();
        this.httpClient.dispatcher().executorService().shutdown();
    }

    /* JADX INFO: renamed from: downloadManifest-vpSrzaI, reason: not valid java name */
    public final Object m8058downloadManifestvpSrzaI(int i, long j, long j2, Server server, byte[] bArr, Server server2, String str, Continuation<? super DepotManifest> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new Client$downloadManifest$2(j2, i, j, server, str, server2, this, bArr, null), continuation);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.cdn.Client$downloadDepotChunk$2, reason: invalid class name */
    /* JADX INFO: compiled from: Client.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.cdn.Client$downloadDepotChunk$2", f = "Client.kt", l = {222}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Integer>, Object> {
        final /* synthetic */ String $cdnAuthToken;
        final /* synthetic */ ChunkData $chunk;
        final /* synthetic */ int $depotId;
        final /* synthetic */ byte[] $destination;
        final /* synthetic */ Server $proxyServer;
        final /* synthetic */ Server $server;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ Client this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(ChunkData chunkData, byte[] bArr, int i, Server server, String str, Server server2, Client client, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$chunk = chunkData;
            this.$destination = bArr;
            this.$depotId = i;
            this.$server = server;
            this.$cdnAuthToken = str;
            this.$proxyServer = server2;
            this.this$0 = client;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$chunk, this.$destination, this.$depotId, this.$server, this.$cdnAuthToken, this.$proxyServer, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Integer> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Exception {
            Request requestBuild;
            Request request;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (this.$chunk.getChunkID() == null) {
                    throw new IllegalArgumentException("Chunk must have a ChunkID.");
                }
                if (this.$destination.length != this.$chunk.getCompressedLength()) {
                    throw new IllegalArgumentException("The destination buffer must be the same size as the chunk CompressedLength (Since we take out decompression step from download");
                }
                String hex = Strings.toHex(this.$chunk.getChunkID());
                String str = "depot/" + this.$depotId + "/chunk/" + hex;
                ClientLancache clientLancache = ClientLancache.INSTANCE;
                if (!clientLancache.getUseLanCacheServer()) {
                    requestBuild = new Request.Builder().url(Client.Companion.buildCommand(this.$server, str, this.$cdnAuthToken, this.$proxyServer)).build();
                } else {
                    requestBuild = clientLancache.buildLancacheRequest(this.$server, str, this.$cdnAuthToken);
                }
                try {
                    Call callNewCall = this.this$0.httpClient.newCall(requestBuild);
                    this.L$0 = SpillingKt.nullOutSpilledVariable(hex);
                    this.L$1 = SpillingKt.nullOutSpilledVariable(str);
                    this.L$2 = requestBuild;
                    this.label = 1;
                    obj = ExecuteAsyncKt.executeAsync(callNewCall, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    request = requestBuild;
                } catch (Exception e) {
                    e = e;
                    request = requestBuild;
                    Client.logger.error("Failed to download a depot chunk " + request.url() + ": " + e.getMessage(), e);
                    throw e;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                request = (Request) this.L$2;
                try {
                    ResultKt.throwOnFailure(obj);
                } catch (Exception e2) {
                    e = e2;
                    Client.logger.error("Failed to download a depot chunk " + request.url() + ": " + e.getMessage(), e);
                    throw e;
                }
            }
            Response response = (Response) obj;
            ChunkData chunkData = this.$chunk;
            byte[] bArr = this.$destination;
            try {
                if (!response.isSuccessful()) {
                    throw new SteamKitWebRequestException("Response status code does not indicate success: " + response.code() + " (" + response.message() + ")", response);
                }
                int compressedLength = chunkData.getCompressedLength();
                if (((int) response.body().contentLength()) > 0) {
                    compressedLength = (int) response.body().contentLength();
                    if (chunkData.getCompressedLength() > 0 && compressedLength != chunkData.getCompressedLength()) {
                        throw new SteamKitWebRequestException("Content-Length mismatch for depot chunk! (was " + compressedLength + ", but should be " + chunkData.getCompressedLength() + ")");
                    }
                } else if (compressedLength > 0) {
                    Logger.debug$default(Client.logger, "Response does not have Content-Length, falling back to chunk.CompressedLength.", null, 2, null);
                } else {
                    throw new SteamKitWebRequestException("Response does not have Content-Length and chunk.CompressedLength is not set.", response);
                }
                byte[] bArrBytes = response.body().bytes();
                if (bArrBytes.length == 0) {
                    throw new SteamKitWebRequestException("Response is empty");
                }
                if (bArrBytes.length != compressedLength) {
                    throw new SteamKitWebRequestException("Length mismatch after downloading depot chunk! (was " + bArrBytes.length + ", but should be " + compressedLength + ")");
                }
                System.arraycopy(bArrBytes, 0, bArr, 0, compressedLength);
                Integer numBoxInt = Boxing.boxInt(compressedLength);
                CloseableKt.closeFinally(response, null);
                return numBoxInt;
            } finally {
            }
        }
    }

    public final Object downloadDepotChunk(int i, ChunkData chunkData, Server server, byte[] bArr, byte[] bArr2, Server server2, String str, Continuation<? super Integer> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass2(chunkData, bArr, i, server, str, server2, this, null), continuation);
    }

    public static /* synthetic */ CompletableFuture downloadManifestFuture$default(Client client, int i, long j, long j2, Server server, byte[] bArr, Server server2, String str, int i2, Object obj) {
        return client.downloadManifestFuture(i, j, j2, server, (i2 & 16) != 0 ? null : bArr, (i2 & 32) != 0 ? null : server2, (i2 & 64) != 0 ? null : str);
    }

    public final CompletableFuture<DepotManifest> downloadManifestFuture(int i, long j, long j2, Server server, byte[] bArr, Server server2, String str) {
        Intrinsics.checkNotNullParameter(server, "server");
        CompletableFuture<DepotManifest> completableFuture = new CompletableFuture<>();
        BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new C00111(i, j, j2, server, bArr, server2, str, completableFuture, null), 3, null);
        return completableFuture;
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.cdn.Client$downloadManifestFuture$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Client.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.cdn.Client$downloadManifestFuture$1", f = "Client.kt", l = {305}, m = "invokeSuspend", v = 1)
    public static final class C00111 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $cdnAuthToken;
        final /* synthetic */ int $depotId;
        final /* synthetic */ byte[] $depotKey;
        final /* synthetic */ CompletableFuture<DepotManifest> $future;
        final /* synthetic */ long $manifestId;
        final /* synthetic */ long $manifestRequestCode;
        final /* synthetic */ Server $proxyServer;
        final /* synthetic */ Server $server;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00111(int i, long j, long j2, Server server, byte[] bArr, Server server2, String str, CompletableFuture<DepotManifest> completableFuture, Continuation<? super C00111> continuation) {
            super(2, continuation);
            this.$depotId = i;
            this.$manifestId = j;
            this.$manifestRequestCode = j2;
            this.$server = server;
            this.$depotKey = bArr;
            this.$proxyServer = server2;
            this.$cdnAuthToken = str;
            this.$future = completableFuture;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return Client.this.new C00111(this.$depotId, this.$manifestId, this.$manifestRequestCode, this.$server, this.$depotKey, this.$proxyServer, this.$cdnAuthToken, this.$future, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C00111) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Client client = Client.this;
                    int i2 = this.$depotId;
                    long j = this.$manifestId;
                    long jM8189constructorimpl = ULong.m8189constructorimpl(this.$manifestRequestCode);
                    Server server = this.$server;
                    byte[] bArr = this.$depotKey;
                    Server server2 = this.$proxyServer;
                    String str = this.$cdnAuthToken;
                    this.label = 1;
                    obj = client.m8058downloadManifestvpSrzaI(i2, j, jM8189constructorimpl, server, bArr, server2, str, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.$future.complete((DepotManifest) obj);
            } catch (Exception e) {
                this.$future.completeExceptionally(e);
            }
            return Unit.INSTANCE;
        }
    }

    public static /* synthetic */ CompletableFuture downloadDepotChunkFuture$default(Client client, int i, ChunkData chunkData, Server server, byte[] bArr, byte[] bArr2, Server server2, String str, int i2, Object obj) {
        return client.downloadDepotChunkFuture(i, chunkData, server, bArr, (i2 & 16) != 0 ? null : bArr2, (i2 & 32) != 0 ? null : server2, (i2 & 64) != 0 ? null : str);
    }

    public final CompletableFuture<Integer> downloadDepotChunkFuture(int i, ChunkData chunk, Server server, byte[] destination, byte[] bArr, Server server2, String str) {
        Intrinsics.checkNotNullParameter(chunk, "chunk");
        Intrinsics.checkNotNullParameter(server, "server");
        Intrinsics.checkNotNullParameter(destination, "destination");
        CompletableFuture<Integer> completableFuture = new CompletableFuture<>();
        BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass1(bArr, destination, chunk, this, i, server, server2, str, completableFuture, null), 3, null);
        return completableFuture;
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.cdn.Client$downloadDepotChunkFuture$1, reason: invalid class name */
    /* JADX INFO: compiled from: Client.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.cdn.Client$downloadDepotChunkFuture$1", f = "Client.kt", l = {369}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $cdnAuthToken;
        final /* synthetic */ ChunkData $chunk;
        final /* synthetic */ int $depotId;
        final /* synthetic */ byte[] $depotKey;
        final /* synthetic */ byte[] $destination;
        final /* synthetic */ CompletableFuture<Integer> $future;
        final /* synthetic */ Server $proxyServer;
        final /* synthetic */ Server $server;
        Object L$0;
        int label;
        final /* synthetic */ Client this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(byte[] bArr, byte[] bArr2, ChunkData chunkData, Client client, int i, Server server, Server server2, String str, CompletableFuture<Integer> completableFuture, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$depotKey = bArr;
            this.$destination = bArr2;
            this.$chunk = chunkData;
            this.this$0 = client;
            this.$depotId = i;
            this.$server = server;
            this.$proxyServer = server2;
            this.$cdnAuthToken = str;
            this.$future = completableFuture;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$depotKey, this.$destination, this.$chunk, this.this$0, this.$depotId, this.$server, this.$proxyServer, this.$cdnAuthToken, this.$future, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            byte[] bArr;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    if (this.$depotKey != null) {
                        if (this.$destination.length < this.$chunk.getCompressedLength()) {
                            throw new IllegalArgumentException("The destination buffer must be longer than the chunk CompressedLength (since no depot key was provided).");
                        }
                    } else if (this.$destination.length != this.$chunk.getCompressedLength()) {
                        throw new IllegalArgumentException("The destination buffer must be the same size as the chunk UncompressedLength.");
                    }
                    byte[] bArr2 = new byte[this.$chunk.getCompressedLength()];
                    Client client = this.this$0;
                    int i2 = this.$depotId;
                    ChunkData chunkData = this.$chunk;
                    Server server = this.$server;
                    byte[] bArr3 = this.$depotKey;
                    Server server2 = this.$proxyServer;
                    String str = this.$cdnAuthToken;
                    this.L$0 = bArr2;
                    this.label = 1;
                    Object objDownloadDepotChunk = client.downloadDepotChunk(i2, chunkData, server, bArr2, bArr3, server2, str, this);
                    if (objDownloadDepotChunk == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    bArr = bArr2;
                    obj = objDownloadDepotChunk;
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    bArr = (byte[]) this.L$0;
                    ResultKt.throwOnFailure(obj);
                }
                int iIntValue = ((Number) obj).intValue();
                byte[] bArr4 = this.$depotKey;
                if (bArr4 != null) {
                    this.$future.complete(Boxing.boxInt(DepotChunk.process(this.$chunk, bArr, this.$destination, bArr4)));
                } else {
                    System.arraycopy(bArr, 0, this.$destination, 0, iIntValue);
                    this.$future.complete(Boxing.boxInt(iIntValue));
                }
            } catch (Exception e) {
                this.$future.completeExceptionally(e);
            }
            return Unit.INSTANCE;
        }
    }
}
