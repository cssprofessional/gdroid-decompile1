package in.dragonbra.javasteam.steam.cdn;

import in.dragonbra.javasteam.types.DepotManifest;
import in.dragonbra.javasteam.util.SteamKitWebRequestException;
import in.dragonbra.javasteam.util.log.Logger;
import java.io.ByteArrayInputStream;
import java.util.zip.ZipInputStream;
import kotlin.ResultKt;
import kotlin.ULong;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Call;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.coroutines.ExecuteAsyncKt;

/* JADX INFO: compiled from: Client.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "in.dragonbra.javasteam.steam.cdn.Client$downloadManifest$2", f = "Client.kt", l = {136}, m = "invokeSuspend", v = 1)
public final class Client$downloadManifest$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super DepotManifest>, Object> {

    /* JADX INFO: renamed from: $$v$c$kotlin-ULong$-manifestRequestCode$0, reason: not valid java name */
    final /* synthetic */ long f0$$v$c$kotlinULong$manifestRequestCode$0;
    final /* synthetic */ String $cdnAuthToken;
    final /* synthetic */ int $depotId;
    final /* synthetic */ byte[] $depotKey;
    final /* synthetic */ long $manifestId;
    final /* synthetic */ Server $proxyServer;
    final /* synthetic */ Server $server;
    int I$0;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ Client this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Client$downloadManifest$2(long j, int i, long j2, Server server, String str, Server server2, Client client, byte[] bArr, Continuation<? super Client$downloadManifest$2> continuation) {
        super(2, continuation);
        this.f0$$v$c$kotlinULong$manifestRequestCode$0 = j;
        this.$depotId = i;
        this.$manifestId = j2;
        this.$server = server;
        this.$cdnAuthToken = str;
        this.$proxyServer = server2;
        this.this$0 = client;
        this.$depotKey = bArr;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new Client$downloadManifest$2(this.f0$$v$c$kotlinULong$manifestRequestCode$0, this.$depotId, this.$manifestId, this.$server, this.$cdnAuthToken, this.$proxyServer, this.this$0, this.$depotKey, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super DepotManifest> continuation) {
        return ((Client$downloadManifest$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Exception {
        String str;
        Request request;
        byte[] bArrBytes;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            if (Long.compareUnsigned(this.f0$$v$c$kotlinULong$manifestRequestCode$0, ULong.m8189constructorimpl(0L)) > 0) {
                str = "depot/" + this.$depotId + "/manifest/" + this.$manifestId + "/5/" + ULong.m8192toStringimpl(this.f0$$v$c$kotlinULong$manifestRequestCode$0);
            } else {
                str = "depot/" + this.$depotId + "/manifest/" + this.$manifestId + "/5";
            }
            Request requestBuild = new Request.Builder().url(Client.Companion.buildCommand(this.$server, str, this.$cdnAuthToken, this.$proxyServer)).build();
            Logger.debug$default(Client.logger, "Request URL is: " + requestBuild, null, 2, null);
            try {
                Call callNewCall = this.this$0.httpClient.newCall(requestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(str);
                this.L$1 = requestBuild;
                this.I$0 = 5;
                this.label = 1;
                obj = ExecuteAsyncKt.executeAsync(callNewCall, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                request = requestBuild;
            } catch (Exception e) {
                e = e;
                request = requestBuild;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            request = (Request) this.L$1;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (Exception e2) {
                e = e2;
            }
        }
        Response response = (Response) obj;
        if (!response.isSuccessful()) {
            throw new SteamKitWebRequestException("Response status code does not indicate success: " + response.code() + " (" + response.message() + ")", response);
        }
        byte[] bArr = this.$depotKey;
        try {
            ResponseBody responseBodyBody = response.body();
            if (responseBodyBody == null || (bArrBytes = responseBodyBody.bytes()) == null) {
                throw new SteamKitWebRequestException("Response body is null");
            }
            if (bArrBytes.length == 0) {
                throw new SteamKitWebRequestException("Response is empty");
            }
            ZipInputStream zipInputStream = new ZipInputStream(new ByteArrayInputStream(bArrBytes));
            try {
                if (zipInputStream.getNextEntry() == null) {
                    throw new SteamKitWebRequestException("Expected the zip to contain at least one file");
                }
                DepotManifest depotManifestDeserialize = DepotManifest.Companion.deserialize(new ByteArrayInputStream(ByteStreamsKt.readBytes(zipInputStream)));
                if (bArr != null) {
                    depotManifestDeserialize.decryptFilenames(bArr);
                }
                CloseableKt.closeFinally(zipInputStream, null);
                CloseableKt.closeFinally(response, null);
                return depotManifestDeserialize;
            } finally {
            }
        } finally {
        }
        e = e2;
        Client.logger.error("Failed to download manifest " + request.url() + ": " + e.getMessage(), e);
        throw e;
    }
}
