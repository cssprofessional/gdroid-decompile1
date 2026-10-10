###### Class in.dragonbra.javasteam.types.UInt64Handle (in.dragonbra.javasteam.types.UInt64Handle)
.class public abstract Lin/dragonbra/javasteam/types/UInt64Handle;
.super Ljava/lang/Object;
.source "PubFile.kt"


# instance fields
.field private value:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(J)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/types/UInt64Handle;->setValue-VKZWuLQ(J)V

    return-void
.end method

.method public synthetic constructor <init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/types/UInt64Handle;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final equals(Lin/dragonbra/javasteam/types/UInt64Handle;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 66
    :cond_4
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/UInt64Handle;->getValue-s-VKNKU()J

    move-result-wide v1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/UInt64Handle;->getValue-s-VKNKU()J

    move-result-wide p0

    cmp-long p0, v1, p0

    if-nez p0, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 39
    instance-of v0, p1, Lin/dragonbra/javasteam/types/UInt64Handle;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 40
    check-cast p1, Lin/dragonbra/javasteam/types/UInt64Handle;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/UInt64Handle;->getValue-s-VKNKU()J

    move-result-wide v2

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/UInt64Handle;->getValue-s-VKNKU()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-nez p0, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public getValue-s-VKNKU()J
    .registers 3

    .line 12
    iget-wide v0, p0, Lin/dragonbra/javasteam/types/UInt64Handle;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    .line 31
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/UInt64Handle;->getValue-s-VKNKU()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result p0

    return p0
.end method

.method public setValue-VKZWuLQ(J)V
    .registers 3

    .line 12
    iput-wide p1, p0, Lin/dragonbra/javasteam/types/UInt64Handle;->value:J

    return-void
.end method

.method public final toLong()J
    .registers 3

    .line 55
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/UInt64Handle;->getValue-s-VKNKU()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 50
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/UInt64Handle;->getValue-s-VKNKU()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
