###### Class io.ktor.http.HttpMethod (io.ktor.http.HttpMethod)
.class public final Lio/ktor/http/HttpMethod;
.super Ljava/lang/Object;
.source "HttpMethod.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/HttpMethod$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/http/HttpMethod$Companion;

.field public static final DefaultMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/http/HttpMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final Delete:Lio/ktor/http/HttpMethod;

.field public static final Get:Lio/ktor/http/HttpMethod;

.field public static final Head:Lio/ktor/http/HttpMethod;

.field public static final Options:Lio/ktor/http/HttpMethod;

.field public static final Patch:Lio/ktor/http/HttpMethod;

.field public static final Post:Lio/ktor/http/HttpMethod;

.field public static final Put:Lio/ktor/http/HttpMethod;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lio/ktor/http/HttpMethod$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/http/HttpMethod$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    .line 21
    new-instance v2, Lio/ktor/http/HttpMethod;

    const-string v0, "GET"

    invoke-direct {v2, v0}, Lio/ktor/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v2, Lio/ktor/http/HttpMethod;->Get:Lio/ktor/http/HttpMethod;

    .line 22
    new-instance v3, Lio/ktor/http/HttpMethod;

    const-string v0, "POST"

    invoke-direct {v3, v0}, Lio/ktor/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v3, Lio/ktor/http/HttpMethod;->Post:Lio/ktor/http/HttpMethod;

    .line 23
    new-instance v4, Lio/ktor/http/HttpMethod;

    const-string v0, "PUT"

    invoke-direct {v4, v0}, Lio/ktor/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v4, Lio/ktor/http/HttpMethod;->Put:Lio/ktor/http/HttpMethod;

    .line 26
    new-instance v5, Lio/ktor/http/HttpMethod;

    const-string v0, "PATCH"

    invoke-direct {v5, v0}, Lio/ktor/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v5, Lio/ktor/http/HttpMethod;->Patch:Lio/ktor/http/HttpMethod;

    .line 27
    new-instance v6, Lio/ktor/http/HttpMethod;

    const-string v0, "DELETE"

    invoke-direct {v6, v0}, Lio/ktor/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v6, Lio/ktor/http/HttpMethod;->Delete:Lio/ktor/http/HttpMethod;

    .line 28
    new-instance v7, Lio/ktor/http/HttpMethod;

    const-string v0, "HEAD"

    invoke-direct {v7, v0}, Lio/ktor/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v7, Lio/ktor/http/HttpMethod;->Head:Lio/ktor/http/HttpMethod;

    .line 29
    new-instance v8, Lio/ktor/http/HttpMethod;

    const-string v0, "OPTIONS"

    invoke-direct {v8, v0}, Lio/ktor/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v8, Lio/ktor/http/HttpMethod;->Options:Lio/ktor/http/HttpMethod;

    .line 54
    filled-new-array/range {v2 .. v8}, [Lio/ktor/http/HttpMethod;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/ktor/http/HttpMethod;->DefaultMethods:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/HttpMethod;->value:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getDefaultMethods$cp()Ljava/util/List;
    .registers 1

    .line 16
    sget-object v0, Lio/ktor/http/HttpMethod;->DefaultMethods:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getGet$cp()Lio/ktor/http/HttpMethod;
    .registers 1

    .line 16
    sget-object v0, Lio/ktor/http/HttpMethod;->Get:Lio/ktor/http/HttpMethod;

    return-object v0
.end method

.method public static final synthetic access$getHead$cp()Lio/ktor/http/HttpMethod;
    .registers 1

    .line 16
    sget-object v0, Lio/ktor/http/HttpMethod;->Head:Lio/ktor/http/HttpMethod;

    return-object v0
.end method

.method public static final synthetic access$getOptions$cp()Lio/ktor/http/HttpMethod;
    .registers 1

    .line 16
    sget-object v0, Lio/ktor/http/HttpMethod;->Options:Lio/ktor/http/HttpMethod;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/ktor/http/HttpMethod;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/ktor/http/HttpMethod;

    iget-object p0, p0, Lio/ktor/http/HttpMethod;->value:Ljava/lang/String;

    iget-object p1, p1, Lio/ktor/http/HttpMethod;->value:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .registers 1

    .line 16
    iget-object p0, p0, Lio/ktor/http/HttpMethod;->value:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/http/HttpMethod;->value:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 17
    iget-object p0, p0, Lio/ktor/http/HttpMethod;->value:Ljava/lang/String;

    return-object p0
.end method

###### Class io.ktor.http.HttpMethod.Companion (io.ktor.http.HttpMethod$Companion)
.class public final Lio/ktor/http/HttpMethod$Companion;
.super Ljava/lang/Object;
.source "HttpMethod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/HttpMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/http/HttpMethod$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultMethods()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/http/HttpMethod;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-static {}, Lio/ktor/http/HttpMethod;->access$getDefaultMethods$cp()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getGet()Lio/ktor/http/HttpMethod;
    .registers 1

    .line 21
    invoke-static {}, Lio/ktor/http/HttpMethod;->access$getGet$cp()Lio/ktor/http/HttpMethod;

    move-result-object p0

    return-object p0
.end method

.method public final getHead()Lio/ktor/http/HttpMethod;
    .registers 1

    .line 28
    invoke-static {}, Lio/ktor/http/HttpMethod;->access$getHead$cp()Lio/ktor/http/HttpMethod;

    move-result-object p0

    return-object p0
.end method

.method public final getOptions()Lio/ktor/http/HttpMethod;
    .registers 1

    .line 29
    invoke-static {}, Lio/ktor/http/HttpMethod;->access$getOptions$cp()Lio/ktor/http/HttpMethod;

    move-result-object p0

    return-object p0
.end method
