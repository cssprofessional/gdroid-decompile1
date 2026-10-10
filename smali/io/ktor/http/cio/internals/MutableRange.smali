###### Class io.ktor.http.cio.internals.MutableRange (io.ktor.http.cio.internals.MutableRange)
.class public final Lio/ktor/http/cio/internals/MutableRange;
.super Ljava/lang/Object;
.source "MutableRange.kt"


# instance fields
.field public end:I

.field public start:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/ktor/http/cio/internals/MutableRange;->start:I

    iput p2, p0, Lio/ktor/http/cio/internals/MutableRange;->end:I

    return-void
.end method


# virtual methods
.method public final getEnd()I
    .registers 1

    .line 15
    iget p0, p0, Lio/ktor/http/cio/internals/MutableRange;->end:I

    return p0
.end method

.method public final getStart()I
    .registers 1

    .line 15
    iget p0, p0, Lio/ktor/http/cio/internals/MutableRange;->start:I

    return p0
.end method

.method public final setEnd(I)V
    .registers 2

    .line 15
    iput p1, p0, Lio/ktor/http/cio/internals/MutableRange;->end:I

    return-void
.end method

.method public final setStart(I)V
    .registers 2

    .line 15
    iput p1, p0, Lio/ktor/http/cio/internals/MutableRange;->start:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MutableRange(start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/ktor/http/cio/internals/MutableRange;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/ktor/http/cio/internals/MutableRange;->end:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
