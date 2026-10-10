###### Class okhttp3.internal.idn.IdnaMappingTable (okhttp3.internal.idn.IdnaMappingTable)
.class public final Lokhttp3/internal/idn/IdnaMappingTable;
.super Ljava/lang/Object;
.source "IdnaMappingTable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIdnaMappingTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IdnaMappingTable.kt\nokhttp3/internal/idn/IdnaMappingTable\n+ 2 IdnaMappingTable.kt\nokhttp3/internal/idn/IdnaMappingTableKt\n*L\n1#1,286:1\n272#2,13:287\n272#2,13:300\n*S KotlinDebug\n*F\n+ 1 IdnaMappingTable.kt\nokhttp3/internal/idn/IdnaMappingTable\n*L\n209#1:287,13\n237#1:300,13\n*E\n"
.end annotation


# instance fields
.field public final mappings:Ljava/lang/String;

.field public final ranges:Ljava/lang/String;

.field public final sections:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "sections"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ranges"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mappings"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lokhttp3/internal/idn/IdnaMappingTable;->sections:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lokhttp3/internal/idn/IdnaMappingTable;->ranges:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lokhttp3/internal/idn/IdnaMappingTable;->mappings:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final findRangesOffset(III)I
    .registers 7

    and-int/lit8 p1, p1, 0x7f

    add-int/lit8 p3, p3, -0x1

    :goto_4
    if-gt p2, p3, :cond_20

    add-int v0, p2, p3

    .line 275
    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v1, v0, 0x4

    .line 242
    iget-object v2, p0, Lokhttp3/internal/idn/IdnaMappingTable;->ranges:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 243
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    if-gez v1, :cond_1b

    add-int/lit8 p3, v0, -0x1

    goto :goto_4

    :cond_1b
    if-lez v1, :cond_23

    add-int/lit8 p2, v0, 0x1

    goto :goto_4

    :cond_20
    neg-int p0, p2

    add-int/lit8 v0, p0, -0x1

    :cond_23
    if-ltz v0, :cond_28

    mul-int/lit8 v0, v0, 0x4

    goto :goto_2d

    :cond_28
    neg-int p0, v0

    add-int/lit8 p0, p0, -0x2

    mul-int/lit8 v0, p0, 0x4

    :goto_2d
    return v0
.end method

.method public final findSectionsIndex(I)I
    .registers 7

    const v0, 0x1fff80

    and-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x7

    .line 211
    iget-object v0, p0, Lokhttp3/internal/idn/IdnaMappingTable;->sections:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_11
    if-gt v1, v0, :cond_2d

    add-int v2, v1, v0

    .line 275
    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v2, 0x4

    .line 214
    iget-object v4, p0, Lokhttp3/internal/idn/IdnaMappingTable;->sections:Ljava/lang/String;

    invoke-static {v4, v3}, Lokhttp3/internal/idn/IdnaMappingTableKt;->read14BitInt(Ljava/lang/String;I)I

    move-result v3

    .line 215
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-gez v3, :cond_28

    add-int/lit8 v0, v2, -0x1

    goto :goto_11

    :cond_28
    if-lez v3, :cond_30

    add-int/lit8 v1, v2, 0x1

    goto :goto_11

    :cond_2d
    neg-int p0, v1

    add-int/lit8 v2, p0, -0x1

    :cond_30
    if-ltz v2, :cond_35

    mul-int/lit8 v2, v2, 0x4

    goto :goto_3a

    :cond_35
    neg-int p0, v2

    add-int/lit8 p0, p0, -0x2

    mul-int/lit8 v2, p0, 0x4

    :goto_3a
    return v2
.end method

