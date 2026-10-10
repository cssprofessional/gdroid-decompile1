package io.ktor.util.pipeline;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PipelineContext.jvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PipelineContext_jvmKt {
    public static final boolean DISABLE_SFG = Intrinsics.areEqual(System.getProperty("io.ktor.internal.disable.sfg"), "true");

    public static final boolean getDISABLE_SFG() {
        return DISABLE_SFG;
    }
}
