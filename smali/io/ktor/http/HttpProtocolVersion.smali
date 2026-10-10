###### Class io.ktor.http.HttpProtocolVersion (io.ktor.http.HttpProtocolVersion)
.class public final Lio/ktor/http/HttpProtocolVersion;
.super Ljava/lang/Object;
.source "HttpProtocolVersion.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/HttpProtocolVersion$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/http/HttpProtocolVersion$Companion;

.field public static final HTTP_1_0:Lio/ktor/http/HttpProtocolVersion;

.field public static final HTTP_1_1:Lio/ktor/http/HttpProtocolVersion;

.field public static final HTTP_2_0:Lio/ktor/http/HttpProtocolVersion;

.field public static final HTTP_3_0:Lio/ktor/http/HttpProtocolVersion;

.field public static final QUIC:Lio/ktor/http/HttpProtocolVersion;

.field public static final SPDY_3:Lio/ktor/http/HttpProtocolVersion;


# instance fields
.field public final major:I

.field public final minor:I

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lio/ktor/http/HttpProtocolVersion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/http/HttpProtocolVersion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/HttpProtocolVersion;->Companion:Lio/ktor/http/HttpProtocolVersion$Companion;

    .line 24
    new-instance v0, Lio/ktor/http/HttpProtocolVersion;

    const-string v1, "HTTP"

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/ktor/http/HttpProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/http/HttpProtocolVersion;->HTTP_3_0:Lio/ktor/http/HttpProtocolVersion;

    .line 31
    new-instance v0, Lio/ktor/http/HttpProtocolVersion;

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lio/ktor/http/HttpProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/http/HttpProtocolVersion;->HTTP_2_0:Lio/ktor/http/HttpProtocolVersion;

    .line 38
    new-instance v0, Lio/ktor/http/HttpProtocolVersion;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4}, Lio/ktor/http/HttpProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/http/HttpProtocolVersion;->HTTP_1_1:Lio/ktor/http/HttpProtocolVersion;

    .line 45
    new-instance v0, Lio/ktor/http/HttpProtocolVersion;

    invoke-direct {v0, v1, v4, v3}, Lio/ktor/http/HttpProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/http/HttpProtocolVersion;->HTTP_1_0:Lio/ktor/http/HttpProtocolVersion;

    .line 52
    new-instance v0, Lio/ktor/http/HttpProtocolVersion;

    const-string v1, "SPDY"

    invoke-direct {v0, v1, v2, v3}, Lio/ktor/http/HttpProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/http/HttpProtocolVersion;->SPDY_3:Lio/ktor/http/HttpProtocolVersion;

    .line 59
    new-instance v0, Lio/ktor/http/HttpProtocolVersion;

    const-string v1, "QUIC"

    invoke-direct {v0, v1, v4, v3}, Lio/ktor/http/HttpProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/http/HttpProtocolVersion;->QUIC:Lio/ktor/http/HttpProtocolVersion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/HttpProtocolVersion;->name:Ljava/lang/String;

    iput p2, p0, Lio/ktor/http/HttpProtocolVersion;->major:I

    iput p3, p0, Lio/ktor/http/HttpProtocolVersion;->minor:I

    return-void
.end method

.method public static final synthetic access$getHTTP_1_0$cp()Lio/ktor/http/HttpProtocolVersion;
    .registers 1

    .line 16
    sget-object v0, Lio/ktor/http/HttpProtocolVersion;->HTTP_1_0:Lio/ktor/http/HttpProtocolVersion;

    return-object v0
.end method

.method public static final synthetic access$getHTTP_1_1$cp()Lio/ktor/http/HttpProtocolVersion;
    .registers 1

    .line 16
    sget-object v0, Lio/ktor/http/HttpProtocolVersion;->HTTP_1_1:Lio/ktor/http/HttpProtocolVersion;

    return-object v0
.end method

.method public static final synthetic access$getHTTP_2_0$cp()Lio/ktor/http/HttpProtocolVersion;
    .registers 1

    .line 16
    sget-object v0, Lio/ktor/http/HttpProtocolVersion;->HTTP_2_0:Lio/ktor/http/HttpProtocolVersion;

    return-object v0
.end method

