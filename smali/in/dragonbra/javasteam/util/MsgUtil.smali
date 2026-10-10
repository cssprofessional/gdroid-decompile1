###### Class in.dragonbra.javasteam.util.MsgUtil (in.dragonbra.javasteam.util.MsgUtil)
.class public Lin/dragonbra/javasteam/util/MsgUtil;
.super Ljava/lang/Object;
.source "MsgUtil.java"


# static fields
.field private static final EMSG_MASK:I = 0x7fffffff

.field private static final PROTO_MASK:I = -0x80000000


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGCMsg(I)I
    .registers 2

    .line 0
    const v0, 0x7fffffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static getMsg(I)Lin/dragonbra/javasteam/enums/EMsg;
    .registers 2

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    .line 21
    invoke-static {p0}, Lin/dragonbra/javasteam/enums/EMsg;->from(I)Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object p0

    return-object p0
.end method

.method public static isProtoBuf(I)Z
    .registers 5

    .line 0
    int-to-long v0, p0

    const-wide v2, 0x80000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public static makeGCMsg(IZ)I
    .registers 2

    .line 0
    if-eqz p1, :cond_5

    const/high16 p1, -0x80000000

    or-int/2addr p0, p1

    :cond_5
    return p0
.end method

.method public static makeMsg(IZ)I
    .registers 2

    .line 0
    if-eqz p1, :cond_5

    const/high16 p1, -0x80000000

    or-int/2addr p0, p1

    :cond_5
    return p0
.end method
