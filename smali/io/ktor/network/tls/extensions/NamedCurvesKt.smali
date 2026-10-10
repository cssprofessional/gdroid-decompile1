###### Class io.ktor.network.tls.extensions.NamedCurvesKt (io.ktor.network.tls.extensions.NamedCurvesKt)
.class public final Lio/ktor/network/tls/extensions/NamedCurvesKt;
.super Ljava/lang/Object;
.source "NamedCurves.kt"


# static fields
.field public static final SupportedNamedCurves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/network/tls/extensions/NamedCurve;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 62
    sget-object v0, Lio/ktor/network/tls/extensions/NamedCurve;->secp256r1:Lio/ktor/network/tls/extensions/NamedCurve;

    .line 63
    sget-object v1, Lio/ktor/network/tls/extensions/NamedCurve;->secp384r1:Lio/ktor/network/tls/extensions/NamedCurve;

    filled-new-array {v0, v1}, [Lio/ktor/network/tls/extensions/NamedCurve;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/extensions/NamedCurvesKt;->SupportedNamedCurves:Ljava/util/List;

    return-void
.end method

.method public static final getSupportedNamedCurves()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/network/tls/extensions/NamedCurve;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object v0, Lio/ktor/network/tls/extensions/NamedCurvesKt;->SupportedNamedCurves:Ljava/util/List;

    return-object v0
.end method
