###### Class in.dragonbra.javasteam.types.GlobalID (in.dragonbra.javasteam.types.GlobalID)
.class public Lin/dragonbra/javasteam/types/GlobalID;
.super Ljava/lang/Object;
.source "GlobalID.kt"


# instance fields
.field private final gidBits:Lin/dragonbra/javasteam/types/BitVector64;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lin/dragonbra/javasteam/types/GlobalID;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lin/dragonbra/javasteam/types/BitVector64;

    invoke-direct {v0, p1, p2}, Lin/dragonbra/javasteam/types/BitVector64;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/types/GlobalID;->gidBits:Lin/dragonbra/javasteam/types/BitVector64;

    return-void
.end method

.method public synthetic constructor <init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_9

    const-wide p1, 0x7fffffffffffffffL

    .line 12
    :cond_9
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/types/GlobalID;-><init>(J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 72
    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/types/GlobalID;

    if-nez v1, :cond_9

    return v0

    .line 73
    :cond_9
    iget-object p0, p0, Lin/dragonbra/javasteam/types/GlobalID;->gidBits:Lin/dragonbra/javasteam/types/BitVector64;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/BitVector64;->getData()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p1, Lin/dragonbra/javasteam/types/GlobalID;

    iget-object p1, p1, Lin/dragonbra/javasteam/types/GlobalID;->gidBits:Lin/dragonbra/javasteam/types/BitVector64;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/BitVector64;->getData()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lin/dragonbra/javasteam/util/compat/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getBoxID()J
    .registers 4

    .line 51
    iget-object p0, p0, Lin/dragonbra/javasteam/types/GlobalID;->gidBits:Lin/dragonbra/javasteam/types/BitVector64;

    const/16 v0, 0x36

    const-wide/16 v1, 0x3ff

    invoke-virtual {p0, v0, v1, v2}, Lin/dragonbra/javasteam/types/BitVector64;->getMask(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getProcessID()J
    .registers 4

    .line 42
    iget-object p0, p0, Lin/dragonbra/javasteam/types/GlobalID;->gidBits:Lin/dragonbra/javasteam/types/BitVector64;

    const/16 v0, 0x32

    const-wide/16 v1, 0xf

    invoke-virtual {p0, v0, v1, v2}, Lin/dragonbra/javasteam/types/BitVector64;->getMask(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSequentialCount()J
    .registers 4

    .line 20
    iget-object p0, p0, Lin/dragonbra/javasteam/types/GlobalID;->gidBits:Lin/dragonbra/javasteam/types/BitVector64;

    const/4 v0, 0x0

    const-wide/32 v1, 0xfffff

    invoke-virtual {p0, v0, v1, v2}, Lin/dragonbra/javasteam/types/BitVector64;->getMask(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getStartTime()Ljava/util/Date;
    .registers 5

    .line 30
    iget-object p0, p0, Lin/dragonbra/javasteam/types/GlobalID;->gidBits:Lin/dragonbra/javasteam/types/BitVector64;

    const/16 v0, 0x14

    const-wide/32 v1, 0x3fffffff

    invoke-virtual {p0, v0, v1, v2}, Lin/dragonbra/javasteam/types/BitVector64;->getMask(IJ)J

    move-result-wide v0

    .line 31
    new-instance p0, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method

.method public final getValue()J
    .registers 3

    .line 60
    iget-object p0, p0, Lin/dragonbra/javasteam/types/GlobalID;->gidBits:Lin/dragonbra/javasteam/types/BitVector64;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/BitVector64;->getData()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    .line 80
    iget-object p0, p0, Lin/dragonbra/javasteam/types/GlobalID;->gidBits:Lin/dragonbra/javasteam/types/BitVector64;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/BitVector64;->getData()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public final setBoxID(J)V
    .registers 9

    .line 53
    iget-object v0, p0, Lin/dragonbra/javasteam/types/GlobalID;->gidBits:Lin/dragonbra/javasteam/types/BitVector64;

    const/16 v1, 0x36

    const-wide/16 v2, 0x3ff

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lin/dragonbra/javasteam/types/BitVector64;->setMask(IJJ)V

    return-void
.end method

.method public final setProcessID(J)V
    .registers 9

    .line 44
    iget-object v0, p0, Lin/dragonbra/javasteam/types/GlobalID;->gidBits:Lin/dragonbra/javasteam/types/BitVector64;

    const/16 v1, 0x32

    const-wide/16 v2, 0xf

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lin/dragonbra/javasteam/types/BitVector64;->setMask(IJJ)V

    return-void
.end method

.method public final setSequentialCount(J)V
    .registers 9

    .line 22
    iget-object v0, p0, Lin/dragonbra/javasteam/types/GlobalID;->gidBits:Lin/dragonbra/javasteam/types/BitVector64;

    const/4 v1, 0x0

    const-wide/32 v2, 0xfffff

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lin/dragonbra/javasteam/types/BitVector64;->setMask(IJJ)V

    return-void
.end method

.method public final setStartTime(Ljava/util/Date;)V
    .registers 12

    const-string v0, "startTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide v2, 0x1012b924000L

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long v8, v0, v2

    .line 35
    iget-object v4, p0, Lin/dragonbra/javasteam/types/GlobalID;->gidBits:Lin/dragonbra/javasteam/types/BitVector64;

    const/16 v5, 0x14

    const-wide/32 v6, 0x3fffffff

    invoke-virtual/range {v4 .. v9}, Lin/dragonbra/javasteam/types/BitVector64;->setMask(IJJ)V

    return-void
.end method

.method public final setValue(J)V
    .registers 3

    .line 62
    iget-object p0, p0, Lin/dragonbra/javasteam/types/GlobalID;->gidBits:Lin/dragonbra/javasteam/types/BitVector64;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/types/BitVector64;->setData(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 86
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/GlobalID;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
