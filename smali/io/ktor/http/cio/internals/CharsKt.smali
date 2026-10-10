###### Class io.ktor.http.cio.internals.CharsKt (io.ktor.http.cio.internals.CharsKt)
.class public final Lio/ktor/http/cio/internals/CharsKt;
.super Ljava/lang/Object;
.source "Chars.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChars.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Chars.kt\nio/ktor/http/cio/internals/CharsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,133:1\n34#1:134\n34#1:135\n1#2:136\n1563#3:137\n1634#3,3:138\n1563#3:141\n1634#3,3:142\n*S KotlinDebug\n*F\n+ 1 Chars.kt\nio/ktor/http/cio/internals/CharsKt\n*L\n15#1:134\n26#1:135\n39#1:137\n39#1:138,3\n48#1:141\n48#1:142,3\n*E\n"
.end annotation


# static fields
.field public static final DefaultHttpMethods:Lio/ktor/http/cio/internals/AsciiCharTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/http/cio/internals/AsciiCharTree<",
            "Lio/ktor/http/HttpMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final HexLetterTable:[B

.field public static final HexTable:[J


# direct methods
.method public static synthetic $r8$lambda$Lj36FqQzo-GOjhbzUwExdEmm3D4(Lio/ktor/http/HttpMethod;I)C
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/http/cio/internals/CharsKt;->DefaultHttpMethods$lambda$1(Lio/ktor/http/HttpMethod;I)C

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uWe_48lo1ujTXc0gfmAPq_QtOuc(Lio/ktor/http/HttpMethod;)I
    .registers 1

    .line 0
    invoke-static {p0}, Lio/ktor/http/cio/internals/CharsKt;->DefaultHttpMethods$lambda$0(Lio/ktor/http/HttpMethod;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 10

    .line 37
    sget-object v0, Lio/ktor/http/cio/internals/AsciiCharTree;->Companion:Lio/ktor/http/cio/internals/AsciiCharTree$Companion;

    sget-object v1, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v1}, Lio/ktor/http/HttpMethod$Companion;->getDefaultMethods()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lio/ktor/http/cio/internals/CharsKt$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lio/ktor/http/cio/internals/CharsKt$$ExternalSyntheticLambda0;-><init>()V

    new-instance v3, Lio/ktor/http/cio/internals/CharsKt$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lio/ktor/http/cio/internals/CharsKt$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lio/ktor/http/cio/internals/AsciiCharTree$Companion;->build(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lio/ktor/http/cio/internals/AsciiCharTree;

    move-result-object v0

    sput-object v0, Lio/ktor/http/cio/internals/CharsKt;->DefaultHttpMethods:Lio/ktor/http/cio/internals/AsciiCharTree;

    .line 39
    new-instance v0, Lkotlin/ranges/IntRange;

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 1563
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_71

    move-object v4, v0

    check-cast v4, Lkotlin/collections/IntIterator;

    invoke-virtual {v4}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v4

    const/16 v5, 0x30

    if-gt v5, v4, :cond_49

    const/16 v5, 0x3a

    if-ge v4, v5, :cond_49

    int-to-long v4, v4

    const-wide/16 v6, 0x30

    sub-long/2addr v4, v6

    goto :goto_69

    :cond_49
    int-to-long v4, v4

    const-wide/16 v6, 0x61

    cmp-long v8, v4, v6

    if-ltz v8, :cond_5a

    const-wide/16 v8, 0x66

    cmp-long v8, v4, v8

    if-gtz v8, :cond_5a

    :goto_56
    sub-long/2addr v4, v6

    int-to-long v6, v3

    add-long/2addr v4, v6

    goto :goto_69

    :cond_5a
    const-wide/16 v6, 0x41

    cmp-long v8, v4, v6

    if-ltz v8, :cond_67

    const-wide/16 v8, 0x46

    cmp-long v8, v4, v8

    if-gtz v8, :cond_67

    goto :goto_56

    :cond_67
    const-wide/16 v4, -0x1

    .line 45
    :goto_69
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1635
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 46
    :cond_71
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toLongArray(Ljava/util/Collection;)[J

    move-result-object v0

    sput-object v0, Lio/ktor/http/cio/internals/CharsKt;->HexTable:[J

    .line 48
    new-instance v0, Lkotlin/ranges/IntRange;

    const/16 v1, 0xf

    invoke-direct {v0, v2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 1563
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ac

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    if-ge v2, v3, :cond_9e

    add-int/lit8 v2, v2, 0x30

    :goto_9c
    int-to-byte v2, v2

    goto :goto_a4

    :cond_9e
    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    sub-int/2addr v2, v3

    int-to-char v2, v2

    goto :goto_9c

    .line 49
    :goto_a4
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 1635
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    .line 50
    :cond_ac
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v0

    sput-object v0, Lio/ktor/http/cio/internals/CharsKt;->HexLetterTable:[B

    return-void
.end method

.method public static final DefaultHttpMethods$lambda$0(Lio/ktor/http/HttpMethod;)I
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lio/ktor/http/HttpMethod;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public static final DefaultHttpMethods$lambda$1(Lio/ktor/http/HttpMethod;I)C
    .registers 3

    const-string v0, "m"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lio/ktor/http/HttpMethod;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public static final equalsLowerCase(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Z
    .registers 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int v0, p2, p1

    .line 23
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_14

    return v2

    :cond_14
    move v0, p1

    :goto_15
    if-ge v0, p2, :cond_37

    .line 26
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x5b

    const/16 v4, 0x41

    if-gt v4, v1, :cond_25

    if-ge v1, v3, :cond_25

    add-int/lit8 v1, v1, 0x20

    :cond_25
    sub-int v5, v0, p1

    invoke-interface {p3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-gt v4, v5, :cond_31

    if-ge v5, v3, :cond_31

    add-int/lit8 v5, v5, 0x20

    :cond_31
    if-eq v1, v5, :cond_34

    return v2

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_37
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic equalsLowerCase$default(Ljava/lang/CharSequence;IILjava/lang/CharSequence;ILjava/lang/Object;)Z
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_d

    .line 22
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    :cond_d
    invoke-static {p0, p1, p2, p3}, Lio/ktor/http/cio/internals/CharsKt;->equalsLowerCase(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static final hashCodeLowerCase(Ljava/lang/CharSequence;II)I
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    if-ge p1, p2, :cond_1c

    .line 15
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x41

    if-gt v2, v1, :cond_16

    const/16 v2, 0x5b

    if-ge v1, v2, :cond_16

    add-int/lit8 v1, v1, 0x20

    :cond_16
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_1c
    return v0
.end method

.method public static synthetic hashCodeLowerCase$default(Ljava/lang/CharSequence;IIILjava/lang/Object;)I
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_d

    .line 12
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    :cond_d
    invoke-static {p0, p1, p2}, Lio/ktor/http/cio/internals/CharsKt;->hashCodeLowerCase(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method public static final hexNumberFormatException(Ljava/lang/CharSequence;I)Ljava/lang/Void;
    .registers 5

    .line 123
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid HEX number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", wrong digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final numberFormatException(Ljava/lang/CharSequence;)V
    .registers 4

    .line 131
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": too large for Long type"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final numberFormatException(Ljava/lang/CharSequence;I)V
    .registers 5

    .line 127
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", wrong digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, " at position "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseDecLong(Ljava/lang/CharSequence;)J
    .registers 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x13

    if-le v0, v1, :cond_10

    .line 72
    invoke-static {p0}, Lio/ktor/http/cio/internals/CharsKt;->numberFormatException(Ljava/lang/CharSequence;)V

    :cond_10
    if-ne v0, v1, :cond_17

    .line 73
    invoke-static {p0}, Lio/ktor/http/cio/internals/CharsKt;->parseDecLongWithCheck(Ljava/lang/CharSequence;)J

    move-result-wide v0

    return-wide v0

    :cond_17
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_1b
    if-ge v3, v0, :cond_3d

    .line 77
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x30

    sub-long/2addr v6, v8

    cmp-long v8, v6, v1

    if-ltz v8, :cond_2f

    const-wide/16 v8, 0x9

    cmp-long v8, v6, v8

    if-lez v8, :cond_32

    .line 78
    :cond_2f
    invoke-static {p0, v3}, Lio/ktor/http/cio/internals/CharsKt;->numberFormatException(Ljava/lang/CharSequence;I)V

    :cond_32
    const/4 v8, 0x3

    shl-long v8, v4, v8

    const/4 v10, 0x1

    shl-long/2addr v4, v10

    add-long/2addr v8, v4

    add-long v4, v8, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_3d
    return-wide v4
.end method

.method public static final parseDecLongWithCheck(Ljava/lang/CharSequence;)J
    .registers 12

    .line 88
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_8
    if-ge v3, v0, :cond_31

    .line 89
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x30

    sub-long/2addr v6, v8

    cmp-long v8, v6, v1

    if-ltz v8, :cond_1c

    const-wide/16 v8, 0x9

    cmp-long v8, v6, v8

    if-lez v8, :cond_1f

    .line 90
    :cond_1c
    invoke-static {p0, v3}, Lio/ktor/http/cio/internals/CharsKt;->numberFormatException(Ljava/lang/CharSequence;I)V

    :cond_1f
    const/4 v8, 0x3

    shl-long v8, v4, v8

    const/4 v10, 0x1

    shl-long/2addr v4, v10

    add-long/2addr v8, v4

    add-long v4, v8, v6

    cmp-long v6, v4, v1

    if-gez v6, :cond_2e

    .line 93
    invoke-static {p0}, Lio/ktor/http/cio/internals/CharsKt;->numberFormatException(Ljava/lang/CharSequence;)V

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_31
    return-wide v4
.end method

.method public static final parseHexLong(Ljava/lang/CharSequence;)J
    .registers 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lio/ktor/http/cio/internals/CharsKt;->HexTable:[J

    .line 55
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v1, :cond_35

    .line 56
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    const/16 v6, 0xff

    const-wide/16 v7, -0x1

    if-ge v5, v6, :cond_21

    .line 57
    aget-wide v5, v0, v5

    goto :goto_22

    :cond_21
    move-wide v5, v7

    :goto_22
    cmp-long v7, v5, v7

    if-eqz v7, :cond_2c

    const/4 v7, 0x4

    shl-long/2addr v2, v7

    or-long/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 58
    :cond_2c
    invoke-static {p0, v4}, Lio/ktor/http/cio/internals/CharsKt;->hexNumberFormatException(Ljava/lang/CharSequence;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_35
    return-wide v2
.end method

.method public static final writeIntHex(Lio/ktor/utils/io/ByteWriteChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;

    iget v1, v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;

    invoke-direct {v0, p2}, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 99
    iget v2, v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->label:I

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_49

    if-eq v2, v5, :cond_33

    if-ne v2, v4, :cond_2b

    goto :goto_33

    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    :goto_33
    iget p0, v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->I$2:I

    iget p1, v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->I$1:I

    iget v2, v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->I$0:I

    iget-object v5, v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->L$1:Ljava/lang/Object;

    check-cast v5, [B

    iget-object v6, v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v7, p0

    move-object p0, v6

    move v6, p1

    move p1, v2

    goto :goto_76

    :cond_49
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-lez p1, :cond_9a

    .line 102
    sget-object p2, Lio/ktor/http/cio/internals/CharsKt;->HexLetterTable:[B

    const/4 v2, 0x0

    move v6, p1

    :goto_52
    add-int/lit8 v7, v2, 0x1

    if-ge v2, v3, :cond_75

    ushr-int/lit8 v2, v6, 0x1c

    shl-int/lit8 v6, v6, 0x4

    if-eqz v2, :cond_73

    .line 110
    aget-byte v8, p2, v2

    iput-object p0, v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->I$0:I

    iput v6, v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->I$1:I

    iput v7, v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->I$2:I

    iput v2, v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->I$3:I

    iput v5, v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->label:I

    invoke-static {p0, v8, v0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->writeByte(Lio/ktor/utils/io/ByteWriteChannel;BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_75

    return-object v1

    :cond_73
    move v2, v7

    goto :goto_52

    :cond_75
    move-object v5, p2

    :goto_76
    add-int/lit8 p2, v7, 0x1

    if-ge v7, v3, :cond_97

    ushr-int/lit8 v2, v6, 0x1c

    shl-int/lit8 v6, v6, 0x4

    .line 118
    aget-byte v7, v5, v2

    iput-object p0, v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->I$0:I

    iput v6, v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->I$1:I

    iput p2, v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->I$2:I

    iput v2, v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->I$3:I

    iput v4, v0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->label:I

    invoke-static {p0, v7, v0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->writeByte(Lio/ktor/utils/io/ByteWriteChannel;BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_95

    return-object v1

    :cond_95
    move v7, p2

    goto :goto_76

    .line 120
    :cond_97
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 100
    :cond_9a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Does only work for positive numbers"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class io.ktor.http.cio.internals.CharsKt.AnonymousClass1 (io.ktor.http.cio.internals.CharsKt$writeIntHex$1)
.class public final Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Chars.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/http/cio/internals/CharsKt;->writeIntHex(Lio/ktor/utils/io/ByteWriteChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.http.cio.internals.CharsKt"
    f = "Chars.kt"
    l = {
        0x6e,
        0x76
    }
    m = "writeIntHex"
    v = 0x1
.end annotation


# instance fields
.field public I$0:I

.field public I$1:I

.field public I$2:I

.field public I$3:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/http/cio/internals/CharsKt$writeIntHex$1;->label:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lio/ktor/http/cio/internals/CharsKt;->writeIntHex(Lio/ktor/utils/io/ByteWriteChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.cio.internals.CharsKt$$ExternalSyntheticLambda0 (io.ktor.http.cio.internals.CharsKt$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/http/cio/internals/CharsKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lio/ktor/http/HttpMethod;

    invoke-static {p1}, Lio/ktor/http/cio/internals/CharsKt;->$r8$lambda$uWe_48lo1ujTXc0gfmAPq_QtOuc(Lio/ktor/http/HttpMethod;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.cio.internals.CharsKt$$ExternalSyntheticLambda1 (io.ktor.http.cio.internals.CharsKt$$ExternalSyntheticLambda1)
.class public final synthetic Lio/ktor/http/cio/internals/CharsKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lio/ktor/http/HttpMethod;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lio/ktor/http/cio/internals/CharsKt;->$r8$lambda$Lj36FqQzo-GOjhbzUwExdEmm3D4(Lio/ktor/http/HttpMethod;I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method
