###### Class kotlinx.io.Sink (kotlinx.io.Sink)
.class public interface abstract Lkotlinx/io/Sink;
.super Ljava/lang/Object;
.source "Sink.kt"

# interfaces
.implements Lkotlinx/io/RawSink;


# direct methods
.method public static synthetic write$default(Lkotlinx/io/Sink;[BIIILjava/lang/Object;)V
    .registers 6

    if-nez p5, :cond_10

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_7

    const/4 p2, 0x0

    :cond_7
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_c

    .line 88
    array-length p3, p1

    :cond_c
    invoke-interface {p0, p1, p2, p3}, Lkotlinx/io/Sink;->write([BII)V

    return-void

    :cond_10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: write"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract getBuffer()Lkotlinx/io/Buffer;
.end method

.method public abstract hintEmit()V
.end method

.method public abstract transferFrom(Lkotlinx/io/RawSource;)J
.end method

.method public abstract write(Lkotlinx/io/RawSource;J)V
.end method

.method public abstract write([BII)V
.end method

.method public abstract writeByte(B)V
.end method

.method public abstract writeInt(I)V
.end method

.method public abstract writeLong(J)V
.end method

.method public abstract writeShort(S)V
.end method
