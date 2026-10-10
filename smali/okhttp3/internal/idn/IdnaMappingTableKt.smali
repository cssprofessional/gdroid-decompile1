###### Class okhttp3.internal.idn.IdnaMappingTableKt (okhttp3.internal.idn.IdnaMappingTableKt)
.class public final Lokhttp3/internal/idn/IdnaMappingTableKt;
.super Ljava/lang/Object;
.source "IdnaMappingTable.kt"


# direct methods
.method public static final read14BitInt(Ljava/lang/String;I)I
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 p1, p1, 0x1

    .line 255
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    shl-int/lit8 p1, v0, 0x7

    add-int/2addr p1, p0

    return p1
.end method
