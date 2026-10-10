###### Class io.ktor.http.URLProtocol (io.ktor.http.URLProtocol)
.class public final Lio/ktor/http/URLProtocol;
.super Ljava/lang/Object;
.source "URLProtocol.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/URLProtocol$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nURLProtocol.kt\nKotlin\n*S Kotlin\n*F\n+ 1 URLProtocol.kt\nio/ktor/http/URLProtocol\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,92:1\n1069#2,2:93\n1#3:95\n1208#4,2:96\n1236#4,4:98\n*S KotlinDebug\n*F\n+ 1 URLProtocol.kt\nio/ktor/http/URLProtocol\n*L\n21#1:93,2\n66#1:96,2\n66#1:98,4\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lio/ktor/http/URLProtocol$Companion;

.field public static final HTTP:Lio/ktor/http/URLProtocol;

.field public static final HTTPS:Lio/ktor/http/URLProtocol;

.field public static final SOCKS:Lio/ktor/http/URLProtocol;

.field public static final WS:Lio/ktor/http/URLProtocol;

.field public static final WSS:Lio/ktor/http/URLProtocol;

.field public static final byName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/ktor/http/URLProtocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final defaultPort:I

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lio/ktor/http/URLProtocol$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/http/URLProtocol$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/URLProtocol;->Companion:Lio/ktor/http/URLProtocol$Companion;

    .line 31
    new-instance v0, Lio/ktor/http/URLProtocol;

    const-string v1, "http"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lio/ktor/http/URLProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/ktor/http/URLProtocol;->HTTP:Lio/ktor/http/URLProtocol;

    .line 38
    new-instance v1, Lio/ktor/http/URLProtocol;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v1, v3, v4}, Lio/ktor/http/URLProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/ktor/http/URLProtocol;->HTTPS:Lio/ktor/http/URLProtocol;

    .line 45
    new-instance v3, Lio/ktor/http/URLProtocol;

    const-string v5, "ws"

    invoke-direct {v3, v5, v2}, Lio/ktor/http/URLProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/ktor/http/URLProtocol;->WS:Lio/ktor/http/URLProtocol;

    .line 52
    new-instance v2, Lio/ktor/http/URLProtocol;

    const-string v5, "wss"

    invoke-direct {v2, v5, v4}, Lio/ktor/http/URLProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/ktor/http/URLProtocol;->WSS:Lio/ktor/http/URLProtocol;

    .line 59
    new-instance v4, Lio/ktor/http/URLProtocol;

    const-string v5, "socks"

    const/16 v6, 0x438

    invoke-direct {v4, v5, v6}, Lio/ktor/http/URLProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/ktor/http/URLProtocol;->SOCKS:Lio/ktor/http/URLProtocol;

    .line 66
    filled-new-array {v0, v1, v3, v2, v4}, [Lio/ktor/http/URLProtocol;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    .line 1208
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 1209
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1236
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1237
    move-object v3, v1

    check-cast v3, Lio/ktor/http/URLProtocol;

    .line 66
    iget-object v3, v3, Lio/ktor/http/URLProtocol;->name:Ljava/lang/String;

    .line 1237
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5c

    .line 66
    :cond_6f
    sput-object v2, Lio/ktor/http/URLProtocol;->byName:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lio/ktor/http/URLProtocol;->name:Ljava/lang/String;

    iput p2, p0, Lio/ktor/http/URLProtocol;->defaultPort:I

    const/4 p0, 0x0

    .line 1069
    :goto_d
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge p0, p2, :cond_28

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    .line 21
    invoke-static {p2}, Lio/ktor/util/CharsetKt;->isLowerCase(C)Z

    move-result p2

    if-eqz p2, :cond_20

    add-int/lit8 p0, p0, 0x1

    goto :goto_d

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "All characters should be lower case"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    return-void
.end method

.method public static final synthetic access$getByName$cp()Ljava/util/Map;
    .registers 1

    .line 18
    sget-object v0, Lio/ktor/http/URLProtocol;->byName:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getHTTP$cp()Lio/ktor/http/URLProtocol;
    .registers 1

    .line 18
    sget-object v0, Lio/ktor/http/URLProtocol;->HTTP:Lio/ktor/http/URLProtocol;

    return-object v0
.end method

.method public static final synthetic access$getWS$cp()Lio/ktor/http/URLProtocol;
    .registers 1

    .line 18
    sget-object v0, Lio/ktor/http/URLProtocol;->WS:Lio/ktor/http/URLProtocol;

    return-object v0
.end method

.method public static final synthetic access$getWSS$cp()Lio/ktor/http/URLProtocol;
    .registers 1

    .line 18
    sget-object v0, Lio/ktor/http/URLProtocol;->WSS:Lio/ktor/http/URLProtocol;

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
    instance-of v1, p1, Lio/ktor/http/URLProtocol;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/ktor/http/URLProtocol;

    iget-object v1, p0, Lio/ktor/http/URLProtocol;->name:Ljava/lang/String;

    iget-object v3, p1, Lio/ktor/http/URLProtocol;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget p0, p0, Lio/ktor/http/URLProtocol;->defaultPort:I

    iget p1, p1, Lio/ktor/http/URLProtocol;->defaultPort:I

    if-eq p0, p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getDefaultPort()I
    .registers 1

    .line 19
    iget p0, p0, Lio/ktor/http/URLProtocol;->defaultPort:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lio/ktor/http/URLProtocol;->name:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lio/ktor/http/URLProtocol;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lio/ktor/http/URLProtocol;->defaultPort:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URLProtocol(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/http/URLProtocol;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/ktor/http/URLProtocol;->defaultPort:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.URLProtocol.Companion (io.ktor.http.URLProtocol$Companion)
.class public final Lio/ktor/http/URLProtocol$Companion;
.super Ljava/lang/Object;
.source "URLProtocol.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/URLProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/http/URLProtocol$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createOrDefault(Ljava/lang/String;)Lio/ktor/http/URLProtocol;
    .registers 3

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-static {p1}, Lio/ktor/util/TextKt;->toLowerCasePreservingASCIIRules(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 74
    sget-object p1, Lio/ktor/http/URLProtocol;->Companion:Lio/ktor/http/URLProtocol$Companion;

    invoke-virtual {p1}, Lio/ktor/http/URLProtocol$Companion;->getByName()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/ktor/http/URLProtocol;

    if-nez p1, :cond_1d

    new-instance p1, Lio/ktor/http/URLProtocol;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lio/ktor/http/URLProtocol;-><init>(Ljava/lang/String;I)V

    :cond_1d
    return-object p1
.end method

.method public final getByName()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/ktor/http/URLProtocol;",
            ">;"
        }
    .end annotation

    .line 66
    invoke-static {}, Lio/ktor/http/URLProtocol;->access$getByName$cp()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getHTTP()Lio/ktor/http/URLProtocol;
    .registers 1

    .line 31
    invoke-static {}, Lio/ktor/http/URLProtocol;->access$getHTTP$cp()Lio/ktor/http/URLProtocol;

    move-result-object p0

    return-object p0
.end method

.method public final getWS()Lio/ktor/http/URLProtocol;
    .registers 1

    .line 45
    invoke-static {}, Lio/ktor/http/URLProtocol;->access$getWS$cp()Lio/ktor/http/URLProtocol;

    move-result-object p0

    return-object p0
.end method

.method public final getWSS()Lio/ktor/http/URLProtocol;
    .registers 1

    .line 52
    invoke-static {}, Lio/ktor/http/URLProtocol;->access$getWSS$cp()Lio/ktor/http/URLProtocol;

    move-result-object p0

    return-object p0
.end method