.method public static final synthetic access$getHTTP_3_0$cp()Lio/ktor/http/HttpProtocolVersion;
    .registers 1

    .line 16
    sget-object v0, Lio/ktor/http/HttpProtocolVersion;->HTTP_3_0:Lio/ktor/http/HttpProtocolVersion;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/ktor/http/HttpProtocolVersion;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/ktor/http/HttpProtocolVersion;

    iget-object v1, p0, Lio/ktor/http/HttpProtocolVersion;->name:Ljava/lang/String;

    iget-object v3, p1, Lio/ktor/http/HttpProtocolVersion;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lio/ktor/http/HttpProtocolVersion;->major:I

    iget v3, p1, Lio/ktor/http/HttpProtocolVersion;->major:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget p0, p0, Lio/ktor/http/HttpProtocolVersion;->minor:I

    iget p1, p1, Lio/ktor/http/HttpProtocolVersion;->minor:I

    if-eq p0, p1, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lio/ktor/http/HttpProtocolVersion;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/ktor/http/HttpProtocolVersion;->major:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lio/ktor/http/HttpProtocolVersion;->minor:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/ktor/http/HttpProtocolVersion;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/ktor/http/HttpProtocolVersion;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/ktor/http/HttpProtocolVersion;->minor:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.HttpProtocolVersion.Companion (io.ktor.http.HttpProtocolVersion$Companion)
.class public final Lio/ktor/http/HttpProtocolVersion$Companion;
.super Ljava/lang/Object;
.source "HttpProtocolVersion.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/HttpProtocolVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/http/HttpProtocolVersion$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(Ljava/lang/String;II)Lio/ktor/http/HttpProtocolVersion;
    .registers 7

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const-string v0, "HTTP"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne p2, v2, :cond_17

    if-nez p3, :cond_17

    invoke-virtual {p0}, Lio/ktor/http/HttpProtocolVersion$Companion;->getHTTP_1_0()Lio/ktor/http/HttpProtocolVersion;

    move-result-object p0

    goto :goto_4b

    .line 68
    :cond_17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    if-ne p2, v2, :cond_26

    if-ne p3, v2, :cond_26

    invoke-virtual {p0}, Lio/ktor/http/HttpProtocolVersion$Companion;->getHTTP_1_1()Lio/ktor/http/HttpProtocolVersion;

    move-result-object p0

    goto :goto_4b

    .line 69
    :cond_26
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x2

    if-ne p2, v1, :cond_36

    if-nez p3, :cond_36

    invoke-virtual {p0}, Lio/ktor/http/HttpProtocolVersion$Companion;->getHTTP_2_0()Lio/ktor/http/HttpProtocolVersion;

    move-result-object p0

    goto :goto_4b

    .line 70
    :cond_36
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x3

    if-ne p2, v0, :cond_46

    if-nez p3, :cond_46

    invoke-virtual {p0}, Lio/ktor/http/HttpProtocolVersion$Companion;->getHTTP_3_0()Lio/ktor/http/HttpProtocolVersion;

    move-result-object p0

    goto :goto_4b

    .line 71
    :cond_46
    new-instance p0, Lio/ktor/http/HttpProtocolVersion;

    invoke-direct {p0, p1, p2, p3}, Lio/ktor/http/HttpProtocolVersion;-><init>(Ljava/lang/String;II)V

    :goto_4b
    return-object p0
.end method

.method public final getHTTP_1_0()Lio/ktor/http/HttpProtocolVersion;
    .registers 1

    .line 45
    invoke-static {}, Lio/ktor/http/HttpProtocolVersion;->access$getHTTP_1_0$cp()Lio/ktor/http/HttpProtocolVersion;

    move-result-object p0

    return-object p0
.end method

.method public final getHTTP_1_1()Lio/ktor/http/HttpProtocolVersion;
    .registers 1

    .line 38
    invoke-static {}, Lio/ktor/http/HttpProtocolVersion;->access$getHTTP_1_1$cp()Lio/ktor/http/HttpProtocolVersion;

    move-result-object p0

    return-object p0
.end method

.method public final getHTTP_2_0()Lio/ktor/http/HttpProtocolVersion;
    .registers 1

    .line 31
    invoke-static {}, Lio/ktor/http/HttpProtocolVersion;->access$getHTTP_2_0$cp()Lio/ktor/http/HttpProtocolVersion;

    move-result-object p0

    return-object p0
.end method

.method public final getHTTP_3_0()Lio/ktor/http/HttpProtocolVersion;
    .registers 1

    .line 24
    invoke-static {}, Lio/ktor/http/HttpProtocolVersion;->access$getHTTP_3_0$cp()Lio/ktor/http/HttpProtocolVersion;

    move-result-object p0

    return-object p0
.end method

.method public final parse(Ljava/lang/CharSequence;)Lio/ktor/http/HttpProtocolVersion;
    .registers 10

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    const-string v0, "/"

    const-string v1, "."

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3f

    const/4 p1, 0x0

    .line 83
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lio/ktor/http/HttpProtocolVersion$Companion;->fromValue(Ljava/lang/String;II)Lio/ktor/http/HttpProtocolVersion;

    move-result-object p0

    return-object p0

    .line 85
    :cond_3f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse HttpProtocolVersion. Expected format: protocol/major.minor, but actual: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 84
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
