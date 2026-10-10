###### Class okhttp3.CacheControl (okhttp3.CacheControl)
.class public final Lokhttp3/CacheControl;
.super Ljava/lang/Object;
.source "CacheControl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/CacheControl$Builder;,
        Lokhttp3/CacheControl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/CacheControl$Companion;

.field public static final FORCE_CACHE:Lokhttp3/CacheControl;

.field public static final FORCE_NETWORK:Lokhttp3/CacheControl;


# instance fields
.field public headerValue:Ljava/lang/String;

.field public final immutable:Z

.field public final isPrivate:Z

.field public final isPublic:Z

.field public final maxAgeSeconds:I

.field public final maxStaleSeconds:I

.field public final minFreshSeconds:I

.field public final mustRevalidate:Z

.field public final noCache:Z

.field public final noStore:Z

.field public final noTransform:Z

.field public final onlyIfCached:Z

.field public final sMaxAgeSeconds:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokhttp3/CacheControl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/CacheControl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/CacheControl;->Companion:Lokhttp3/CacheControl$Companion;

    .line 268
    invoke-static {v0}, Lokhttp3/internal/_CacheControlCommonKt;->commonForceNetwork(Lokhttp3/CacheControl$Companion;)Lokhttp3/CacheControl;

    move-result-object v1

    sput-object v1, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 276
    invoke-static {v0}, Lokhttp3/internal/_CacheControlCommonKt;->commonForceCache(Lokhttp3/CacheControl$Companion;)Lokhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    return-void
.end method

.method public constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
    .registers 14

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean p1, p0, Lokhttp3/CacheControl;->noCache:Z

    .line 48
    iput-boolean p2, p0, Lokhttp3/CacheControl;->noStore:Z

    .line 50
    iput p3, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    .line 55
    iput p4, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    .line 56
    iput-boolean p5, p0, Lokhttp3/CacheControl;->isPrivate:Z

    .line 57
    iput-boolean p6, p0, Lokhttp3/CacheControl;->isPublic:Z

    .line 58
    iput-boolean p7, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    .line 59
    iput p8, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    .line 60
    iput p9, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    .line 67
    iput-boolean p10, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    .line 68
    iput-boolean p11, p0, Lokhttp3/CacheControl;->noTransform:Z

    .line 69
    iput-boolean p12, p0, Lokhttp3/CacheControl;->immutable:Z

    .line 70
    iput-object p13, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getHeaderValue$okhttp()Ljava/lang/String;
    .registers 1

    .line 70
    iget-object p0, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    return-object p0
.end method

.method public final immutable()Z
    .registers 1

    .line 69
    iget-boolean p0, p0, Lokhttp3/CacheControl;->immutable:Z

    return p0
.end method

.method public final isPrivate()Z
    .registers 1

    .line 56
    iget-boolean p0, p0, Lokhttp3/CacheControl;->isPrivate:Z

    return p0
.end method

.method public final isPublic()Z
    .registers 1

    .line 57
    iget-boolean p0, p0, Lokhttp3/CacheControl;->isPublic:Z

    return p0
.end method

.method public final maxAgeSeconds()I
    .registers 1

    .line 50
    iget p0, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    return p0
.end method

.method public final maxStaleSeconds()I
    .registers 1

    .line 59
    iget p0, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    return p0
.end method

.method public final minFreshSeconds()I
    .registers 1

    .line 60
    iget p0, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    return p0
.end method

.method public final mustRevalidate()Z
    .registers 1

    .line 58
    iget-boolean p0, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    return p0
.end method

.method public final noCache()Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lokhttp3/CacheControl;->noCache:Z

    return p0
.end method

.method public final noStore()Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Lokhttp3/CacheControl;->noStore:Z

    return p0
.end method

.method public final noTransform()Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lokhttp3/CacheControl;->noTransform:Z

    return p0
.end method

.method public final onlyIfCached()Z
    .registers 1

    .line 67
    iget-boolean p0, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    return p0
.end method

.method public final sMaxAgeSeconds()I
    .registers 1

    .line 55
    iget p0, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    return p0
.end method

