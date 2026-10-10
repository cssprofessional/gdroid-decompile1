###### Class org.tukaani.xz.BCJEncoder (org.tukaani.xz.BCJEncoder)
.class Lorg/tukaani/xz/BCJEncoder;
.super Lorg/tukaani/xz/BCJCoder;
.source "BCJEncoder.java"

# interfaces
.implements Lorg/tukaani/xz/FilterEncoder;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final filterID:J

.field private final options:Lorg/tukaani/xz/BCJOptions;

.field private final props:[B


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lorg/tukaani/xz/BCJOptions;J)V
    .registers 9

    .line 12
    invoke-direct {p0}, Lorg/tukaani/xz/BCJCoder;-><init>()V

    .line 14
    invoke-virtual {p1}, Lorg/tukaani/xz/BCJOptions;->getStartOffset()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 17
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/tukaani/xz/BCJEncoder;->props:[B

    goto :goto_22

    :cond_f
    const/4 v2, 0x4

    .line 19
    new-array v3, v2, [B

    iput-object v3, p0, Lorg/tukaani/xz/BCJEncoder;->props:[B

    :goto_14
    if-ge v1, v2, :cond_22

    .line 21
    iget-object v3, p0, Lorg/tukaani/xz/BCJEncoder;->props:[B

    mul-int/lit8 v4, v1, 0x8

    ushr-int v4, v0, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 24
    :cond_22
    :goto_22
    iput-wide p2, p0, Lorg/tukaani/xz/BCJEncoder;->filterID:J

    .line 25
    invoke-virtual {p1}, Lorg/tukaani/xz/BCJOptions;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/tukaani/xz/BCJOptions;

    iput-object p1, p0, Lorg/tukaani/xz/BCJEncoder;->options:Lorg/tukaani/xz/BCJOptions;

    return-void
.end method


# virtual methods
.method public getFilterID()J
    .registers 3

    .line 30
    iget-wide v0, p0, Lorg/tukaani/xz/BCJEncoder;->filterID:J

    return-wide v0
.end method

.method public getFilterProps()[B
    .registers 1

    .line 35
    iget-object p0, p0, Lorg/tukaani/xz/BCJEncoder;->props:[B

    return-object p0
.end method

.method public getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;
    .registers 3

    .line 46
    iget-object p0, p0, Lorg/tukaani/xz/BCJEncoder;->options:Lorg/tukaani/xz/BCJOptions;

    invoke-virtual {p0, p1, p2}, Lorg/tukaani/xz/FilterOptions;->getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public supportsFlushing()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method
