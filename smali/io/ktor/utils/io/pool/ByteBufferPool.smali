###### Class io.ktor.utils.io.pool.ByteBufferPool (io.ktor.utils.io.pool.ByteBufferPool)
.class public final Lio/ktor/utils/io/pool/ByteBufferPool;
.super Lio/ktor/utils/io/pool/DefaultPool;
.source "ByteBufferPools.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/utils/io/pool/DefaultPool<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field public final bufferSize:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;-><init>(I)V

    .line 15
    iput p2, p0, Lio/ktor/utils/io/pool/ByteBufferPool;->bufferSize:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    const/16 p1, 0x7d0

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    const/16 p2, 0x1000

    .line 13
    :cond_c
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/pool/ByteBufferPool;-><init>(II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clearInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/pool/ByteBufferPool;->clearInstance(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public clearInstance(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 2

    const-string p0, "instance"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 22
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public bridge synthetic produceInstance()Ljava/lang/Object;
    .registers 1

    .line 13
    invoke-virtual {p0}, Lio/ktor/utils/io/pool/ByteBufferPool;->produceInstance()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public produceInstance()Ljava/nio/ByteBuffer;
    .registers 1

    .line 18
    iget p0, p0, Lio/ktor/utils/io/pool/ByteBufferPool;->bufferSize:I

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic validateInstance(Ljava/lang/Object;)V
    .registers 2

    .line 13
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/pool/ByteBufferPool;->validateInstance(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public validateInstance(Ljava/nio/ByteBuffer;)V
    .registers 4

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    iget p0, p0, Lio/ktor/utils/io/pool/ByteBufferPool;->bufferSize:I

    const-string v1, "Check failed."

    if-ne v0, p0, :cond_1c

    .line 27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p0

    if-nez p0, :cond_16

    return-void

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
