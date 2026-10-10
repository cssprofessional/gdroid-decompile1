package in.dragonbra.javasteam.base;

import in.dragonbra.javasteam.base.ISteamSerializableMessage;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.generated.ExtendedClientMsgHdr;
import in.dragonbra.javasteam.types.JobID;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import in.dragonbra.javasteam.util.stream.SeekOrigin;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ClientMsg.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ClientMsg<BodyType extends ISteamSerializableMessage> extends MsgBase<ExtendedClientMsgHdr> {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(ClientMsg.class);
    private BodyType body;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ClientMsg(Class<? extends BodyType> bodyType) {
        this(bodyType, 0, 2, null);
        Intrinsics.checkNotNullParameter(bodyType, "bodyType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ClientMsg(Class<? extends BodyType> bodyType, MsgBase<ExtendedClientMsgHdr> msg) {
        this(bodyType, msg, 0, 4, null);
        Intrinsics.checkNotNullParameter(bodyType, "bodyType");
        Intrinsics.checkNotNullParameter(msg, "msg");
    }

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public boolean isProto() {
        return false;
    }

    public /* synthetic */ ClientMsg(Class cls, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(cls, (i2 & 2) != 0 ? 64 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClientMsg(Class<? extends BodyType> bodyType, int i) {
        super(ExtendedClientMsgHdr.class, i);
        Intrinsics.checkNotNullParameter(bodyType, "bodyType");
        try {
            BodyType bodytypeNewInstance = bodyType.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            Intrinsics.checkNotNullExpressionValue(bodytypeNewInstance, "newInstance(...)");
            this.body = bodytypeNewInstance;
        } catch (IllegalAccessException e) {
            logger.error(e);
        } catch (InstantiationException e2) {
            logger.error(e2);
        } catch (NoSuchMethodException e3) {
            logger.error(e3);
        } catch (InvocationTargetException e4) {
            logger.error(e4);
        }
        getHeader().setEMsg(getBody().getEMsg());
    }

    /* JADX INFO: compiled from: ClientMsg.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final BodyType getBody() {
        BodyType bodytype = this.body;
        if (bodytype != null) {
            return bodytype;
        }
        Intrinsics.throwUninitializedPropertyAccessException("body");
        return null;
    }

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public EMsg getMsgType() {
        EMsg msg = getHeader().getMsg();
        Intrinsics.checkNotNullExpressionValue(msg, "getMsg(...)");
        return msg;
    }

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public int getSessionID() {
        return getHeader().getSessionID();
    }

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public void setSessionID(int i) {
        getHeader().setSessionID(i);
    }

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public SteamID getSteamID() {
        return getHeader().getSteamID();
    }

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public void setSteamID(SteamID steamID) {
        ExtendedClientMsgHdr header = getHeader();
        if (steamID == null) {
            throw new IllegalArgumentException("Required value was null.");
        }
        header.setSteamID(steamID);
    }

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public JobID getTargetJobID() {
        return new JobID(getHeader().getTargetJobID());
    }

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public void setTargetJobID(JobID value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getHeader().setTargetJobID(value.getValue());
    }

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public JobID getSourceJobID() {
        return new JobID(getHeader().getSourceJobID());
    }

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public void setSourceJobID(JobID value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getHeader().setSourceJobID(value.getValue());
    }

    public /* synthetic */ ClientMsg(Class cls, MsgBase msgBase, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(cls, msgBase, (i2 & 4) != 0 ? 64 : i);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ClientMsg(Class<? extends BodyType> bodyType, MsgBase<ExtendedClientMsgHdr> msg, int i) {
        this(bodyType, i);
        Intrinsics.checkNotNullParameter(bodyType, "bodyType");
        Intrinsics.checkNotNullParameter(msg, "msg");
        getHeader().setTargetJobID(((ExtendedClientMsgHdr) msg.getHeader()).getSourceJobID());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ClientMsg(Class<? extends BodyType> bodyType, IPacketMsg msg) throws IllegalAccessException, IOException, InvocationTargetException {
        this(bodyType, 0, 2, null);
        Intrinsics.checkNotNullParameter(bodyType, "bodyType");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (msg.isProto()) {
            Logger.debug$default(logger, "ClientMsg<" + bodyType.getSimpleName() + "> used for proto message!", null, 2, null);
        }
        deserialize(msg.getData());
    }

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public byte[] serialize() throws IllegalAccessException, InvocationTargetException {
        try {
            MemoryStream memoryStream = new MemoryStream();
            try {
                OutputStream outputStreamAsOutputStream = memoryStream.asOutputStream();
                getHeader().serialize(outputStreamAsOutputStream);
                ISteamSerializableMessage body = getBody();
                Intrinsics.checkNotNull(outputStreamAsOutputStream);
                body.serialize(outputStreamAsOutputStream);
                outputStreamAsOutputStream.write(getPayload().toByteArray());
                byte[] byteArray = memoryStream.toByteArray();
                Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
                CloseableKt.closeFinally(memoryStream, null);
                return byteArray;
            } finally {
            }
        } catch (IOException e) {
            logger.error(e);
            return new byte[0];
        }
    }

    @Override // in.dragonbra.javasteam.base.IClientMsg
    public void deserialize(byte[] data) throws IllegalAccessException, IOException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(data, "data");
        MemoryStream memoryStream = new MemoryStream(data);
        try {
            try {
                getHeader().deserialize(memoryStream);
                getBody().deserialize(memoryStream);
            } catch (IOException e) {
                logger.error(e);
            }
            getPayload().write(data, (int) memoryStream.getPosition(), memoryStream.available());
            getPayload().seek(0L, SeekOrigin.BEGIN);
            CloseableKt.closeFinally(memoryStream, null);
        } finally {
        }
    }
}
