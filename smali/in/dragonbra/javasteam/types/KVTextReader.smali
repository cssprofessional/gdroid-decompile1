###### Class in.dragonbra.javasteam.types.KVTextReader (in.dragonbra.javasteam.types.KVTextReader)
.class public final Lin/dragonbra/javasteam/types/KVTextReader;
.super Ljava/io/InputStreamReader;
.source "KVTextReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/types/KVTextReader$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/types/KVTextReader$Companion;

.field public static final ESCAPED_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private peekedChar:Ljava/lang/Integer;

.field private final sb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lin/dragonbra/javasteam/types/KVTextReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/types/KVTextReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/types/KVTextReader;->Companion:Lin/dragonbra/javasteam/types/KVTextReader$Companion;

    const/16 v0, 0x5c

    .line 25
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0x6e

    .line 26
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x72

    .line 27
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v3, 0x74

    .line 28
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Lkotlin/Pair;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/types/KVTextReader;->ESCAPED_MAPPING:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/types/KeyValue;Ljava/io/InputStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "kv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputStream"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 15
    invoke-direct {p0, p2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p2, p0, Lin/dragonbra/javasteam/types/KVTextReader;->sb:Ljava/lang/StringBuilder;

    .line 57
    new-instance p2, Lin/dragonbra/javasteam/util/Passable;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p2, v0}, Lin/dragonbra/javasteam/util/Passable;-><init>(Ljava/lang/Object;)V

    .line 58
    new-instance v1, Lin/dragonbra/javasteam/util/Passable;

    invoke-direct {v1, v0}, Lin/dragonbra/javasteam/util/Passable;-><init>(Ljava/lang/Object;)V

    .line 63
    :goto_24
    invoke-virtual {p0, p2, v1}, Lin/dragonbra/javasteam/types/KVTextReader;->readToken(Lin/dragonbra/javasteam/util/Passable;Lin/dragonbra/javasteam/util/Passable;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 65
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_31

    goto :goto_7d

    :cond_31
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez p1, :cond_3b

    .line 70
    new-instance p1, Lin/dragonbra/javasteam/types/KeyValue;

    invoke-direct {p1, v0, v3, v2, v3}, Lin/dragonbra/javasteam/types/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3e

    .line 72
    :cond_3b
    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/types/KeyValue;->setName(Ljava/lang/String;)V

    .line 75
    :goto_3e
    invoke-virtual {p0, p2, v1}, Lin/dragonbra/javasteam/types/KVTextReader;->readToken(Lin/dragonbra/javasteam/util/Passable;Lin/dragonbra/javasteam/util/Passable;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v1}, Lin/dragonbra/javasteam/util/Passable;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 79
    invoke-virtual {p0, p2, v1}, Lin/dragonbra/javasteam/types/KVTextReader;->readToken(Lin/dragonbra/javasteam/util/Passable;Lin/dragonbra/javasteam/util/Passable;)Ljava/lang/String;

    move-result-object v0

    :cond_52
    if-eqz v0, :cond_75

    .line 82
    const-string v4, "{"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5, v2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-virtual {p2}, Lin/dragonbra/javasteam/util/Passable;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 84
    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/types/KeyValue;->recursiveLoadFromBuffer$javasteam(Lin/dragonbra/javasteam/types/KVTextReader;)V

    .line 90
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->getEndOfStream()Z

    move-result p1

    if-eqz p1, :cond_73

    goto :goto_7d

    :cond_73
    move-object p1, v3

    goto :goto_24

    .line 86
    :cond_75
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "LoadFromBuffer: missing {"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7d
    :goto_7d
    return-void
.end method

.method private final eatCPPComment()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->getEndOfStream()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 117
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->getPeek()I

    move-result v0

    int-to-char v0, v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_15

    .line 120
    invoke-direct {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->readLine()V

    const/4 p0, 0x1

    return p0

    :cond_15
    return v1
.end method

.method private final eatWhiteSpace()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    :goto_0
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->getEndOfStream()Z

    move-result v0

    if-nez v0, :cond_16

    .line 106
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->getPeek()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Lkotlin/text/CharsKt__CharJVMKt;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_16

    .line 110
    :cond_12
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->read()I

    goto :goto_0

    :cond_16
    :goto_16
    return-void
.end method

.method private final readLine()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    :cond_0
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->read()I

    move-result v0

    int-to-char v0, v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_f

    .line 141
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->getEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_f
    return-void
.end method


# virtual methods
.method public final getEndOfStream()Z
    .registers 3

    const/4 v0, 0x1

    .line 50
    :try_start_1
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->getPeek()I

    move-result p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_a

    const/4 v1, -0x1

    if-ne p0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :catch_a
    :goto_a
    return v0
.end method

.method public final getPeek()I
    .registers 2

    .line 40
    iget-object v0, p0, Lin/dragonbra/javasteam/types/KVTextReader;->peekedChar:Ljava/lang/Integer;

    if-nez v0, :cond_e

    .line 41
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->read()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/types/KVTextReader;->peekedChar:Ljava/lang/Integer;

    .line 43
    :cond_e
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KVTextReader;->peekedChar:Ljava/lang/Integer;

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_18

    :cond_17
    const/4 p0, -0x1

    :goto_18
    return p0
.end method

.method public read()I
    .registers 3

    .line 95
    iget-object v0, p0, Lin/dragonbra/javasteam/types/KVTextReader;->peekedChar:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    .line 96
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    .line 97
    iput-object v1, p0, Lin/dragonbra/javasteam/types/KVTextReader;->peekedChar:Ljava/lang/Integer;

    return v0

    .line 100
    :cond_f
    invoke-super {p0}, Ljava/io/InputStreamReader;->read()I

    move-result p0

    return p0
.end method

.method public final readToken(Lin/dragonbra/javasteam/util/Passable;Lin/dragonbra/javasteam/util/Passable;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/util/Passable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lin/dragonbra/javasteam/util/Passable<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "wasQuoted"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wasConditional"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/util/Passable;->setValue(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p2, v0}, Lin/dragonbra/javasteam/util/Passable;->setValue(Ljava/lang/Object;)V

    .line 150
    :cond_12
    invoke-direct {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->eatWhiteSpace()V

    .line 152
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->getEndOfStream()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    return-object v1

    .line 156
    :cond_1d
    invoke-direct {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->eatCPPComment()Z

    move-result v0

    if-nez v0, :cond_12

    .line 161
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->getEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_2a

    return-object v1

    .line 165
    :cond_2a
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->getPeek()I

    move-result v0

    int-to-char v0, v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_8c

    .line 167
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/util/Passable;->setValue(Ljava/lang/Object;)V

    .line 170
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->read()I

    .line 172
    iget-object p1, p0, Lin/dragonbra/javasteam/types/KVTextReader;->sb:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lkotlin/text/StringsKt__StringBuilderJVMKt;->clear(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 173
    :goto_40
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->getEndOfStream()Z

    move-result p1

    if-nez p1, :cond_82

    .line 174
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->getPeek()I

    move-result p1

    int-to-char p1, p1

    const/16 p2, 0x5c

    if-ne p1, p2, :cond_6f

    .line 175
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->read()I

    .line 177
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->read()I

    move-result p1

    int-to-char p1, p1

    .line 178
    sget-object p2, Lin/dragonbra/javasteam/types/KVTextReader;->ESCAPED_MAPPING:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Character;

    if-eqz p2, :cond_69

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p1

    .line 180
    :cond_69
    iget-object p2, p0, Lin/dragonbra/javasteam/types/KVTextReader;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 185
    :cond_6f
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->getPeek()I

    move-result p1

    int-to-char p1, p1

    if-ne p1, v1, :cond_77

    goto :goto_82

    .line 189
    :cond_77
    iget-object p1, p0, Lin/dragonbra/javasteam/types/KVTextReader;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->read()I

    move-result p2

    int-to-char p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 193
    :cond_82
    :goto_82
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->read()I

    .line 195
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KVTextReader;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8c
    const/16 p1, 0x7b

    if-eq v0, p1, :cond_d2

    const/16 v2, 0x7d

    if-eq v0, v2, :cond_d2

    .line 205
    iget-object v0, p0, Lin/dragonbra/javasteam/types/KVTextReader;->sb:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lkotlin/text/StringsKt__StringBuilderJVMKt;->clear(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 206
    :goto_9a
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->getEndOfStream()Z

    move-result v3

    if-nez v3, :cond_cb

    .line 207
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->getPeek()I

    move-result v3

    int-to-char v3, v3

    if-eq v3, v1, :cond_cb

    if-eq v3, p1, :cond_cb

    if-eq v3, v2, :cond_cb

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_b0

    const/4 v0, 0x1

    :cond_b0
    const/16 v4, 0x5d

    if-ne v3, v4, :cond_bb

    if-eqz v0, :cond_bb

    .line 218
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v4}, Lin/dragonbra/javasteam/util/Passable;->setValue(Ljava/lang/Object;)V

    .line 221
    :cond_bb
    invoke-static {v3}, Lkotlin/text/CharsKt__CharJVMKt;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_c2

    goto :goto_cb

    .line 228
    :cond_c2
    iget-object v4, p0, Lin/dragonbra/javasteam/types/KVTextReader;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->read()I

    goto :goto_9a

    .line 236
    :cond_cb
    :goto_cb
    iget-object p0, p0, Lin/dragonbra/javasteam/types/KVTextReader;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 199
    :cond_d2
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KVTextReader;->read()I

    .line 200
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.types.KVTextReader.Companion (in.dragonbra.javasteam.types.KVTextReader$Companion)
.class public final Lin/dragonbra/javasteam/types/KVTextReader$Companion;
.super Ljava/lang/Object;
.source "KVTextReader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/types/KVTextReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/types/KVTextReader$Companion;-><init>()V

    return-void
.end method
