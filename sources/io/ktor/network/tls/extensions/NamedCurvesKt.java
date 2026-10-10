package io.ktor.network.tls.extensions;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;

/* JADX INFO: compiled from: NamedCurves.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class NamedCurvesKt {
    public static final List<NamedCurve> SupportedNamedCurves = CollectionsKt__CollectionsKt.listOf((Object[]) new NamedCurve[]{NamedCurve.secp256r1, NamedCurve.secp384r1});

    public static final List<NamedCurve> getSupportedNamedCurves() {
        return SupportedNamedCurves;
    }
}
