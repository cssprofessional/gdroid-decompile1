###### Class com.gmodvr.flat.GameContentProfile (com.gmodvr.flat.GameContentProfile)
.class public final Lcom/gmodvr/flat/GameContentProfile;
.super Ljava/lang/Object;
.source "GameContentProfile.java"


# static fields
.field private static final ALL_PROFILES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gmodvr/flat/GameContentProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Lcom/gmodvr/flat/GameContentProfile;

.field public static final EP1:Lcom/gmodvr/flat/GameContentProfile;

.field public static final EP1_ID:Ljava/lang/String; = "ep1"

.field public static final EP2:Lcom/gmodvr/flat/GameContentProfile;

.field public static final EP2_ID:Ljava/lang/String; = "ep2"

.field public static final GARRYSMOD:Lcom/gmodvr/flat/GameContentProfile;

.field public static final GARRYSMOD_ID:Ljava/lang/String; = "garrysmod"

.field public static final HL2:Lcom/gmodvr/flat/GameContentProfile;

.field public static final HL2_ID:Ljava/lang/String; = "hl2"

.field public static final LOSTCOAST:Lcom/gmodvr/flat/GameContentProfile;

.field public static final LOSTCOAST_ID:Ljava/lang/String; = "lostcoast"

.field public static final PORTAL:Lcom/gmodvr/flat/GameContentProfile;

.field public static final PORTAL2:Lcom/gmodvr/flat/GameContentProfile;

.field public static final PORTAL2_ID:Ljava/lang/String; = "portal2"

.field public static final PORTAL_ID:Ljava/lang/String; = "portal"


# instance fields
.field public final depots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/ContentComponent;",
            ">;"
        }
    .end annotation
.end field

.field public final displayName:Ljava/lang/String;

.field public final gameDir:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final primary:Lcom/gmodvr/flat/ContentComponent;

.field public final steamAppId:I


