package in.dragonbra.javasteam.base;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessage.Builder;
import com.google.protobuf.Message;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.generated.MsgHdrProtoBuf;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.SeekOrigin;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ClientMsgProtobuf.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ClientMsgProtobuf<BodyType extends GeneratedMessage.Builder<BodyType>> extends AClientMsgProtobuf {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(ClientMsgProtobuf.class);
    private BodyType body;
    private final Class<? extends AbstractMessage> clazz;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ClientMsgProtobuf(Class<? extends AbstractMessage> clazz, EMsg eMsg) {
        this(clazz, eMsg, 0, 4, null);
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(eMsg, "eMsg");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ClientMsgProtobuf(Class<? extends AbstractMessage> clazz, EMsg eMsg, MsgBase<MsgHdrProtoBuf> msg) {
        this(clazz, eMsg, msg, 0, 8, null);
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(eMsg, "eMsg");
        Intrinsics.checkNotNullParameter(msg, "msg");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClientMsgProtobuf(Class<? extends AbstractMessage> clazz, EMsg eMsg, int i) {
        super(i);
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(eMsg, "eMsg");
        this.clazz = clazz;
        try {
            Object objInvoke = clazz.getMethod("newBuilder", new Class[0]).invoke(null, new Object[0]);
            Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type BodyType of in.dragonbra.javasteam.base.ClientMsgProtobuf");
            this.body = (BodyType) objInvoke;
        } catch (IllegalAccessException e) {
            logger.debug(e);
        } catch (NoSuchMethodException e2) {
            logger.debug(e2);
        } catch (InvocationTargetException e3) {
            logger.debug(e3);
        }
        getHeader().setEMsg(eMsg);
    }

    public /* synthetic */ ClientMsgProtobuf(Class cls, EMsg eMsg, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((Class<? extends AbstractMessage>) cls, eMsg, (i2 & 4) != 0 ? 64 : i);
    }

    /* JADX INFO: compiled from: ClientMsgProtobuf.kt */
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

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ClientMsgProtobuf(Class<? extends AbstractMessage> clazz, IPacketMsg msg) {
        this(clazz, msg, 64);
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (!msg.isProto()) {
            Logger.debug$default(logger, "ClientMsgProtobuf<" + clazz.getSimpleName() + "> used for non-proto message!", null, 2, null);
        }
        deserialize(msg.getData());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ClientMsgProtobuf(Class<? extends AbstractMessage> clazz, IPacketMsg msg, int i) {
        this(clazz, msg.getMsgType(), i);
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(msg, "msg");
    }

    public /* synthetic */ ClientMsgProtobuf(Class cls, EMsg eMsg, MsgBase msgBase, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(cls, eMsg, msgBase, (i2 & 8) != 0 ? 64 : i);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ClientMsgProtobuf(Class<? extends AbstractMessage> clazz, EMsg eMsg, MsgBase<MsgHdrProtoBuf> msg, int i) {
        this(clazz, eMsg, i);
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(eMsg, "eMsg");
        Intrinsics.checkNotNullParameter(msg, "msg");
        getHeader().getProto().setJobidTarget(((MsgHdrProtoBuf) msg.getHeader()).getProto().getJobidSource());
    }

    @Override // in.dragonbra.javasteam.base.AClientMsgProtobuf, in.dragonbra.javasteam.base.IClientMsg
    public byte[] serialize() throws IllegalAccessException, InvocationTargetException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(0);
            try {
                getHeader().serialize(byteArrayOutputStream);
                byteArrayOutputStream.write(((Message) getBody().build()).toByteArray());
                byteArrayOutputStream.write(getPayload().toByteArray());
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
                CloseableKt.closeFinally(byteArrayOutputStream, null);
                return byteArray;
            } finally {
            }
        } catch (IOException e) {
            logger.debug(e);
            return new byte[0];
        }
    }

    @Override // in.dragonbra.javasteam.base.AClientMsgProtobuf, in.dragonbra.javasteam.base.IClientMsg
    public void deserialize(byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        BinaryReader binaryReader = new BinaryReader(new ByteArrayInputStream(data));
        try {
            getHeader().deserialize(binaryReader);
            Object objInvoke = this.clazz.getMethod("newBuilder", new Class[0]).invoke(null, new Object[0]);
            Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type BodyType of in.dragonbra.javasteam.base.ClientMsgProtobuf");
            this.body = (BodyType) objInvoke;
            getBody().mergeFrom((InputStream) binaryReader);
            getPayload().write(data, binaryReader.getPosition(), binaryReader.available());
            getPayload().seek(0L, SeekOrigin.BEGIN);
        } catch (IOException e) {
            logger.debug(e);
        } catch (IllegalAccessException e2) {
            logger.debug(e2);
        } catch (NoSuchMethodException e3) {
            logger.debug(e3);
        } catch (InvocationTargetException e4) {
            logger.debug(e4);
        }
        try {
            binaryReader.close();
        } catch (IOException e5) {
            logger.error(e5);
        }
    }
}
