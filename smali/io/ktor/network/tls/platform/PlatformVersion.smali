###### Class io.ktor.network.tls.platform.PlatformVersion (io.ktor.network.tls.platform.PlatformVersion)
.class public final Lio/ktor/network/tls/platform/PlatformVersion;
.super Ljava/lang/Object;
.source "PlatformVersion.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/tls/platform/PlatformVersion$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/network/tls/platform/PlatformVersion$Companion;

.field public static final MINIMAL_SUPPORTED:Lio/ktor/network/tls/platform/PlatformVersion;


# instance fields
.field public final major:Ljava/lang/String;

.field public final minor:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lio/ktor/network/tls/platform/PlatformVersion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/network/tls/platform/PlatformVersion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/network/tls/platform/PlatformVersion;->Companion:Lio/ktor/network/tls/platform/PlatformVersion$Companion;

    .line 24
    new-instance v0, Lio/ktor/network/tls/platform/PlatformVersion;

    const-string v1, "1.6.0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/ktor/network/tls/platform/PlatformVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/ktor/network/tls/platform/PlatformVersion;->MINIMAL_SUPPORTED:Lio/ktor/network/tls/platform/PlatformVersion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "major"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/network/tls/platform/PlatformVersion;->major:Ljava/lang/String;

    iput p2, p0, Lio/ktor/network/tls/platform/PlatformVersion;->minor:I

    return-void
.end method

.method public static final synthetic access$getMINIMAL_SUPPORTED$cp()Lio/ktor/network/tls/platform/PlatformVersion;
    .registers 1

    .line 7
    sget-object v0, Lio/ktor/network/tls/platform/PlatformVersion;->MINIMAL_SUPPORTED:Lio/ktor/network/tls/platform/PlatformVersion;

    return-object v0
.end method


# virtual methods
.method public final getMajor()Ljava/lang/String;
    .registers 1

    .line 7
    iget-object p0, p0, Lio/ktor/network/tls/platform/PlatformVersion;->major:Ljava/lang/String;

    return-object p0
.end method

.method public final getMinor()I
    .registers 1

    .line 7
    iget p0, p0, Lio/ktor/network/tls/platform/PlatformVersion;->minor:I

    return p0
.end method

###### Class io.ktor.network.tls.platform.PlatformVersion.Companion (io.ktor.network.tls.platform.PlatformVersion$Companion)
.class public final Lio/ktor/network/tls/platform/PlatformVersion$Companion;
.super Ljava/lang/Object;
.source "PlatformVersion.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/tls/platform/PlatformVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/network/tls/platform/PlatformVersion$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Lio/ktor/network/tls/platform/PlatformVersion;
    .registers 9

    const/4 p0, 0x2

    const-string v0, "rawVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :try_start_6
    new-array v2, p0, [C

    fill-array-data v2, :array_3e

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, p0, :cond_32

    const/4 p0, 0x0

    .line 14
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 p1, 0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 15
    new-instance v0, Lio/ktor/network/tls/platform/PlatformVersion;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, p0, p1}, Lio/ktor/network/tls/platform/PlatformVersion;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 18
    :cond_32
    new-instance p0, Lio/ktor/network/tls/platform/PlatformVersion;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lio/ktor/network/tls/platform/PlatformVersion;-><init>(Ljava/lang/String;I)V
    :try_end_38
    .catchall {:try_start_6 .. :try_end_38} :catchall_39

    return-object p0

    .line 20
    :catchall_39
    invoke-static {}, Lio/ktor/network/tls/platform/PlatformVersion;->access$getMINIMAL_SUPPORTED$cp()Lio/ktor/network/tls/platform/PlatformVersion;

    move-result-object p0

    return-object p0

    :array_3e
    .array-data 2
        0x2ds
        0x5fs
    .end array-data
.end method