.method public final setHeaderValue$okhttp(Ljava/lang/String;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 152
    invoke-static {p0}, Lokhttp3/internal/_CacheControlCommonKt;->commonToString(Lokhttp3/CacheControl;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class okhttp3.CacheControl.Builder (okhttp3.CacheControl$Builder)
.class public final Lokhttp3/CacheControl$Builder;
.super Ljava/lang/Object;
.source "CacheControl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCacheControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CacheControl.kt\nokhttp3/CacheControl$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,286:1\n1#2:287\n*E\n"
.end annotation


# instance fields
.field public immutable:Z

.field public maxAgeSeconds:I

.field public maxStaleSeconds:I

.field public minFreshSeconds:I

.field public noCache:Z

.field public noStore:Z

.field public noTransform:Z

.field public onlyIfCached:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 158
    iput v0, p0, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    .line 159
    iput v0, p0, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    .line 160
    iput v0, p0, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    return-void
.end method


# virtual methods
.method public final build()Lokhttp3/CacheControl;
    .registers 1

    .line 259
    invoke-static {p0}, Lokhttp3/internal/_CacheControlCommonKt;->commonBuild(Lokhttp3/CacheControl$Builder;)Lokhttp3/CacheControl;

    move-result-object p0

    return-object p0
.end method

.method public final getImmutable$okhttp()Z
    .registers 1

    .line 163
    iget-boolean p0, p0, Lokhttp3/CacheControl$Builder;->immutable:Z

    return p0
.end method

.method public final getMaxAgeSeconds$okhttp()I
    .registers 1

    .line 158
    iget p0, p0, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    return p0
.end method

.method public final getMaxStaleSeconds$okhttp()I
    .registers 1

    .line 159
    iget p0, p0, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    return p0
.end method

.method public final getMinFreshSeconds$okhttp()I
    .registers 1

    .line 160
    iget p0, p0, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    return p0
.end method

.method public final getNoCache$okhttp()Z
    .registers 1

    .line 156
    iget-boolean p0, p0, Lokhttp3/CacheControl$Builder;->noCache:Z

    return p0
.end method

.method public final getNoStore$okhttp()Z
    .registers 1

    .line 157
    iget-boolean p0, p0, Lokhttp3/CacheControl$Builder;->noStore:Z

    return p0
.end method

.method public final getNoTransform$okhttp()Z
    .registers 1

    .line 162
    iget-boolean p0, p0, Lokhttp3/CacheControl$Builder;->noTransform:Z

    return p0
.end method

.method public final getOnlyIfCached$okhttp()Z
    .registers 1

    .line 161
    iget-boolean p0, p0, Lokhttp3/CacheControl$Builder;->onlyIfCached:Z

    return p0
.end method

.method public final maxStale-LRDsOJo(J)Lokhttp3/CacheControl$Builder;
    .registers 5

    .line 198
    invoke-static {p1, p2}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_11

    .line 200
    invoke-static {p1, p2}, Lokhttp3/internal/_CacheControlCommonKt;->commonClampToInt(J)I

    move-result p1

    iput p1, p0, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    return-object p0

    .line 199
    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maxStale < 0: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final noCache()Lokhttp3/CacheControl$Builder;
    .registers 1

    .line 166
    invoke-static {p0}, Lokhttp3/internal/_CacheControlCommonKt;->commonNoCache(Lokhttp3/CacheControl$Builder;)Lokhttp3/CacheControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final onlyIfCached()Lokhttp3/CacheControl$Builder;
    .registers 1

    .line 175
    invoke-static {p0}, Lokhttp3/internal/_CacheControlCommonKt;->commonOnlyIfCached(Lokhttp3/CacheControl$Builder;)Lokhttp3/CacheControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setNoCache$okhttp(Z)V
    .registers 2

    .line 156
    iput-boolean p1, p0, Lokhttp3/CacheControl$Builder;->noCache:Z

    return-void
.end method

.method public final setOnlyIfCached$okhttp(Z)V
    .registers 2

    .line 161
    iput-boolean p1, p0, Lokhttp3/CacheControl$Builder;->onlyIfCached:Z

    return-void
.end method

###### Class okhttp3.CacheControl.Companion (okhttp3.CacheControl$Companion)
.class public final Lokhttp3/CacheControl$Companion;
.super Ljava/lang/Object;
.source "CacheControl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lokhttp3/CacheControl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .registers 3

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-static {p0, p1}, Lokhttp3/internal/_CacheControlCommonKt;->commonParse(Lokhttp3/CacheControl$Companion;Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object p0

    return-object p0
.end method
