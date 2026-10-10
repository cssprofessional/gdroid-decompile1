###### Class in.dragonbra.javasteam.types.KeyValue (in.dragonbra.javasteam.types.KeyValue)
.class public final Lin/dragonbra/javasteam/types/KeyValue;
.super Ljava/lang/Object;
.source "KeyValue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/types/KeyValue$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeyValue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyValue.kt\nin/dragonbra/javasteam/types/KeyValue\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 LogManager.kt\nin/dragonbra/javasteam/util/log/LogManager\n*L\n1#1,596:1\n1#2:597\n1869#3,2:598\n1869#3,2:600\n53#4:602\n*S KotlinDebug\n*F\n+ 1 KeyValue.kt\nin/dragonbra/javasteam/types/KeyValue\n*L\n367#1:598,2\n389#1:600,2\n421#1:602\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/types/KeyValue$Companion;

.field public static final INVALID:Lin/dragonbra/javasteam/types/KeyValue;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/types/KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$02_9Jro6f6usLKnXSVZhYG1tZpg(Ljava/lang/String;Lin/dragonbra/javasteam/types/KeyValue;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lin/dragonbra/javasteam/types/KeyValue;->set$lambda$0(Ljava/lang/String;Lin/dragonbra/javasteam/types/KeyValue;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aWISWXxkHfAQ1LeMsuPdtYCqRsM(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lin/dragonbra/javasteam/types/KeyValue;->set$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lin/dragonbra/javasteam/types/KeyValue$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/types/KeyValue$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/types/KeyValue;->Companion:Lin/dragonbra/javasteam/types/KeyValue$Companion;

    .line 53
    const-class v0, Lin/dragonbra/javasteam/types/KeyValue;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    .line 421
    sput-object v0, Lin/dragonbra/javasteam/types/KeyValue;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    .line 449
    new-instance v0, Lin/dragonbra/javasteam/types/KeyValue;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lin/dragonbra/javasteam/types/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/types/KeyValue;->INVALID:Lin/dragonbra/javasteam/types/KeyValue;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lin/dragonbra/javasteam/types/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lin/dragonbra/javasteam/types/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lin/dragonbra/javasteam/types/KeyValue;->name:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lin/dragonbra/javasteam/types/KeyValue;->value:Ljava/lang/String;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lin/dragonbra/javasteam/types/KeyValue;->children:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    move-object p2, v0

    .line 29
    :cond_b
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/types/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;
    .registers 1

    .line 28
    sget-object v0, Lin/dragonbra/javasteam/types/KeyValue;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-object v0
.end method

.method public static synthetic asBoolean$default(Lin/dragonbra/javasteam/types/KeyValue;ZILjava/lang/Object;)Z
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 158
    :cond_5
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/types/KeyValue;->asBoolean(Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic asByte$default(Lin/dragonbra/javasteam/types/KeyValue;BILjava/lang/Object;)B
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 77
    :cond_5
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/types/KeyValue;->asByte(B)B

    move-result p0

    return p0
.end method

.method public static synthetic asFloat$default(Lin/dragonbra/javasteam/types/KeyValue;FILjava/lang/Object;)F
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 149
    :cond_5
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/types/KeyValue;->asFloat(F)F

    move-result p0

    return p0
.end method

.method public static synthetic asInteger$default(Lin/dragonbra/javasteam/types/KeyValue;IILjava/lang/Object;)I
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 113
    :cond_5
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/types/KeyValue;->asInteger(I)I

    move-result p0

    return p0
.end method

.method public static synthetic asLong$default(Lin/dragonbra/javasteam/types/KeyValue;JILjava/lang/Object;)J
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_6

    const-wide/16 p1, 0x0

    .line 131
    :cond_6
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/types/KeyValue;->asLong(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic asShort$default(Lin/dragonbra/javasteam/types/KeyValue;SILjava/lang/Object;)S
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 95
    :cond_5
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/types/KeyValue;->asShort(S)S

    move-result p0

    return p0
.end method

.method public static synthetic asUnsignedByte-UGUG2fk$default(Lin/dragonbra/javasteam/types/KeyValue;BILjava/lang/Object;)B
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 86
    :cond_5
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/types/KeyValue;->asUnsignedByte-UGUG2fk(B)B

    move-result p0

    return p0
.end method

.method public static synthetic asUnsignedInteger-IKrLr70$default(Lin/dragonbra/javasteam/types/KeyValue;IILjava/lang/Object;)I
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 122
    :cond_5
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/types/KeyValue;->asUnsignedInteger-IKrLr70(I)I

    move-result p0

    return p0
.end method

.method public static synthetic asUnsignedLong-PUiSbYQ$default(Lin/dragonbra/javasteam/types/KeyValue;JILjava/lang/Object;)J
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_6

    const-wide/16 p1, 0x0

    .line 140
    :cond_6
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/types/KeyValue;->asUnsignedLong-PUiSbYQ(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic asUnsignedShort-SDdNylE$default(Lin/dragonbra/javasteam/types/KeyValue;SILjava/lang/Object;)S
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 104
    :cond_5
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/types/KeyValue;->asUnsignedShort-SDdNylE(S)S

    move-result p0

    return p0
.end method

.method private final getNameForSerialization()Ljava/lang/String;
    .registers 2

    .line 415
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KeyValue;->name:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot serialise a KeyValue object with a null name!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final loadAsText(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;
    .registers 2

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/types/KeyValue;->Companion:Lin/dragonbra/javasteam/types/KeyValue$Companion;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->loadAsText(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    return-object p0
.end method

.method public static final loadFromString(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;
    .registers 2

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/types/KeyValue;->Companion:Lin/dragonbra/javasteam/types/KeyValue$Companion;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->loadFromString(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    return-object p0
.end method

.method private final recursiveSaveBinaryToStream(Ljava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/types/KeyValue;->recursiveSaveBinaryToStreamCore(Ljava/io/OutputStream;)V

    .line 355
    sget-object p0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->END:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->getCode()B

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private final recursiveSaveBinaryToStreamCore(Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lin/dragonbra/javasteam/types/KeyValue;->value:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "getBytes(...)"

    const-string v3, "UTF_8"

    if-nez v0, :cond_48

    .line 364
    sget-object v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->NONE:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->getCode()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 365
    invoke-direct {p0}, Lin/dragonbra/javasteam/types/KeyValue;->getNameForSerialization()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 366
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 367
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KeyValue;->children:Ljava/util/List;

    .line 1869
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/types/KeyValue;

    .line 368
    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/types/KeyValue;->recursiveSaveBinaryToStreamCore(Ljava/io/OutputStream;)V

    goto :goto_2e

    .line 370
    :cond_3e
    sget-object p0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->END:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->getCode()B

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_7d

    .line 372
    :cond_48
    sget-object v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->STRING:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->getCode()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 373
    invoke-direct {p0}, Lin/dragonbra/javasteam/types/KeyValue;->getNameForSerialization()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 374
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 375
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KeyValue;->value:Ljava/lang/String;

    if-eqz p0, :cond_76

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_77

    :cond_76
    const/4 p0, 0x0

    :goto_77
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 376
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_7d
    return-void
.end method

.method private final recursiveSaveTextToFile(Ljava/io/OutputStream;I)V
    .registers 13

    .line 382
    sget-object v6, Lin/dragonbra/javasteam/types/KeyValue;->Companion:Lin/dragonbra/javasteam/types/KeyValue$Companion;

    invoke-static {v6, p1, p2}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->access$writeIndents(Lin/dragonbra/javasteam/types/KeyValue$Companion;Ljava/io/OutputStream;I)V

    .line 383
    invoke-direct {p0}, Lin/dragonbra/javasteam/types/KeyValue;->getNameForSerialization()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    invoke-static {v6, p1, v0, v7}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->access$writeString(Lin/dragonbra/javasteam/types/KeyValue$Companion;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 384
    const-string v2, "\n"

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->writeString$default(Lin/dragonbra/javasteam/types/KeyValue$Companion;Ljava/io/OutputStream;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 385
    invoke-static {v6, p1, p2}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->access$writeIndents(Lin/dragonbra/javasteam/types/KeyValue$Companion;Ljava/io/OutputStream;I)V

    .line 386
    const-string v2, "{\n"

    invoke-static/range {v0 .. v5}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->writeString$default(Lin/dragonbra/javasteam/types/KeyValue$Companion;Ljava/io/OutputStream;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 389
    iget-object v0, p0, Lin/dragonbra/javasteam/types/KeyValue;->children:Ljava/util/List;

    .line 1869
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lin/dragonbra/javasteam/types/KeyValue;

    .line 390
    iget-object v0, v8, Lin/dragonbra/javasteam/types/KeyValue;->value:Ljava/lang/String;

    if-nez v0, :cond_3c

    add-int/lit8 v0, p2, 0x1

    .line 391
    invoke-direct {v8, p1, v0}, Lin/dragonbra/javasteam/types/KeyValue;->recursiveSaveTextToFile(Ljava/io/OutputStream;I)V

    goto :goto_25

    .line 393
    :cond_3c
    sget-object v9, Lin/dragonbra/javasteam/types/KeyValue;->Companion:Lin/dragonbra/javasteam/types/KeyValue$Companion;

    add-int/lit8 v0, p2, 0x1

    invoke-static {v9, p1, v0}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->access$writeIndents(Lin/dragonbra/javasteam/types/KeyValue$Companion;Ljava/io/OutputStream;I)V

    .line 394
    invoke-direct {v8}, Lin/dragonbra/javasteam/types/KeyValue;->getNameForSerialization()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, p1, v0, v7}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->access$writeString(Lin/dragonbra/javasteam/types/KeyValue$Companion;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 395
    const-string v2, "\t\t"

    const/4 v3, 0x0

    move-object v0, v9

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->writeString$default(Lin/dragonbra/javasteam/types/KeyValue$Companion;Ljava/io/OutputStream;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 396
    invoke-virtual {v8}, Lin/dragonbra/javasteam/types/KeyValue;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v9, v0}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->access$escapeText(Lin/dragonbra/javasteam/types/KeyValue$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, p1, v0, v7}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->access$writeString(Lin/dragonbra/javasteam/types/KeyValue$Companion;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    .line 397
    const-string v2, "\n"

    move-object v0, v9

    invoke-static/range {v0 .. v5}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->writeString$default(Lin/dragonbra/javasteam/types/KeyValue$Companion;Ljava/io/OutputStream;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_25

    .line 401
    :cond_69
    sget-object v0, Lin/dragonbra/javasteam/types/KeyValue;->Companion:Lin/dragonbra/javasteam/types/KeyValue$Companion;

    invoke-static {v0, p1, p2}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->access$writeIndents(Lin/dragonbra/javasteam/types/KeyValue$Companion;Ljava/io/OutputStream;I)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 402
    const-string v2, "}\n"

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->writeString$default(Lin/dragonbra/javasteam/types/KeyValue$Companion;Ljava/io/OutputStream;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic recursiveSaveTextToFile$default(Lin/dragonbra/javasteam/types/KeyValue;Ljava/io/OutputStream;IILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 380
    :cond_5
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/types/KeyValue;->recursiveSaveTextToFile(Ljava/io/OutputStream;I)V

    return-void
.end method

.method private static final set$lambda$0(Ljava/lang/String;Lin/dragonbra/javasteam/types/KeyValue;)Z
    .registers 4

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object p1, p1, Lin/dragonbra/javasteam/types/KeyValue;->name:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    const/4 v1, 0x1

    invoke-static {p1, p0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-ne p0, v1, :cond_12

    move v0, v1

    :cond_12
    return v0
.end method

.method private static final set$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    .line 57
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final tryLoadAsBinary(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;
    .registers 2

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/types/KeyValue;->Companion:Lin/dragonbra/javasteam/types/KeyValue$Companion;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->tryLoadAsBinary(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final asBoolean()Z
    .registers 4

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lin/dragonbra/javasteam/types/KeyValue;->asBoolean$default(Lin/dragonbra/javasteam/types/KeyValue;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final asBoolean(Z)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 159
    :try_start_2
    iget-object v2, p0, Lin/dragonbra/javasteam/types/KeyValue;->value:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_f

    if-eqz p0, :cond_34

    move v0, v1

    goto :goto_34

    .line 161
    :catch_f
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KeyValue;->value:Ljava/lang/String;

    if-eqz p0, :cond_1f

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "toLowerCase(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    .line 162
    :goto_20
    const-string v2, "true"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move p1, v1

    goto :goto_33

    .line 163
    :cond_2a
    const-string v1, "false"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    move p1, v0

    :cond_33
    :goto_33
    move v0, p1

    :cond_34
    :goto_34
    return v0
.end method

.method public final asByte()B
    .registers 4

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lin/dragonbra/javasteam/types/KeyValue;->asByte$default(Lin/dragonbra/javasteam/types/KeyValue;BILjava/lang/Object;)B

    move-result p0

    return p0
.end method

.method public final asByte(B)B
    .registers 2

    .line 77
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KeyValue;->value:Ljava/lang/String;

    if-eqz p0, :cond_e

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toByteOrNull(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    :cond_e
    return p1
.end method

.method public final asEnum(Ljava/lang/Class;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)",
            "Ljava/util/EnumSet<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "enumClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-static {p2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p2

    const-string v0, "of(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/types/KeyValue;->asEnum(Ljava/lang/Class;Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public final asEnum(Ljava/lang/Class;Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/EnumSet<",
            "TT;>;)",
            "Ljava/util/EnumSet<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "of(...)"

    const-string v1, "null cannot be cast to non-null type java.util.EnumSet<T of in.dragonbra.javasteam.types.KeyValue.asEnum>"

    const-string v2, "enumClass"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "defaultValue"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 192
    :try_start_f
    iget-object v3, p0, Lin/dragonbra/javasteam/types/KeyValue;->value:Ljava/lang/String;

    if-eqz v3, :cond_4f

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 194
    const-string v4, "code"

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 195
    const-string v5, "from"

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 198
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 201
    instance-of v4, v3, Ljava/util/EnumSet;

    if-eqz v4, :cond_41

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/EnumSet;

    goto :goto_4e

    .line 202
    :cond_41
    invoke-virtual {p1, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_4e} :catch_50
    .catch Ljava/lang/NoSuchFieldException; {:try_start_f .. :try_end_4e} :catch_4f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_4e} :catch_4f
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_4e} :catch_4f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_4e} :catch_4f

    :goto_4e
    return-object v3

    :catch_4f
    :cond_4f
    return-object p2

    .line 218
    :catch_50
    :try_start_50
    iget-object v3, p0, Lin/dragonbra/javasteam/types/KeyValue;->value:Ljava/lang/String;

    if-nez v3, :cond_55

    return-object p2

    :cond_55
    invoke-static {p1, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    .line 219
    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_60} :catch_61

    return-object v3

    .line 226
    :catch_61
    :try_start_61
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    const-string v0, "getDeclaredFields(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v3, 0x0

    :goto_6c
    if-ge v3, v0, :cond_a4

    aget-object v4, p1, v3

    .line 227
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 228
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lin/dragonbra/javasteam/types/KeyValue;->value:Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 229
    const-class v5, Ljava/util/EnumSet;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 232
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/EnumSet;
    :try_end_9b
    .catch Ljava/lang/IllegalAccessException; {:try_start_61 .. :try_end_9b} :catch_9c

    return-object p0

    :catch_9c
    move-exception p0

    goto :goto_a1

    :cond_9e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6c

    .line 236
    :goto_a1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a4
    return-object p2
.end method

.method public final asFloat()F
    .registers 4

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lin/dragonbra/javasteam/types/KeyValue;->asFloat$default(Lin/dragonbra/javasteam/types/KeyValue;FILjava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public final asFloat(F)F
    .registers 2

    .line 149
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KeyValue;->value:Ljava/lang/String;

    if-eqz p0, :cond_e

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :cond_e
    return p1
.end method

.method public final asInteger()I
    .registers 4

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lin/dragonbra/javasteam/types/KeyValue;->asInteger$default(Lin/dragonbra/javasteam/types/KeyValue;IILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final asInteger(I)I
    .registers 2

    .line 113
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KeyValue;->value:Ljava/lang/String;

    if-eqz p0, :cond_e

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_e
    return p1
.end method

.method public final asLong()J
    .registers 5

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lin/dragonbra/javasteam/types/KeyValue;->asLong$default(Lin/dragonbra/javasteam/types/KeyValue;JILjava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final asLong(J)J
    .registers 3

    .line 131
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KeyValue;->value:Ljava/lang/String;

    if-eqz p0, :cond_e

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    :cond_e
    return-wide p1
.end method

.method public final asShort()S
    .registers 4

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lin/dragonbra/javasteam/types/KeyValue;->asShort$default(Lin/dragonbra/javasteam/types/KeyValue;SILjava/lang/Object;)S

    move-result p0

    return p0
.end method

.method public final asShort(S)S
    .registers 2

    .line 95
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KeyValue;->value:Ljava/lang/String;

    if-eqz p0, :cond_e

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toShortOrNull(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p1

    :cond_e
    return p1
.end method

.method public final asString()Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KeyValue;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final asUnsignedByte-UGUG2fk(B)B
    .registers 2

    .line 86
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KeyValue;->value:Ljava/lang/String;

    if-eqz p0, :cond_e

    invoke-static {p0}, Lkotlin/text/UStringsKt;->toUByteOrNull(Ljava/lang/String;)Lkotlin/UByte;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lkotlin/UByte;->unbox-impl()B

    move-result p1

    :cond_e
    return p1
.end method

.method public final asUnsignedByte-w2LRezQ()B
    .registers 4

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lin/dragonbra/javasteam/types/KeyValue;->asUnsignedByte-UGUG2fk$default(Lin/dragonbra/javasteam/types/KeyValue;BILjava/lang/Object;)B

    move-result p0

    return p0
.end method

.method public final asUnsignedInteger-IKrLr70(I)I
    .registers 2

    .line 122
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KeyValue;->value:Ljava/lang/String;

    if-eqz p0, :cond_e

    invoke-static {p0}, Lkotlin/text/UStringsKt;->toUIntOrNull(Ljava/lang/String;)Lkotlin/UInt;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lkotlin/UInt;->unbox-impl()I

    move-result p1

    :cond_e
    return p1
.end method

.method public final asUnsignedInteger-pVg5ArA()I
    .registers 4

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lin/dragonbra/javasteam/types/KeyValue;->asUnsignedInteger-IKrLr70$default(Lin/dragonbra/javasteam/types/KeyValue;IILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final asUnsignedLong-PUiSbYQ(J)J
    .registers 3

    .line 140
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KeyValue;->value:Ljava/lang/String;

    if-eqz p0, :cond_e

    invoke-static {p0}, Lkotlin/text/UStringsKt;->toULongOrNull(Ljava/lang/String;)Lkotlin/ULong;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide p1

    :cond_e
    return-wide p1
.end method

.method public final asUnsignedLong-s-VKNKU()J
    .registers 5

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lin/dragonbra/javasteam/types/KeyValue;->asUnsignedLong-PUiSbYQ$default(Lin/dragonbra/javasteam/types/KeyValue;JILjava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final asUnsignedShort-Mh2AYeg()S
    .registers 4

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lin/dragonbra/javasteam/types/KeyValue;->asUnsignedShort-SDdNylE$default(Lin/dragonbra/javasteam/types/KeyValue;SILjava/lang/Object;)S

    move-result p0

    return p0
.end method

.method public final asUnsignedShort-SDdNylE(S)S
    .registers 2

    .line 104
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KeyValue;->value:Ljava/lang/String;

    if-eqz p0, :cond_e

    invoke-static {p0}, Lkotlin/text/UStringsKt;->toUShortOrNull(Ljava/lang/String;)Lkotlin/UShort;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lkotlin/UShort;->unbox-impl()S

    move-result p1

    :cond_e
    return p1
.end method

.method public final get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;
    .registers 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KeyValue;->children:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lin/dragonbra/javasteam/types/KeyValue;

    .line 46
    iget-object v1, v1, Lin/dragonbra/javasteam/types/KeyValue;->name:Ljava/lang/String;

    if-eqz v1, :cond_b

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v2, :cond_b

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 45
    :goto_25
    check-cast v0, Lin/dragonbra/javasteam/types/KeyValue;

    if-nez v0, :cond_2b

    .line 47
    sget-object v0, Lin/dragonbra/javasteam/types/KeyValue;->INVALID:Lin/dragonbra/javasteam/types/KeyValue;

    :cond_2b
    return-object v0
.end method

.method public final getChildren()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/types/KeyValue;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KeyValue;->children:Ljava/util/List;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KeyValue;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .registers 1

    .line 31
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KeyValue;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final readAsText(Ljava/io/InputStream;)Z
    .registers 3

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lin/dragonbra/javasteam/types/KeyValue;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 255
    new-instance v0, Lin/dragonbra/javasteam/types/KVTextReader;

    invoke-direct {v0, p0, p1}, Lin/dragonbra/javasteam/types/KVTextReader;-><init>(Lin/dragonbra/javasteam/types/KeyValue;Ljava/io/InputStream;)V

    :try_start_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_17

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0

    :catchall_17
    move-exception p0

    :try_start_18
    throw p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final readFileAsText(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :try_start_a
    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/types/KeyValue;->readAsText(Ljava/io/InputStream;)Z

    move-result p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_13

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return p0

    :catchall_13
    move-exception p0

    :try_start_14
    throw p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final recursiveLoadFromBuffer$javasteam(Lin/dragonbra/javasteam/types/KVTextReader;)V
    .registers 12

    const-string v0, "kvr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    new-instance v0, Lin/dragonbra/javasteam/util/Passable;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/util/Passable;-><init>(Ljava/lang/Object;)V

    .line 270
    new-instance v2, Lin/dragonbra/javasteam/util/Passable;

    invoke-direct {v2, v1}, Lin/dragonbra/javasteam/util/Passable;-><init>(Ljava/lang/Object;)V

    .line 276
    :goto_11
    invoke-virtual {p1, v0, v2}, Lin/dragonbra/javasteam/types/KVTextReader;->readToken(Lin/dragonbra/javasteam/util/Passable;Lin/dragonbra/javasteam/util/Passable;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ad

    .line 278
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_ad

    const/16 v3, 0x7d

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 282
    invoke-static {v1, v3, v4, v5, v6}, Lkotlin/text/StringsKt__StringsKt;->startsWith$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/Passable;->getValue()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    return-void

    .line 287
    :cond_35
    new-instance v7, Lin/dragonbra/javasteam/types/KeyValue;

    invoke-direct {v7, v1, v6, v5, v6}, Lin/dragonbra/javasteam/types/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 288
    iget-object v1, v7, Lin/dragonbra/javasteam/types/KeyValue;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 289
    iget-object v1, p0, Lin/dragonbra/javasteam/types/KeyValue;->children:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {p1, v0, v2}, Lin/dragonbra/javasteam/types/KVTextReader;->readToken(Lin/dragonbra/javasteam/util/Passable;Lin/dragonbra/javasteam/util/Passable;)Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-virtual {v2}, Lin/dragonbra/javasteam/util/Passable;->getValue()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5a

    if-eqz v1, :cond_5a

    .line 296
    invoke-virtual {p1, v0, v2}, Lin/dragonbra/javasteam/types/KVTextReader;->readToken(Lin/dragonbra/javasteam/util/Passable;Lin/dragonbra/javasteam/util/Passable;)Ljava/lang/String;

    move-result-object v1

    :cond_5a
    if-eqz v1, :cond_a5

    .line 303
    invoke-static {v1, v3, v4, v5, v6}, Lkotlin/text/StringsKt__StringsKt;->startsWith$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/Passable;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6f

    goto :goto_77

    .line 304
    :cond_6f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RecursiveLoadFromBuffer: got } in key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_77
    :goto_77
    const/16 v3, 0x7b

    .line 307
    invoke-static {v1, v3, v4, v5, v6}, Lkotlin/text/StringsKt__StringsKt;->startsWith$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/Passable;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 308
    invoke-virtual {v7, p1}, Lin/dragonbra/javasteam/types/KeyValue;->recursiveLoadFromBuffer$javasteam(Lin/dragonbra/javasteam/types/KVTextReader;)V

    goto :goto_11

    .line 310
    :cond_8f
    invoke-virtual {v2}, Lin/dragonbra/javasteam/util/Passable;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 314
    iput-object v1, v7, Lin/dragonbra/javasteam/types/KeyValue;->value:Ljava/lang/String;

    goto/16 :goto_11

    .line 311
    :cond_9d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RecursiveLoadFromBuffer: got conditional between key and value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 300
    :cond_a5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RecursiveLoadFromBuffer: got NULL key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 279
    :cond_ad
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RecursiveLoadFromBuffer: got EOF or empty keyname"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final saveToFile(Ljava/io/File;Z)V
    .registers 5

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance p1, Ljava/io/BufferedOutputStream;

    const/16 v1, 0x2000

    invoke-direct {p1, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :try_start_12
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/types/KeyValue;->saveToStream(Ljava/io/OutputStream;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_1c
    move-exception p0

    :try_start_1d
    throw p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p2

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final saveToFile(Ljava/lang/String;Z)V
    .registers 5

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    new-instance p1, Ljava/io/BufferedOutputStream;

    const/16 v1, 0x2000

    invoke-direct {p1, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :try_start_12
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/types/KeyValue;->saveToStream(Ljava/io/OutputStream;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_1c
    move-exception p0

    :try_start_1d
    throw p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p2

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final saveToStream(Ljava/io/OutputStream;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_b

    .line 346
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/types/KeyValue;->recursiveSaveBinaryToStream(Ljava/io/OutputStream;)V

    goto :goto_11

    :cond_b
    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 348
    invoke-static {p0, p1, v1, p2, v0}, Lin/dragonbra/javasteam/types/KeyValue;->recursiveSaveTextToFile$default(Lin/dragonbra/javasteam/types/KeyValue;Ljava/io/OutputStream;IILjava/lang/Object;)V

    :goto_11
    return-void
.end method

.method public final set(Ljava/lang/String;Lin/dragonbra/javasteam/types/KeyValue;)V
    .registers 6

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lin/dragonbra/javasteam/types/KeyValue;->children:Ljava/util/List;

    new-instance v1, Lin/dragonbra/javasteam/types/KeyValue$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lin/dragonbra/javasteam/types/KeyValue$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    new-instance v2, Lin/dragonbra/javasteam/types/KeyValue$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lin/dragonbra/javasteam/types/KeyValue$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 60
    iput-object p1, p2, Lin/dragonbra/javasteam/types/KeyValue;->name:Ljava/lang/String;

    .line 62
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KeyValue;->children:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setChildren(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/types/KeyValue;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lin/dragonbra/javasteam/types/KeyValue;->children:Ljava/util/List;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lin/dragonbra/javasteam/types/KeyValue;->name:Ljava/lang/String;

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lin/dragonbra/javasteam/types/KeyValue;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 245
    iget-object v0, p0, Lin/dragonbra/javasteam/types/KeyValue;->name:Ljava/lang/String;

    iget-object p0, p0, Lin/dragonbra/javasteam/types/KeyValue;->value:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final tryReadAsBinary(Ljava/io/InputStream;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 412
    :try_start_a
    sget-object p1, Lin/dragonbra/javasteam/types/KeyValue;->Companion:Lin/dragonbra/javasteam/types/KeyValue$Companion;

    const/4 v1, 0x0

    invoke-static {p1, v0, p0, v1}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->access$tryReadAsBinaryCore(Lin/dragonbra/javasteam/types/KeyValue$Companion;Lin/dragonbra/javasteam/util/stream/BinaryReader;Lin/dragonbra/javasteam/types/KeyValue;Lin/dragonbra/javasteam/types/KeyValue;)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_15

    .line 411
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return p0

    :catchall_15
    move-exception p0

    :try_start_16
    throw p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

###### Class in.dragonbra.javasteam.types.KeyValue.Companion (in.dragonbra.javasteam.types.KeyValue$Companion)
.class public final Lin/dragonbra/javasteam/types/KeyValue$Companion;
.super Ljava/lang/Object;
.source "KeyValue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/types/KeyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;,
        Lin/dragonbra/javasteam/types/KeyValue$Companion$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeyValue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyValue.kt\nin/dragonbra/javasteam/types/KeyValue$Companion\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,596:1\n216#2,2:597\n*S KotlinDebug\n*F\n+ 1 KeyValue.kt\nin/dragonbra/javasteam/types/KeyValue$Companion\n*L\n524#1:597,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/types/KeyValue$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$escapeText(Lin/dragonbra/javasteam/types/KeyValue$Companion;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 419
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$tryReadAsBinaryCore(Lin/dragonbra/javasteam/types/KeyValue$Companion;Lin/dragonbra/javasteam/util/stream/BinaryReader;Lin/dragonbra/javasteam/types/KeyValue;Lin/dragonbra/javasteam/types/KeyValue;)Z
    .registers 4

    .line 419
    invoke-direct {p0, p1, p2, p3}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->tryReadAsBinaryCore(Lin/dragonbra/javasteam/util/stream/BinaryReader;Lin/dragonbra/javasteam/types/KeyValue;Lin/dragonbra/javasteam/types/KeyValue;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$writeIndents(Lin/dragonbra/javasteam/types/KeyValue$Companion;Ljava/io/OutputStream;I)V
    .registers 3

    .line 419
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->writeIndents(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public static final synthetic access$writeString(Lin/dragonbra/javasteam/types/KeyValue$Companion;Ljava/io/OutputStream;Ljava/lang/String;Z)V
    .registers 4

    .line 419
    invoke-direct {p0, p1, p2, p3}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->writeString(Ljava/io/OutputStream;Ljava/lang/String;Z)V

    return-void
.end method

.method private final escapeText(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 524
    sget-object p0, Lin/dragonbra/javasteam/types/KVTextReader;->ESCAPED_MAPPING:Ljava/util/Map;

    .line 216
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v0, p1

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 525
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 527
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_42
    return-object v0
.end method

.method private final loadFromFile(Ljava/lang/String;Z)Lin/dragonbra/javasteam/types/KeyValue;
    .registers 5

    .line 469
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_54

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_54

    .line 476
    :cond_13
    :try_start_13
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-direct {p0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1f} :catch_31

    .line 477
    :try_start_1f
    new-instance p1, Lin/dragonbra/javasteam/types/KeyValue;

    const/4 v1, 0x3

    invoke-direct {p1, v0, v0, v1, v0}, Lin/dragonbra/javasteam/types/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p2, :cond_35

    .line 480
    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/types/KeyValue;->tryReadAsBinary(Ljava/io/InputStream;)Z

    move-result p2
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_33

    if-nez p2, :cond_3f

    .line 476
    :try_start_2d
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31

    return-object v0

    :catch_31
    move-exception p0

    goto :goto_49

    :catchall_33
    move-exception p1

    goto :goto_43

    .line 484
    :cond_35
    :try_start_35
    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/types/KeyValue;->readAsText(Ljava/io/InputStream;)Z

    move-result p2
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_33

    if-nez p2, :cond_3f

    .line 476
    :try_start_3b
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_3f
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_42} :catch_31

    return-object p1

    :goto_43
    :try_start_43
    throw p1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception p2

    :try_start_45
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_49} :catch_31

    .line 492
    :goto_49
    invoke-static {}, Lin/dragonbra/javasteam/types/KeyValue;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_54
    :goto_54
    return-object v0
.end method

.method private final tryReadAsBinaryCore(Lin/dragonbra/javasteam/util/stream/BinaryReader;Lin/dragonbra/javasteam/types/KeyValue;Lin/dragonbra/javasteam/types/KeyValue;)Z
    .registers 9

    .line 546
    invoke-virtual {p2}, Lin/dragonbra/javasteam/types/KeyValue;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 549
    :goto_7
    sget-object v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->Companion:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type$Companion;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readByte()B

    move-result v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type$Companion;->from(B)Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    move-result-object v0

    .line 551
    sget-object v1, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->END:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    if-eq v0, v1, :cond_98

    sget-object v1, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->ALTERNATEEND:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    if-ne v0, v1, :cond_1b

    goto/16 :goto_98

    .line 555
    :cond_1b
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readNullTermString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lin/dragonbra/javasteam/types/KeyValue;->setName(Ljava/lang/String;)V

    if-nez v0, :cond_28

    const/4 v0, -0x1

    goto :goto_30

    .line 557
    :cond_28
    sget-object v2, Lin/dragonbra/javasteam/types/KeyValue$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_30
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_9a

    return v3

    .line 582
    :pswitch_37
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lin/dragonbra/javasteam/types/KeyValue;->setValue(Ljava/lang/String;)V

    goto :goto_86

    .line 580
    :pswitch_43
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lin/dragonbra/javasteam/types/KeyValue;->setValue(Ljava/lang/String;)V

    goto :goto_86

    .line 578
    :pswitch_4f
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lin/dragonbra/javasteam/types/KeyValue;->setValue(Ljava/lang/String;)V

    goto :goto_86

    .line 576
    :pswitch_5b
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lin/dragonbra/javasteam/types/KeyValue;->setValue(Ljava/lang/String;)V

    goto :goto_86

    .line 569
    :pswitch_67
    invoke-static {}, Lin/dragonbra/javasteam/types/KeyValue;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object p0

    const-string p1, "Encountered WideString type when parsing binary KeyValue, which is unsupported. Returning false."

    const/4 p2, 0x2

    invoke-static {p0, p1, v4, p2, v4}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return v3

    .line 566
    :pswitch_72
    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readNullTermString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lin/dragonbra/javasteam/types/KeyValue;->setValue(Ljava/lang/String;)V

    goto :goto_86

    .line 559
    :pswitch_7a
    new-instance v0, Lin/dragonbra/javasteam/types/KeyValue;

    invoke-direct {v0, v4, v4, v2, v4}, Lin/dragonbra/javasteam/types/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 560
    invoke-direct {p0, p1, v0, p2}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->tryReadAsBinaryCore(Lin/dragonbra/javasteam/util/stream/BinaryReader;Lin/dragonbra/javasteam/types/KeyValue;Lin/dragonbra/javasteam/types/KeyValue;)Z

    move-result v0

    if-nez v0, :cond_86

    return v3

    :cond_86
    :goto_86
    if-eqz p3, :cond_91

    .line 587
    invoke-virtual {p3}, Lin/dragonbra/javasteam/types/KeyValue;->getChildren()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_91

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    :cond_91
    new-instance p2, Lin/dragonbra/javasteam/types/KeyValue;

    invoke-direct {p2, v4, v4, v2, v4}, Lin/dragonbra/javasteam/types/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_7

    :cond_98
    :goto_98
    const/4 p0, 0x1

    return p0

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_72
        :pswitch_67
        :pswitch_5b
        :pswitch_5b
        :pswitch_5b
        :pswitch_4f
        :pswitch_43
        :pswitch_37
    .end packed-switch
.end method

.method private final writeIndents(Ljava/io/OutputStream;I)V
    .registers 10

    .line 533
    const-string v0, "\t"

    invoke-static {v0, p2}, Lkotlin/text/StringsKt__StringsJVMKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->writeString$default(Lin/dragonbra/javasteam/types/KeyValue$Companion;Ljava/io/OutputStream;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private final writeString(Ljava/io/OutputStream;Ljava/lang/String;Z)V
    .registers 10

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 537
    const-string v1, "\""

    const-string v2, "\\\""

    const/4 v3, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p3, :cond_22

    .line 538
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 539
    :cond_22
    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string p2, "getBytes(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static synthetic writeString$default(Lin/dragonbra/javasteam/types/KeyValue$Companion;Ljava/io/OutputStream;Ljava/lang/String;ZILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 536
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->writeString(Ljava/io/OutputStream;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final loadAsText(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;
    .registers 3

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 458
    invoke-direct {p0, p1, v0}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->loadFromFile(Ljava/lang/String;Z)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    return-object p0
.end method

.method public final loadFromString(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;
    .registers 4

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v0, "UTF_8"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string p1, "getBytes(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 508
    :try_start_16
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_2b

    .line 509
    :try_start_1b
    new-instance p0, Lin/dragonbra/javasteam/types/KeyValue;

    const/4 v1, 0x3

    invoke-direct {p0, p1, p1, v1, p1}, Lin/dragonbra/javasteam/types/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 511
    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/types/KeyValue;->readAsText(Ljava/io/InputStream;)Z

    move-result v1
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_31

    if-nez v1, :cond_2d

    .line 508
    :try_start_27
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catch_2b
    move-exception p0

    goto :goto_38

    :cond_2d
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_30} :catch_2b

    return-object p0

    :catchall_31
    move-exception p0

    :try_start_32
    throw p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v1

    :try_start_34
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_38} :catch_2b

    .line 517
    :goto_38
    invoke-static {}, Lin/dragonbra/javasteam/types/KeyValue;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public final tryLoadAsBinary(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;
    .registers 3

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 466
    invoke-direct {p0, p1, v0}, Lin/dragonbra/javasteam/types/KeyValue$Companion;->loadFromFile(Ljava/lang/String;Z)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.types.KeyValue.Companion.Type (in.dragonbra.javasteam.types.KeyValue$Companion$Type)
.class public final enum Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;
.super Ljava/lang/Enum;
.source "KeyValue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/types/KeyValue$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/types/KeyValue$Companion$Type$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeyValue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyValue.kt\nin/dragonbra/javasteam/types/KeyValue$Companion$Type\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,596:1\n1208#2,2:597\n1236#2,4:599\n*S KotlinDebug\n*F\n+ 1 KeyValue.kt\nin/dragonbra/javasteam/types/KeyValue$Companion$Type\n*L\n438#1:597,2\n438#1:599,4\n*E\n"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

.field public static final enum ALTERNATEEND:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

.field public static final enum COLOR:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

.field public static final Companion:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type$Companion;

.field public static final enum END:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

.field public static final enum FLOAT32:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

.field public static final enum INT32:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

.field public static final enum INT64:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

.field public static final enum NONE:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

.field public static final enum POINTER:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

.field public static final enum STRING:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

.field public static final enum UINT64:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

.field public static final enum WIDESTRING:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

.field private static final codeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final code:B


# direct methods
.method private static final synthetic $values()[Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;
    .registers 11

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->NONE:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    sget-object v1, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->STRING:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    sget-object v2, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->INT32:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    sget-object v3, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->FLOAT32:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    sget-object v4, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->POINTER:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    sget-object v5, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->WIDESTRING:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    sget-object v6, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->COLOR:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    sget-object v7, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->UINT64:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    sget-object v8, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->END:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    sget-object v9, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->INT64:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    sget-object v10, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->ALTERNATEEND:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    filled-new-array/range {v0 .. v10}, [Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 424
    new-instance v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->NONE:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    .line 425
    new-instance v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    const-string v1, "STRING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->STRING:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    .line 426
    new-instance v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    const-string v1, "INT32"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->INT32:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    .line 427
    new-instance v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    const-string v1, "FLOAT32"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->FLOAT32:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    .line 428
    new-instance v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    const-string v1, "POINTER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->POINTER:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    .line 429
    new-instance v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    const-string v1, "WIDESTRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->WIDESTRING:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    .line 430
    new-instance v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    const-string v1, "COLOR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->COLOR:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    .line 431
    new-instance v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    const-string v1, "UINT64"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->UINT64:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    .line 432
    new-instance v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    const-string v1, "END"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->END:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    .line 433
    new-instance v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    const-string v1, "INT64"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->INT64:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    .line 434
    new-instance v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    const-string v1, "ALTERNATEEND"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->ALTERNATEEND:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    invoke-static {}, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->$values()[Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->$VALUES:[Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->Companion:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type$Companion;

    .line 438
    invoke-static {}, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    .line 1208
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 1209
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1236
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1237
    move-object v3, v1

    check-cast v3, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    .line 438
    iget-byte v3, v3, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->code:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    .line 1237
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a2

    .line 438
    :cond_b9
    sput-object v2, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->codeMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 423
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->code:B

    return-void
.end method

.method public static final synthetic access$getCodeMap$cp()Ljava/util/Map;
    .registers 1

    .line 423
    sget-object v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->codeMap:Ljava/util/Map;

    return-object v0
.end method

.method public static final from(B)Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;
    .registers 2

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->Companion:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type$Companion;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type$Companion;->from(B)Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;
    .registers 2

    .line 0
    const-class v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;
    .registers 1

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->$VALUES:[Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    return-object v0
.end method


# virtual methods
.method public final getCode()B
    .registers 1

    .line 423
    iget-byte p0, p0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->code:B

    return p0
.end method

###### Class in.dragonbra.javasteam.types.KeyValue.Companion.Type.C0000Companion (in.dragonbra.javasteam.types.KeyValue$Companion$Type$Companion)
.class public final Lin/dragonbra/javasteam/types/KeyValue$Companion$Type$Companion;
.super Ljava/lang/Object;
.source "KeyValue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(B)Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;
    .registers 2

    .line 441
    invoke-static {}, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->access$getCodeMap$cp()Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.types.KeyValue.Companion.WhenMappings (in.dragonbra.javasteam.types.KeyValue$Companion$WhenMappings)
.class public final synthetic Lin/dragonbra/javasteam/types/KeyValue$Companion$WhenMappings;
.super Ljava/lang/Object;
.source "KeyValue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/types/KeyValue$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->values()[Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->NONE:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->STRING:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->WIDESTRING:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->INT32:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->COLOR:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    :try_start_34
    sget-object v1, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->POINTER:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3d
    sget-object v1, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->UINT64:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_46} :catch_46

    :catch_46
    :try_start_46
    sget-object v1, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->FLOAT32:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_50

    :catch_50
    :try_start_50
    sget-object v1, Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;->INT64:Lin/dragonbra/javasteam/types/KeyValue$Companion$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5a} :catch_5a

    :catch_5a
    sput-object v0, Lin/dragonbra/javasteam/types/KeyValue$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class in.dragonbra.javasteam.types.KeyValue$$ExternalSyntheticLambda0 (in.dragonbra.javasteam.types.KeyValue$$ExternalSyntheticLambda0)
.class public final synthetic Lin/dragonbra/javasteam/types/KeyValue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/types/KeyValue$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KeyValue$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Lin/dragonbra/javasteam/types/KeyValue;

    invoke-static {p0, p1}, Lin/dragonbra/javasteam/types/KeyValue;->$r8$lambda$02_9Jro6f6usLKnXSVZhYG1tZpg(Ljava/lang/String;Lin/dragonbra/javasteam/types/KeyValue;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.types.KeyValue$$ExternalSyntheticLambda1 (in.dragonbra.javasteam.types.KeyValue$$ExternalSyntheticLambda1)
.class public final synthetic Lin/dragonbra/javasteam/types/KeyValue$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/types/KeyValue$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KeyValue$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lin/dragonbra/javasteam/types/KeyValue;->$r8$lambda$aWISWXxkHfAQ1LeMsuPdtYCqRsM(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
