package in.dragonbra.javasteam.steam.cdn;

import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import okhttp3.HttpUrl;
import okhttp3.Request;

/* JADX INFO: compiled from: ClientLancache.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ClientLancache {
    public static final ClientLancache INSTANCE = new ClientLancache();
    private static final String TRIGGER_DOMAIN = "lancache.steamcontent.com";
    private static boolean useLanCacheServer;

    private ClientLancache() {
    }

    public final boolean getUseLanCacheServer() {
        return useLanCacheServer;
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.cdn.ClientLancache$detectLancacheServer$2, reason: invalid class name */
    /* JADX INFO: compiled from: ClientLancache.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.cdn.ClientLancache$detectLancacheServer$2", f = "ClientLancache.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        public AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            boolean z = true;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            try {
                InetAddress[] allByName = InetAddress.getAllByName(ClientLancache.TRIGGER_DOMAIN);
                Intrinsics.checkNotNull(allByName);
                ArrayList<InetAddress> arrayList = new ArrayList();
                for (InetAddress inetAddress : allByName) {
                    if ((inetAddress instanceof Inet4Address) || (inetAddress instanceof Inet6Address)) {
                        arrayList.add(inetAddress);
                    }
                }
                ClientLancache clientLancache = ClientLancache.INSTANCE;
                if (arrayList.isEmpty()) {
                    z = false;
                    ClientLancache.useLanCacheServer = z;
                } else {
                    for (InetAddress inetAddress2 : arrayList) {
                        Intrinsics.checkNotNull(inetAddress2);
                        if (ClientLancache.isPrivateAddress(inetAddress2)) {
                            break;
                        }
                    }
                    z = false;
                    ClientLancache.useLanCacheServer = z;
                }
            } catch (Exception unused) {
                ClientLancache.useLanCacheServer = false;
            }
            return Unit.INSTANCE;
        }
    }

    public final Object detectLancacheServer(Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass2(null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    public static final boolean isPrivateAddress(InetAddress toTest) {
        Intrinsics.checkNotNullParameter(toTest, "toTest");
        if (toTest.isLoopbackAddress()) {
            return true;
        }
        byte[] address = toTest.getAddress();
        if (toTest instanceof Inet4Address) {
            int i = address[0] & 255;
            if (i == 10) {
                return true;
            }
            if (i == 172) {
                int i2 = address[1] & 255;
                if (16 <= i2 && i2 < 32) {
                    return true;
                }
            } else if (i == 192 && (address[1] & 255) == 168) {
                return true;
            }
            return false;
        }
        if (toTest instanceof Inet6Address) {
            return (address[0] & 254) == 252 || ((Inet6Address) toTest).isLinkLocalAddress();
        }
        return false;
    }

    public static /* synthetic */ Request buildLancacheRequest$default(ClientLancache clientLancache, Server server, String str, String str2, int i, Object obj) {
        if ((i & 4) != 0) {
            str2 = null;
        }
        return clientLancache.buildLancacheRequest(server, str, str2);
    }

    public final Request buildLancacheRequest(Server server, String command, String str) {
        Intrinsics.checkNotNullParameter(server, "server");
        Intrinsics.checkNotNullParameter(command, "command");
        HttpUrl.Builder builderAddPathSegments = HttpUrl.Companion.get("http://lancache.steamcontent.com:80").newBuilder().addPathSegments(StringsKt__StringsKt.trimStart(command, '/'));
        if (str != null && str.length() > 0) {
            Iterator it = StringsKt__StringsKt.split$default((CharSequence) str, new String[]{"&"}, false, 0, 6, (Object) null).iterator();
            while (it.hasNext()) {
                List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) it.next(), new String[]{"="}, false, 2, 2, (Object) null);
                if (listSplit$default.size() == 2) {
                    builderAddPathSegments.addQueryParameter((String) listSplit$default.get(0), (String) listSplit$default.get(1));
                } else if (listSplit$default.size() == 1 && ((CharSequence) listSplit$default.get(0)).length() > 0) {
                    builderAddPathSegments.addQueryParameter((String) listSplit$default.get(0), "");
                }
            }
        }
        Request.Builder builderUrl = new Request.Builder().url(builderAddPathSegments.build());
        String host = server.getHost();
        return builderUrl.header("Host", host != null ? host : "").header("User-Agent", "Valve/Steam HTTP Client 1.0").build();
    }
}
