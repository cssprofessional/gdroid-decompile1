###### Class com.gmodvr.flat.WorkshopJoinSync (com.gmodvr.flat.WorkshopJoinSync)
.class final Lcom/gmodvr/flat/WorkshopJoinSync;
.super Ljava/lang/Object;
.source "WorkshopJoinSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;,
        Lcom/gmodvr/flat/WorkshopJoinSync$Backend;,
        Lcom/gmodvr/flat/WorkshopJoinSync$Progress;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$3-t3vq2IGq_fQWk_XBXpg5-eT1A(Lcom/gmodvr/flat/WorkshopJoinSync$Backend;Lcom/gmodvr/flat/WorkshopJoinSync$Progress;ILcom/gmodvr/flat/WorkshopQueue;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 10

    .line 0
    invoke-static/range {p0 .. p9}, Lcom/gmodvr/flat/WorkshopJoinSync;->lambda$run$1(Lcom/gmodvr/flat/WorkshopJoinSync$Backend;Lcom/gmodvr/flat/WorkshopJoinSync$Progress;ILcom/gmodvr/flat/WorkshopQueue;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$5HyFIDTXEhi7CCs6zKh3kEoU3m0(Lcom/gmodvr/flat/WorkshopJoinSync$Progress;I)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/WorkshopJoinSync;->lambda$run$0(Lcom/gmodvr/flat/WorkshopJoinSync$Progress;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MKEn_viTymMxyf6r4QL0BbbK2MY(Lcom/gmodvr/flat/WorkshopQueue$Entry;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/WorkshopJoinSync;->lambda$run$2(Lcom/gmodvr/flat/WorkshopQueue$Entry;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Txj29SRTOL_Ahs-n1c5JOva8QzU()Ljava/io/IOException;
    .registers 1

    .line 0
    invoke-static {}, Lcom/gmodvr/flat/WorkshopJoinSync;->lambda$run$3()Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$gZ4hO4Aic2CP7BmiRPGzOPcGEh0(Lcom/gmodvr/flat/WorkshopJoinSync$Progress;Ljava/util/Set;Ljava/util/List;Ljava/util/Deque;Lcom/gmodvr/flat/GmodAddons$Addon;Ljava/lang/String;JJ)V
    .registers 10

    .line 0
    invoke-static/range {p0 .. p9}, Lcom/gmodvr/flat/WorkshopJoinSync;->lambda$useInstalled$4(Lcom/gmodvr/flat/WorkshopJoinSync$Progress;Ljava/util/Set;Ljava/util/List;Ljava/util/Deque;Lcom/gmodvr/flat/GmodAddons$Addon;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smmatches(Lcom/gmodvr/flat/GmodAddons$Addon;JJ)Z
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/WorkshopJoinSync;->matches(Lcom/gmodvr/flat/GmodAddons$Addon;JJ)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$run$0(Lcom/gmodvr/flat/WorkshopJoinSync$Progress;I)V
    .registers 12

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking Workshop dependencies ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " items)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move v4, p1

    invoke-interface/range {v2 .. v9}, Lcom/gmodvr/flat/WorkshopJoinSync$Progress;->status(IILjava/lang/String;JJ)V

    return-void
.end method

.method private static synthetic lambda$run$1(Lcom/gmodvr/flat/WorkshopJoinSync$Backend;Lcom/gmodvr/flat/WorkshopJoinSync$Progress;ILcom/gmodvr/flat/WorkshopQueue;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    invoke-interface {p0}, Lcom/gmodvr/flat/WorkshopCollection$Fetch;->check()V

    move-object v0, p3

    .line 92
    iget-object v0, v0, Lcom/gmodvr/flat/WorkshopQueue;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verifying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move v2, p2

    move-wide v5, p6

    move-wide/from16 v7, p8

    invoke-interface/range {v1 .. v8}, Lcom/gmodvr/flat/WorkshopJoinSync$Progress;->status(IILjava/lang/String;JJ)V

    return-void
.end method

.method private static synthetic lambda$run$2(Lcom/gmodvr/flat/WorkshopQueue$Entry;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;)Z
    .registers 4

    .line 116
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getPublishedfileid()J

    move-result-wide v0

    iget-wide p0, p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private static synthetic lambda$run$3()Ljava/io/IOException;
    .registers 2

    .line 117
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Steam returned no details"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$useInstalled$4(Lcom/gmodvr/flat/WorkshopJoinSync$Progress;Ljava/util/Set;Ljava/util/List;Ljava/util/Deque;Lcom/gmodvr/flat/GmodAddons$Addon;Ljava/lang/String;JJ)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 208
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p3}, Ljava/util/Deque;->size()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verifying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/gmodvr/flat/GmodAddons$Addon;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 207
    invoke-interface/range {v1 .. v8}, Lcom/gmodvr/flat/WorkshopJoinSync$Progress;->status(IILjava/lang/String;JJ)V

    return-void
.end method

.method private static matches(Lcom/gmodvr/flat/GmodAddons$Addon;JJ)Z
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_24

    .line 185
    iget-object v2, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->meta:Lorg/json/JSONObject;

    const-string v3, "time"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long p1, v2, p1

    if-nez p1, :cond_24

    cmp-long p1, p3, v0

    if-eqz p1, :cond_22

    iget-object p0, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->meta:Lorg/json/JSONObject;

    const-string p1, "gma_crc"

    .line 186
    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p0

    cmp-long p0, p0, p3

    if-nez p0, :cond_24

    :cond_22
    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-nez p0, :cond_9

    .line 27
    const-string p0, ""

    :cond_9
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v1, :cond_9a

    aget-object v4, p0, v3

    .line 28
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 29
    array-length v5, v4

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v5, v7, :cond_2b

    array-length v5, v4

    if-eq v5, v6, :cond_2b

    goto/16 :goto_96

    .line 31
    :cond_2b
    :try_start_2b
    aget-object v5, v4, v2

    const-string v8, "[0-9]{1,20}"

    invoke-virtual {v5, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_36

    goto :goto_96

    .line 32
    :cond_36
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 33
    array-length v5, v4

    const-wide/16 v11, 0x0

    if-ne v5, v6, :cond_49

    aget-object v5, v4, v7

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    move-wide v13, v7

    goto :goto_4a

    :cond_49
    move-wide v13, v11

    .line 34
    :goto_4a
    array-length v5, v4

    if-ne v5, v6, :cond_55

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_56

    :cond_55
    move-wide v4, v11

    :goto_56
    cmp-long v6, v9, v11

    if-eqz v6, :cond_96

    cmp-long v6, v13, v11

    if-ltz v6, :cond_96

    const-wide v6, 0xffffffffL

    cmp-long v8, v13, v6

    if-gtz v8, :cond_96

    cmp-long v8, v4, v11

    if-ltz v8, :cond_96

    cmp-long v6, v4, v6

    if-lez v6, :cond_70

    goto :goto_96

    .line 36
    :cond_70
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    const/16 v7, 0x2710

    if-lt v6, v7, :cond_87

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_87

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 37
    :cond_87
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v7, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;

    move-object v8, v7

    move-wide v11, v13

    move-wide v13, v4

    invoke-direct/range {v8 .. v14}, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;-><init>(JJJ)V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_96
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_96} :catch_96

    :catch_96
    :cond_96
    :goto_96
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_12

    .line 40
    :cond_9a
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method private static pinnedGraph(Ljava/util/Map;Ljava/util/Map;Lcom/gmodvr/flat/WorkshopJoinSync$Backend;)Lcom/gmodvr/flat/WorkshopCollection$Fetch;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/gmodvr/flat/GmodAddons$Addon;",
            ">;",
            "Lcom/gmodvr/flat/WorkshopJoinSync$Backend;",
            ")",
            "Lcom/gmodvr/flat/WorkshopCollection$Fetch;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 142
    new-instance v1, Lcom/gmodvr/flat/WorkshopJoinSync$2;

    invoke-direct {v1, p2, p0, p1, v0}, Lcom/gmodvr/flat/WorkshopJoinSync$2;-><init>(Lcom/gmodvr/flat/WorkshopJoinSync$Backend;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)V

    return-object v1
.end method

.method public static run(Ljava/io/File;Ljava/util/List;Lcom/gmodvr/flat/WorkshopJoinSync$Backend;Lcom/gmodvr/flat/WorkshopJoinSync$Progress;)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;",
            ">;",
            "Lcom/gmodvr/flat/WorkshopJoinSync$Backend;",
            "Lcom/gmodvr/flat/WorkshopJoinSync$Progress;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v7, p2

    move-object/from16 v6, p3

    .line 44
    const-string v5, "workshop.json"

    const-string v4, "required"

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 45
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;

    iget-wide v8, v1, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 46
    :cond_27
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 47
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/GmodAddons;->list(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/GmodAddons$Addon;

    iget-object v8, v1, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 50
    :cond_4e
    invoke-static {v3, v2, v7}, Lcom/gmodvr/flat/WorkshopJoinSync;->pinnedGraph(Ljava/util/Map;Ljava/util/Map;Lcom/gmodvr/flat/WorkshopJoinSync$Backend;)Lcom/gmodvr/flat/WorkshopCollection$Fetch;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 52
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 53
    new-instance v8, Lcom/gmodvr/flat/WorkshopJoinSync$1;

    invoke-direct {v8, v7, v0, v14, v1}, Lcom/gmodvr/flat/WorkshopJoinSync$1;-><init>(Lcom/gmodvr/flat/WorkshopJoinSync$Backend;Lcom/gmodvr/flat/WorkshopCollection$Fetch;Ljava/util/Map;Ljava/util/Set;)V

    .line 66
    new-instance v0, Lcom/gmodvr/flat/WorkshopCollection;

    sget-object v9, Lcom/gmodvr/flat/GameContentProfile;->GARRYSMOD:Lcom/gmodvr/flat/GameContentProfile;

    new-instance v10, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda0;-><init>()V

    new-instance v11, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda0;

    invoke-direct {v11, v6}, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda0;-><init>(Lcom/gmodvr/flat/WorkshopJoinSync$Progress;)V

    invoke-direct {v0, v9, v8, v10, v11}, Lcom/gmodvr/flat/WorkshopCollection;-><init>(Lcom/gmodvr/flat/GameContentProfile;Lcom/gmodvr/flat/WorkshopCollection$Fetch;Lcom/gmodvr/flat/WorkshopCollection$Sleep;Lcom/gmodvr/flat/WorkshopCollection$Progress;)V

    new-instance v8, Ljava/util/ArrayList;

    .line 68
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v9, "join"

    invoke-virtual {v0, v8, v9}, Lcom/gmodvr/flat/WorkshopCollection;->resolveRequired(Ljava/util/List;Ljava/lang/String;)Lcom/gmodvr/flat/WorkshopQueue;

    move-result-object v15

    .line 70
    iget-object v0, v15, Lcom/gmodvr/flat/WorkshopQueue;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/4 v12, 0x0

    move v0, v12

    :goto_89
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3a6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    .line 71
    invoke-interface/range {p2 .. p2}, Lcom/gmodvr/flat/WorkshopCollection$Fetch;->check()V

    const/4 v11, 0x1

    add-int/lit8 v17, v0, 0x1

    .line 73
    invoke-virtual {v13}, Lcom/gmodvr/flat/WorkshopQueue$Entry;->name()Ljava/lang/String;

    move-result-object v0

    iget-wide v8, v13, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v10

    .line 74
    iget-object v8, v15, Lcom/gmodvr/flat/WorkshopQueue;->entries:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checking "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v8, p3

    move/from16 v9, v17

    move-object/from16 v24, v10

    move/from16 v10, v18

    move-object/from16 v11, v19

    move-object v7, v13

    move-wide/from16 v12, v20

    move-object/from16 v25, v14

    move-object/from16 v19, v15

    move-wide/from16 v14, v22

    invoke-interface/range {v8 .. v15}, Lcom/gmodvr/flat/WorkshopJoinSync$Progress;->status(IILjava/lang/String;JJ)V

    .line 76
    :try_start_d7
    iget-wide v8, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-instance v14, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;

    iget-wide v10, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J
    :try_end_e1
    .catch Ljava/lang/InterruptedException; {:try_start_d7 .. :try_end_e1} :catch_143
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_e1} :catch_36d

    const-wide/16 v12, 0x0

    const-wide/16 v20, 0x0

    move-object v9, v14

    move-object/from16 v22, v4

    move-object v4, v14

    move-wide/from16 v14, v20

    :try_start_eb
    invoke-direct/range {v9 .. v15}, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;-><init>(JJJ)V

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;

    .line 77
    invoke-virtual {v7}, Lcom/gmodvr/flat/WorkshopQueue$Entry;->downloadable()Z

    move-result v4
    :try_end_f9
    .catch Ljava/lang/InterruptedException; {:try_start_eb .. :try_end_f9} :catch_143
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_f9} :catch_35f

    const-wide/16 v9, 0x0

    if-nez v4, :cond_154

    .line 81
    :try_start_fd
    iget-wide v11, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14a

    iget-wide v11, v8, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;->time:J

    cmp-long v0, v11, v9

    if-nez v0, :cond_14a

    iget-wide v11, v8, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;->crc:J

    cmp-long v0, v11, v9

    if-nez v0, :cond_14a

    iget-wide v8, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    .line 82
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14a

    .line 83
    iget-object v0, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->note:Ljava/lang/String;
    :try_end_123
    .catch Ljava/lang/InterruptedException; {:try_start_fd .. :try_end_123} :catch_143
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_123} :catch_146

    move-object/from16 v11, v24

    :try_start_125
    invoke-interface {v6, v11, v0}, Lcom/gmodvr/flat/WorkshopJoinSync$Progress;->skipped(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v20, v1

    move-object v4, v2

    move-object/from16 v21, v3

    move-object v10, v5

    move-object v2, v6

    move-object/from16 v9, v22

    :goto_131
    move-object/from16 v1, p2

    goto/16 :goto_393

    :catch_135
    move-exception v0

    :goto_136
    move-object/from16 v20, v1

    move-object v4, v2

    move-object/from16 v21, v3

    move-object v10, v5

    move-object v2, v6

    move-object/from16 v9, v22

    :goto_13f
    move-object/from16 v1, p2

    goto/16 :goto_37a

    :catch_143
    move-exception v0

    goto/16 :goto_3a5

    :catch_146
    move-exception v0

    move-object/from16 v11, v24

    goto :goto_136

    :cond_14a
    move-object/from16 v11, v24

    .line 86
    new-instance v0, Ljava/io/IOException;

    iget-object v4, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->note:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_154
    move-object/from16 v11, v24

    .line 88
    iget-wide v12, v8, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;->time:J

    cmp-long v4, v12, v9

    if-eqz v4, :cond_15d

    goto :goto_15f

    :cond_15d
    iget-wide v12, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->time:J

    .line 89
    :goto_15f
    iget-wide v14, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/gmodvr/flat/GmodAddons$Addon;

    .line 90
    new-instance v15, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda1;
    :try_end_16e
    .catch Ljava/lang/InterruptedException; {:try_start_125 .. :try_end_16e} :catch_143
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_16e} :catch_135

    move-object/from16 v20, v1

    move-object v1, v15

    move-object v4, v2

    move-object/from16 v2, p2

    move-object/from16 v21, v3

    move-object/from16 v3, p3

    move-object v10, v4

    move-object/from16 v9, v22

    move/from16 v4, v17

    move-object/from16 v22, v10

    move-object v10, v5

    move-object/from16 v5, v19

    move-object v6, v0

    :try_start_183
    invoke-direct/range {v1 .. v6}, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda1;-><init>(Lcom/gmodvr/flat/WorkshopJoinSync$Backend;Lcom/gmodvr/flat/WorkshopJoinSync$Progress;ILcom/gmodvr/flat/WorkshopQueue;Ljava/lang/String;)V
    :try_end_186
    .catch Ljava/lang/InterruptedException; {:try_start_183 .. :try_end_186} :catch_143
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_186} :catch_358

    if-eqz v14, :cond_247

    .line 94
    :try_start_188
    iget-boolean v0, v14, Lcom/gmodvr/flat/GmodAddons$Addon;->conflict:Z

    if-nez v0, :cond_247

    iget-wide v0, v8, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;->crc:J

    invoke-static {v14, v12, v13, v0, v1}, Lcom/gmodvr/flat/WorkshopJoinSync;->matches(Lcom/gmodvr/flat/GmodAddons$Addon;JJ)Z

    move-result v0

    if-eqz v0, :cond_247

    .line 95
    invoke-static {v14, v15}, Lcom/gmodvr/flat/WorkshopIntegrity;->verifyInstalled(Lcom/gmodvr/flat/GmodAddons$Addon;Lcom/gmodvr/flat/WorkshopIntegrity$Progress;)Z

    move-result v0

    if-eqz v0, :cond_247

    .line 96
    iget-wide v0, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_1a0
    .catch Ljava/lang/InterruptedException; {:try_start_188 .. :try_end_1a0} :catch_143
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_1a0} :catch_240

    move-object/from16 v1, v25

    :try_start_1a2
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;

    .line 97
    iget-object v2, v14, Lcom/gmodvr/flat/GmodAddons$Addon;->meta:Lorg/json/JSONObject;

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2
    :try_end_1ae
    .catch Ljava/lang/InterruptedException; {:try_start_1a2 .. :try_end_1ae} :catch_143
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1ae} :catch_23b

    if-nez v2, :cond_22e

    if-eqz v0, :cond_22e

    .line 98
    :try_start_1b2
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getTimeUpdated()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v2

    cmp-long v2, v2, v12

    if-nez v2, :cond_22e

    .line 99
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 100
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getChildrenList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1cb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_1cf
    .catch Ljava/lang/InterruptedException; {:try_start_1b2 .. :try_end_1cf} :catch_143
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_1cf} :catch_22b

    if-eqz v3, :cond_1ec

    :try_start_1d1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Child;

    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Child;->getPublishedfileid()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1e2
    .catch Ljava/lang/InterruptedException; {:try_start_1d1 .. :try_end_1e2} :catch_143
    .catch Ljava/lang/Exception; {:try_start_1d1 .. :try_end_1e2} :catch_1e3

    goto :goto_1cb

    :catch_1e3
    move-exception v0

    :goto_1e4
    move-object/from16 v2, p3

    :goto_1e6
    move-object/from16 v25, v1

    :goto_1e8
    move-object/from16 v4, v22

    goto/16 :goto_13f

    .line 101
    :cond_1ec
    :try_start_1ec
    iget-object v0, v14, Lcom/gmodvr/flat/GmodAddons$Addon;->meta:Lorg/json/JSONObject;

    invoke-virtual {v0, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    iget-object v0, v14, Lcom/gmodvr/flat/GmodAddons$Addon;->folder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    const-string v2, ".gmodvr-meta-"
    :try_end_201
    .catch Ljava/lang/InterruptedException; {:try_start_1ec .. :try_end_201} :catch_143
    .catch Ljava/lang/Exception; {:try_start_1ec .. :try_end_201} :catch_22b

    const/4 v3, 0x0

    :try_start_202
    new-array v4, v3, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v2, v4}, Ljava/nio/file/Files;->createTempDirectory(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2
    :try_end_20c
    .catch Ljava/lang/InterruptedException; {:try_start_202 .. :try_end_20c} :catch_143
    .catch Ljava/lang/Exception; {:try_start_202 .. :try_end_20c} :catch_1e3

    .line 105
    :try_start_20c
    iget-object v0, v14, Lcom/gmodvr/flat/GmodAddons$Addon;->meta:Lorg/json/JSONObject;

    invoke-static {v2, v0}, Lcom/gmodvr/flat/GmodAddons;->writeMeta(Ljava/io/File;Lorg/json/JSONObject;)V

    .line 106
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    iget-object v5, v14, Lcom/gmodvr/flat/GmodAddons$Addon;->folder:Ljava/io/File;

    invoke-direct {v4, v5, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/gmodvr/flat/SteamFiles;->move(Ljava/io/File;Ljava/io/File;)V
    :try_end_220
    .catchall {:try_start_20c .. :try_end_220} :catchall_226

    .line 107
    :try_start_220
    invoke-static {v2}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V

    :goto_223
    move-object/from16 v2, p3

    goto :goto_230

    :catchall_226
    move-exception v0

    invoke-static {v2}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V

    throw v0
    :try_end_22b
    .catch Ljava/lang/InterruptedException; {:try_start_220 .. :try_end_22b} :catch_143
    .catch Ljava/lang/Exception; {:try_start_220 .. :try_end_22b} :catch_1e3

    :catch_22b
    move-exception v0

    const/4 v3, 0x0

    goto :goto_1e4

    :cond_22e
    const/4 v3, 0x0

    goto :goto_223

    .line 109
    :goto_230
    :try_start_230
    invoke-interface {v2, v11}, Lcom/gmodvr/flat/WorkshopJoinSync$Progress;->ready(Ljava/lang/String;)V

    move-object/from16 v25, v1

    move-object/from16 v4, v22

    goto/16 :goto_131

    :catch_239
    move-exception v0

    goto :goto_1e6

    :catch_23b
    move-exception v0

    move-object/from16 v2, p3

    const/4 v3, 0x0

    goto :goto_1e6

    :catch_240
    move-exception v0

    move-object/from16 v2, p3

    move-object/from16 v1, v25

    const/4 v3, 0x0

    goto :goto_1e8

    :cond_247
    move-object/from16 v2, p3

    move-object/from16 v1, v25

    const/4 v3, 0x0

    .line 113
    iget-wide v4, v8, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;->time:J
    :try_end_24e
    .catch Ljava/lang/InterruptedException; {:try_start_230 .. :try_end_24e} :catch_143
    .catch Ljava/lang/Exception; {:try_start_230 .. :try_end_24e} :catch_239

    const-wide/16 v23, 0x0

    cmp-long v0, v4, v23

    const-string v6, "Server uses a different Workshop version; update the server\'s addon "

    if-eqz v0, :cond_27b

    move-object/from16 v25, v1

    :try_start_258
    iget-wide v0, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->time:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_25f

    goto :goto_27d

    .line 114
    :cond_25f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_274
    move-exception v0

    move-object/from16 v1, p2

    :goto_277
    move-object/from16 v4, v22

    goto/16 :goto_37a

    :cond_27b
    move-object/from16 v25, v1

    .line 115
    :goto_27d
    iget-wide v0, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_287
    .catch Ljava/lang/InterruptedException; {:try_start_258 .. :try_end_287} :catch_143
    .catch Ljava/lang/Exception; {:try_start_258 .. :try_end_287} :catch_274

    move-object/from16 v1, p2

    :try_start_289
    invoke-interface {v1, v0}, Lcom/gmodvr/flat/WorkshopCollection$Fetch;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda2;

    invoke-direct {v4, v7}, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda2;-><init>(Lcom/gmodvr/flat/WorkshopQueue$Entry;)V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v4, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda3;-><init>()V

    .line 117
    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;

    .line 118
    iget-wide v4, v8, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;->time:J

    const-wide/16 v23, 0x0

    cmp-long v4, v4, v23

    if-eqz v4, :cond_2de

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getResult()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2df

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getTimeUpdated()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v23

    iget-wide v3, v8, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;->time:J

    cmp-long v3, v23, v3

    if-nez v3, :cond_2c7

    goto :goto_2df

    .line 119
    :cond_2c7
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2dc
    move-exception v0

    goto :goto_277

    :cond_2de
    const/4 v5, 0x1

    .line 120
    :cond_2df
    :goto_2df
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getResult()I

    move-result v3

    if-ne v3, v5, :cond_34e

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getConsumerAppid()I

    move-result v3

    const/16 v4, 0xfa0

    if-ne v3, v4, :cond_34e

    .line 121
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getTimeUpdated()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    cmp-long v3, v3, v12

    if-nez v3, :cond_34e

    .line 123
    iget-wide v3, v8, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;->crc:J

    invoke-interface {v1, v0, v3, v4, v15}, Lcom/gmodvr/flat/WorkshopJoinSync$Backend;->install(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;JLcom/gmodvr/flat/WorkshopIntegrity$Progress;)V

    .line 125
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/GmodAddons;->list(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_307
    :goto_307
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gmodvr/flat/GmodAddons$Addon;

    iget-object v5, v4, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_307

    move-object v3, v4

    goto :goto_307

    :cond_31d
    if-eqz v3, :cond_344

    .line 126
    iget-boolean v0, v3, Lcom/gmodvr/flat/GmodAddons$Addon;->conflict:Z

    if-nez v0, :cond_344

    iget-wide v4, v8, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;->crc:J

    invoke-static {v3, v12, v13, v4, v5}, Lcom/gmodvr/flat/WorkshopJoinSync;->matches(Lcom/gmodvr/flat/GmodAddons$Addon;JJ)Z

    move-result v0

    if-eqz v0, :cond_344

    iget-object v0, v3, Lcom/gmodvr/flat/GmodAddons$Addon;->folder:Ljava/io/File;

    .line 127
    invoke-static {v0, v15}, Lcom/gmodvr/flat/WorkshopIntegrity;->verify(Ljava/io/File;Lcom/gmodvr/flat/WorkshopIntegrity$Progress;)Z

    move-result v0

    if-eqz v0, :cond_344

    .line 129
    iget-wide v4, v7, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_339
    .catch Ljava/lang/InterruptedException; {:try_start_289 .. :try_end_339} :catch_143
    .catch Ljava/lang/Exception; {:try_start_289 .. :try_end_339} :catch_2dc

    move-object/from16 v4, v22

    :try_start_33b
    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-interface {v2, v11}, Lcom/gmodvr/flat/WorkshopJoinSync$Progress;->ready(Ljava/lang/String;)V

    goto :goto_393

    :catch_342
    move-exception v0

    goto :goto_37a

    :cond_344
    move-object/from16 v4, v22

    .line 128
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Installed addon does not match the required content"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34e
    move-object/from16 v4, v22

    .line 122
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Workshop item changed or became unavailable; reconnect to retry"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_358
    .catch Ljava/lang/InterruptedException; {:try_start_33b .. :try_end_358} :catch_143
    .catch Ljava/lang/Exception; {:try_start_33b .. :try_end_358} :catch_342

    :catch_358
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    goto/16 :goto_277

    :catch_35f
    move-exception v0

    move-object/from16 v20, v1

    move-object v4, v2

    move-object/from16 v21, v3

    move-object v10, v5

    move-object v2, v6

    move-object/from16 v9, v22

    move-object/from16 v11, v24

    goto/16 :goto_13f

    :catch_36d
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move-object v9, v4

    move-object v10, v5

    move-object/from16 v11, v24

    move-object/from16 v1, p2

    move-object v4, v2

    move-object v2, v6

    .line 133
    :goto_37a
    invoke-interface/range {p2 .. p2}, Lcom/gmodvr/flat/WorkshopCollection$Fetch;->check()V

    .line 134
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_38c

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_390

    :cond_38c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_390
    invoke-interface {v2, v11, v0}, Lcom/gmodvr/flat/WorkshopJoinSync$Progress;->failed(Ljava/lang/String;Ljava/lang/String;)V

    :goto_393
    move-object v7, v1

    move-object v6, v2

    move-object v2, v4

    move-object v4, v9

    move-object v5, v10

    move/from16 v0, v17

    move-object/from16 v15, v19

    move-object/from16 v1, v20

    move-object/from16 v3, v21

    move-object/from16 v14, v25

    const/4 v12, 0x0

    goto/16 :goto_89

    .line 131
    :goto_3a5
    throw v0

    :cond_3a6
    return-void
.end method

.method public static useInstalled(Ljava/io/File;Ljava/util/List;Lcom/gmodvr/flat/WorkshopJoinSync$Progress;)Z
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;",
            ">;",
            "Lcom/gmodvr/flat/WorkshopJoinSync$Progress;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 192
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;

    iget-wide v6, v2, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;->time:J

    cmp-long v3, v6, v3

    if-nez v3, :cond_1f

    return v5

    :cond_1f
    iget-wide v3, v2, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 193
    :cond_29
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 194
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/GmodAddons;->list(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gmodvr/flat/GmodAddons$Addon;

    iget-object v7, v6, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 195
    :cond_50
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 196
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 197
    :goto_67
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_12e

    .line 198
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v8

    if-nez v8, :cond_128

    .line 199
    invoke-interface {v2}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 200
    invoke-interface {v6, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_89

    goto :goto_67

    .line 201
    :cond_89
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v8

    const/16 v13, 0x2710

    if-lt v8, v13, :cond_92

    return v5

    .line 202
    :cond_92
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Lcom/gmodvr/flat/GmodAddons$Addon;

    if-eqz v12, :cond_127

    .line 203
    iget-boolean v8, v12, Lcom/gmodvr/flat/GmodAddons$Addon;->conflict:Z

    if-eqz v8, :cond_a1

    goto/16 :goto_127

    .line 204
    :cond_a1
    new-instance v8, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;

    iget-object v9, v12, Lcom/gmodvr/flat/GmodAddons$Addon;->meta:Lorg/json/JSONObject;

    const-string v10, "time"

    invoke-virtual {v9, v10, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    move-object v15, v8

    invoke-direct/range {v15 .. v21}, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;-><init>(JJJ)V

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;

    .line 205
    iget-object v9, v12, Lcom/gmodvr/flat/GmodAddons$Addon;->meta:Lorg/json/JSONObject;

    const-string v10, "required"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    if-eqz v15, :cond_127

    .line 206
    iget-wide v9, v8, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;->time:J

    iget-wide v3, v8, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;->crc:J

    invoke-static {v12, v9, v10, v3, v4}, Lcom/gmodvr/flat/WorkshopJoinSync;->matches(Lcom/gmodvr/flat/GmodAddons$Addon;JJ)Z

    move-result v3

    if-nez v3, :cond_cc

    goto :goto_127

    .line 207
    :cond_cc
    new-instance v3, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda4;

    move-object v8, v3

    move-object/from16 v9, p2

    move-object v10, v6

    move-object/from16 v11, p1

    move-object v4, v12

    move-object v12, v2

    move-object v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda4;-><init>(Lcom/gmodvr/flat/WorkshopJoinSync$Progress;Ljava/util/Set;Ljava/util/List;Ljava/util/Deque;Lcom/gmodvr/flat/GmodAddons$Addon;)V

    invoke-static {v4, v3}, Lcom/gmodvr/flat/WorkshopIntegrity;->verifyInstalled(Lcom/gmodvr/flat/GmodAddons$Addon;Lcom/gmodvr/flat/WorkshopIntegrity$Progress;)Z

    move-result v3

    if-nez v3, :cond_e1

    return v5

    .line 209
    :cond_e1
    invoke-interface {v6, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v3, v5

    .line 210
    :goto_e5
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_123

    .line 211
    const-string v4, ""

    invoke-virtual {v15, v3, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 212
    const-string v8, "[0-9]{1,20}"

    invoke-virtual {v4, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_fa

    return v5

    .line 213
    :cond_fa
    :try_start_fa
    invoke-static {v4}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-nez v4, :cond_105

    return v5

    :cond_105
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_116

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V
    :try_end_116
    .catch Ljava/lang/NumberFormatException; {:try_start_fa .. :try_end_116} :catch_122

    .line 215
    :cond_116
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v4

    const/16 v8, 0x2710

    if-le v4, v8, :cond_11f

    return v5

    :cond_11f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e5

    :catch_122
    return v5

    :cond_123
    const-wide/16 v3, 0x0

    goto/16 :goto_67

    :cond_127
    :goto_127
    return v5

    .line 198
    :cond_128
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 218
    :cond_12e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_158

    .line 219
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_156

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Lcom/gmodvr/flat/WorkshopJoinSync$Progress;->ready(Ljava/lang/String;)V

    goto :goto_13c

    :cond_156
    const/4 v0, 0x1

    return v0

    .line 218
    :cond_158
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

###### Class com.gmodvr.flat.WorkshopJoinSync.AnonymousClass1 (com.gmodvr.flat.WorkshopJoinSync$1)
.class Lcom/gmodvr/flat/WorkshopJoinSync$1;
.super Ljava/lang/Object;
.source "WorkshopJoinSync.java"

# interfaces
.implements Lcom/gmodvr/flat/WorkshopCollection$Fetch;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gmodvr/flat/WorkshopJoinSync;->run(Ljava/io/File;Ljava/util/List;Lcom/gmodvr/flat/WorkshopJoinSync$Backend;Lcom/gmodvr/flat/WorkshopJoinSync$Progress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$backend:Lcom/gmodvr/flat/WorkshopJoinSync$Backend;

.field final synthetic val$dependencies:Ljava/util/Set;

.field final synthetic val$details:Ljava/util/Map;

.field final synthetic val$installedGraph:Lcom/gmodvr/flat/WorkshopCollection$Fetch;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/WorkshopJoinSync$Backend;Lcom/gmodvr/flat/WorkshopCollection$Fetch;Ljava/util/Map;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopJoinSync$1;->val$backend:Lcom/gmodvr/flat/WorkshopJoinSync$Backend;

    iput-object p2, p0, Lcom/gmodvr/flat/WorkshopJoinSync$1;->val$installedGraph:Lcom/gmodvr/flat/WorkshopCollection$Fetch;

    iput-object p3, p0, Lcom/gmodvr/flat/WorkshopJoinSync$1;->val$details:Ljava/util/Map;

    iput-object p4, p0, Lcom/gmodvr/flat/WorkshopJoinSync$1;->val$dependencies:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopJoinSync$1;->val$backend:Lcom/gmodvr/flat/WorkshopJoinSync$Backend;

    invoke-interface {p0}, Lcom/gmodvr/flat/WorkshopCollection$Fetch;->check()V

    return-void
.end method

.method public get(Ljava/util/List;)Ljava/util/List;
    .registers 8
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

    .line 56
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopJoinSync$1;->val$installedGraph:Lcom/gmodvr/flat/WorkshopCollection$Fetch;

    invoke-interface {v0, p1}, Lcom/gmodvr/flat/WorkshopCollection$Fetch;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;

    .line 58
    iget-object v2, p0, Lcom/gmodvr/flat/WorkshopJoinSync$1;->val$details:Ljava/util/Map;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getPublishedfileid()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getResult()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getConsumerAppid()I

    move-result v2

    const/16 v3, 0xfa0

    if-ne v2, v3, :cond_a

    .line 60
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getFileType()I

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getFileType()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_a

    .line 61
    :cond_40
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getChildrenList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Child;

    iget-object v3, p0, Lcom/gmodvr/flat/WorkshopJoinSync$1;->val$dependencies:Ljava/util/Set;

    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Child;->getPublishedfileid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_62
    return-object p1
.end method

###### Class com.gmodvr.flat.WorkshopJoinSync.AnonymousClass2 (com.gmodvr.flat.WorkshopJoinSync$2)
.class Lcom/gmodvr/flat/WorkshopJoinSync$2;
.super Ljava/lang/Object;
.source "WorkshopJoinSync.java"

# interfaces
.implements Lcom/gmodvr/flat/WorkshopCollection$Fetch;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gmodvr/flat/WorkshopJoinSync;->pinnedGraph(Ljava/util/Map;Ljava/util/Map;Lcom/gmodvr/flat/WorkshopJoinSync$Backend;)Lcom/gmodvr/flat/WorkshopCollection$Fetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$backend:Lcom/gmodvr/flat/WorkshopJoinSync$Backend;

.field final synthetic val$cachedDependencies:Ljava/util/Set;

.field final synthetic val$present:Ljava/util/Map;

.field final synthetic val$wanted:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/WorkshopJoinSync$Backend;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopJoinSync$2;->val$backend:Lcom/gmodvr/flat/WorkshopJoinSync$Backend;

    iput-object p2, p0, Lcom/gmodvr/flat/WorkshopJoinSync$2;->val$wanted:Ljava/util/Map;

    iput-object p3, p0, Lcom/gmodvr/flat/WorkshopJoinSync$2;->val$present:Ljava/util/Map;

    iput-object p4, p0, Lcom/gmodvr/flat/WorkshopJoinSync$2;->val$cachedDependencies:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopJoinSync$2;->val$backend:Lcom/gmodvr/flat/WorkshopJoinSync$Backend;

    invoke-interface {p0}, Lcom/gmodvr/flat/WorkshopCollection$Fetch;->check()V

    return-void
.end method

.method public get(Ljava/util/List;)Ljava/util/List;
    .registers 16
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

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_112

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 148
    invoke-virtual {p0}, Lcom/gmodvr/flat/WorkshopJoinSync$2;->check()V

    .line 149
    iget-object v5, p0, Lcom/gmodvr/flat/WorkshopJoinSync$2;->val$wanted:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;

    .line 150
    iget-object v6, p0, Lcom/gmodvr/flat/WorkshopJoinSync$2;->val$present:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gmodvr/flat/GmodAddons$Addon;

    const-wide/16 v7, 0x0

    if-eqz v5, :cond_38

    .line 151
    iget-wide v9, v5, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;->time:J

    goto :goto_4c

    .line 152
    :cond_38
    iget-object v9, p0, Lcom/gmodvr/flat/WorkshopJoinSync$2;->val$cachedDependencies:Ljava/util/Set;

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4b

    if-eqz v6, :cond_4b

    iget-object v9, v6, Lcom/gmodvr/flat/GmodAddons$Addon;->meta:Lorg/json/JSONObject;

    const-string v10, "time"

    invoke-virtual {v9, v10, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    goto :goto_4c

    :cond_4b
    move-wide v9, v7

    :goto_4c
    if-nez v6, :cond_50

    const/4 v11, 0x0

    goto :goto_58

    .line 153
    :cond_50
    iget-object v11, v6, Lcom/gmodvr/flat/GmodAddons$Addon;->meta:Lorg/json/JSONObject;

    const-string v12, "required"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    :goto_58
    if-eqz v6, :cond_10d

    .line 154
    iget-boolean v12, v6, Lcom/gmodvr/flat/GmodAddons$Addon;->conflict:Z

    if-nez v12, :cond_10d

    const-wide v12, 0xffffffffL

    cmp-long v12, v9, v12

    if-gtz v12, :cond_10d

    if-eqz v11, :cond_10d

    if-nez v5, :cond_6d

    move-wide v12, v7

    goto :goto_6f

    .line 155
    :cond_6d
    iget-wide v12, v5, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;->crc:J

    :goto_6f
    invoke-static {v6, v9, v10, v12, v13}, Lcom/gmodvr/flat/WorkshopJoinSync;->-$$Nest$smmatches(Lcom/gmodvr/flat/GmodAddons$Addon;JJ)Z

    move-result v5

    if-nez v5, :cond_77

    goto/16 :goto_10d

    .line 158
    :cond_77
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Builder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Builder;->setPublishedfileid(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Builder;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Builder;->setResult(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Builder;

    move-result-object v2

    const/16 v5, 0xfa0

    .line 159
    invoke-virtual {v2, v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Builder;->setConsumerAppid(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Builder;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Builder;->setFileType(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Builder;

    move-result-object v2

    long-to-int v9, v9

    invoke-virtual {v2, v9}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Builder;->setTimeUpdated(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Builder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/gmodvr/flat/GmodAddons$Addon;->title()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Builder;->setTitle(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Builder;

    move-result-object v2

    .line 160
    :goto_9c
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_104

    .line 161
    const-string v6, ""

    invoke-virtual {v11, v5, v6}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 164
    :try_start_a8
    const-string v9, "[0-9]{1,20}"

    invoke-virtual {v6, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e3

    .line 165
    invoke-static {v6}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_b4
    .catch Ljava/lang/NumberFormatException; {:try_start_a8 .. :try_end_b4} :catch_e9

    cmp-long v6, v9, v7

    if-eqz v6, :cond_dd

    .line 170
    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Builder;->addChildrenBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Child$Builder;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Child$Builder;->setPublishedfileid(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Child$Builder;

    .line 171
    iget-object v6, p0, Lcom/gmodvr/flat/WorkshopJoinSync$2;->val$cachedDependencies:Ljava/util/Set;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v6, p0, Lcom/gmodvr/flat/WorkshopJoinSync$2;->val$cachedDependencies:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    const/16 v9, 0x2710

    if-gt v6, v9, :cond_d5

    add-int/lit8 v5, v5, 0x1

    goto :goto_9c

    .line 173
    :cond_d5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Server requires too many Workshop dependencies"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 166
    :cond_dd
    :try_start_dd
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0

    .line 164
    :cond_e3
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0
    :try_end_e9
    .catch Ljava/lang/NumberFormatException; {:try_start_dd .. :try_end_e9} :catch_e9

    .line 168
    :catch_e9
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid cached Workshop dependencies; reinstall addon "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 176
    :cond_104
    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 156
    :cond_10d
    :goto_10d
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 178
    :cond_112
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_121

    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopJoinSync$2;->val$backend:Lcom/gmodvr/flat/WorkshopJoinSync$Backend;

    invoke-interface {p0, v1}, Lcom/gmodvr/flat/WorkshopCollection$Fetch;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_121
    return-object v0
.end method

###### Class com.gmodvr.flat.WorkshopJoinSync.Backend (com.gmodvr.flat.WorkshopJoinSync$Backend)
.class interface abstract Lcom/gmodvr/flat/WorkshopJoinSync$Backend;
.super Ljava/lang/Object;
.source "WorkshopJoinSync.java"

# interfaces
.implements Lcom/gmodvr/flat/WorkshopCollection$Fetch;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopJoinSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Backend"
.end annotation


# virtual methods
.method public abstract install(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;JLcom/gmodvr/flat/WorkshopIntegrity$Progress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

###### Class com.gmodvr.flat.WorkshopJoinSync.Progress (com.gmodvr.flat.WorkshopJoinSync$Progress)
.class interface abstract Lcom/gmodvr/flat/WorkshopJoinSync$Progress;
.super Ljava/lang/Object;
.source "WorkshopJoinSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopJoinSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Progress"
.end annotation


# virtual methods
.method public abstract failed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract ready(Ljava/lang/String;)V
.end method

.method public skipped(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 22
    invoke-interface {p0, p1, p2}, Lcom/gmodvr/flat/WorkshopJoinSync$Progress;->failed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract status(IILjava/lang/String;JJ)V
.end method

###### Class com.gmodvr.flat.WorkshopJoinSync.Requirement (com.gmodvr.flat.WorkshopJoinSync$Requirement)
.class final Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;
.super Ljava/lang/Object;
.source "WorkshopJoinSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopJoinSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Requirement"
.end annotation


# instance fields
.field final crc:J

.field final id:J

.field final time:J


# direct methods
.method public constructor <init>(JJJ)V
    .registers 7

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;->id:J

    iput-wide p3, p0, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;->time:J

    iput-wide p5, p0, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;->crc:J

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopJoinSync$$ExternalSyntheticLambda0 (com.gmodvr.flat.WorkshopJoinSync$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/WorkshopCollection$Progress;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopJoinSync$Progress;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopJoinSync$Progress;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/WorkshopJoinSync$Progress;

    return-void
.end method


# virtual methods
.method public final resolved(I)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/WorkshopJoinSync$Progress;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/WorkshopJoinSync;->$r8$lambda$5HyFIDTXEhi7CCs6zKh3kEoU3m0(Lcom/gmodvr/flat/WorkshopJoinSync$Progress;I)V

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopJoinSync$$ExternalSyntheticLambda1 (com.gmodvr.flat.WorkshopJoinSync$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/WorkshopIntegrity$Progress;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopJoinSync$Backend;

.field public final synthetic f$1:Lcom/gmodvr/flat/WorkshopJoinSync$Progress;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/gmodvr/flat/WorkshopQueue;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopJoinSync$Backend;Lcom/gmodvr/flat/WorkshopJoinSync$Progress;ILcom/gmodvr/flat/WorkshopQueue;Ljava/lang/String;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/WorkshopJoinSync$Backend;

    iput-object p2, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda1;->f$1:Lcom/gmodvr/flat/WorkshopJoinSync$Progress;

    iput p3, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda1;->f$3:Lcom/gmodvr/flat/WorkshopQueue;

    iput-object p5, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final update(Ljava/lang/String;JJ)V
    .registers 16

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/WorkshopJoinSync$Backend;

    iget-object v1, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda1;->f$1:Lcom/gmodvr/flat/WorkshopJoinSync$Progress;

    iget v2, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda1;->f$3:Lcom/gmodvr/flat/WorkshopQueue;

    iget-object v4, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-static/range {v0 .. v9}, Lcom/gmodvr/flat/WorkshopJoinSync;->$r8$lambda$3-t3vq2IGq_fQWk_XBXpg5-eT1A(Lcom/gmodvr/flat/WorkshopJoinSync$Backend;Lcom/gmodvr/flat/WorkshopJoinSync$Progress;ILcom/gmodvr/flat/WorkshopQueue;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopJoinSync$$ExternalSyntheticLambda2 (com.gmodvr.flat.WorkshopJoinSync$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopQueue$Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopQueue$Entry;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/WorkshopQueue$Entry;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/WorkshopQueue$Entry;

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/WorkshopJoinSync;->$r8$lambda$MKEn_viTymMxyf6r4QL0BbbK2MY(Lcom/gmodvr/flat/WorkshopQueue$Entry;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;)Z

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.WorkshopJoinSync$$ExternalSyntheticLambda3 (com.gmodvr.flat.WorkshopJoinSync$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-static {}, Lcom/gmodvr/flat/WorkshopJoinSync;->$r8$lambda$Txj29SRTOL_Ahs-n1c5JOva8QzU()Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.WorkshopJoinSync$$ExternalSyntheticLambda4 (com.gmodvr.flat.WorkshopJoinSync$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/WorkshopIntegrity$Progress;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopJoinSync$Progress;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/Deque;

.field public final synthetic f$4:Lcom/gmodvr/flat/GmodAddons$Addon;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopJoinSync$Progress;Ljava/util/Set;Ljava/util/List;Ljava/util/Deque;Lcom/gmodvr/flat/GmodAddons$Addon;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/WorkshopJoinSync$Progress;

    iput-object p2, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda4;->f$1:Ljava/util/Set;

    iput-object p3, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda4;->f$3:Ljava/util/Deque;

    iput-object p5, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda4;->f$4:Lcom/gmodvr/flat/GmodAddons$Addon;

    return-void
.end method


# virtual methods
.method public final update(Ljava/lang/String;JJ)V
    .registers 16

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/WorkshopJoinSync$Progress;

    iget-object v1, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda4;->f$1:Ljava/util/Set;

    iget-object v2, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda4;->f$3:Ljava/util/Deque;

    iget-object v4, p0, Lcom/gmodvr/flat/WorkshopJoinSync$$ExternalSyntheticLambda4;->f$4:Lcom/gmodvr/flat/GmodAddons$Addon;

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-static/range {v0 .. v9}, Lcom/gmodvr/flat/WorkshopJoinSync;->$r8$lambda$gZ4hO4Aic2CP7BmiRPGzOPcGEh0(Lcom/gmodvr/flat/WorkshopJoinSync$Progress;Ljava/util/Set;Ljava/util/List;Ljava/util/Deque;Lcom/gmodvr/flat/GmodAddons$Addon;Ljava/lang/String;JJ)V

    return-void
.end method
