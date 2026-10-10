package io.ktor.util;

import io.ktor.util.Platform;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PlatformUtils.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PlatformUtils {
    public static final PlatformUtils INSTANCE;
    public static final boolean IS_BROWSER;
    public static final boolean IS_DEVELOPMENT_MODE;
    public static final boolean IS_JS;
    public static final boolean IS_JVM;
    public static final boolean IS_NATIVE;
    public static final boolean IS_NEW_MM_ENABLED;
    public static final boolean IS_NODE;
    public static final boolean IS_WASM_JS;

    static {
        PlatformUtils platformUtils = new PlatformUtils();
        INSTANCE = platformUtils;
        Platform platform = PlatformUtilsJvmKt.getPlatform(platformUtils);
        boolean z = false;
        IS_BROWSER = !(platform instanceof Platform.Js) ? !((platform instanceof Platform.WasmJs) && ((Platform.WasmJs) platform).getJsPlatform() == Platform.JsPlatform.Browser) : ((Platform.Js) platform).getJsPlatform() != Platform.JsPlatform.Browser;
        Platform platform2 = PlatformUtilsJvmKt.getPlatform(platformUtils);
        if (!(platform2 instanceof Platform.Js) ? !(!(platform2 instanceof Platform.WasmJs) || ((Platform.WasmJs) platform2).getJsPlatform() != Platform.JsPlatform.Node) : ((Platform.Js) platform2).getJsPlatform() == Platform.JsPlatform.Node) {
            z = true;
        }
        IS_NODE = z;
        IS_JS = PlatformUtilsJvmKt.getPlatform(platformUtils) instanceof Platform.Js;
        IS_WASM_JS = PlatformUtilsJvmKt.getPlatform(platformUtils) instanceof Platform.WasmJs;
        IS_JVM = Intrinsics.areEqual(PlatformUtilsJvmKt.getPlatform(platformUtils), Platform.Jvm.INSTANCE);
        IS_NATIVE = Intrinsics.areEqual(PlatformUtilsJvmKt.getPlatform(platformUtils), Platform.Native.INSTANCE);
        IS_DEVELOPMENT_MODE = PlatformUtilsJvmKt.isDevelopmentMode(platformUtils);
        IS_NEW_MM_ENABLED = true;
    }

    public final boolean getIS_BROWSER() {
        return IS_BROWSER;
    }

    public final boolean getIS_DEVELOPMENT_MODE() {
        return IS_DEVELOPMENT_MODE;
    }
}
