###### Class kotlinx.io.bytestring.ByteString (kotlinx.io.bytestring.ByteString)
.class public final Lkotlinx/io/bytestring/ByteString;
.super Ljava/lang/Object;
.source "ByteString.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/io/bytestring/ByteString$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlinx/io/bytestring/ByteString;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nkotlinx/io/bytestring/ByteString\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,550:1\n1#2:551\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lkotlinx/io/bytestring/ByteString$Companion;

.field public static final EMPTY:Lkotlinx/io/bytestring/ByteString;

.field public static final HEX_DIGITS:[C


# instance fields
.field public final data:[B

.field public hashCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lkotlinx/io/bytestring/ByteString$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/io/bytestring/ByteString$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/io/bytestring/ByteString;->Companion:Lkotlinx/io/bytestring/ByteString$Companion;

    .line 105
    new-instance v0, Lkotlinx/io/bytestring/ByteString;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v0, v2, v1}, Lkotlinx/io/bytestring/ByteString;-><init>([BLjava/lang/Object;)V

    sput-object v0, Lkotlinx/io/bytestring/ByteString;->EMPTY:Lkotlinx/io/bytestring/ByteString;

    .line 109
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "toCharArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlinx/io/bytestring/ByteString;->HEX_DIGITS:[C

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 5

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-static {p1, p2, p3}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lkotlinx/io/bytestring/ByteString;-><init>([BLjava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>([BIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    .line 95
    array-length p3, p1

    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/io/bytestring/ByteString;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/Object;)V
    .registers 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lkotlinx/io/bytestring/ByteString;->data:[B

    return-void
.end method

.method public synthetic constructor <init>([BLjava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lkotlinx/io/bytestring/ByteString;-><init>([BLjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getEMPTY$cp()Lkotlinx/io/bytestring/ByteString;
    .registers 1

    .line 79
    sget-object v0, Lkotlinx/io/bytestring/ByteString;->EMPTY:Lkotlinx/io/bytestring/ByteString;

    return-object v0
.end method

.method public static synthetic substring$default(Lkotlinx/io/bytestring/ByteString;IIILjava/lang/Object;)Lkotlinx/io/bytestring/ByteString;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_8

    .line 214
    invoke-virtual {p0}, Lkotlinx/io/bytestring/ByteString;->getSize()I

    move-result p2

    :cond_8
    invoke-virtual {p0, p1, p2}, Lkotlinx/io/bytestring/ByteString;->substring(II)Lkotlinx/io/bytestring/ByteString;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 79
    check-cast p1, Lkotlinx/io/bytestring/ByteString;

    invoke-virtual {p0, p1}, Lkotlinx/io/bytestring/ByteString;->compareTo(Lkotlinx/io/bytestring/ByteString;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lkotlinx/io/bytestring/ByteString;)I
    .registers 8

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ne p1, p0, :cond_9

    return v0

    .line 233
    :cond_9
    iget-object v1, p0, Lkotlinx/io/bytestring/ByteString;->data:[B

    .line 234
    iget-object v2, p1, Lkotlinx/io/bytestring/ByteString;->data:[B

    .line 235
    invoke-virtual {p0}, Lkotlinx/io/bytestring/ByteString;->getSize()I

    move-result v3

    invoke-virtual {p1}, Lkotlinx/io/bytestring/ByteString;->getSize()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_19
    if-ge v0, v3, :cond_35

    .line 236
    aget-byte v4, v1, v0

    invoke-static {v4}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, v2, v0

    invoke-static {v5}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    if-eqz v4, :cond_32

    return v4

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 240
    :cond_35
    invoke-virtual {p0}, Lkotlinx/io/bytestring/ByteString;->getSize()I

    move-result p0

    invoke-virtual {p1}, Lkotlinx/io/bytestring/ByteString;->getSize()I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lkotlinx/io/bytestring/ByteString;

    if-eq v2, v1, :cond_10

    goto :goto_2b

    .line 127
    :cond_10
    check-cast p1, Lkotlinx/io/bytestring/ByteString;

    .line 129
    iget-object v1, p1, Lkotlinx/io/bytestring/ByteString;->data:[B

    array-length v2, v1

    iget-object v3, p0, Lkotlinx/io/bytestring/ByteString;->data:[B

    array-length v4, v3

    if-eq v2, v4, :cond_1b

    return v0

    .line 130
    :cond_1b
    iget p1, p1, Lkotlinx/io/bytestring/ByteString;->hashCode:I

    if-eqz p1, :cond_26

    iget p0, p0, Lkotlinx/io/bytestring/ByteString;->hashCode:I

    if-eqz p0, :cond_26

    if-eq p1, p0, :cond_26

    return v0

    .line 131
    :cond_26
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_2b
    :goto_2b
    return v0
.end method

.method public final get(I)B
    .registers 5

    if-ltz p1, :cond_d

    .line 154
    invoke-virtual {p0}, Lkotlinx/io/bytestring/ByteString;->getSize()I

    move-result v0

    if-ge p1, v0, :cond_d

    .line 157
    iget-object p0, p0, Lkotlinx/io/bytestring/ByteString;->data:[B

    aget-byte p0, p0, p1

    return p0

    .line 154
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is out of byte string bounds: [0.."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/io/bytestring/ByteString;->getSize()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 154
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getBackingArrayReference()[B
    .registers 1

    .line 284
    iget-object p0, p0, Lkotlinx/io/bytestring/ByteString;->data:[B

    return-object p0
.end method

.method public final getSize()I
    .registers 1

    .line 116
    iget-object p0, p0, Lkotlinx/io/bytestring/ByteString;->data:[B

    array-length p0, p0

    return p0
.end method

.method public hashCode()I
    .registers 2

    .line 138
    iget v0, p0, Lkotlinx/io/bytestring/ByteString;->hashCode:I

    if-nez v0, :cond_c

    .line 140
    iget-object v0, p0, Lkotlinx/io/bytestring/ByteString;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .line 141
    iput v0, p0, Lkotlinx/io/bytestring/ByteString;->hashCode:I

    :cond_c
    return v0
.end method

.method public final substring(II)Lkotlinx/io/bytestring/ByteString;
    .registers 4

    if-ne p1, p2, :cond_5

    .line 215
    sget-object p0, Lkotlinx/io/bytestring/ByteString;->EMPTY:Lkotlinx/io/bytestring/ByteString;

    goto :goto_d

    .line 217
    :cond_5
    new-instance v0, Lkotlinx/io/bytestring/ByteString;

    iget-object p0, p0, Lkotlinx/io/bytestring/ByteString;->data:[B

    invoke-direct {v0, p0, p1, p2}, Lkotlinx/io/bytestring/ByteString;-><init>([BII)V

    move-object p0, v0

    :goto_d
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 257
    invoke-static {p0}, Lkotlinx/io/bytestring/ByteStringKt;->isEmpty(Lkotlinx/io/bytestring/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 258
    const-string p0, "ByteString(size=0)"

    return-object p0

    .line 261
    :cond_9
    invoke-virtual {p0}, Lkotlinx/io/bytestring/ByteString;->getSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    invoke-virtual {p0}, Lkotlinx/io/bytestring/ByteString;->getSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 264
    const-string v1, "ByteString(size="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v0, " hex="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-object v0, p0, Lkotlinx/io/bytestring/ByteString;->data:[B

    .line 268
    invoke-virtual {p0}, Lkotlinx/io/bytestring/ByteString;->getSize()I

    move-result p0

    const/4 v1, 0x0

    :goto_37
    if-ge v1, p0, :cond_50

    .line 269
    aget-byte v3, v0, v1

    .line 270
    sget-object v4, Lkotlinx/io/bytestring/ByteString;->HEX_DIGITS:[C

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v4, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    .line 271
    aget-char v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_50
    const/16 p0, 0x29

    .line 273
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

###### Class kotlinx.io.bytestring.ByteString.Companion (kotlinx.io.bytestring.ByteString$Companion)
.class public final Lkotlinx/io/bytestring/ByteString$Companion;
.super Ljava/lang/Object;
.source "ByteString.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/io/bytestring/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lkotlinx/io/bytestring/ByteString$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEMPTY$kotlinx_io_bytestring()Lkotlinx/io/bytestring/ByteString;
    .registers 1

    .line 105
    invoke-static {}, Lkotlinx/io/bytestring/ByteString;->access$getEMPTY$cp()Lkotlinx/io/bytestring/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final wrap$kotlinx_io_bytestring([B)Lkotlinx/io/bytestring/ByteString;
    .registers 3

    const-string p0, "byteArray"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance p0, Lkotlinx/io/bytestring/ByteString;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lkotlinx/io/bytestring/ByteString;-><init>([BLjava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
