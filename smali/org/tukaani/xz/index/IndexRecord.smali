###### Class org.tukaani.xz.index.IndexRecord (org.tukaani.xz.index.IndexRecord)
.class Lorg/tukaani/xz/index/IndexRecord;
.super Ljava/lang/Object;
.source "IndexRecord.java"


# instance fields
.field final uncompressed:J

.field final unpadded:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lorg/tukaani/xz/index/IndexRecord;->unpadded:J

    .line 13
    iput-wide p3, p0, Lorg/tukaani/xz/index/IndexRecord;->uncompressed:J

    return-void
.end method
