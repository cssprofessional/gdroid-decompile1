###### Class com.gmodvr.flat.WorkshopQueue (com.gmodvr.flat.WorkshopQueue)
.class final Lcom/gmodvr/flat/WorkshopQueue;
.super Ljava/lang/Object;
.source "WorkshopQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/WorkshopQueue$Phase;,
        Lcom/gmodvr/flat/WorkshopQueue$Entry;,
        Lcom/gmodvr/flat/WorkshopQueue$Installed;,
        Lcom/gmodvr/flat/WorkshopQueue$Mode;,
        Lcom/gmodvr/flat/WorkshopQueue$Status;,
        Lcom/gmodvr/flat/WorkshopQueue$Summary;,
        Lcom/gmodvr/flat/WorkshopQueue$Collection;,
        Lcom/gmodvr/flat/WorkshopQueue$Kind;,
        Lcom/gmodvr/flat/WorkshopQueue$Steps;
    }
.end annotation


# static fields
.field static final FAILURE_STREAK:I = 0x5

.field static final RESERVE:J = 0x20000000L


# instance fields
.field private final byId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/gmodvr/flat/WorkshopQueue$Entry;",
            ">;"
        }
    .end annotation
.end field

.field final collection:Z

.field final collections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/gmodvr/flat/WorkshopQueue$Collection;",
            ">;"
        }
    .end annotation
.end field

.field final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/WorkshopQueue$Entry;",
            ">;"
        }
    .end annotation
.end field

.field includeLinked:Z

.field phase:Lcom/gmodvr/flat/WorkshopQueue$Phase;

.field final rootId:J

.field final rootTitle:Ljava/lang/String;

.field final token:Ljava/lang/String;

.field truncated:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Z)V
    .registers 7

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Phase;->REVIEW:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueue;->phase:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueue;->entries:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueue;->collections:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueue;->byId:Ljava/util/Map;

    .line 85
    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueue;->token:Ljava/lang/String;

    iput-wide p2, p0, Lcom/gmodvr/flat/WorkshopQueue;->rootId:J

    if-nez p4, :cond_24

    const-string p4, ""

    :cond_24
    iput-object p4, p0, Lcom/gmodvr/flat/WorkshopQueue;->rootTitle:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/gmodvr/flat/WorkshopQueue;->collection:Z

    return-void
.end method

