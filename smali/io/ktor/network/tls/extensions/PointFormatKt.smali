###### Class io.ktor.network.tls.extensions.PointFormatKt (io.ktor.network.tls.extensions.PointFormatKt)
.class public final Lio/ktor/network/tls/extensions/PointFormatKt;
.super Ljava/lang/Object;
.source "PointFormat.kt"


# static fields
.field public static final SupportedPointFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/network/tls/extensions/PointFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 44
    sget-object v0, Lio/ktor/network/tls/extensions/PointFormat;->UNCOMPRESSED:Lio/ktor/network/tls/extensions/PointFormat;

    .line 45
    sget-object v1, Lio/ktor/network/tls/extensions/PointFormat;->ANSIX962_COMPRESSED_PRIME:Lio/ktor/network/tls/extensions/PointFormat;

    .line 46
    sget-object v2, Lio/ktor/network/tls/extensions/PointFormat;->ANSIX962_COMPRESSED_CHAR2:Lio/ktor/network/tls/extensions/PointFormat;

    filled-new-array {v0, v1, v2}, [Lio/ktor/network/tls/extensions/PointFormat;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/extensions/PointFormatKt;->SupportedPointFormats:Ljava/util/List;

    return-void
.end method

.method public static final getSupportedPointFormats()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/network/tls/extensions/PointFormat;",
            ">;"
        }
    .end annotation

    .line 43
    sget-object v0, Lio/ktor/network/tls/extensions/PointFormatKt;->SupportedPointFormats:Ljava/util/List;

    return-object v0
.end method
