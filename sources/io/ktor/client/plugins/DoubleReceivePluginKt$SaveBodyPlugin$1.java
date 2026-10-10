package io.ktor.client.plugins;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: compiled from: SaveBody.kt */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class DoubleReceivePluginKt$SaveBodyPlugin$1 extends FunctionReferenceImpl implements Function0<SaveBodyPluginConfig> {
    public static final DoubleReceivePluginKt$SaveBodyPlugin$1 INSTANCE = new DoubleReceivePluginKt$SaveBodyPlugin$1();

    public DoubleReceivePluginKt$SaveBodyPlugin$1() {
        super(0, SaveBodyPluginConfig.class, "<init>", "<init>()V", 0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final SaveBodyPluginConfig invoke() {
        return new SaveBodyPluginConfig();
    }
}
