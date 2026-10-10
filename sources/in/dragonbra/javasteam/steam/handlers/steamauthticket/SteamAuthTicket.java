package in.dragonbra.javasteam.steam.handlers.steamauthticket;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.ByteString;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import in.dragonbra.javasteam.steam.handlers.ClientMsgHandler;
import in.dragonbra.javasteam.steam.handlers.steamauthticket.callback.TicketAcceptedCallback;
import in.dragonbra.javasteam.steam.handlers.steamauthticket.callback.TicketAuthCompleteCallback;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import in.dragonbra.javasteam.util.Utils;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Function;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.future.FutureKt;

/* JADX INFO: compiled from: SteamAuthTicket.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamAuthTicket extends ClientMsgHandler {
    private static final int WEB_API_TICKET_SIZE = 2560;
    public static final Companion Companion = new Companion(null);
    private static final AtomicInteger sequence = new AtomicInteger(0);
    private final Map<EMsg, KFunction<Unit>> dispatchMap = MapsKt__MapsKt.mapOf(TuplesKt.to(EMsg.ClientAuthListAck, new SteamAuthTicket$dispatchMap$1(this)), TuplesKt.to(EMsg.ClientTicketAuthComplete, new SteamAuthTicket$dispatchMap$2(this)), TuplesKt.to(EMsg.ClientGameConnectTokens, new SteamAuthTicket$dispatchMap$3(this)), TuplesKt.to(EMsg.ClientLogOff, new SteamAuthTicket$dispatchMap$4(this)));
    private final LinkedBlockingQueue<byte[]> gameConnectTokens = new LinkedBlockingQueue<>();
    private final ConcurrentHashMap<Integer, List<SteammessagesBase.CMsgAuthTicket>> ticketsByGame = new ConcurrentHashMap<>();
    private final Object ticketChangeLock = new Object();

    /* JADX INFO: compiled from: SteamAuthTicket.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: SteamAuthTicket.kt */
    public static final class TicketType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ TicketType[] $VALUES;
        public static final TicketType AuthSession = new TicketType("AuthSession", 0, 2);
        public static final TicketType WebApiTicket = new TicketType("WebApiTicket", 1, 5);
        private final int value;

        private static final /* synthetic */ TicketType[] $values() {
            return new TicketType[]{AuthSession, WebApiTicket};
        }

        public static EnumEntries<TicketType> getEntries() {
            return $ENTRIES;
        }

        public static TicketType valueOf(String str) {
            return (TicketType) Enum.valueOf(TicketType.class, str);
        }

        public static TicketType[] values() {
            return (TicketType[]) $VALUES.clone();
        }

        private TicketType(String str, int i, int i2) {
            this.value = i2;
        }

        public final int getValue() {
            return this.value;
        }

        static {
            TicketType[] ticketTypeArr$values = $values();
            $VALUES = ticketTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(ticketTypeArr$values);
        }
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$getAuthSessionTicket$1, reason: invalid class name */
    /* JADX INFO: compiled from: SteamAuthTicket.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$getAuthSessionTicket$1", f = "SteamAuthTicket.kt", l = {SteammessagesClientserverLogin.CMsgClientLogon.OTP_TYPE_FIELD_NUMBER}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super TicketInfo>, Object> {
        final /* synthetic */ int $appid;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(int i, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$appid = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamAuthTicket.this.new AnonymousClass1(this.$appid, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super TicketInfo> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Exception {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SteamAuthTicket steamAuthTicket = SteamAuthTicket.this;
                int i2 = this.$appid;
                TicketType ticketType = TicketType.AuthSession;
                this.label = 1;
                obj = steamAuthTicket.getAuthSessionTicketInternal$javasteam(i2, ticketType, "", this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final CompletableFuture<TicketInfo> getAuthSessionTicket(int i) {
        return FutureKt.future$default(getClient().getDefaultScope$javasteam(), null, null, new AnonymousClass1(i, null), 3, null);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$getAuthTicketForWebApi$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SteamAuthTicket.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$getAuthTicketForWebApi$1", f = "SteamAuthTicket.kt", l = {100}, m = "invokeSuspend", v = 1)
    public static final class C00121 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super TicketInfo>, Object> {
        final /* synthetic */ int $appid;
        final /* synthetic */ String $identity;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00121(int i, String str, Continuation<? super C00121> continuation) {
            super(2, continuation);
            this.$appid = i;
            this.$identity = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamAuthTicket.this.new C00121(this.$appid, this.$identity, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super TicketInfo> continuation) {
            return ((C00121) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Exception {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SteamAuthTicket steamAuthTicket = SteamAuthTicket.this;
                int i2 = this.$appid;
                TicketType ticketType = TicketType.WebApiTicket;
                String str = this.$identity;
                this.label = 1;
                obj = steamAuthTicket.getAuthSessionTicketInternal$javasteam(i2, ticketType, str, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final CompletableFuture<TicketInfo> getAuthTicketForWebApi(int i, String identity) {
        Intrinsics.checkNotNullParameter(identity, "identity");
        return FutureKt.future$default(getClient().getDefaultScope$javasteam(), null, null, new C00121(i, identity, null), 3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object getAuthSessionTicketInternal$javasteam(int r17, in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket.TicketType r18, java.lang.String r19, kotlin.coroutines.Continuation<? super in.dragonbra.javasteam.steam.handlers.steamauthticket.TicketInfo> r20) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 439
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket.getAuthSessionTicketInternal$javasteam(int, in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$TicketType, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void cancelAuthTicket$javasteam(final TicketInfo authTicket) {
        Intrinsics.checkNotNullParameter(authTicket, "authTicket");
        synchronized (this.ticketChangeLock) {
            List<SteammessagesBase.CMsgAuthTicket> list = this.ticketsByGame.get(Integer.valueOf(authTicket.getAppID$javasteam()));
            if (list != null) {
                CollectionsKt__MutableCollectionsKt.removeAll(list, new Function1() { // from class: in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return Boolean.valueOf(SteamAuthTicket.cancelAuthTicket$lambda$0$0(authTicket, (SteammessagesBase.CMsgAuthTicket) obj));
                    }
                });
            }
        }
        sendTickets();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean cancelAuthTicket$lambda$0$0(TicketInfo ticketInfo, SteammessagesBase.CMsgAuthTicket it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getTicketCrc() == ((int) ticketInfo.getTicketCRC$javasteam());
    }

    private final byte[] combineTickets(byte[] bArr, byte[] bArr2, boolean z) {
        int length = bArr2.length;
        int length2 = bArr.length + 4 + bArr2.length;
        int iMax = z ? Math.max(length2, WEB_API_TICKET_SIZE) : length2;
        byte[] bArr3 = new byte[iMax];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        ByteBuffer.wrap(bArr3, bArr.length, 4).order(ByteOrder.LITTLE_ENDIAN).putInt(length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length + 4, bArr2.length);
        if (z && length2 < iMax) {
            new SecureRandom().nextBytes(ArraysKt___ArraysKt.sliceArray(bArr3, RangesKt___RangesKt.until(length2, iMax)));
            System.arraycopy(ArraysKt___ArraysKt.sliceArray(bArr3, RangesKt___RangesKt.until(length2, iMax)), 0, bArr3, length2, iMax - length2);
        }
        return bArr3;
    }

    private final byte[] buildAuthTicket(byte[] bArr, TicketType ticketType) throws IllegalAccessException, IOException, InvocationTargetException {
        MemoryStream memoryStream = new MemoryStream(bArr.length + 28);
        try {
            BinaryWriter binaryWriter = new BinaryWriter(memoryStream.asOutputStream());
            try {
                binaryWriter.writeInt(bArr.length);
                binaryWriter.write(bArr);
                binaryWriter.writeInt(24);
                binaryWriter.writeInt(1);
                binaryWriter.writeInt(ticketType.getValue());
                byte[] bArr2 = new byte[8];
                new SecureRandom().nextBytes(bArr2);
                binaryWriter.write(bArr2);
                binaryWriter.writeInt((int) System.nanoTime());
                binaryWriter.writeInt(sequence.incrementAndGet());
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(binaryWriter, null);
                byte[] byteArray = memoryStream.toByteArray();
                Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
                CloseableKt.closeFinally(memoryStream, null);
                return byteArray;
            } finally {
            }
        } finally {
        }
    }

    private final Pair<AsyncJobSingle<TicketAcceptedCallback>, Long> verifyTicket(int i, byte[] bArr, byte[] bArr2) {
        long jCrc32 = Utils.crc32(bArr);
        synchronized (this.ticketChangeLock) {
            try {
                ConcurrentHashMap<Integer, List<SteammessagesBase.CMsgAuthTicket>> concurrentHashMap = this.ticketsByGame;
                Integer numValueOf = Integer.valueOf(i);
                final Function1 function1 = new Function1() { // from class: in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return SteamAuthTicket.verifyTicket$lambda$0$0((Integer) obj);
                    }
                };
                List<SteammessagesBase.CMsgAuthTicket> listComputeIfAbsent = concurrentHashMap.computeIfAbsent(numValueOf, new Function() { // from class: in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$$ExternalSyntheticLambda1
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return SteamAuthTicket.verifyTicket$lambda$0$1(function1, obj);
                    }
                });
                Intrinsics.checkNotNullExpressionValue(listComputeIfAbsent, "computeIfAbsent(...)");
                List<SteammessagesBase.CMsgAuthTicket> list = listComputeIfAbsent;
                SteammessagesBase.CMsgAuthTicket.Builder builderNewBuilder = SteammessagesBase.CMsgAuthTicket.newBuilder();
                builderNewBuilder.setGameid(i);
                builderNewBuilder.setTicket(ByteString.copyFrom(bArr));
                builderNewBuilder.setTicketCrc((int) jCrc32);
                if (bArr2 != null) {
                    builderNewBuilder.setServerSecret(ByteString.copyFrom(bArr2));
                }
                SteammessagesBase.CMsgAuthTicket cMsgAuthTicketBuild = builderNewBuilder.build();
                Intrinsics.checkNotNullExpressionValue(cMsgAuthTicketBuild, "build(...)");
                list.add(cMsgAuthTicketBuild);
            } catch (Throwable th) {
                throw th;
            }
        }
        return TuplesKt.to(sendTickets(), Long.valueOf(jCrc32));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List verifyTicket$lambda$0$0(Integer it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List verifyTicket$lambda$0$1(Function1 function1, Object obj) {
        return (List) function1.invoke(obj);
    }

    private final AsyncJobSingle<TicketAcceptedCallback> sendTickets() {
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserver.CMsgClientAuthList.class, EMsg.ClientAuthList, 0, 4, null);
        ((SteammessagesClientserver.CMsgClientAuthList.Builder) clientMsgProtobuf.getBody()).setTokensLeft(this.gameConnectTokens.size());
        synchronized (this.ticketChangeLock) {
            ((SteammessagesClientserver.CMsgClientAuthList.Builder) clientMsgProtobuf.getBody()).addAllAppIds(this.ticketsByGame.keySet());
            SteammessagesClientserver.CMsgClientAuthList.Builder builder = (SteammessagesClientserver.CMsgClientAuthList.Builder) clientMsgProtobuf.getBody();
            Collection<List<SteammessagesBase.CMsgAuthTicket>> collectionValues = this.ticketsByGame.values();
            Intrinsics.checkNotNullExpressionValue(collectionValues, "<get-values>(...)");
            builder.addAllTickets(CollectionsKt__IterablesKt.flatten(collectionValues));
        }
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        getClient().send(clientMsgProtobuf);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    @Override // in.dragonbra.javasteam.steam.handlers.ClientMsgHandler
    public void handleMsg(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        KFunction<Unit> kFunction = this.dispatchMap.get(packetMsg.getMsgType());
        if (kFunction != null) {
            ((Function1) kFunction).invoke(packetMsg);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleLogOffResponse(IPacketMsg iPacketMsg) {
        this.gameConnectTokens.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleGameConnectTokens(IPacketMsg iPacketMsg) {
        SteammessagesClientserver.CMsgClientGameConnectTokens.Builder builder = (SteammessagesClientserver.CMsgClientGameConnectTokens.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver.CMsgClientGameConnectTokens.class, iPacketMsg).getBody();
        List<ByteString> tokensList = builder.getTokensList();
        Intrinsics.checkNotNullExpressionValue(tokensList, "getTokensList(...)");
        Iterator<T> it = tokensList.iterator();
        while (it.hasNext()) {
            this.gameConnectTokens.offer(((ByteString) it.next()).toByteArray());
        }
        while (this.gameConnectTokens.size() > builder.getMaxTokensToKeep()) {
            this.gameConnectTokens.poll();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleTicketAuthComplete(IPacketMsg iPacketMsg) {
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver.CMsgClientTicketAuthComplete.class, iPacketMsg);
        getClient().postCallback(new TicketAuthCompleteCallback(clientMsgProtobuf.getTargetJobID(), (SteammessagesClientserver.CMsgClientTicketAuthComplete.Builder) clientMsgProtobuf.getBody()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleTicketAcknowledged(IPacketMsg iPacketMsg) {
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver.CMsgClientAuthListAck.class, iPacketMsg);
        getClient().postCallback(new TicketAcceptedCallback(clientMsgProtobuf.getTargetJobID(), (SteammessagesClientserver.CMsgClientAuthListAck.Builder) clientMsgProtobuf.getBody()));
    }
}
