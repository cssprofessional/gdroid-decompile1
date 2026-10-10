###### Class kotlinx.io.Source (kotlinx.io.Source)
.class public interface abstract Lkotlinx/io/Source;
.super Ljava/lang/Object;
.source "Source.kt"

# interfaces
.implements Lkotlinx/io/RawSource;


# virtual methods
.method public abstract exhausted()Z
.end method

.method public abstract getBuffer()Lkotlinx/io/Buffer;
.end method

.method public abstract peek()Lkotlinx/io/Source;
.end method

.method public abstract readAtMostTo([BII)I
.end method

.method public abstract readByte()B
.end method

.method public abstract readInt()I
.end method

.method public abstract readLong()J
.end method

.method public abstract readShort()S
.end method

.method public abstract readTo(Lkotlinx/io/RawSink;J)V
.end method

.method public abstract request(J)Z
.end method

.method public abstract require(J)V
.end method

.method public abstract transferTo(Lkotlinx/io/RawSink;)J
.end method
