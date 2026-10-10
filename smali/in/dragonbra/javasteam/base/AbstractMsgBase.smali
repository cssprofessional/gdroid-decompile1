###### Class in.dragonbra.javasteam.base.AbstractMsgBase (in.dragonbra.javasteam.base.AbstractMsgBase)
.class public abstract Lin/dragonbra/javasteam/base/AbstractMsgBase;
.super Ljava/lang/Object;
.source "AbstractMsgBase.kt"


# instance fields
.field private final payload:Lin/dragonbra/javasteam/util/stream/MemoryStream;

.field private final reader:Lin/dragonbra/javasteam/util/stream/BinaryReader;

.field private final writer:Lin/dragonbra/javasteam/util/stream/BinaryWriter;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lin/dragonbra/javasteam/base/AbstractMsgBase;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>(I)V

    iput-object v0, p0, Lin/dragonbra/javasteam/base/AbstractMsgBase;->payload:Lin/dragonbra/javasteam/util/stream/MemoryStream;

    .line 24
    new-instance p1, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {p1, v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/base/AbstractMsgBase;->reader:Lin/dragonbra/javasteam/util/stream/BinaryReader;

    .line 26
    new-instance p1, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->asOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p1, v0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/base/AbstractMsgBase;->writer:Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 17
    :cond_5
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/base/AbstractMsgBase;-><init>(I)V

    return-void
.end method

.method public static synthetic readNullTermString$default(Lin/dragonbra/javasteam/base/AbstractMsgBase;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_12

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_d

    .line 189
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string p2, "UTF_8"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->readNullTermString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: readNullTermString"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic writeNullTermString$default(Lin/dragonbra/javasteam/base/AbstractMsgBase;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p4, :cond_11

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_d

    .line 125
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string p3, "UTF_8"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->writeNullTermString(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void

    :cond_11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: writeNullTermString"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic writeString$default(Lin/dragonbra/javasteam/base/AbstractMsgBase;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p4, :cond_11

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_d

    .line 109
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string p3, "UTF_8"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void

    :cond_11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: writeString"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getPayload()Lin/dragonbra/javasteam/util/stream/MemoryStream;
    .registers 1

    .line 22
    iget-object p0, p0, Lin/dragonbra/javasteam/base/AbstractMsgBase;->payload:Lin/dragonbra/javasteam/util/stream/MemoryStream;

    return-object p0
.end method

.method public final readByte()B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-object p0, p0, Lin/dragonbra/javasteam/base/AbstractMsgBase;->reader:Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readByte()B

    move-result p0

    return p0
.end method

.method public final readBytes(I)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object p0, p0, Lin/dragonbra/javasteam/base/AbstractMsgBase;->reader:Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readBytes(I)[B

    move-result-object p0

    const-string p1, "readBytes(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    iget-object p0, p0, Lin/dragonbra/javasteam/base/AbstractMsgBase;->reader:Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-object p0, p0, Lin/dragonbra/javasteam/base/AbstractMsgBase;->reader:Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readFloat()F

    move-result p0

    return p0
.end method

.method public final readInt()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object p0, p0, Lin/dragonbra/javasteam/base/AbstractMsgBase;->reader:Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p0

    return p0
.end method

.method public final readLong()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-object p0, p0, Lin/dragonbra/javasteam/base/AbstractMsgBase;->reader:Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readNullTermString()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->readNullTermString$default(Lin/dragonbra/javasteam/base/AbstractMsgBase;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final readNullTermString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object p0, p0, Lin/dragonbra/javasteam/base/AbstractMsgBase;->reader:Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readNullTermString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "readNullTermString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final readShort()S
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object p0, p0, Lin/dragonbra/javasteam/base/AbstractMsgBase;->reader:Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readShort()S

    move-result p0

    return p0
.end method

.method public final seek(JLin/dragonbra/javasteam/util/stream/SeekOrigin;)J
    .registers 5

    const-string v0, "seekOrigin"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object p0, p0, Lin/dragonbra/javasteam/base/AbstractMsgBase;->payload:Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-virtual {p0, p1, p2, p3}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->seek(JLin/dragonbra/javasteam/util/stream/SeekOrigin;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final writeByte(B)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object p0, p0, Lin/dragonbra/javasteam/base/AbstractMsgBase;->writer:Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final writeBytes([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p0, p0, Lin/dragonbra/javasteam/base/AbstractMsgBase;->writer:Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final writeDouble(D)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object p0, p0, Lin/dragonbra/javasteam/base/AbstractMsgBase;->writer:Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeDouble(D)V

    return-void
.end method

.method public final writeFloat(F)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object p0, p0, Lin/dragonbra/javasteam/base/AbstractMsgBase;->writer:Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeFloat(F)V

    return-void
.end method

.method public final writeInt(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lin/dragonbra/javasteam/base/AbstractMsgBase;->writer:Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    return-void
.end method

.method public final writeLong(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object p0, p0, Lin/dragonbra/javasteam/base/AbstractMsgBase;->writer:Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeLong(J)V

    return-void
.end method

.method public final writeNullTermString(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->writeNullTermString$default(Lin/dragonbra/javasteam/base/AbstractMsgBase;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    return-void
.end method

.method public final writeNullTermString(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 127
    const-string p1, "\u0000"

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public final writeShort(S)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object p0, p0, Lin/dragonbra/javasteam/base/AbstractMsgBase;->writer:Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeShort(S)V

    return-void
.end method

.method public final writeString(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->writeString$default(Lin/dragonbra/javasteam/base/AbstractMsgBase;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    return-void
.end method

.method public final writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_8

    return-void

    .line 114
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "getBytes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->writeBytes([B)V

    return-void
.end method
