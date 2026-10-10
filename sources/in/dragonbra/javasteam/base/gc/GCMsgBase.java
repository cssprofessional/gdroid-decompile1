package in.dragonbra.javasteam.base.gc;

import in.dragonbra.javasteam.base.AbstractMsgBase;
import in.dragonbra.javasteam.base.gc.IGCSerializableHeader;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import java.lang.reflect.InvocationTargetException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GCMsgBase.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class GCMsgBase<HdrType extends IGCSerializableHeader> extends AbstractMsgBase implements IClientGCMsg {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(GCMsgBase.class);
    private HdrType header;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GCMsgBase(Class<HdrType> clazz) {
        this(clazz, 0, 2, null);
        Intrinsics.checkNotNullParameter(clazz, "clazz");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GCMsgBase(Class<HdrType> clazz, int i) {
        super(i);
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        try {
            HdrType hdrtypeNewInstance = clazz.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            Intrinsics.checkNotNullExpressionValue(hdrtypeNewInstance, "newInstance(...)");
            this.header = hdrtypeNewInstance;
        } catch (IllegalAccessException e) {
            logger.error(e);
        } catch (InstantiationException e2) {
            logger.error(e2);
        } catch (NoSuchMethodException e3) {
            logger.error(e3);
        } catch (InvocationTargetException e4) {
            logger.error(e4);
        }
    }

    public /* synthetic */ GCMsgBase(Class cls, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(cls, (i2 & 2) != 0 ? 0 : i);
    }

    /* JADX INFO: compiled from: GCMsgBase.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final HdrType getHeader() {
        HdrType hdrtype = this.header;
        if (hdrtype != null) {
            return hdrtype;
        }
        Intrinsics.throwUninitializedPropertyAccessException("header");
        return null;
    }
}
