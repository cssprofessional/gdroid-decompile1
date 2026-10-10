package io.ktor.network.tls.extensions;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;

/* JADX INFO: compiled from: PointFormat.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PointFormatKt {
    public static final List<PointFormat> SupportedPointFormats = CollectionsKt__CollectionsKt.listOf((Object[]) new PointFormat[]{PointFormat.UNCOMPRESSED, PointFormat.ANSIX962_COMPRESSED_PRIME, PointFormat.ANSIX962_COMPRESSED_CHAR2});

    public static final List<PointFormat> getSupportedPointFormats() {
        return SupportedPointFormats;
    }
}
