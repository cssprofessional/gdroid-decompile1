###### Class com.gmodvr.flat.WorkshopCollection (com.gmodvr.flat.WorkshopCollection)
.class final Lcom/gmodvr/flat/WorkshopCollection;
.super Ljava/lang/Object;
.source "WorkshopCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/WorkshopCollection$Fetch;,
        Lcom/gmodvr/flat/WorkshopCollection$Sleep;,
        Lcom/gmodvr/flat/WorkshopCollection$Progress;,
        Lcom/gmodvr/flat/WorkshopCollection$Node;
    }
.end annotation


# static fields
.field static final ATTEMPTS:I = 0x5

.field static final BATCH:I = 0x64

.field static final MAX_DEPTH:I = 0x10

.field static final MAX_ITEMS:I = 0x2710

.field static final REQUEST_GAP_MS:J = 0x64L


# instance fields
.field private final fetch:Lcom/gmodvr/flat/WorkshopCollection$Fetch;

.field private final nodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/gmodvr/flat/WorkshopCollection$Node;",
            ">;"
        }
    .end annotation
.end field

.field private final profile:Lcom/gmodvr/flat/GameContentProfile;

.field private final progress:Lcom/gmodvr/flat/WorkshopCollection$Progress;

.field private requests:I

.field private final scheduled:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final sleep:Lcom/gmodvr/flat/WorkshopCollection$Sleep;

.field private truncated:Z


# direct methods
.method public static synthetic $r8$lambda$3ZrtV92jkTtWmcAt4mzbH5advtI(I)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gmodvr/flat/WorkshopCollection;->lambda$new$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/gmodvr/flat/GameContentProfile;Lcom/gmodvr/flat/WorkshopCollection$Fetch;Lcom/gmodvr/flat/WorkshopCollection$Sleep;Lcom/gmodvr/flat/WorkshopCollection$Progress;)V
    .registers 6

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopCollection;->nodes:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopCollection;->scheduled:Ljava/util/Set;

    .line 62
    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopCollection;->profile:Lcom/gmodvr/flat/GameContentProfile;

    iput-object p2, p0, Lcom/gmodvr/flat/WorkshopCollection;->fetch:Lcom/gmodvr/flat/WorkshopCollection$Fetch;

    if-nez p3, :cond_1c

    .line 63
    new-instance p3, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda0;-><init>()V

    :cond_1c
    iput-object p3, p0, Lcom/gmodvr/flat/WorkshopCollection;->sleep:Lcom/gmodvr/flat/WorkshopCollection$Sleep;

    if-nez p4, :cond_25

    .line 64
    new-instance p4, Lcom/gmodvr/flat/WorkshopCollection$$ExternalSyntheticLambda1;

    invoke-direct {p4}, Lcom/gmodvr/flat/WorkshopCollection$$ExternalSyntheticLambda1;-><init>()V

    :cond_25
    iput-object p4, p0, Lcom/gmodvr/flat/WorkshopCollection;->progress:Lcom/gmodvr/flat/WorkshopCollection$Progress;

    return-void
.end method

