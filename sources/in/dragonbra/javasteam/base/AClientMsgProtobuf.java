package in.dragonbra.javasteam.base;

import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.generated.MsgHdrProtoBuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase;
import in.dragonbra.javasteam.types.JobID;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AClientMsgProtobuf.kt */
/* JADX INFO: loaded from: classes.dex */
public class AClientMsgProtobuf extends MsgBase<MsgHdrProtoBuf> {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(AClientMsgProtobuf.class);

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public boolean isProto() {
        return true;
    }

    /* JADX INFO: compiled from: AClientMsgProtobuf.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final SteammessagesBase.CMsgProtoBufHeader.Builder getProtoHeader() {
        SteammessagesBase.CMsgProtoBufHeader.Builder proto = getHeader().getProto();
        Intrinsics.checkNotNullExpressionValue(proto, "getProto(...)");
        return proto;
    }

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public EMsg getMsgType() {
        EMsg msg = getHeader().getMsg();
        Intrinsics.checkNotNullExpressionValue(msg, "getMsg(...)");
        return msg;
    }

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public int getSessionID() {
        return getProtoHeader().getClientSessionid();
    }

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public void setSessionID(int i) {
        getProtoHeader().setClientSessionid(i);
    }

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public SteamID getSteamID() {
        return new SteamID(getProtoHeader().getSteamid());
    }

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public void setSteamID(SteamID steamID) {
        SteammessagesBase.CMsgProtoBufHeader.Builder protoHeader = getProtoHeader();
        Intrinsics.checkNotNull(steamID);
        protoHeader.setSteamid(steamID.convertToUInt64());
    }

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public JobID getTargetJobID() {
        return new JobID(getProtoHeader().getJobidTarget());
    }

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public void setTargetJobID(JobID value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getProtoHeader().setJobidTarget(value.getValue());
    }

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public JobID getSourceJobID() {
        return new JobID(getProtoHeader().getJobidSource());
    }

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public void setSourceJobID(JobID value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getProtoHeader().setJobidSource(value.getValue());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AClientMsgProtobuf(IPacketMsg msg) throws IllegalAccessException, InvocationTargetException {
        this(msg.getMsgType(), 0, 2, null);
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (!msg.isProto()) {
            Logger.error$default(logger, "ClientMsgProtobuf used for non-proto message!", null, 2, null);
        }
        deserialize(msg.getData());
    }

    private AClientMsgProtobuf() {
        this(0);
    }

    public AClientMsgProtobuf(int i) {
        super(MsgHdrProtoBuf.class, i);
    }

    private AClientMsgProtobuf(EMsg eMsg, int i) {
        super(MsgHdrProtoBuf.class, i);
        getHeader().setEMsg(eMsg);
    }

    public /* synthetic */ AClientMsgProtobuf(EMsg eMsg, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(eMsg, (i2 & 2) != 0 ? 0 : i);
    }

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public byte[] serialize() {
        throw new UnsupportedOperationException("ClientMsgProtobuf is for reading only. Use ClientMsgProtobuf<T> for serializing messages.");
    }

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public void deserialize(byte[] data) throws IllegalAccessException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(data, "data");
        try {
            MemoryStream memoryStream = new MemoryStream(data);
            try {
                getHeader().deserialize(memoryStream);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(memoryStream, null);
            } finally {
            }
        } catch (IOException e) {
            logger.error(e);
        }
    }
}
