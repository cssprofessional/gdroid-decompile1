###### Class org.tukaani.xz.BCJCoder (org.tukaani.xz.BCJCoder)
.class abstract Lorg/tukaani/xz/BCJCoder;
.super Ljava/lang/Object;
.source "BCJCoder.java"

# interfaces
.implements Lorg/tukaani/xz/FilterCoder;


# static fields
.field public static final ARM64_FILTER_ID:J = 0xaL

.field public static final ARMTHUMB_FILTER_ID:J = 0x8L

.field public static final ARM_FILTER_ID:J = 0x7L

.field public static final IA64_FILTER_ID:J = 0x6L

.field public static final POWERPC_FILTER_ID:J = 0x5L

.field public static final RISCV_FILTER_ID:J = 0xbL

.field public static final SPARC_FILTER_ID:J = 0x9L

.field public static final X86_FILTER_ID:J = 0x4L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBCJFilterID(J)Z
    .registers 4

    .line 0
    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-ltz v0, :cond_e

    const-wide/16 v0, 0xb

    cmp-long p0, p0, v0

    if-gtz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method


# virtual methods
.method public changesSize()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public lastOK()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public nonLastOK()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method