.method public final map(ILokio/BufferedSink;)Z
    .registers 8

    const/4 v0, 0x1

    const-string v1, "sink"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p1}, Lokhttp3/internal/idn/IdnaMappingTable;->findSectionsIndex(I)I

    move-result v1

    .line 122
    iget-object v2, p0, Lokhttp3/internal/idn/IdnaMappingTable;->sections:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x2

    invoke-static {v2, v3}, Lokhttp3/internal/idn/IdnaMappingTableKt;->read14BitInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v3, v1, 0x4

    .line 126
    iget-object v4, p0, Lokhttp3/internal/idn/IdnaMappingTable;->sections:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_25

    iget-object v3, p0, Lokhttp3/internal/idn/IdnaMappingTable;->sections:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x6

    invoke-static {v3, v1}, Lokhttp3/internal/idn/IdnaMappingTableKt;->read14BitInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2d

    .line 127
    :cond_25
    iget-object v1, p0, Lokhttp3/internal/idn/IdnaMappingTable;->ranges:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    .line 130
    :goto_2d
    invoke-virtual {p0, p1, v2, v1}, Lokhttp3/internal/idn/IdnaMappingTable;->findRangesOffset(III)I

    move-result v1

    .line 132
    iget-object v2, p0, Lokhttp3/internal/idn/IdnaMappingTable;->ranges:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-ltz v2, :cond_4f

    if-ge v2, v3, :cond_4f

    .line 135
    iget-object p1, p0, Lokhttp3/internal/idn/IdnaMappingTable;->ranges:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Lokhttp3/internal/idn/IdnaMappingTableKt;->read14BitInt(Ljava/lang/String;I)I

    move-result p1

    .line 136
    iget-object p0, p0, Lokhttp3/internal/idn/IdnaMappingTable;->mappings:Ljava/lang/String;

    add-int/2addr v2, p1

    invoke-interface {p2, p0, p1, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;

    goto/16 :goto_148

    :cond_4f
    const/16 v4, 0x50

    if-gt v3, v2, :cond_73

    if-ge v2, v4, :cond_73

    .line 140
    iget-object v3, p0, Lokhttp3/internal/idn/IdnaMappingTable;->ranges:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 141
    iget-object p0, p0, Lokhttp3/internal/idn/IdnaMappingTable;->ranges:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    and-int/lit8 v1, v2, 0xf

    shl-int/lit8 v1, v1, 0xe

    shl-int/lit8 v2, v3, 0x7

    or-int/2addr v1, v2

    or-int/2addr p0, v1

    sub-int/2addr p1, p0

    .line 144
    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeUtf8CodePoint(I)Lokio/BufferedSink;

    goto/16 :goto_148

    :cond_73
    if-gt v4, v2, :cond_97

    const/16 v3, 0x60

    if-ge v2, v3, :cond_97

    .line 148
    iget-object v3, p0, Lokhttp3/internal/idn/IdnaMappingTable;->ranges:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 149
    iget-object p0, p0, Lokhttp3/internal/idn/IdnaMappingTable;->ranges:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    and-int/lit8 v1, v2, 0xf

    shl-int/lit8 v1, v1, 0xe

    shl-int/lit8 v2, v3, 0x7

    or-int/2addr v1, v2

    or-int/2addr p0, v1

    add-int/2addr p1, p0

    .line 152
    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeUtf8CodePoint(I)Lokio/BufferedSink;

    goto/16 :goto_148

    :cond_97
    const/16 v3, 0x77

    if-ne v2, v3, :cond_9f

    .line 154
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_148

    :cond_9f
    const/16 v3, 0x78

    if-ne v2, v3, :cond_a8

    .line 159
    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeUtf8CodePoint(I)Lokio/BufferedSink;

    goto/16 :goto_148

    :cond_a8
    const/16 v3, 0x79

    if-ne v2, v3, :cond_b1

    .line 163
    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeUtf8CodePoint(I)Lokio/BufferedSink;

    const/4 p0, 0x0

    return p0

    :cond_b1
    const/16 v3, 0x7a

    if-ne v2, v3, :cond_c2

    .line 168
    iget-object p0, p0, Lokhttp3/internal/idn/IdnaMappingTable;->ranges:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-interface {p2, p0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    goto/16 :goto_148

    :cond_c2
    const/16 v3, 0x7b

    if-ne v2, v3, :cond_d5

    .line 172
    iget-object p0, p0, Lokhttp3/internal/idn/IdnaMappingTable;->ranges:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    or-int/lit16 p0, p0, 0x80

    invoke-interface {p2, p0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    goto/16 :goto_148

    :cond_d5
    const/16 v3, 0x7c

    if-ne v2, v3, :cond_f0

    .line 176
    iget-object p1, p0, Lokhttp3/internal/idn/IdnaMappingTable;->ranges:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 177
    iget-object p0, p0, Lokhttp3/internal/idn/IdnaMappingTable;->ranges:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-interface {p2, p0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    goto :goto_148

    :cond_f0
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_10d

    .line 181
    iget-object p1, p0, Lokhttp3/internal/idn/IdnaMappingTable;->ranges:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    or-int/lit16 p1, p1, 0x80

    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 182
    iget-object p0, p0, Lokhttp3/internal/idn/IdnaMappingTable;->ranges:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-interface {p2, p0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    goto :goto_148

    :cond_10d
    const/16 v3, 0x7e

    if-ne v2, v3, :cond_12a

    .line 186
    iget-object p1, p0, Lokhttp3/internal/idn/IdnaMappingTable;->ranges:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 187
    iget-object p0, p0, Lokhttp3/internal/idn/IdnaMappingTable;->ranges:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    or-int/lit16 p0, p0, 0x80

    invoke-interface {p2, p0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    goto :goto_148

    :cond_12a
    const/16 v3, 0x7f

    if-ne v2, v3, :cond_149

    .line 191
    iget-object p1, p0, Lokhttp3/internal/idn/IdnaMappingTable;->ranges:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    or-int/lit16 p1, p1, 0x80

    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 192
    iget-object p0, p0, Lokhttp3/internal/idn/IdnaMappingTable;->ranges:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    or-int/lit16 p0, p0, 0x80

    invoke-interface {p2, p0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    :goto_148
    return v0

    :cond_149
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 194
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected rangesIndex for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