.method private addon(Lcom/gmodvr/flat/WorkshopCollection$Node;)Z
    .registers 3

    .line 154
    invoke-virtual {p1}, Lcom/gmodvr/flat/WorkshopCollection$Node;->ok()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, p1, Lcom/gmodvr/flat/WorkshopCollection$Node;->type:I

    invoke-static {v0}, Lcom/gmodvr/flat/WorkshopCollection;->content(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopCollection;->profile:Lcom/gmodvr/flat/GameContentProfile;

    iget p1, p1, Lcom/gmodvr/flat/WorkshopCollection$Node;->app:I

    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamCatalog;->workshopApp(Lcom/gmodvr/flat/GameContentProfile;I)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method private build(Lcom/gmodvr/flat/WorkshopQueue;Lcom/gmodvr/flat/WorkshopCollection$Node;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gmodvr/flat/WorkshopQueue;",
            "Lcom/gmodvr/flat/WorkshopCollection$Node;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 223
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-virtual {p2}, Lcom/gmodvr/flat/WorkshopCollection$Node;->collection()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-wide v0, p2, Lcom/gmodvr/flat/WorkshopCollection$Node;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_14
    invoke-virtual {p2}, Lcom/gmodvr/flat/WorkshopCollection$Node;->collection()Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_1f

    iget-object v0, p2, Lcom/gmodvr/flat/WorkshopCollection$Node;->children:[J

    :goto_1d
    move-object v2, v0

    goto :goto_27

    :cond_1f
    new-array v0, v8, [J

    const/4 v1, 0x0

    iget-wide v2, p2, Lcom/gmodvr/flat/WorkshopCollection$Node;->id:J

    aput-wide v2, v0, v1

    goto :goto_1d

    :goto_27
    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/gmodvr/flat/WorkshopCollection;->emit(Lcom/gmodvr/flat/WorkshopQueue;[JZLjava/util/List;J)V

    .line 226
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_34
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 227
    iget-object v4, p0, Lcom/gmodvr/flat/WorkshopCollection;->nodes:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gmodvr/flat/WorkshopCollection$Node;

    if-eqz v4, :cond_34

    .line 228
    iget-wide v5, p2, Lcom/gmodvr/flat/WorkshopCollection$Node;->id:J

    cmp-long v5, v2, v5

    if-nez v5, :cond_55

    goto :goto_34

    .line 229
    :cond_55
    iget-object v5, p1, Lcom/gmodvr/flat/WorkshopQueue;->collections:Ljava/util/Map;

    new-instance v6, Lcom/gmodvr/flat/WorkshopQueue$Collection;

    iget-object v4, v4, Lcom/gmodvr/flat/WorkshopCollection$Node;->title:Ljava/lang/String;

    invoke-direct {v6, v2, v3, v4, v8}, Lcom/gmodvr/flat/WorkshopQueue$Collection;-><init>(JLjava/lang/String;Z)V

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 231
    :cond_62
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_66
    :goto_66
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 232
    iget-object v3, p0, Lcom/gmodvr/flat/WorkshopCollection;->nodes:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gmodvr/flat/WorkshopCollection$Node;

    if-eqz v3, :cond_66

    .line 233
    iget-wide v4, p2, Lcom/gmodvr/flat/WorkshopCollection$Node;->id:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_87

    goto :goto_66

    .line 234
    :cond_87
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 235
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v2, v3, Lcom/gmodvr/flat/WorkshopCollection$Node;->children:[J

    const/4 v3, 0x1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/gmodvr/flat/WorkshopCollection;->emit(Lcom/gmodvr/flat/WorkshopQueue;[JZLjava/util/List;J)V

    goto :goto_66

    :cond_9a
    return-void
.end method

.method private static content(I)Z
    .registers 2

    .line 0
    if-eqz p0, :cond_9

    const/16 v0, 0xf

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method private emit(Lcom/gmodvr/flat/WorkshopQueue;[JZLjava/util/List;J)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gmodvr/flat/WorkshopQueue;",
            "[JZ",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 241
    new-instance v6, Ljava/util/ArrayDeque;

    invoke-direct {v6}, Ljava/util/ArrayDeque;-><init>()V

    .line 242
    array-length v7, v2

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_11
    if-ltz v7, :cond_20

    aget-wide v9, v2, v7

    new-array v11, v3, [J

    aput-wide v9, v11, v5

    aput-wide p5, v11, v8

    invoke-interface {v6, v11}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    add-int/2addr v7, v4

    goto :goto_11

    .line 243
    :cond_20
    :goto_20
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_143

    .line 244
    invoke-interface {v6}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 245
    aget-wide v13, v2, v5

    .line 246
    invoke-virtual {v1, v13, v14}, Lcom/gmodvr/flat/WorkshopQueue;->get(J)Lcom/gmodvr/flat/WorkshopQueue$Entry;

    move-result-object v7

    if-eqz v7, :cond_55

    .line 248
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_38
    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    iget-object v10, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->sources:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_38

    iget-object v10, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->sources:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 251
    :cond_55
    iget-object v7, v0, Lcom/gmodvr/flat/WorkshopCollection;->nodes:Ljava/util/Map;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gmodvr/flat/WorkshopCollection$Node;

    if-eqz v7, :cond_13e

    .line 252
    invoke-virtual {v7}, Lcom/gmodvr/flat/WorkshopCollection$Node;->collection()Z

    move-result v9

    if-eqz v9, :cond_6a

    goto :goto_20

    .line 255
    :cond_6a
    invoke-virtual {v7}, Lcom/gmodvr/flat/WorkshopCollection$Node;->ok()Z

    move-result v9

    const-string v10, ")"

    if-nez v9, :cond_a3

    .line 256
    sget-object v9, Lcom/gmodvr/flat/WorkshopQueue$Kind;->UNAVAILABLE:Lcom/gmodvr/flat/WorkshopQueue$Kind;

    .line 257
    iget v11, v7, Lcom/gmodvr/flat/WorkshopCollection$Node;->result:I

    const/16 v12, 0x9

    if-ne v11, v12, :cond_7d

    const-string v10, "Removed or not found (Steam result 9)"

    goto :goto_9f

    :cond_7d
    const/16 v12, 0xf

    if-ne v11, v12, :cond_84

    .line 258
    const-string v10, "Private, friends-only or removed (Steam result 15)"

    goto :goto_9f

    :cond_84
    if-ne v11, v4, :cond_89

    .line 259
    const-string v10, "Steam returned no details"

    goto :goto_9f

    :cond_89
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unavailable (Steam result "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v7, Lcom/gmodvr/flat/WorkshopCollection$Node;->result:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_9f
    move-object v15, v9

    move-object/from16 v18, v10

    goto :goto_ec

    .line 260
    :cond_a3
    iget-object v9, v0, Lcom/gmodvr/flat/WorkshopCollection;->profile:Lcom/gmodvr/flat/GameContentProfile;

    iget v11, v7, Lcom/gmodvr/flat/WorkshopCollection$Node;->app:I

    invoke-static {v9, v11}, Lcom/gmodvr/flat/SteamCatalog;->workshopApp(Lcom/gmodvr/flat/GameContentProfile;I)Z

    move-result v9

    if-nez v9, :cond_c6

    .line 261
    sget-object v9, Lcom/gmodvr/flat/WorkshopQueue$Kind;->OTHER_GAME:Lcom/gmodvr/flat/WorkshopQueue$Kind;

    .line 262
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Belongs to another game (Steam app "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v7, Lcom/gmodvr/flat/WorkshopCollection$Node;->app:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_9f

    .line 263
    :cond_c6
    iget v9, v7, Lcom/gmodvr/flat/WorkshopCollection$Node;->type:I

    invoke-static {v9}, Lcom/gmodvr/flat/WorkshopCollection;->content(I)Z

    move-result v9

    if-nez v9, :cond_e7

    .line 264
    sget-object v9, Lcom/gmodvr/flat/WorkshopQueue$Kind;->NOT_CONTENT:Lcom/gmodvr/flat/WorkshopQueue$Kind;

    .line 265
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not a downloadable addon (Workshop file type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v7, Lcom/gmodvr/flat/WorkshopCollection$Node;->type:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_9f

    .line 266
    :cond_e7
    sget-object v9, Lcom/gmodvr/flat/WorkshopQueue$Kind;->ADDON:Lcom/gmodvr/flat/WorkshopQueue$Kind;

    const-string v10, ""

    goto :goto_9f

    .line 267
    :goto_ec
    new-instance v12, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    iget-object v10, v7, Lcom/gmodvr/flat/WorkshopCollection$Node;->title:Ljava/lang/String;

    iget-wide v4, v7, Lcom/gmodvr/flat/WorkshopCollection$Node;->size:J

    move-wide/from16 v16, v4

    iget-wide v3, v7, Lcom/gmodvr/flat/WorkshopCollection$Node;->time:J

    aget-wide v20, v2, v8

    move-object v9, v12

    move-object v2, v10

    move-wide v10, v13

    move-object v5, v12

    move-object v12, v2

    move-wide/from16 v22, v13

    move-wide/from16 v13, v16

    move-object v2, v15

    move-wide v15, v3

    move-object/from16 v17, v2

    move/from16 v19, p3

    invoke-direct/range {v9 .. v21}, Lcom/gmodvr/flat/WorkshopQueue$Entry;-><init>(JLjava/lang/String;JJLcom/gmodvr/flat/WorkshopQueue$Kind;Ljava/lang/String;ZJ)V

    invoke-virtual {v1, v5}, Lcom/gmodvr/flat/WorkshopQueue;->add(Lcom/gmodvr/flat/WorkshopQueue$Entry;)Lcom/gmodvr/flat/WorkshopQueue$Entry;

    move-result-object v3

    .line 268
    iget-object v3, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->sources:Ljava/util/List;

    move-object/from16 v4, p4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 269
    sget-object v3, Lcom/gmodvr/flat/WorkshopQueue$Kind;->ADDON:Lcom/gmodvr/flat/WorkshopQueue$Kind;

    if-ne v2, v3, :cond_137

    iget-object v2, v0, Lcom/gmodvr/flat/WorkshopCollection;->profile:Lcom/gmodvr/flat/GameContentProfile;

    sget-object v3, Lcom/gmodvr/flat/GameContentProfile;->GARRYSMOD:Lcom/gmodvr/flat/GameContentProfile;

    if-ne v2, v3, :cond_137

    .line 270
    iget-object v2, v7, Lcom/gmodvr/flat/WorkshopCollection$Node;->children:[J

    array-length v2, v2

    sub-int/2addr v2, v8

    :goto_123
    if-ltz v2, :cond_137

    iget-object v3, v7, Lcom/gmodvr/flat/WorkshopCollection$Node;->children:[J

    aget-wide v9, v3, v2

    const/4 v3, 0x2

    new-array v5, v3, [J

    const/4 v11, 0x0

    aput-wide v9, v5, v11

    aput-wide v22, v5, v8

    invoke-interface {v6, v5}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    const/4 v5, -0x1

    add-int/2addr v2, v5

    goto :goto_123

    :cond_137
    const/4 v3, 0x2

    const/4 v5, -0x1

    const/4 v11, 0x0

    :goto_13a
    move v4, v5

    move v5, v11

    goto/16 :goto_20

    :cond_13e
    move v11, v5

    move v5, v4

    move-object/from16 v4, p4

    goto :goto_13a

    :cond_143
    return-void
.end method

.method private expand(Lcom/gmodvr/flat/WorkshopCollection$Node;Ljava/util/List;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gmodvr/flat/WorkshopCollection$Node;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopCollection;->profile:Lcom/gmodvr/flat/GameContentProfile;

    sget-object v1, Lcom/gmodvr/flat/GameContentProfile;->GARRYSMOD:Lcom/gmodvr/flat/GameContentProfile;

    if-ne v0, v1, :cond_2c

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/WorkshopCollection;->addon(Lcom/gmodvr/flat/WorkshopCollection$Node;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2c

    :cond_d
    if-nez p3, :cond_15

    .line 159
    iget-object p1, p1, Lcom/gmodvr/flat/WorkshopCollection$Node;->children:[J

    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/WorkshopCollection;->schedule([JLjava/util/List;)V

    goto :goto_2c

    .line 160
    :cond_15
    iget-object v0, p1, Lcom/gmodvr/flat/WorkshopCollection$Node;->children:[J

    iget-wide v1, p1, Lcom/gmodvr/flat/WorkshopCollection$Node;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, v0, p2, p3, p1}, Lcom/gmodvr/flat/WorkshopCollection;->schedule([JLjava/util/List;Ljava/util/Map;I)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private fetchAll(Ljava/util/List;Z)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/WorkshopCollection$Node;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_1a

    .line 173
    iget-object p2, p0, Lcom/gmodvr/flat/WorkshopCollection;->nodes:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p2, v0

    const/16 v0, 0x2710

    if-gt p2, v0, :cond_12

    goto :goto_1a

    .line 174
    :cond_12
    new-instance p0, Ljava/io/IOException;

    const-string p1, "This Workshop collection has more than 10000 items, which is more than can be downloaded at once"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 175
    :cond_1a
    :goto_1a
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 176
    :goto_25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c4

    .line 177
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v3, v1, 0x64

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 178
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 179
    invoke-direct {p0, v1}, Lcom/gmodvr/flat/WorkshopCollection;->request(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move v5, v0

    .line 180
    :goto_43
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8c

    .line 181
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;

    .line 183
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getPublishedfileid()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_79

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_79

    .line 184
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->toBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Builder;

    move-result-object v6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Builder;->setPublishedfileid(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;

    move-result-object v6

    .line 185
    :cond_79
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getPublishedfileid()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-instance v8, Lcom/gmodvr/flat/WorkshopCollection$Node;

    invoke-direct {v8, v6}, Lcom/gmodvr/flat/WorkshopCollection$Node;-><init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;)V

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 187
    :cond_8c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_90
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 188
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gmodvr/flat/WorkshopCollection$Node;

    if-nez v7, :cond_ad

    .line 189
    new-instance v7, Lcom/gmodvr/flat/WorkshopCollection$Node;

    invoke-direct {v7, v5, v6}, Lcom/gmodvr/flat/WorkshopCollection$Node;-><init>(J)V

    .line 190
    :cond_ad
    iget-object v5, p0, Lcom/gmodvr/flat/WorkshopCollection;->nodes:Ljava/util/Map;

    invoke-interface {v5, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_90

    .line 193
    :cond_b6
    iget-object v1, p0, Lcom/gmodvr/flat/WorkshopCollection;->progress:Lcom/gmodvr/flat/WorkshopCollection$Progress;

    iget-object v2, p0, Lcom/gmodvr/flat/WorkshopCollection;->nodes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/gmodvr/flat/WorkshopCollection$Progress;->resolved(I)V

    move v1, v3

    goto/16 :goto_25

    :cond_c4
    return-object p2
.end method

.method private static synthetic lambda$new$0(I)V
    .registers 1

    .line 0
    return-void
.end method

.method private request(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x5

    if-ge v1, v2, :cond_3d

    .line 201
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopCollection;->fetch:Lcom/gmodvr/flat/WorkshopCollection$Fetch;

    invoke-interface {v0}, Lcom/gmodvr/flat/WorkshopCollection$Fetch;->check()V

    .line 202
    iget v0, p0, Lcom/gmodvr/flat/WorkshopCollection;->requests:I

    if-lez v0, :cond_1e

    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopCollection;->sleep:Lcom/gmodvr/flat/WorkshopCollection$Sleep;

    if-nez v1, :cond_15

    const-wide/16 v2, 0x64

    goto :goto_1b

    :cond_15
    add-int/lit8 v2, v1, -0x1

    const-wide/16 v3, 0x3e8

    shl-long v2, v3, v2

    :goto_1b
    invoke-interface {v0, v2, v3}, Lcom/gmodvr/flat/WorkshopCollection$Sleep;->sleep(J)V

    .line 203
    :cond_1e
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopCollection;->fetch:Lcom/gmodvr/flat/WorkshopCollection$Fetch;

    invoke-interface {v0}, Lcom/gmodvr/flat/WorkshopCollection$Fetch;->check()V

    .line 204
    iget v0, p0, Lcom/gmodvr/flat/WorkshopCollection;->requests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gmodvr/flat/WorkshopCollection;->requests:I

    .line 206
    :try_start_29
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopCollection;->fetch:Lcom/gmodvr/flat/WorkshopCollection$Fetch;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v2}, Lcom/gmodvr/flat/WorkshopCollection$Fetch;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object p0
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_34} :catch_37
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_34} :catch_35

    return-object p0

    :catch_35
    move-exception v0

    goto :goto_39

    :catch_37
    move-exception p0

    goto :goto_3c

    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 208
    :goto_3c
    throw p0

    .line 213
    :cond_3d
    instance-of p0, v0, Ljava/io/IOException;

    if-eqz p0, :cond_54

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_54

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "://"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_54

    throw v0

    .line 214
    :cond_54
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Could not read Workshop details from Steam. Check the connection and retry."

    invoke-direct {p0, p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method private schedule([JLjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 164
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1c

    aget-wide v2, p1, v1

    iget-object v4, p0, Lcom/gmodvr/flat/WorkshopCollection;->scheduled:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1c
    return-void
.end method

.method private schedule([JLjava/util/List;Ljava/util/Map;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 168
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_27

    aget-wide v2, p1, v1

    iget-object v4, p0, Lcom/gmodvr/flat/WorkshopCollection;->scheduled:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_27
    return-void
.end method


# virtual methods
.method public requests()I
    .registers 1

    .line 68
    iget p0, p0, Lcom/gmodvr/flat/WorkshopCollection;->requests:I

    return p0
.end method

.method public resolve(JLjava/lang/String;)Lcom/gmodvr/flat/WorkshopQueue;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopCollection;->scheduled:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/gmodvr/flat/WorkshopCollection;->fetchAll(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmodvr/flat/WorkshopCollection$Node;

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Workshop item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 92
    iget v4, v0, Lcom/gmodvr/flat/WorkshopCollection$Node;->result:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_239

    const/16 v5, 0xf

    if-eq v4, v5, :cond_222

    .line 96
    invoke-virtual {v0}, Lcom/gmodvr/flat/WorkshopCollection$Node;->ok()Z

    move-result v4

    if-eqz v4, :cond_201

    .line 98
    iget-object v3, p0, Lcom/gmodvr/flat/WorkshopCollection;->profile:Lcom/gmodvr/flat/GameContentProfile;

    iget v4, v0, Lcom/gmodvr/flat/WorkshopCollection$Node;->app:I

    invoke-static {v3, v4}, Lcom/gmodvr/flat/SteamCatalog;->workshopApp(Lcom/gmodvr/flat/GameContentProfile;I)Z

    move-result v3

    if-eqz v3, :cond_1e3

    .line 100
    invoke-virtual {v0}, Lcom/gmodvr/flat/WorkshopCollection$Node;->collection()Z

    move-result v3

    if-nez v3, :cond_63

    iget v3, v0, Lcom/gmodvr/flat/WorkshopCollection$Node;->type:I

    invoke-static {v3}, Lcom/gmodvr/flat/WorkshopCollection;->content(I)Z

    move-result v3

    if-eqz v3, :cond_5b

    goto :goto_63

    :cond_5b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "This Workshop item type is not downloadable game content"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_63
    :goto_63
    new-instance v9, Lcom/gmodvr/flat/WorkshopQueue;

    iget-object v7, v0, Lcom/gmodvr/flat/WorkshopCollection$Node;->title:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/gmodvr/flat/WorkshopCollection$Node;->collection()Z

    move-result v8

    move-object v3, v9

    move-object v4, p3

    move-wide v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/gmodvr/flat/WorkshopQueue;-><init>(Ljava/lang/String;JLjava/lang/String;Z)V

    .line 103
    invoke-virtual {v0}, Lcom/gmodvr/flat/WorkshopCollection$Node;->collection()Z

    move-result p3

    if-eqz p3, :cond_87

    iget-object p3, v9, Lcom/gmodvr/flat/WorkshopQueue;->collections:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lcom/gmodvr/flat/WorkshopQueue$Collection;

    iget-object v5, v0, Lcom/gmodvr/flat/WorkshopCollection$Node;->title:Ljava/lang/String;

    invoke-direct {v4, p1, p2, v5, v2}, Lcom/gmodvr/flat/WorkshopQueue$Collection;-><init>(JLjava/lang/String;Z)V

    invoke-interface {p3, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_87
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-virtual {v0}, Lcom/gmodvr/flat/WorkshopCollection$Node;->collection()Z

    move-result p3

    const/4 v3, 0x0

    if-eqz p3, :cond_9e

    iget-object p3, v0, Lcom/gmodvr/flat/WorkshopCollection$Node;->children:[J

    invoke-direct {p0, p3, p2}, Lcom/gmodvr/flat/WorkshopCollection;->schedule([JLjava/util/List;)V

    goto :goto_a1

    :cond_9e
    invoke-direct {p0, v0, p2, v3}, Lcom/gmodvr/flat/WorkshopCollection;->expand(Lcom/gmodvr/flat/WorkshopCollection$Node;Ljava/util/List;Ljava/util/Map;)V

    :goto_a1
    move p3, v1

    .line 110
    :goto_a2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/16 v5, 0x10

    if-nez v4, :cond_e0

    if-le p3, v5, :cond_af

    .line 111
    iput-boolean v1, p0, Lcom/gmodvr/flat/WorkshopCollection;->truncated:Z

    goto :goto_e0

    .line 112
    :cond_af
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-direct {p0, p2, v1}, Lcom/gmodvr/flat/WorkshopCollection;->fetchAll(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_bc
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_dc

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gmodvr/flat/WorkshopCollection$Node;

    .line 114
    invoke-virtual {v5}, Lcom/gmodvr/flat/WorkshopCollection$Node;->collection()Z

    move-result v6

    if-eqz v6, :cond_d8

    iget-wide v5, v5, Lcom/gmodvr/flat/WorkshopCollection$Node;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bc

    .line 115
    :cond_d8
    invoke-direct {p0, v5, v4, v3}, Lcom/gmodvr/flat/WorkshopCollection;->expand(Lcom/gmodvr/flat/WorkshopCollection$Node;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_bc

    :cond_dc
    add-int/lit8 p3, p3, 0x1

    move-object p2, v4

    goto :goto_a2

    .line 122
    :cond_e0
    :goto_e0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 123
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 124
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 125
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f3

    .line 126
    :cond_10a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    iget-object v6, p0, Lcom/gmodvr/flat/WorkshopCollection;->nodes:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gmodvr/flat/WorkshopCollection$Node;

    iget-object v4, v4, Lcom/gmodvr/flat/WorkshopCollection$Node;->children:[J

    const/4 v6, 0x2

    invoke-direct {p0, v4, p3, p2, v6}, Lcom/gmodvr/flat/WorkshopCollection;->schedule([JLjava/util/List;Ljava/util/Map;I)V

    goto :goto_10e

    .line 127
    :cond_12c
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1c2

    iget-boolean p1, p0, Lcom/gmodvr/flat/WorkshopCollection;->truncated:Z

    if-nez p1, :cond_1c2

    .line 128
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_13f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_167

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    const/16 v6, 0x11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v4, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v6, v5, :cond_164

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13f

    :cond_164
    iput-boolean v1, p0, Lcom/gmodvr/flat/WorkshopCollection;->truncated:Z

    goto :goto_13f

    .line 130
    :cond_167
    iget-object p3, p0, Lcom/gmodvr/flat/WorkshopCollection;->nodes:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    rsub-int p3, p3, 0x2710

    .line 131
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, p3, :cond_17f

    iput-boolean v1, p0, Lcom/gmodvr/flat/WorkshopCollection;->truncated:Z

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-interface {p1, v2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 132
    :cond_17f
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-direct {p0, p1, v2}, Lcom/gmodvr/flat/WorkshopCollection;->fetchAll(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gmodvr/flat/WorkshopCollection$Node;

    .line 134
    iget-wide v6, v4, Lcom/gmodvr/flat/WorkshopCollection$Node;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 135
    invoke-virtual {v4}, Lcom/gmodvr/flat/WorkshopCollection$Node;->collection()Z

    move-result v7

    if-eqz v7, :cond_1be

    iget-wide v7, v4, Lcom/gmodvr/flat/WorkshopCollection$Node;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v4, Lcom/gmodvr/flat/WorkshopCollection$Node;->children:[J

    add-int/2addr v6, v1

    invoke-direct {p0, v4, p3, p2, v6}, Lcom/gmodvr/flat/WorkshopCollection;->schedule([JLjava/util/List;Ljava/util/Map;I)V

    goto :goto_18c

    .line 136
    :cond_1be
    invoke-direct {p0, v4, p3, p2}, Lcom/gmodvr/flat/WorkshopCollection;->expand(Lcom/gmodvr/flat/WorkshopCollection$Node;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_18c

    .line 141
    :cond_1c2
    invoke-direct {p0, v9, v0, v3}, Lcom/gmodvr/flat/WorkshopCollection;->build(Lcom/gmodvr/flat/WorkshopQueue;Lcom/gmodvr/flat/WorkshopCollection$Node;Ljava/util/List;)V

    .line 142
    iget-boolean p0, p0, Lcom/gmodvr/flat/WorkshopCollection;->truncated:Z

    iput-boolean p0, v9, Lcom/gmodvr/flat/WorkshopQueue;->truncated:Z

    .line 143
    iget-object p0, v9, Lcom/gmodvr/flat/WorkshopQueue;->entries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1e2

    .line 144
    new-instance p0, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/gmodvr/flat/WorkshopCollection$Node;->collection()Z

    move-result p1

    if-eqz p1, :cond_1dc

    const-string p1, "This Workshop collection is empty"

    goto :goto_1de

    :cond_1dc
    const-string p1, "Workshop item has no downloadable content"

    :goto_1de
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e2
    return-object v9

    .line 99
    :cond_1e3
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Workshop item belongs to another game (Steam app "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcom/gmodvr/flat/WorkshopCollection$Node;->app:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "). Select its matching game."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :cond_201
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " lookup failed (Steam result "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcom/gmodvr/flat/WorkshopCollection$Node;->result:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "). Check the item\'s availability for this Steam account."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_222
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is private, friends-only or removed (Steam result 15: AccessDenied)."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 93
    :cond_239
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " was not found (Steam result 9: FileNotFound). Check the Workshop link and that the item is visible to this Steam account."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resolveRequired(Ljava/util/List;Ljava/lang/String;)Lcom/gmodvr/flat/WorkshopQueue;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/gmodvr/flat/WorkshopQueue;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_93

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/gmodvr/flat/WorkshopCollection$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/gmodvr/flat/WorkshopCollection$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/gmodvr/flat/WorkshopCollection;->schedule([JLjava/util/List;)V

    .line 75
    :goto_1f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_69

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    .line 77
    invoke-direct {p0, v0, v2}, Lcom/gmodvr/flat/WorkshopCollection;->fetchAll(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/WorkshopCollection$Node;

    .line 78
    invoke-virtual {v2}, Lcom/gmodvr/flat/WorkshopCollection$Node;->collection()Z

    move-result v3

    if-nez v3, :cond_4a

    const/4 v3, 0x0

    .line 79
    invoke-direct {p0, v2, v1, v3}, Lcom/gmodvr/flat/WorkshopCollection;->expand(Lcom/gmodvr/flat/WorkshopCollection$Node;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_33

    .line 78
    :cond_4a
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Server requires a Workshop collection instead of an addon: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v2, Lcom/gmodvr/flat/WorkshopCollection$Node;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_67
    move-object v0, v1

    goto :goto_1f

    .line 83
    :cond_69
    new-instance v7, Lcom/gmodvr/flat/WorkshopQueue;

    const-string v4, "Server Workshop content"

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    move-object v0, v7

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/gmodvr/flat/WorkshopQueue;-><init>(Ljava/lang/String;JLjava/lang/String;Z)V

    .line 84
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/gmodvr/flat/WorkshopCollection$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/gmodvr/flat/WorkshopCollection$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, v7

    invoke-direct/range {v0 .. v6}, Lcom/gmodvr/flat/WorkshopCollection;->emit(Lcom/gmodvr/flat/WorkshopQueue;[JZLjava/util/List;J)V

    return-object v7

    .line 72
    :cond_93
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Server supplied no Workshop items"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class com.gmodvr.flat.WorkshopCollection.Fetch (com.gmodvr.flat.WorkshopCollection$Fetch)
.class interface abstract Lcom/gmodvr/flat/WorkshopCollection$Fetch;
.super Ljava/lang/Object;
.source "WorkshopCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Fetch"
.end annotation


# virtual methods
.method public check()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p0

    if-nez p0, :cond_b

    return-void

    :cond_b
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method public abstract get(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

###### Class com.gmodvr.flat.WorkshopCollection.Node (com.gmodvr.flat.WorkshopCollection$Node)
.class final Lcom/gmodvr/flat/WorkshopCollection$Node;
.super Ljava/lang/Object;
.source "WorkshopCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Node"
.end annotation


# instance fields
.field final app:I

.field final children:[J

.field final id:J

.field final result:I

.field final size:J

.field final time:J

.field final title:Ljava/lang/String;

.field final type:I


# direct methods
.method public constructor <init>(J)V
    .registers 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/gmodvr/flat/WorkshopCollection$Node;->id:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/gmodvr/flat/WorkshopCollection$Node;->result:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/gmodvr/flat/WorkshopCollection$Node;->type:I

    iput p1, p0, Lcom/gmodvr/flat/WorkshopCollection$Node;->app:I

    const-string p2, ""

    iput-object p2, p0, Lcom/gmodvr/flat/WorkshopCollection$Node;->title:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gmodvr/flat/WorkshopCollection$Node;->size:J

    iput-wide v0, p0, Lcom/gmodvr/flat/WorkshopCollection$Node;->time:J

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopCollection$Node;->children:[J

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;)V
    .registers 6

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getPublishedfileid()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gmodvr/flat/WorkshopCollection$Node;->id:J

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getResult()I

    move-result v0

    iput v0, p0, Lcom/gmodvr/flat/WorkshopCollection$Node;->result:I

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getFileType()I

    move-result v0

    iput v0, p0, Lcom/gmodvr/flat/WorkshopCollection$Node;->type:I

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getConsumerAppid()I

    move-result v0

    iput v0, p0, Lcom/gmodvr/flat/WorkshopCollection$Node;->app:I

    .line 43
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopCollection$Node;->title:Ljava/lang/String;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gmodvr/flat/WorkshopCollection$Node;->size:J

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getTimeUpdated()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gmodvr/flat/WorkshopCollection$Node;->time:J

    .line 44
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getChildrenCount()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopCollection$Node;->children:[J

    const/4 v0, 0x0

    .line 45
    :goto_3a
    iget-object v1, p0, Lcom/gmodvr/flat/WorkshopCollection$Node;->children:[J

    array-length v2, v1

    if-ge v0, v2, :cond_4c

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getChildren(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Child;

    move-result-object v2

    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Child;->getPublishedfileid()J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_4c
    return-void
.end method


# virtual methods
.method public collection()Z
    .registers 2

    .line 49
    invoke-virtual {p0}, Lcom/gmodvr/flat/WorkshopCollection$Node;->ok()Z

    move-result v0

    if-eqz v0, :cond_d

    iget p0, p0, Lcom/gmodvr/flat/WorkshopCollection$Node;->type:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public ok()Z
    .registers 2

    .line 48
    iget p0, p0, Lcom/gmodvr/flat/WorkshopCollection$Node;->result:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

###### Class com.gmodvr.flat.WorkshopCollection.Progress (com.gmodvr.flat.WorkshopCollection$Progress)
.class interface abstract Lcom/gmodvr/flat/WorkshopCollection$Progress;
.super Ljava/lang/Object;
.source "WorkshopCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Progress"
.end annotation


# virtual methods
.method public abstract resolved(I)V
.end method

###### Class com.gmodvr.flat.WorkshopCollection.Sleep (com.gmodvr.flat.WorkshopCollection$Sleep)
.class interface abstract Lcom/gmodvr/flat/WorkshopCollection$Sleep;
.super Ljava/lang/Object;
.source "WorkshopCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Sleep"
.end annotation


# virtual methods
.method public abstract sleep(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

###### Class com.gmodvr.flat.WorkshopCollection$$ExternalSyntheticLambda0 (com.gmodvr.flat.WorkshopCollection$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/WorkshopCollection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

###### Class com.gmodvr.flat.WorkshopCollection$$ExternalSyntheticLambda1 (com.gmodvr.flat.WorkshopCollection$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/WorkshopCollection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/WorkshopCollection$Progress;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final resolved(I)V
    .registers 2

    .line 0
    invoke-static {p1}, Lcom/gmodvr/flat/WorkshopCollection;->$r8$lambda$3ZrtV92jkTtWmcAt4mzbH5advtI(I)V

    return-void
.end method
