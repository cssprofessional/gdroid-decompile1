###### Class org.tukaani.xz.delta.DeltaCoder (org.tukaani.xz.delta.DeltaCoder)
.class abstract Lorg/tukaani/xz/delta/DeltaCoder;
.super Ljava/lang/Object;
.source "DeltaCoder.java"


# static fields
.field static final DISTANCE_MAX:I = 0x100

.field static final DISTANCE_MIN:I = 0x1


# instance fields
.field final distance:I

.field final history:[B


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_11

    const/16 v0, 0x100

    if-gt p1, v0, :cond_11

    .line 20
    iput p1, p0, Lorg/tukaani/xz/delta/DeltaCoder;->distance:I

    .line 21
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/tukaani/xz/delta/DeltaCoder;->history:[B

    return-void

    .line 17
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid distance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
