package in.dragonbra.javasteam.base.gc;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessage.Builder;
import com.google.protobuf.Message;
import in.dragonbra.javasteam.generated.MsgGCHdrProtoBuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase;
import in.dragonbra.javasteam.types.JobID;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import in.dragonbra.javasteam.util.stream.SeekOrigin;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ClientGCMsgProtobuf.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ClientGCMsgProtobuf<BodyType extends GeneratedMessage.Builder<BodyType>> extends GCMsgBase<MsgGCHdrProtoBuf> {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(ClientGCMsgProtobuf.class);
    private BodyType body;
    private final Class<? extends AbstractMessage> clazz;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ClientGCMsgProtobuf(Class<? extends AbstractMessage> clazz, int i) {
        this(clazz, i, 0, 4, null);
        Intrinsics.checkNotNullParameter(clazz, "clazz");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ClientGCMsgProtobuf(Class<? extends AbstractMessage> clazz, int i, GCMsgBase<MsgGCHdrProtoBuf> msg) {
        this(clazz, i, msg, 0, 8, null);
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(msg, "msg");
    }

    @Override // in.dragonbra.javasteam.base.gc.IClientGCMsg
    public boolean isProto() {
        return true;
    }

    public /* synthetic */ ClientGCMsgProtobuf(Class cls, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((Class<? extends AbstractMessage>) cls, i, (i3 & 4) != 0 ? 64 : i2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClientGCMsgProtobuf(Class<? extends AbstractMessage> clazz, int i, int i2) {
        super(MsgGCHdrProtoBuf.class, i2);
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        this.clazz = clazz;
        try {
            Object objInvoke = clazz.getMethod("newBuilder", new Class[0]).invoke(null, new Object[0]);
            Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type BodyType of in.dragonbra.javasteam.base.gc.ClientGCMsgProtobuf");
            this.body = (BodyType) objInvoke;
        } catch (IllegalAccessException e) {
            logger.error(e);
        } catch (NoSuchMethodException e2) {
            logger.error(e2);
        } catch (InvocationTargetException e3) {
            logger.error(e3);
        }
        getHeader().setEMsg(i);
    }

    /* JADX INFO: compiled from: ClientGCMsgProtobuf.kt */
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

    public final SteammessagesBase.CMsgProtoBufHeader.Builder getProtoHeader() {
        SteammessagesBase.CMsgProtoBufHeader.Builder proto = getHeader().getProto();
        Intrinsics.checkNotNullExpressionValue(proto, "getProto(...)");
        return proto;
    }

    @Override // in.dragonbra.javasteam.base.gc.IClientGCMsg
    public int getMsgType() {
        return getHeader().getMsg();
    }

    @Override // in.dragonbra.javasteam.base.gc.IClientGCMsg
    public JobID getTargetJobID() {
        return new JobID(getProtoHeader().getJobidTarget());
    }

    @Override // in.dragonbra.javasteam.base.gc.IClientGCMsg
    public void setTargetJobID(JobID value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getProtoHeader().setJobidTarget(value.getValue());
    }

    @Override // in.dragonbra.javasteam.base.gc.IClientGCMsg
    public JobID getSourceJobID() {
        return new JobID(getProtoHeader().getJobidSource());
    }

    @Override // in.dragonbra.javasteam.base.gc.IClientGCMsg
    public void setSourceJobID(JobID value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getProtoHeader().setJobidSource(value.getValue());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ClientGCMsgProtobuf(Class<? extends AbstractMessage> clazz, IPacketGCMsg msg) {
        this(clazz, msg.getMsgType(), 0, 4, null);
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (!msg.isProto()) {
            Logger.debug$default(logger, "ClientMsgProtobuf<" + clazz.getSimpleName() + "> used for non-proto message!", null, 2, null);
        }
        deserialize(msg.getData());
    }

    public /* synthetic */ ClientGCMsgProtobuf(Class cls, int i, GCMsgBase gCMsgBase, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(cls, i, gCMsgBase, (i3 & 8) != 0 ? 64 : i2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ClientGCMsgProtobuf(Class<? extends AbstractMessage> clazz, int i, GCMsgBase<MsgGCHdrProtoBuf> msg, int i2) {
        this(clazz, i, i2);
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(msg, "msg");
        getHeader().getProto().setJobidTarget(((MsgGCHdrProtoBuf) msg.getHeader()).getProto().getJobidSource());
    }

    @Override // in.dragonbra.javasteam.base.gc.IClientGCMsg
    public byte[] serialize() throws IllegalAccessException, InvocationTargetException {
        try {
            MemoryStream memoryStream = new MemoryStream();
            try {
                OutputStream outputStreamAsOutputStream = memoryStream.asOutputStream();
                getHeader().serialize(outputStreamAsOutputStream);
                ((Message) getBody().build()).writeTo(outputStreamAsOutputStream);
                outputStreamAsOutputStream.write(getPayload().toByteArray());
                byte[] byteArray = memoryStream.toByteArray();
                Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
                CloseableKt.closeFinally(memoryStream, null);
                return byteArray;
            } finally {
            }
        } catch (IOException unused) {
            return new byte[0];
        }
    }

    @Override // in.dragonbra.javasteam.base.gc.IClientGCMsg
    public void deserialize(byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        try {
            MemoryStream memoryStream = new MemoryStream(data);
            try {
                getHeader().deserialize(memoryStream);
                Object objInvoke = this.clazz.getMethod("newBuilder", new Class[0]).invoke(null, new Object[0]);
                Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type BodyType of in.dragonbra.javasteam.base.gc.ClientGCMsgProtobuf");
                this.body = (BodyType) objInvoke;
                getBody().mergeFrom((InputStream) memoryStream);
                getPayload().write(data, (int) memoryStream.getPosition(), memoryStream.available());
                getPayload().seek(0L, SeekOrigin.BEGIN);
                CloseableKt.closeFinally(memoryStream, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(memoryStream, th);
                    throw th2;
                }
            }
        } catch (IOException e) {
            logger.error(e);
        } catch (IllegalAccessException e2) {
            logger.error(e2);
        } catch (NoSuchMethodException e3) {
            logger.error(e3);
        } catch (InvocationTargetException e4) {
            logger.error(e4);
        }
    }
}
