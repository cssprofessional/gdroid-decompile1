###### Class org.tukaani.xz.LZMA2Coder (org.tukaani.xz.LZMA2Coder)
.class abstract Lorg/tukaani/xz/LZMA2Coder;
.super Ljava/lang/Object;
.source "LZMA2Coder.java"

# interfaces
.implements Lorg/tukaani/xz/FilterCoder;


# static fields
.field public static final FILTER_ID:J = 0x21L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changesSize()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public lastOK()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public nonLastOK()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method