.method public static delete(Ljava/io/File;)V
    .registers 5

    .line 364
    invoke-static {p0}, Lcom/gmodvr/flat/WorkshopQueue;->log(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    filled-new-array {p0, v0, v1}, [Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    :goto_23
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2e

    aget-object v1, p0, v0

    .line 365
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_2e
    return-void
.end method

.method private failed(Ljava/io/File;Lcom/gmodvr/flat/WorkshopQueue$Entry;Ljava/lang/Throwable;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/gmodvr/flat/WorkshopQueue$Entry;",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/WorkshopQueue$Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_58

    .line 311
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Status;->FAILED:Lcom/gmodvr/flat/WorkshopQueue$Status;

    invoke-static {p3}, Lcom/gmodvr/flat/WorkshopQueue;->reason(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/gmodvr/flat/WorkshopQueue;->record(Ljava/io/File;Lcom/gmodvr/flat/WorkshopQueue$Entry;Lcom/gmodvr/flat/WorkshopQueue$Status;Ljava/lang/String;)V

    .line 312
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x5

    if-ge p3, v0, :cond_1e

    return-void

    .line 314
    :cond_1e
    iget-object p2, p2, Lcom/gmodvr/flat/WorkshopQueue$Entry;->error:Ljava/lang/String;

    .line 315
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_24
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_39

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Status;->PENDING:Lcom/gmodvr/flat/WorkshopQueue$Status;

    iput-object v0, p4, Lcom/gmodvr/flat/WorkshopQueue$Entry;->status:Lcom/gmodvr/flat/WorkshopQueue$Status;

    const-string v0, ""

    iput-object v0, p4, Lcom/gmodvr/flat/WorkshopQueue$Entry;->error:Ljava/lang/String;

    goto :goto_24

    .line 316
    :cond_39
    invoke-virtual {p0, p1}, Lcom/gmodvr/flat/WorkshopQueue;->save(Ljava/io/File;)V

    .line 317
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "5 Workshop items failed in a row (last: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "). Check the connection, then resume."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 310
    :cond_58
    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/gmodvr/flat/WorkshopQueue;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 419
    const-string v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13f

    .line 420
    new-instance v1, Lcom/gmodvr/flat/WorkshopQueue;

    const-string v2, "token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "root"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 421
    const-string v2, "title"

    const-string v9, ""

    invoke-virtual {v0, v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "collection"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/gmodvr/flat/WorkshopQueue;-><init>(Ljava/lang/String;JLjava/lang/String;Z)V

    .line 422
    const-string v3, "truncated"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/gmodvr/flat/WorkshopQueue;->truncated:Z

    .line 423
    const-string v3, "phase"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gmodvr/flat/WorkshopQueue$Phase;->valueOf(Ljava/lang/String;)Lcom/gmodvr/flat/WorkshopQueue$Phase;

    move-result-object v3

    iput-object v3, v1, Lcom/gmodvr/flat/WorkshopQueue;->phase:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    .line 424
    const-string v3, "linked"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/gmodvr/flat/WorkshopQueue;->includeLinked:Z

    .line 425
    const-string v4, "collections"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    .line 426
    :goto_53
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    const-string v8, "id"

    if-ge v6, v7, :cond_80

    .line 427
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 428
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 429
    iget-object v8, v1, Lcom/gmodvr/flat/WorkshopQueue;->collections:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    new-instance v13, Lcom/gmodvr/flat/WorkshopQueue$Collection;

    invoke-virtual {v7, v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-direct {v13, v10, v11, v14, v7}, Lcom/gmodvr/flat/WorkshopQueue$Collection;-><init>(JLjava/lang/String;Z)V

    invoke-interface {v8, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_53

    .line 431
    :cond_80
    const-string v2, "entries"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move v2, v5

    .line 432
    :goto_87
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_13e

    .line 433
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 434
    const-string v6, "req"

    invoke-virtual {v4, v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 435
    new-instance v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v10, "t"

    invoke-virtual {v4, v10, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v10, "size"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v10, "time"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    const-string v10, "kind"

    .line 436
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gmodvr/flat/WorkshopQueue$Kind;->valueOf(Ljava/lang/String;)Lcom/gmodvr/flat/WorkshopQueue$Kind;

    move-result-object v18

    const-string v10, "note"

    invoke-virtual {v4, v10, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v20

    .line 437
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_d0

    const-wide/16 v21, 0x0

    goto :goto_d4

    :cond_d0
    invoke-static {v6}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v21

    :goto_d4
    move-object v10, v7

    invoke-direct/range {v10 .. v22}, Lcom/gmodvr/flat/WorkshopQueue$Entry;-><init>(JLjava/lang/String;JJLcom/gmodvr/flat/WorkshopQueue$Kind;Ljava/lang/String;ZJ)V

    .line 438
    const-string v6, "src"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_fb

    move v10, v5

    .line 439
    :goto_e1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_fb

    iget-object v11, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->sources:Ljava/util/List;

    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_e1

    .line 440
    :cond_fb
    const-string v6, "sel"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->selected:Z

    .line 441
    const-string v6, "re"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->reinstall:Z

    .line 442
    const-string v6, "st"

    const-string v10, "PENDING"

    invoke-virtual {v4, v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gmodvr/flat/WorkshopQueue$Status;->valueOf(Ljava/lang/String;)Lcom/gmodvr/flat/WorkshopQueue$Status;

    move-result-object v6

    iput-object v6, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->status:Lcom/gmodvr/flat/WorkshopQueue$Status;

    .line 443
    const-string v6, "inst"

    const-string v10, "MISSING"

    invoke-virtual {v4, v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gmodvr/flat/WorkshopQueue$Installed;->valueOf(Ljava/lang/String;)Lcom/gmodvr/flat/WorkshopQueue$Installed;

    move-result-object v6

    iput-object v6, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->installed:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    .line 444
    const-string v6, "isz"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->installedSize:J

    .line 445
    const-string v6, "err"

    invoke-virtual {v4, v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->error:Ljava/lang/String;

    .line 446
    invoke-virtual {v1, v7}, Lcom/gmodvr/flat/WorkshopQueue;->add(Lcom/gmodvr/flat/WorkshopQueue$Entry;)Lcom/gmodvr/flat/WorkshopQueue$Entry;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_87

    :cond_13e
    return-object v1

    .line 419
    :cond_13f
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Unsupported Workshop queue version"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static load(Ljava/io/File;Ljava/lang/String;)Lcom/gmodvr/flat/WorkshopQueue;
    .registers 9

    const/4 v0, 0x0

    .line 371
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_8

    return-object v0

    .line 372
    :cond_8
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gmodvr/flat/WorkshopQueue;->fromJson(Lorg/json/JSONObject;)Lcom/gmodvr/flat/WorkshopQueue;

    move-result-object v1

    if-eqz p1, :cond_2b

    .line 373
    iget-object v2, v1, Lcom/gmodvr/flat/WorkshopQueue;->token:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    return-object v0

    .line 374
    :cond_2b
    invoke-static {p0}, Lcom/gmodvr/flat/WorkshopQueue;->log(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 375
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 376
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p0

    invoke-direct {p1, p0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p0, "\n"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v2, 0x0

    :goto_4a
    if-ge v2, p1, :cond_7d

    aget-object v3, p0, v2
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4e} :catch_7e
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_4e} :catch_7e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4e} :catch_7e

    .line 378
    :try_start_4e
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 379
    const-string v3, "id"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/gmodvr/flat/WorkshopQueue;->get(J)Lcom/gmodvr/flat/WorkshopQueue$Entry;

    move-result-object v3

    if-nez v3, :cond_64

    goto :goto_7a

    .line 381
    :cond_64
    const-string v5, "s"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gmodvr/flat/WorkshopQueue$Status;->valueOf(Ljava/lang/String;)Lcom/gmodvr/flat/WorkshopQueue$Status;

    move-result-object v5

    iput-object v5, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->status:Lcom/gmodvr/flat/WorkshopQueue$Status;

    .line 382
    const-string v5, "e"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->error:Ljava/lang/String;
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_7a} :catch_7a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_7a} :catch_7a
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_7a} :catch_7e

    :catch_7a
    :goto_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    :cond_7d
    return-object v1

    :catch_7e
    return-object v0
.end method

.method public static log(Ljava/io/File;)Ljava/io/File;
    .registers 3

    .line 333
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".log"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static reason(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .line 322
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 323
    instance-of v1, p0, Ljava/io/IOException;

    if-nez v1, :cond_10

    instance-of v1, p0, Ljava/lang/IllegalStateException;

    if-nez v1, :cond_10

    instance-of v1, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v1, :cond_25

    :cond_10
    if-eqz v0, :cond_25

    .line 324
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    return-object v0

    .line 325
    :cond_25
    instance-of v0, p0, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_54

    instance-of v0, p0, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_2e

    goto :goto_54

    .line 327
    :cond_2e
    instance-of v0, p0, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_35

    const-string p0, "Out of memory"

    return-object p0

    .line 328
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download failed ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 326
    :cond_54
    :goto_54
    const-string p0, "Steam stopped responding"

    return-object p0
.end method


# virtual methods
.method public add(Lcom/gmodvr/flat/WorkshopQueue$Entry;)Lcom/gmodvr/flat/WorkshopQueue$Entry;
    .registers 5

    .line 91
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueue;->byId:Ljava/util/Map;

    iget-wide v1, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 92
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueue;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueue;->byId:Ljava/util/Map;

    iget-wide v0, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 91
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate Workshop entry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public annotate(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "[J>;)V"
        }
    .end annotation

    .line 105
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueue;->entries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    .line 106
    iget-wide v1, v0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    const-wide/16 v2, 0x0

    if-nez v1, :cond_29

    .line 107
    sget-object v1, Lcom/gmodvr/flat/WorkshopQueue$Installed;->MISSING:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    iput-object v1, v0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->installed:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    iput-wide v2, v0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->installedSize:J

    goto :goto_6

    .line 108
    :cond_29
    array-length v4, v1

    const/4 v5, 0x1

    if-le v4, v5, :cond_34

    aget-wide v4, v1, v5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_35

    :cond_34
    move-wide v4, v2

    :goto_35
    iput-wide v4, v0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->installedSize:J

    const/4 v4, 0x0

    .line 109
    aget-wide v4, v1, v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_47

    iget-wide v1, v0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->time:J

    cmp-long v1, v4, v1

    if-nez v1, :cond_47

    sget-object v1, Lcom/gmodvr/flat/WorkshopQueue$Installed;->CURRENT:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    goto :goto_49

    :cond_47
    sget-object v1, Lcom/gmodvr/flat/WorkshopQueue$Installed;->OUTDATED:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    :goto_49
    iput-object v1, v0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->installed:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    goto :goto_6

    :cond_4c
    return-void
.end method

.method public collectionsJson(Lcom/gmodvr/flat/WorkshopQueue$Entry;)Lorg/json/JSONArray;
    .registers 8

    .line 232
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 233
    iget-object p1, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->sources:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 234
    iget-object v4, p0, Lcom/gmodvr/flat/WorkshopQueue;->collections:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/WorkshopQueue$Collection;

    if-eqz v1, :cond_b

    .line 235
    iget-boolean v4, v1, Lcom/gmodvr/flat/WorkshopQueue$Collection;->linked:Z

    if-eqz v4, :cond_2e

    iget-boolean v4, p0, Lcom/gmodvr/flat/WorkshopQueue;->includeLinked:Z

    if-nez v4, :cond_2e

    goto :goto_b

    .line 236
    :cond_2e
    :try_start_2e
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "id"

    invoke-static {v2, v3}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "title"

    iget-object v1, v1, Lcom/gmodvr/flat/WorkshopQueue$Collection;->title:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_48} :catch_49

    goto :goto_b

    :catch_49
    move-exception p0

    .line 237
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_50
    return-object v0
.end method

.method public failed()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/WorkshopQueue$Entry;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueue;->entries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    iget-boolean v2, v1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->selected:Z

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->status:Lcom/gmodvr/flat/WorkshopQueue$Status;

    sget-object v3, Lcom/gmodvr/flat/WorkshopQueue$Status;->FAILED:Lcom/gmodvr/flat/WorkshopQueue$Status;

    if-ne v2, v3, :cond_b

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_25
    return-object v0
.end method

.method public get(J)Lcom/gmodvr/flat/WorkshopQueue$Entry;
    .registers 3

    .line 97
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueue;->byId:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    return-object p0
.end method

.method public inScope(Lcom/gmodvr/flat/WorkshopQueue$Entry;)Z
    .registers 2

    .line 99
    iget-boolean p0, p0, Lcom/gmodvr/flat/WorkshopQueue;->includeLinked:Z

    if-nez p0, :cond_b

    iget-boolean p0, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->linked:Z

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public name()Ljava/lang/String;
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueue;->rootTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Workshop item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gmodvr/flat/WorkshopQueue;->rootId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_26

    :cond_24
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueue;->rootTitle:Ljava/lang/String;

    :goto_26
    return-object p0
.end method

.method public pending()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/WorkshopQueue$Entry;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget-object v1, p0, Lcom/gmodvr/flat/WorkshopQueue;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    iget-boolean v3, v2, Lcom/gmodvr/flat/WorkshopQueue$Entry;->selected:Z

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Lcom/gmodvr/flat/WorkshopQueue$Entry;->downloadable()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0, v2}, Lcom/gmodvr/flat/WorkshopQueue;->inScope(Lcom/gmodvr/flat/WorkshopQueue$Entry;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v2, Lcom/gmodvr/flat/WorkshopQueue$Entry;->status:Lcom/gmodvr/flat/WorkshopQueue$Status;

    sget-object v4, Lcom/gmodvr/flat/WorkshopQueue$Status;->PENDING:Lcom/gmodvr/flat/WorkshopQueue$Status;

    if-ne v3, v4, :cond_b

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_31
    return-object v0
.end method

.method public progressBytes()[J
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 216
    iget-object v2, p0, Lcom/gmodvr/flat/WorkshopQueue;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    .line 217
    iget-boolean v8, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->selected:Z

    if-eqz v8, :cond_b

    invoke-virtual {v7}, Lcom/gmodvr/flat/WorkshopQueue$Entry;->downloadable()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {p0, v7}, Lcom/gmodvr/flat/WorkshopQueue;->inScope(Lcom/gmodvr/flat/WorkshopQueue$Entry;)Z

    move-result v8

    if-nez v8, :cond_28

    goto :goto_b

    .line 219
    :cond_28
    iget-object v8, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->status:Lcom/gmodvr/flat/WorkshopQueue$Status;

    sget-object v9, Lcom/gmodvr/flat/WorkshopQueue$Status;->CURRENT:Lcom/gmodvr/flat/WorkshopQueue$Status;

    if-eq v8, v9, :cond_b

    sget-object v9, Lcom/gmodvr/flat/WorkshopQueue$Status;->PENDING:Lcom/gmodvr/flat/WorkshopQueue$Status;

    if-ne v8, v9, :cond_39

    invoke-virtual {v7}, Lcom/gmodvr/flat/WorkshopQueue$Entry;->needsDownload()Z

    move-result v8

    if-nez v8, :cond_39

    goto :goto_b

    .line 220
    :cond_39
    iget-object v8, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->status:Lcom/gmodvr/flat/WorkshopQueue$Status;

    if-eq v8, v9, :cond_3f

    move v8, v1

    goto :goto_40

    :cond_3f
    move v8, v0

    .line 221
    :goto_40
    iget-wide v9, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->size:J

    add-long/2addr v5, v9

    if-eqz v8, :cond_b

    add-long/2addr v3, v9

    goto :goto_b

    :cond_47
    const/4 p0, 0x2

    .line 224
    new-array p0, p0, [J

    aput-wide v3, p0, v0

    aput-wide v5, p0, v1

    return-object p0
.end method

.method public record(Ljava/io/File;Lcom/gmodvr/flat/WorkshopQueue$Entry;Lcom/gmodvr/flat/WorkshopQueue$Status;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    iput-object p3, p2, Lcom/gmodvr/flat/WorkshopQueue$Entry;->status:Lcom/gmodvr/flat/WorkshopQueue$Status;

    if-nez p4, :cond_6

    .line 338
    const-string p4, ""

    :cond_6
    iput-object p4, p2, Lcom/gmodvr/flat/WorkshopQueue$Entry;->error:Ljava/lang/String;

    .line 339
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 340
    :try_start_d
    const-string p4, "id"

    iget-wide v0, p2, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p4

    const-string v0, "s"

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "e"

    iget-object p2, p2, Lcom/gmodvr/flat/WorkshopQueue$Entry;->error:Ljava/lang/String;

    invoke-virtual {p3, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_2a} :catch_67

    .line 342
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-static {p1}, Lcom/gmodvr/flat/WorkshopQueue;->log(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 343
    :try_start_34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 344
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_59
    .catchall {:try_start_34 .. :try_end_59} :catchall_5d

    .line 345
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_5d
    move-exception p0

    .line 342
    :try_start_5e
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    goto :goto_66

    :catchall_62
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_66
    throw p0

    :catch_67
    move-exception p0

    .line 341
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public retryFailed()I
    .registers 6

    .line 139
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueue;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    iget-boolean v3, v2, Lcom/gmodvr/flat/WorkshopQueue$Entry;->selected:Z

    if-eqz v3, :cond_7

    iget-object v3, v2, Lcom/gmodvr/flat/WorkshopQueue$Entry;->status:Lcom/gmodvr/flat/WorkshopQueue$Status;

    sget-object v4, Lcom/gmodvr/flat/WorkshopQueue$Status;->FAILED:Lcom/gmodvr/flat/WorkshopQueue$Status;

    if-ne v3, v4, :cond_7

    sget-object v3, Lcom/gmodvr/flat/WorkshopQueue$Status;->PENDING:Lcom/gmodvr/flat/WorkshopQueue$Status;

    iput-object v3, v2, Lcom/gmodvr/flat/WorkshopQueue$Entry;->status:Lcom/gmodvr/flat/WorkshopQueue$Status;

    const-string v3, ""

    iput-object v3, v2, Lcom/gmodvr/flat/WorkshopQueue$Entry;->error:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_28
    if-lez v1, :cond_2e

    .line 140
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Phase;->DOWNLOADING:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueue;->phase:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    :cond_2e
    return v1
.end method

.method public run(Ljava/io/File;Lcom/gmodvr/flat/WorkshopQueue$Steps;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 267
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Phase;->DOWNLOADING:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    iput-object v0, v1, Lcom/gmodvr/flat/WorkshopQueue;->phase:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    .line 268
    invoke-interface/range {p2 .. p2}, Lcom/gmodvr/flat/WorkshopQueue$Steps;->installed()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gmodvr/flat/WorkshopQueue;->annotate(Ljava/util/Map;)V

    .line 269
    invoke-virtual/range {p0 .. p1}, Lcom/gmodvr/flat/WorkshopQueue;->save(Ljava/io/File;)V

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/gmodvr/flat/WorkshopQueue;->pending()Ljava/util/List;

    move-result-object v4

    .line 271
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 273
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v0, 0x0

    :goto_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ee

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    add-int/lit8 v8, v0, 0x1

    .line 275
    invoke-interface/range {p2 .. p2}, Lcom/gmodvr/flat/WorkshopQueue$Steps;->check()V

    .line 276
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v3, v7, v8, v0}, Lcom/gmodvr/flat/WorkshopQueue$Steps;->starting(Lcom/gmodvr/flat/WorkshopQueue$Entry;II)V

    .line 277
    iget-object v0, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->installed:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    sget-object v9, Lcom/gmodvr/flat/WorkshopQueue$Installed;->CURRENT:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    const-string v10, ""

    if-ne v0, v9, :cond_55

    iget-boolean v0, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->reinstall:Z

    if-nez v0, :cond_55

    .line 278
    :try_start_46
    invoke-interface {v3, v7}, Lcom/gmodvr/flat/WorkshopQueue$Steps;->keep(Lcom/gmodvr/flat/WorkshopQueue$Entry;)V
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_49} :catch_52
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_49

    .line 279
    :catch_49
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Status;->CURRENT:Lcom/gmodvr/flat/WorkshopQueue$Status;

    invoke-virtual {v1, v2, v7, v0, v10}, Lcom/gmodvr/flat/WorkshopQueue;->record(Ljava/io/File;Lcom/gmodvr/flat/WorkshopQueue$Entry;Lcom/gmodvr/flat/WorkshopQueue$Status;Ljava/lang/String;)V

    move/from16 v17, v8

    goto/16 :goto_c1

    :catch_52
    move-exception v0

    move-object v1, v0

    .line 278
    throw v1

    .line 282
    :cond_55
    invoke-interface/range {p2 .. p2}, Lcom/gmodvr/flat/WorkshopQueue$Steps;->usableSpace()J

    move-result-wide v11

    const-wide/32 v13, 0x20000000

    cmp-long v0, v11, v13

    const-wide/16 v13, 0x0

    if-ltz v0, :cond_ca

    move/from16 v17, v8

    .line 285
    iget-wide v8, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->size:J

    cmp-long v0, v8, v13

    if-lez v0, :cond_a5

    const-wide/32 v13, 0x20000000

    sub-long v13, v11, v13

    const-wide/16 v15, 0x2

    mul-long/2addr v8, v15

    cmp-long v0, v13, v8

    if-gez v0, :cond_a5

    .line 286
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Status;->FAILED:Lcom/gmodvr/flat/WorkshopQueue$Status;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not enough free storage: needs about "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->size:J

    mul-long/2addr v9, v15

    invoke-static {v9, v10}, Lcom/gmodvr/flat/GmodAddons;->sizeText(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " while it is unpacked, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-static {v11, v12}, Lcom/gmodvr/flat/GmodAddons;->sizeText(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " free"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 286
    invoke-virtual {v1, v2, v7, v0, v8}, Lcom/gmodvr/flat/WorkshopQueue;->record(Ljava/io/File;Lcom/gmodvr/flat/WorkshopQueue$Entry;Lcom/gmodvr/flat/WorkshopQueue$Status;Ljava/lang/String;)V

    goto :goto_c1

    .line 291
    :cond_a5
    :try_start_a5
    invoke-interface {v3, v7}, Lcom/gmodvr/flat/WorkshopQueue$Steps;->install(Lcom/gmodvr/flat/WorkshopQueue$Entry;)V

    .line 292
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Status;->DONE:Lcom/gmodvr/flat/WorkshopQueue$Status;

    invoke-virtual {v1, v2, v7, v0, v10}, Lcom/gmodvr/flat/WorkshopQueue;->record(Ljava/io/File;Lcom/gmodvr/flat/WorkshopQueue$Entry;Lcom/gmodvr/flat/WorkshopQueue$Status;Ljava/lang/String;)V

    .line 293
    invoke-interface {v5}, Ljava/util/List;->clear()V
    :try_end_b0
    .catch Ljava/lang/InterruptedException; {:try_start_a5 .. :try_end_b0} :catch_b8
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_b0} :catch_b6
    .catchall {:try_start_a5 .. :try_end_b0} :catchall_b4

    .line 302
    :goto_b0
    invoke-interface {v3, v7}, Lcom/gmodvr/flat/WorkshopQueue$Steps;->cleanup(Lcom/gmodvr/flat/WorkshopQueue$Entry;)V

    goto :goto_c1

    :catchall_b4
    move-exception v0

    goto :goto_c6

    :catch_b6
    move-exception v0

    goto :goto_ba

    :catch_b8
    move-exception v0

    goto :goto_c5

    .line 299
    :goto_ba
    :try_start_ba
    invoke-interface/range {p2 .. p2}, Lcom/gmodvr/flat/WorkshopQueue$Steps;->check()V

    .line 300
    invoke-direct {v1, v2, v7, v0, v5}, Lcom/gmodvr/flat/WorkshopQueue;->failed(Ljava/io/File;Lcom/gmodvr/flat/WorkshopQueue$Entry;Ljava/lang/Throwable;Ljava/util/List;)V

    goto :goto_b0

    :goto_c1
    move/from16 v0, v17

    goto/16 :goto_22

    .line 295
    :goto_c5
    throw v0
    :try_end_c6
    .catchall {:try_start_ba .. :try_end_c6} :catchall_b4

    .line 302
    :goto_c6
    invoke-interface {v3, v7}, Lcom/gmodvr/flat/WorkshopQueue$Steps;->cleanup(Lcom/gmodvr/flat/WorkshopQueue$Entry;)V

    .line 303
    throw v0

    .line 284
    :cond_ca
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storage is full ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/gmodvr/flat/GmodAddons;->sizeText(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " free). Free up space, then resume."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_ee
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Phase;->FINISHED:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    iput-object v0, v1, Lcom/gmodvr/flat/WorkshopQueue;->phase:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    .line 306
    invoke-virtual/range {p0 .. p1}, Lcom/gmodvr/flat/WorkshopQueue;->save(Ljava/io/File;)V

    return-void
.end method

.method public save(Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 350
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_2e

    :cond_17
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot create "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 351
    :cond_2e
    :goto_2e
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    :try_start_48
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_4d} :catch_8c

    .line 353
    :try_start_4d
    invoke-virtual {p0}, Lcom/gmodvr/flat/WorkshopQueue;->toJson()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 354
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_65
    .catchall {:try_start_4d .. :try_end_65} :catchall_8e

    .line 355
    :try_start_65
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_65 .. :try_end_68} :catch_8c

    .line 358
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/nio/file/CopyOption;

    sget-object v2, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 360
    invoke-static {p1}, Lcom/gmodvr/flat/WorkshopQueue;->log(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    return-void

    :catch_8c
    move-exception p0

    goto :goto_98

    :catchall_8e
    move-exception p0

    .line 352
    :try_start_8f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_93

    goto :goto_97

    :catchall_93
    move-exception p1

    :try_start_94
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_97
    throw p0
    :try_end_98
    .catch Lorg/json/JSONException; {:try_start_94 .. :try_end_98} :catch_8c

    .line 356
    :goto_98
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Could not encode the Workshop queue"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public select(Lcom/gmodvr/flat/WorkshopQueue$Mode;)V
    .registers 8

    .line 118
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueue;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    .line 119
    invoke-virtual {v1}, Lcom/gmodvr/flat/WorkshopQueue$Entry;->downloadable()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2c

    invoke-virtual {p0, v1}, Lcom/gmodvr/flat/WorkshopQueue;->inScope(Lcom/gmodvr/flat/WorkshopQueue$Entry;)Z

    move-result v2

    if-eqz v2, :cond_2c

    sget-object v2, Lcom/gmodvr/flat/WorkshopQueue$Mode;->ALL:Lcom/gmodvr/flat/WorkshopQueue$Mode;

    if-eq p1, v2, :cond_2a

    iget-object v2, v1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->installed:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    sget-object v5, Lcom/gmodvr/flat/WorkshopQueue$Installed;->CURRENT:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    if-eq v2, v5, :cond_2c

    :cond_2a
    move v2, v4

    goto :goto_2d

    :cond_2c
    move v2, v3

    .line 120
    :goto_2d
    iput-boolean v2, v1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->selected:Z

    if-eqz v2, :cond_38

    .line 121
    iget-object v2, v1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->installed:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    sget-object v5, Lcom/gmodvr/flat/WorkshopQueue$Installed;->CURRENT:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    if-ne v2, v5, :cond_38

    move v3, v4

    :cond_38
    iput-boolean v3, v1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->reinstall:Z

    goto :goto_6

    :cond_3b
    return-void
.end method

.method public setIncludeLinked(Z)V
    .registers 3

    .line 132
    iput-boolean p1, p0, Lcom/gmodvr/flat/WorkshopQueue;->includeLinked:Z

    if-nez p1, :cond_20

    .line 133
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueue;->entries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    iget-boolean v0, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->linked:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->selected:Z

    iput-boolean v0, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->reinstall:Z

    goto :goto_a

    :cond_20
    return-void
.end method

.method public setSelected(Lcom/gmodvr/flat/WorkshopQueue$Entry;Z)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_12

    .line 127
    invoke-virtual {p1}, Lcom/gmodvr/flat/WorkshopQueue$Entry;->downloadable()Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-virtual {p0, p1}, Lcom/gmodvr/flat/WorkshopQueue;->inScope(Lcom/gmodvr/flat/WorkshopQueue$Entry;)Z

    move-result p0

    if-eqz p0, :cond_12

    move p0, v1

    goto :goto_13

    :cond_12
    move p0, v0

    :goto_13
    iput-boolean p0, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->selected:Z

    if-eqz p0, :cond_1e

    .line 128
    iget-object p0, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->installed:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    sget-object p2, Lcom/gmodvr/flat/WorkshopQueue$Installed;->CURRENT:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    if-ne p0, p2, :cond_1e

    move v0, v1

    :cond_1e
    iput-boolean v0, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->reinstall:Z

    return-void
.end method

.method public summary()Lcom/gmodvr/flat/WorkshopQueue$Summary;
    .registers 17

    move-object/from16 v0, p0

    .line 175
    new-instance v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;

    invoke-direct {v1}, Lcom/gmodvr/flat/WorkshopQueue$Summary;-><init>()V

    .line 177
    iget-object v2, v0, Lcom/gmodvr/flat/WorkshopQueue;->collections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gmodvr/flat/WorkshopQueue$Collection;

    iget-boolean v3, v3, Lcom/gmodvr/flat/WorkshopQueue$Collection;->linked:Z

    if-eqz v3, :cond_11

    iget v3, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->linkedCollections:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->linkedCollections:I

    goto :goto_11

    .line 178
    :cond_28
    iget-object v2, v0, Lcom/gmodvr/flat/WorkshopQueue;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_109

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    .line 179
    iget-boolean v11, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->linked:Z

    if-eqz v11, :cond_54

    invoke-virtual {v3}, Lcom/gmodvr/flat/WorkshopQueue$Entry;->downloadable()Z

    move-result v11

    if-eqz v11, :cond_54

    iget v11, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->linkedAddons:I

    add-int/2addr v11, v4

    iput v11, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->linkedAddons:I

    iget-wide v11, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->linkedBytes:J

    iget-wide v13, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->size:J

    add-long/2addr v11, v13

    iput-wide v11, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->linkedBytes:J

    .line 180
    :cond_54
    invoke-virtual {v0, v3}, Lcom/gmodvr/flat/WorkshopQueue;->inScope(Lcom/gmodvr/flat/WorkshopQueue$Entry;)Z

    move-result v11

    if-nez v11, :cond_5b

    goto :goto_32

    .line 181
    :cond_5b
    sget-object v11, Lcom/gmodvr/flat/WorkshopQueue$1;->$SwitchMap$com$gmodvr$flat$WorkshopQueue$Kind:[I

    iget-object v12, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->kind:Lcom/gmodvr/flat/WorkshopQueue$Kind;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v4, :cond_102

    const/4 v12, 0x2

    if-eq v11, v12, :cond_fb

    const/4 v13, 0x3

    if-eq v11, v13, :cond_f4

    .line 187
    iget v11, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->addons:I

    add-int/2addr v11, v4

    iput v11, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->addons:I

    .line 188
    iget-wide v14, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->totalBytes:J

    iget-wide v5, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->size:J

    add-long/2addr v14, v5

    iput-wide v14, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->totalBytes:J

    .line 189
    iget-object v11, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->installed:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    sget-object v14, Lcom/gmodvr/flat/WorkshopQueue$Installed;->CURRENT:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    if-ne v11, v14, :cond_85

    iget v5, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->current:I

    add-int/2addr v5, v4

    iput v5, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->current:I

    goto :goto_99

    .line 190
    :cond_85
    sget-object v14, Lcom/gmodvr/flat/WorkshopQueue$Installed;->OUTDATED:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    if-ne v11, v14, :cond_8f

    iget v11, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->outdated:I

    add-int/2addr v11, v4

    iput v11, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->outdated:I

    goto :goto_94

    :cond_8f
    iget v11, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->missing:I

    add-int/2addr v11, v4

    iput v11, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->missing:I

    :goto_94
    iget-wide v14, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->updateBytes:J

    add-long/2addr v14, v5

    iput-wide v14, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->updateBytes:J

    .line 191
    :goto_99
    iget-boolean v5, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->selected:Z

    if-nez v5, :cond_9e

    goto :goto_32

    .line 192
    :cond_9e
    iget v5, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->selected:I

    add-int/2addr v5, v4

    iput v5, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->selected:I

    .line 193
    sget-object v5, Lcom/gmodvr/flat/WorkshopQueue$1;->$SwitchMap$com$gmodvr$flat$WorkshopQueue$Status:[I

    iget-object v6, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->status:Lcom/gmodvr/flat/WorkshopQueue$Status;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v4, :cond_ed

    if-eq v5, v12, :cond_e6

    if-eq v5, v13, :cond_b9

    .line 197
    iget v5, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->remaining:I

    add-int/2addr v5, v4

    iput v5, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->remaining:I

    goto :goto_be

    .line 196
    :cond_b9
    iget v5, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->failed:I

    add-int/2addr v5, v4

    iput v5, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->failed:I

    .line 199
    :goto_be
    invoke-virtual {v3}, Lcom/gmodvr/flat/WorkshopQueue$Entry;->needsDownload()Z

    move-result v5

    if-nez v5, :cond_c6

    goto/16 :goto_32

    .line 200
    :cond_c6
    iget-wide v5, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->selectedBytes:J

    iget-wide v11, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->size:J

    add-long/2addr v5, v11

    iput-wide v5, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->selectedBytes:J

    .line 202
    iget-object v5, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->installed:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    sget-object v6, Lcom/gmodvr/flat/WorkshopQueue$Installed;->MISSING:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    if-ne v5, v6, :cond_d6

    const-wide/16 v5, 0x0

    goto :goto_dc

    :cond_d6
    iget-wide v5, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->installedSize:J

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :goto_dc
    sub-long/2addr v11, v5

    add-long/2addr v7, v11

    .line 203
    iget-wide v5, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->size:J

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    goto/16 :goto_32

    .line 195
    :cond_e6
    iget v3, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->skipped:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->skipped:I

    goto/16 :goto_32

    .line 194
    :cond_ed
    iget v3, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->done:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->done:I

    goto/16 :goto_32

    .line 184
    :cond_f4
    iget v3, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->notContent:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->notContent:I

    goto/16 :goto_32

    .line 183
    :cond_fb
    iget v3, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->otherGame:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->otherGame:I

    goto/16 :goto_32

    .line 182
    :cond_102
    iget v3, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->unavailable:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->unavailable:I

    goto/16 :goto_32

    .line 206
    :cond_109
    iget-wide v2, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->selectedBytes:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_113

    move-wide v5, v4

    goto :goto_11d

    :cond_113
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long/2addr v2, v9

    const-wide/32 v4, 0x20000000

    add-long v5, v2, v4

    :goto_11d
    iput-wide v5, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->neededBytes:J

    return-object v1
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 393
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 394
    const-string v1, "version"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "token"

    iget-object v4, p0, Lcom/gmodvr/flat/WorkshopQueue;->token:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-wide v3, p0, Lcom/gmodvr/flat/WorkshopQueue;->rootId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "root"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p0, Lcom/gmodvr/flat/WorkshopQueue;->rootTitle:Ljava/lang/String;

    const-string v4, "title"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "collection"

    iget-boolean v5, p0, Lcom/gmodvr/flat/WorkshopQueue;->collection:Z

    .line 395
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "truncated"

    iget-boolean v5, p0, Lcom/gmodvr/flat/WorkshopQueue;->truncated:Z

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p0, Lcom/gmodvr/flat/WorkshopQueue;->phase:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v5, "phase"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-boolean v3, p0, Lcom/gmodvr/flat/WorkshopQueue;->includeLinked:Z

    const-string v5, "linked"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 396
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 397
    iget-object v3, p0, Lcom/gmodvr/flat/WorkshopQueue;->collections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "id"

    if-eqz v6, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gmodvr/flat/WorkshopQueue$Collection;

    .line 398
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    iget-wide v9, v6, Lcom/gmodvr/flat/WorkshopQueue$Collection;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v8, v6, Lcom/gmodvr/flat/WorkshopQueue$Collection;->title:Ljava/lang/String;

    invoke-virtual {v7, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    iget-boolean v6, v6, Lcom/gmodvr/flat/WorkshopQueue$Collection;->linked:Z

    invoke-virtual {v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5a

    .line 399
    :cond_87
    const-string v3, "collections"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 401
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueue;->entries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_97
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_168

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    .line 402
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 403
    iget-wide v8, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "t"

    iget-object v9, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->title:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "size"

    iget-wide v9, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->size:J

    invoke-virtual {v6, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "time"

    iget-wide v9, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->time:J

    invoke-virtual {v6, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v8, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->kind:Lcom/gmodvr/flat/WorkshopQueue$Kind;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    const-string v9, "kind"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    iget-object v6, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->note:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e4

    const-string v6, "note"

    iget-object v8, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->note:Ljava/lang/String;

    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    :cond_e4
    iget-boolean v6, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->linked:Z

    if-eqz v6, :cond_eb

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 406
    :cond_eb
    iget-wide v8, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->requiredBy:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_fc

    const-string v6, "req"

    invoke-static {v8, v9}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    :cond_fc
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 408
    iget-object v8, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->sources:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_107
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_107

    .line 409
    :cond_11f
    const-string v8, "src"

    invoke-virtual {v4, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "sel"

    iget-boolean v9, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->selected:Z

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "re"

    iget-boolean v9, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->reinstall:Z

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v8, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->status:Lcom/gmodvr/flat/WorkshopQueue$Status;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    const-string v9, "st"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v8, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->installed:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    .line 410
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    const-string v9, "inst"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "isz"

    iget-wide v9, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->installedSize:J

    invoke-virtual {v6, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 411
    iget-object v6, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->error:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_163

    const-string v6, "err"

    iget-object v3, v3, Lcom/gmodvr/flat/WorkshopQueue$Entry;->error:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    :cond_163
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_97

    .line 414
    :cond_168
    const-string p0, "entries"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.gmodvr.flat.WorkshopQueue.AnonymousClass1 (com.gmodvr.flat.WorkshopQueue$1)
.class synthetic Lcom/gmodvr/flat/WorkshopQueue$1;
.super Ljava/lang/Object;
.source "WorkshopQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$gmodvr$flat$WorkshopQueue$Kind:[I

.field static final synthetic $SwitchMap$com$gmodvr$flat$WorkshopQueue$Status:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 193
    invoke-static {}, Lcom/gmodvr/flat/WorkshopQueue$Status;->values()[Lcom/gmodvr/flat/WorkshopQueue$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/gmodvr/flat/WorkshopQueue$1;->$SwitchMap$com$gmodvr$flat$WorkshopQueue$Status:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/gmodvr/flat/WorkshopQueue$Status;->DONE:Lcom/gmodvr/flat/WorkshopQueue$Status;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/gmodvr/flat/WorkshopQueue$1;->$SwitchMap$com$gmodvr$flat$WorkshopQueue$Status:[I

    sget-object v3, Lcom/gmodvr/flat/WorkshopQueue$Status;->CURRENT:Lcom/gmodvr/flat/WorkshopQueue$Status;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/gmodvr/flat/WorkshopQueue$1;->$SwitchMap$com$gmodvr$flat$WorkshopQueue$Status:[I

    sget-object v4, Lcom/gmodvr/flat/WorkshopQueue$Status;->FAILED:Lcom/gmodvr/flat/WorkshopQueue$Status;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    .line 181
    :catch_28
    invoke-static {}, Lcom/gmodvr/flat/WorkshopQueue$Kind;->values()[Lcom/gmodvr/flat/WorkshopQueue$Kind;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/gmodvr/flat/WorkshopQueue$1;->$SwitchMap$com$gmodvr$flat$WorkshopQueue$Kind:[I

    :try_start_31
    sget-object v4, Lcom/gmodvr/flat/WorkshopQueue$Kind;->UNAVAILABLE:Lcom/gmodvr/flat/WorkshopQueue$Kind;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_39} :catch_39

    :catch_39
    :try_start_39
    sget-object v1, Lcom/gmodvr/flat/WorkshopQueue$1;->$SwitchMap$com$gmodvr$flat$WorkshopQueue$Kind:[I

    sget-object v3, Lcom/gmodvr/flat/WorkshopQueue$Kind;->OTHER_GAME:Lcom/gmodvr/flat/WorkshopQueue$Kind;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_43

    :catch_43
    :try_start_43
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$1;->$SwitchMap$com$gmodvr$flat$WorkshopQueue$Kind:[I

    sget-object v1, Lcom/gmodvr/flat/WorkshopQueue$Kind;->NOT_CONTENT:Lcom/gmodvr/flat/WorkshopQueue$Kind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4d} :catch_4d

    :catch_4d
    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueue.Collection (com.gmodvr.flat.WorkshopQueue$Collection)
.class final Lcom/gmodvr/flat/WorkshopQueue$Collection;
.super Ljava/lang/Object;
.source "WorkshopQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Collection"
.end annotation


# instance fields
.field final id:J

.field final linked:Z

.field final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Z)V
    .registers 5

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/gmodvr/flat/WorkshopQueue$Collection;->id:J

    if-nez p3, :cond_9

    const-string p3, ""

    :cond_9
    iput-object p3, p0, Lcom/gmodvr/flat/WorkshopQueue$Collection;->title:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/gmodvr/flat/WorkshopQueue$Collection;->linked:Z

    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueue$Collection;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Collection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gmodvr/flat/WorkshopQueue$Collection;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_26

    :cond_24
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueue$Collection;->title:Ljava/lang/String;

    :goto_26
    return-object p0
.end method

###### Class com.gmodvr.flat.WorkshopQueue.Entry (com.gmodvr.flat.WorkshopQueue$Entry)
.class final Lcom/gmodvr/flat/WorkshopQueue$Entry;
.super Ljava/lang/Object;
.source "WorkshopQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field error:Ljava/lang/String;

.field final id:J

.field installed:Lcom/gmodvr/flat/WorkshopQueue$Installed;

.field installedSize:J

.field final kind:Lcom/gmodvr/flat/WorkshopQueue$Kind;

.field final linked:Z

.field final note:Ljava/lang/String;

.field reinstall:Z

.field final requiredBy:J

.field selected:Z

.field final size:J

.field final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field status:Lcom/gmodvr/flat/WorkshopQueue$Status;

.field final time:J

.field final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;JJLcom/gmodvr/flat/WorkshopQueue$Kind;Ljava/lang/String;ZJ)V
    .registers 15

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->sources:Ljava/util/List;

    .line 49
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Status;->PENDING:Lcom/gmodvr/flat/WorkshopQueue$Status;

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->status:Lcom/gmodvr/flat/WorkshopQueue$Status;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->error:Ljava/lang/String;

    .line 51
    sget-object v1, Lcom/gmodvr/flat/WorkshopQueue$Installed;->MISSING:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    iput-object v1, p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->installed:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    .line 55
    iput-wide p1, p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    if-nez p3, :cond_1b

    move-object p3, v0

    :cond_1b
    iput-object p3, p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->title:Ljava/lang/String;

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->size:J

    iput-wide p6, p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->time:J

    .line 56
    iput-object p8, p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->kind:Lcom/gmodvr/flat/WorkshopQueue$Kind;

    if-nez p9, :cond_2c

    move-object p9, v0

    :cond_2c
    iput-object p9, p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->note:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->linked:Z

    iput-wide p11, p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->requiredBy:J

    return-void
.end method


# virtual methods
.method public downloadable()Z
    .registers 2

    .line 59
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->kind:Lcom/gmodvr/flat/WorkshopQueue$Kind;

    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Kind;->ADDON:Lcom/gmodvr/flat/WorkshopQueue$Kind;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public name()Ljava/lang/String;
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Workshop item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_26

    :cond_24
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->title:Ljava/lang/String;

    :goto_26
    return-object p0
.end method

.method public needsDownload()Z
    .registers 3

    .line 61
    iget-boolean v0, p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->selected:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/gmodvr/flat/WorkshopQueue$Entry;->downloadable()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->installed:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    sget-object v1, Lcom/gmodvr/flat/WorkshopQueue$Installed;->CURRENT:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    if-ne v0, v1, :cond_14

    iget-boolean p0, p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->reinstall:Z

    if-eqz p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

###### Class com.gmodvr.flat.WorkshopQueue.Installed (com.gmodvr.flat.WorkshopQueue$Installed)
.class final enum Lcom/gmodvr/flat/WorkshopQueue$Installed;
.super Ljava/lang/Enum;
.source "WorkshopQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Installed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gmodvr/flat/WorkshopQueue$Installed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gmodvr/flat/WorkshopQueue$Installed;

.field public static final enum CURRENT:Lcom/gmodvr/flat/WorkshopQueue$Installed;

.field public static final enum MISSING:Lcom/gmodvr/flat/WorkshopQueue$Installed;

.field public static final enum OUTDATED:Lcom/gmodvr/flat/WorkshopQueue$Installed;


# direct methods
.method private static synthetic $values()[Lcom/gmodvr/flat/WorkshopQueue$Installed;
    .registers 3

    .line 32
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Installed;->MISSING:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    sget-object v1, Lcom/gmodvr/flat/WorkshopQueue$Installed;->OUTDATED:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    sget-object v2, Lcom/gmodvr/flat/WorkshopQueue$Installed;->CURRENT:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    filled-new-array {v0, v1, v2}, [Lcom/gmodvr/flat/WorkshopQueue$Installed;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 32
    new-instance v0, Lcom/gmodvr/flat/WorkshopQueue$Installed;

    const-string v1, "MISSING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/WorkshopQueue$Installed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/WorkshopQueue$Installed;->MISSING:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    new-instance v0, Lcom/gmodvr/flat/WorkshopQueue$Installed;

    const-string v1, "OUTDATED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/WorkshopQueue$Installed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/WorkshopQueue$Installed;->OUTDATED:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    new-instance v0, Lcom/gmodvr/flat/WorkshopQueue$Installed;

    const-string v1, "CURRENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/WorkshopQueue$Installed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/WorkshopQueue$Installed;->CURRENT:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    invoke-static {}, Lcom/gmodvr/flat/WorkshopQueue$Installed;->$values()[Lcom/gmodvr/flat/WorkshopQueue$Installed;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/WorkshopQueue$Installed;->$VALUES:[Lcom/gmodvr/flat/WorkshopQueue$Installed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gmodvr/flat/WorkshopQueue$Installed;
    .registers 2

    .line 32
    const-class v0, Lcom/gmodvr/flat/WorkshopQueue$Installed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gmodvr/flat/WorkshopQueue$Installed;

    return-object p0
.end method

.method public static values()[Lcom/gmodvr/flat/WorkshopQueue$Installed;
    .registers 1

    .line 32
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Installed;->$VALUES:[Lcom/gmodvr/flat/WorkshopQueue$Installed;

    invoke-virtual {v0}, [Lcom/gmodvr/flat/WorkshopQueue$Installed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gmodvr/flat/WorkshopQueue$Installed;

    return-object v0
.end method

###### Class com.gmodvr.flat.WorkshopQueue.Kind (com.gmodvr.flat.WorkshopQueue$Kind)
.class final enum Lcom/gmodvr/flat/WorkshopQueue$Kind;
.super Ljava/lang/Enum;
.source "WorkshopQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gmodvr/flat/WorkshopQueue$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gmodvr/flat/WorkshopQueue$Kind;

.field public static final enum ADDON:Lcom/gmodvr/flat/WorkshopQueue$Kind;

.field public static final enum NOT_CONTENT:Lcom/gmodvr/flat/WorkshopQueue$Kind;

.field public static final enum OTHER_GAME:Lcom/gmodvr/flat/WorkshopQueue$Kind;

.field public static final enum UNAVAILABLE:Lcom/gmodvr/flat/WorkshopQueue$Kind;


# direct methods
.method private static synthetic $values()[Lcom/gmodvr/flat/WorkshopQueue$Kind;
    .registers 4

    .line 28
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Kind;->ADDON:Lcom/gmodvr/flat/WorkshopQueue$Kind;

    sget-object v1, Lcom/gmodvr/flat/WorkshopQueue$Kind;->UNAVAILABLE:Lcom/gmodvr/flat/WorkshopQueue$Kind;

    sget-object v2, Lcom/gmodvr/flat/WorkshopQueue$Kind;->OTHER_GAME:Lcom/gmodvr/flat/WorkshopQueue$Kind;

    sget-object v3, Lcom/gmodvr/flat/WorkshopQueue$Kind;->NOT_CONTENT:Lcom/gmodvr/flat/WorkshopQueue$Kind;

    filled-new-array {v0, v1, v2, v3}, [Lcom/gmodvr/flat/WorkshopQueue$Kind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 28
    new-instance v0, Lcom/gmodvr/flat/WorkshopQueue$Kind;

    const-string v1, "ADDON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/WorkshopQueue$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/WorkshopQueue$Kind;->ADDON:Lcom/gmodvr/flat/WorkshopQueue$Kind;

    new-instance v0, Lcom/gmodvr/flat/WorkshopQueue$Kind;

    const-string v1, "UNAVAILABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/WorkshopQueue$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/WorkshopQueue$Kind;->UNAVAILABLE:Lcom/gmodvr/flat/WorkshopQueue$Kind;

    new-instance v0, Lcom/gmodvr/flat/WorkshopQueue$Kind;

    const-string v1, "OTHER_GAME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/WorkshopQueue$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/WorkshopQueue$Kind;->OTHER_GAME:Lcom/gmodvr/flat/WorkshopQueue$Kind;

    new-instance v0, Lcom/gmodvr/flat/WorkshopQueue$Kind;

    const-string v1, "NOT_CONTENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/WorkshopQueue$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/WorkshopQueue$Kind;->NOT_CONTENT:Lcom/gmodvr/flat/WorkshopQueue$Kind;

    invoke-static {}, Lcom/gmodvr/flat/WorkshopQueue$Kind;->$values()[Lcom/gmodvr/flat/WorkshopQueue$Kind;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/WorkshopQueue$Kind;->$VALUES:[Lcom/gmodvr/flat/WorkshopQueue$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gmodvr/flat/WorkshopQueue$Kind;
    .registers 2

    .line 28
    const-class v0, Lcom/gmodvr/flat/WorkshopQueue$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gmodvr/flat/WorkshopQueue$Kind;

    return-object p0
.end method

.method public static values()[Lcom/gmodvr/flat/WorkshopQueue$Kind;
    .registers 1

    .line 28
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Kind;->$VALUES:[Lcom/gmodvr/flat/WorkshopQueue$Kind;

    invoke-virtual {v0}, [Lcom/gmodvr/flat/WorkshopQueue$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gmodvr/flat/WorkshopQueue$Kind;

    return-object v0
.end method

###### Class com.gmodvr.flat.WorkshopQueue.Mode (com.gmodvr.flat.WorkshopQueue$Mode)
.class final enum Lcom/gmodvr/flat/WorkshopQueue$Mode;
.super Ljava/lang/Enum;
.source "WorkshopQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gmodvr/flat/WorkshopQueue$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gmodvr/flat/WorkshopQueue$Mode;

.field public static final enum ALL:Lcom/gmodvr/flat/WorkshopQueue$Mode;

.field public static final enum MISSING:Lcom/gmodvr/flat/WorkshopQueue$Mode;


# direct methods
.method private static synthetic $values()[Lcom/gmodvr/flat/WorkshopQueue$Mode;
    .registers 2

    .line 33
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Mode;->MISSING:Lcom/gmodvr/flat/WorkshopQueue$Mode;

    sget-object v1, Lcom/gmodvr/flat/WorkshopQueue$Mode;->ALL:Lcom/gmodvr/flat/WorkshopQueue$Mode;

    filled-new-array {v0, v1}, [Lcom/gmodvr/flat/WorkshopQueue$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 33
    new-instance v0, Lcom/gmodvr/flat/WorkshopQueue$Mode;

    const-string v1, "MISSING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/WorkshopQueue$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/WorkshopQueue$Mode;->MISSING:Lcom/gmodvr/flat/WorkshopQueue$Mode;

    new-instance v0, Lcom/gmodvr/flat/WorkshopQueue$Mode;

    const-string v1, "ALL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/WorkshopQueue$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/WorkshopQueue$Mode;->ALL:Lcom/gmodvr/flat/WorkshopQueue$Mode;

    invoke-static {}, Lcom/gmodvr/flat/WorkshopQueue$Mode;->$values()[Lcom/gmodvr/flat/WorkshopQueue$Mode;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/WorkshopQueue$Mode;->$VALUES:[Lcom/gmodvr/flat/WorkshopQueue$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gmodvr/flat/WorkshopQueue$Mode;
    .registers 2

    .line 33
    const-class v0, Lcom/gmodvr/flat/WorkshopQueue$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gmodvr/flat/WorkshopQueue$Mode;

    return-object p0
.end method

.method public static values()[Lcom/gmodvr/flat/WorkshopQueue$Mode;
    .registers 1

    .line 33
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Mode;->$VALUES:[Lcom/gmodvr/flat/WorkshopQueue$Mode;

    invoke-virtual {v0}, [Lcom/gmodvr/flat/WorkshopQueue$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gmodvr/flat/WorkshopQueue$Mode;

    return-object v0
.end method

###### Class com.gmodvr.flat.WorkshopQueue.Phase (com.gmodvr.flat.WorkshopQueue$Phase)
.class final enum Lcom/gmodvr/flat/WorkshopQueue$Phase;
.super Ljava/lang/Enum;
.source "WorkshopQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Phase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gmodvr/flat/WorkshopQueue$Phase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gmodvr/flat/WorkshopQueue$Phase;

.field public static final enum DOWNLOADING:Lcom/gmodvr/flat/WorkshopQueue$Phase;

.field public static final enum FINISHED:Lcom/gmodvr/flat/WorkshopQueue$Phase;

.field public static final enum REVIEW:Lcom/gmodvr/flat/WorkshopQueue$Phase;


# direct methods
.method private static synthetic $values()[Lcom/gmodvr/flat/WorkshopQueue$Phase;
    .registers 3

    .line 31
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Phase;->REVIEW:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    sget-object v1, Lcom/gmodvr/flat/WorkshopQueue$Phase;->DOWNLOADING:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    sget-object v2, Lcom/gmodvr/flat/WorkshopQueue$Phase;->FINISHED:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    filled-new-array {v0, v1, v2}, [Lcom/gmodvr/flat/WorkshopQueue$Phase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 31
    new-instance v0, Lcom/gmodvr/flat/WorkshopQueue$Phase;

    const-string v1, "REVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/WorkshopQueue$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/WorkshopQueue$Phase;->REVIEW:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    new-instance v0, Lcom/gmodvr/flat/WorkshopQueue$Phase;

    const-string v1, "DOWNLOADING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/WorkshopQueue$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/WorkshopQueue$Phase;->DOWNLOADING:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    new-instance v0, Lcom/gmodvr/flat/WorkshopQueue$Phase;

    const-string v1, "FINISHED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/WorkshopQueue$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/WorkshopQueue$Phase;->FINISHED:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    invoke-static {}, Lcom/gmodvr/flat/WorkshopQueue$Phase;->$values()[Lcom/gmodvr/flat/WorkshopQueue$Phase;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/WorkshopQueue$Phase;->$VALUES:[Lcom/gmodvr/flat/WorkshopQueue$Phase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gmodvr/flat/WorkshopQueue$Phase;
    .registers 2

    .line 31
    const-class v0, Lcom/gmodvr/flat/WorkshopQueue$Phase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gmodvr/flat/WorkshopQueue$Phase;

    return-object p0
.end method

.method public static values()[Lcom/gmodvr/flat/WorkshopQueue$Phase;
    .registers 1

    .line 31
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Phase;->$VALUES:[Lcom/gmodvr/flat/WorkshopQueue$Phase;

    invoke-virtual {v0}, [Lcom/gmodvr/flat/WorkshopQueue$Phase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gmodvr/flat/WorkshopQueue$Phase;

    return-object v0
.end method

###### Class com.gmodvr.flat.WorkshopQueue.Status (com.gmodvr.flat.WorkshopQueue$Status)
.class final enum Lcom/gmodvr/flat/WorkshopQueue$Status;
.super Ljava/lang/Enum;
.source "WorkshopQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gmodvr/flat/WorkshopQueue$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gmodvr/flat/WorkshopQueue$Status;

.field public static final enum CURRENT:Lcom/gmodvr/flat/WorkshopQueue$Status;

.field public static final enum DONE:Lcom/gmodvr/flat/WorkshopQueue$Status;

.field public static final enum FAILED:Lcom/gmodvr/flat/WorkshopQueue$Status;

.field public static final enum PENDING:Lcom/gmodvr/flat/WorkshopQueue$Status;


# direct methods
.method private static synthetic $values()[Lcom/gmodvr/flat/WorkshopQueue$Status;
    .registers 4

    .line 30
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Status;->PENDING:Lcom/gmodvr/flat/WorkshopQueue$Status;

    sget-object v1, Lcom/gmodvr/flat/WorkshopQueue$Status;->DONE:Lcom/gmodvr/flat/WorkshopQueue$Status;

    sget-object v2, Lcom/gmodvr/flat/WorkshopQueue$Status;->CURRENT:Lcom/gmodvr/flat/WorkshopQueue$Status;

    sget-object v3, Lcom/gmodvr/flat/WorkshopQueue$Status;->FAILED:Lcom/gmodvr/flat/WorkshopQueue$Status;

    filled-new-array {v0, v1, v2, v3}, [Lcom/gmodvr/flat/WorkshopQueue$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 30
    new-instance v0, Lcom/gmodvr/flat/WorkshopQueue$Status;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/WorkshopQueue$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/WorkshopQueue$Status;->PENDING:Lcom/gmodvr/flat/WorkshopQueue$Status;

    new-instance v0, Lcom/gmodvr/flat/WorkshopQueue$Status;

    const-string v1, "DONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/WorkshopQueue$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/WorkshopQueue$Status;->DONE:Lcom/gmodvr/flat/WorkshopQueue$Status;

    new-instance v0, Lcom/gmodvr/flat/WorkshopQueue$Status;

    const-string v1, "CURRENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/WorkshopQueue$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/WorkshopQueue$Status;->CURRENT:Lcom/gmodvr/flat/WorkshopQueue$Status;

    new-instance v0, Lcom/gmodvr/flat/WorkshopQueue$Status;

    const-string v1, "FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/WorkshopQueue$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/WorkshopQueue$Status;->FAILED:Lcom/gmodvr/flat/WorkshopQueue$Status;

    invoke-static {}, Lcom/gmodvr/flat/WorkshopQueue$Status;->$values()[Lcom/gmodvr/flat/WorkshopQueue$Status;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/WorkshopQueue$Status;->$VALUES:[Lcom/gmodvr/flat/WorkshopQueue$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gmodvr/flat/WorkshopQueue$Status;
    .registers 2

    .line 30
    const-class v0, Lcom/gmodvr/flat/WorkshopQueue$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gmodvr/flat/WorkshopQueue$Status;

    return-object p0
.end method

.method public static values()[Lcom/gmodvr/flat/WorkshopQueue$Status;
    .registers 1

    .line 30
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Status;->$VALUES:[Lcom/gmodvr/flat/WorkshopQueue$Status;

    invoke-virtual {v0}, [Lcom/gmodvr/flat/WorkshopQueue$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gmodvr/flat/WorkshopQueue$Status;

    return-object v0
.end method

###### Class com.gmodvr.flat.WorkshopQueue.Steps (com.gmodvr.flat.WorkshopQueue$Steps)
.class interface abstract Lcom/gmodvr/flat/WorkshopQueue$Steps;
.super Ljava/lang/Object;
.source "WorkshopQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Steps"
.end annotation


# virtual methods
.method public abstract check()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract cleanup(Lcom/gmodvr/flat/WorkshopQueue$Entry;)V
.end method

.method public abstract install(Lcom/gmodvr/flat/WorkshopQueue$Entry;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract installed()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "[J>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract keep(Lcom/gmodvr/flat/WorkshopQueue$Entry;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract starting(Lcom/gmodvr/flat/WorkshopQueue$Entry;II)V
.end method

.method public abstract usableSpace()J
.end method

###### Class com.gmodvr.flat.WorkshopQueue.Summary (com.gmodvr.flat.WorkshopQueue$Summary)
.class final Lcom/gmodvr/flat/WorkshopQueue$Summary;
.super Ljava/lang/Object;
.source "WorkshopQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Summary"
.end annotation


# instance fields
.field addons:I

.field current:I

.field done:I

.field failed:I

.field linkedAddons:I

.field linkedBytes:J

.field linkedCollections:I

.field missing:I

.field neededBytes:J

.field notContent:I

.field otherGame:I

.field outdated:I

.field remaining:I

.field selected:I

.field selectedBytes:J

.field skipped:I

.field totalBytes:J

.field unavailable:I

.field updateBytes:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