# direct methods
.method static constructor <clinit>()V
    .registers 22

    .line 22
    new-instance v6, Lcom/gmodvr/flat/GameContentProfile;

    sget-object v7, Lcom/gmodvr/flat/ContentComponent;->HL2:Lcom/gmodvr/flat/ContentComponent;

    sget-object v8, Lcom/gmodvr/flat/ContentComponent;->PLATFORM:Lcom/gmodvr/flat/ContentComponent;

    filled-new-array {v7, v8}, [Lcom/gmodvr/flat/ContentComponent;

    move-result-object v0

    .line 24
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v1, "hl2"

    const-string v2, "Half-Life 2"

    const-string v3, "hl2"

    const/16 v4, 0xdc

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/gmodvr/flat/GameContentProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    sput-object v6, Lcom/gmodvr/flat/GameContentProfile;->HL2:Lcom/gmodvr/flat/GameContentProfile;

    .line 26
    new-instance v2, Lcom/gmodvr/flat/GameContentProfile;

    sget-object v0, Lcom/gmodvr/flat/ContentComponent;->PORTAL:Lcom/gmodvr/flat/ContentComponent;

    filled-new-array {v0, v7, v8}, [Lcom/gmodvr/flat/ContentComponent;

    move-result-object v0

    .line 28
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v10, "portal"

    const-string v11, "Portal"

    const-string v12, "portal"

    const/16 v13, 0x190

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcom/gmodvr/flat/GameContentProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    sput-object v2, Lcom/gmodvr/flat/GameContentProfile;->PORTAL:Lcom/gmodvr/flat/GameContentProfile;

    .line 30
    new-instance v3, Lcom/gmodvr/flat/GameContentProfile;

    sget-object v0, Lcom/gmodvr/flat/ContentComponent;->PORTAL2:Lcom/gmodvr/flat/ContentComponent;

    sget-object v1, Lcom/gmodvr/flat/ContentComponent;->PORTAL2_UPDATE:Lcom/gmodvr/flat/ContentComponent;

    sget-object v4, Lcom/gmodvr/flat/ContentComponent;->PORTAL2_DLC1:Lcom/gmodvr/flat/ContentComponent;

    sget-object v5, Lcom/gmodvr/flat/ContentComponent;->PORTAL2_DLC2:Lcom/gmodvr/flat/ContentComponent;

    sget-object v9, Lcom/gmodvr/flat/ContentComponent;->PORTAL2_PLATFORM:Lcom/gmodvr/flat/ContentComponent;

    filled-new-array {v0, v1, v4, v5, v9}, [Lcom/gmodvr/flat/ContentComponent;

    move-result-object v0

    .line 32
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    const-string v16, "portal2"

    const-string v17, "Portal 2"

    const-string v18, "portal2"

    const/16 v19, 0x26c

    move-object v15, v3

    invoke-direct/range {v15 .. v20}, Lcom/gmodvr/flat/GameContentProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    sput-object v3, Lcom/gmodvr/flat/GameContentProfile;->PORTAL2:Lcom/gmodvr/flat/GameContentProfile;

    .line 36
    new-instance v4, Lcom/gmodvr/flat/GameContentProfile;

    sget-object v0, Lcom/gmodvr/flat/ContentComponent;->EPISODIC:Lcom/gmodvr/flat/ContentComponent;

    filled-new-array {v0, v7, v8}, [Lcom/gmodvr/flat/ContentComponent;

    move-result-object v1

    .line 38
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v10, "ep1"

    const-string v11, "Half-Life 2: Episode One"

    const-string v12, "episodic"

    const/16 v13, 0xdc

    move-object v9, v4

    invoke-direct/range {v9 .. v14}, Lcom/gmodvr/flat/GameContentProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    sput-object v4, Lcom/gmodvr/flat/GameContentProfile;->EP1:Lcom/gmodvr/flat/GameContentProfile;

    .line 40
    new-instance v5, Lcom/gmodvr/flat/GameContentProfile;

    sget-object v1, Lcom/gmodvr/flat/ContentComponent;->EP2:Lcom/gmodvr/flat/ContentComponent;

    filled-new-array {v1, v0, v7, v8}, [Lcom/gmodvr/flat/ContentComponent;

    move-result-object v0

    .line 42
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    const-string v16, "ep2"

    const-string v17, "Half-Life 2: Episode Two"

    const-string v18, "ep2"

    const/16 v19, 0xdc

    move-object v15, v5

    invoke-direct/range {v15 .. v20}, Lcom/gmodvr/flat/GameContentProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    sput-object v5, Lcom/gmodvr/flat/GameContentProfile;->EP2:Lcom/gmodvr/flat/GameContentProfile;

    .line 45
    new-instance v15, Lcom/gmodvr/flat/GameContentProfile;

    sget-object v0, Lcom/gmodvr/flat/ContentComponent;->LOSTCOAST:Lcom/gmodvr/flat/ContentComponent;

    filled-new-array {v0, v7, v8}, [Lcom/gmodvr/flat/ContentComponent;

    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v10, "lostcoast"

    const-string v11, "Half-Life 2: Lost Coast"

    const-string v12, "lostcoast"

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lcom/gmodvr/flat/GameContentProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    sput-object v15, Lcom/gmodvr/flat/GameContentProfile;->LOSTCOAST:Lcom/gmodvr/flat/GameContentProfile;

    .line 49
    new-instance v0, Lcom/gmodvr/flat/GameContentProfile;

    sget-object v1, Lcom/gmodvr/flat/ContentComponent;->GARRYSMOD:Lcom/gmodvr/flat/ContentComponent;

    sget-object v7, Lcom/gmodvr/flat/ContentComponent;->SOURCEENGINE:Lcom/gmodvr/flat/ContentComponent;

    filled-new-array {v1, v7, v8}, [Lcom/gmodvr/flat/ContentComponent;

    move-result-object v1

    .line 51
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    const-string v17, "garrysmod"

    const-string v18, "Garry\'s Mod"

    const-string v19, "garrysmod"

    const/16 v20, 0xfa0

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v21}, Lcom/gmodvr/flat/GameContentProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    sput-object v0, Lcom/gmodvr/flat/GameContentProfile;->GARRYSMOD:Lcom/gmodvr/flat/GameContentProfile;

    .line 54
    sput-object v0, Lcom/gmodvr/flat/GameContentProfile;->DEFAULT:Lcom/gmodvr/flat/GameContentProfile;

    .line 58
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v1, v6

    move-object v6, v15

    .line 59
    filled-new-array/range {v0 .. v6}, [Lcom/gmodvr/flat/GameContentProfile;

    move-result-object v0

    const/4 v1, 0x0

    :goto_cf
    const/4 v2, 0x7

    if-ge v1, v2, :cond_e2

    aget-object v2, v0, v1

    .line 60
    iget-object v3, v2, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_cf

    .line 62
    :cond_e2
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/GameContentProfile;->ALL_PROFILES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/ContentComponent;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/gmodvr/flat/GameContentProfile;->displayName:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/gmodvr/flat/GameContentProfile;->gameDir:Ljava/lang/String;

    .line 76
    iput p4, p0, Lcom/gmodvr/flat/GameContentProfile;->steamAppId:I

    .line 77
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/gmodvr/flat/GameContentProfile;->depots:Ljava/util/List;

    .line 78
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x0

    goto :goto_20

    :cond_19
    const/4 p1, 0x0

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmodvr/flat/ContentComponent;

    :goto_20
    iput-object p1, p0, Lcom/gmodvr/flat/GameContentProfile;->primary:Lcom/gmodvr/flat/ContentComponent;

    return-void
.end method

.method public static all()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GameContentProfile;",
            ">;"
        }
    .end annotation

    .line 94
    sget-object v0, Lcom/gmodvr/flat/GameContentProfile;->DEFAULT:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static forId(Ljava/lang/String;)Lcom/gmodvr/flat/GameContentProfile;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 83
    :cond_4
    sget-object v1, Lcom/gmodvr/flat/GameContentProfile;->ALL_PROFILES:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gmodvr/flat/GameContentProfile;

    .line 84
    sget-object v1, Lcom/gmodvr/flat/GameContentProfile;->DEFAULT:Lcom/gmodvr/flat/GameContentProfile;

    if-eq p0, v1, :cond_17

    goto :goto_18

    :cond_17
    move-object v0, p0

    :goto_18
    return-object v0
.end method

.method public static require(Ljava/lang/String;)Lcom/gmodvr/flat/GameContentProfile;
    .registers 4

    .line 88
    invoke-static {p0}, Lcom/gmodvr/flat/GameContentProfile;->forId(Ljava/lang/String;)Lcom/gmodvr/flat/GameContentProfile;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 89
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown game profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dependsOn(Lcom/gmodvr/flat/ContentComponent;)Z
    .registers 4

    .line 98
    iget-object p0, p0, Lcom/gmodvr/flat/GameContentProfile;->depots:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmodvr/flat/ContentComponent;

    .line 99
    iget-object v0, v0, Lcom/gmodvr/flat/ContentComponent;->dirName:Ljava/lang/String;

    iget-object v1, p1, Lcom/gmodvr/flat/ContentComponent;->dirName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method
