###### Class com.gmodvr.flat.ContentComponent (com.gmodvr.flat.ContentComponent)
.class public final Lcom/gmodvr/flat/ContentComponent;
.super Ljava/lang/Object;
.source "ContentComponent.java"


# static fields
.field static final ALL_BY_DIR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gmodvr/flat/ContentComponent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EP2:Lcom/gmodvr/flat/ContentComponent;

.field public static final EP2_DIR:Ljava/lang/String; = "ep2"

.field public static final EPISODIC:Lcom/gmodvr/flat/ContentComponent;

.field public static final EPISODIC_DIR:Ljava/lang/String; = "episodic"

.field public static final GARRYSMOD:Lcom/gmodvr/flat/ContentComponent;

.field public static final GARRYSMOD_DIR:Ljava/lang/String; = "garrysmod"

.field public static final HL2:Lcom/gmodvr/flat/ContentComponent;

.field public static final HL2_DIR:Ljava/lang/String; = "hl2"

.field public static final LOSTCOAST:Lcom/gmodvr/flat/ContentComponent;

.field public static final LOSTCOAST_DIR:Ljava/lang/String; = "lostcoast"

.field public static final PLATFORM:Lcom/gmodvr/flat/ContentComponent;

.field public static final PLATFORM_DIR:Ljava/lang/String; = "platform"

.field public static final PORTAL:Lcom/gmodvr/flat/ContentComponent;

.field public static final PORTAL2:Lcom/gmodvr/flat/ContentComponent;

.field public static final PORTAL2_DIR:Ljava/lang/String; = "portal2"

.field public static final PORTAL2_DLC1:Lcom/gmodvr/flat/ContentComponent;

.field public static final PORTAL2_DLC1_DIR:Ljava/lang/String; = "portal2_dlc1"

.field public static final PORTAL2_DLC2:Lcom/gmodvr/flat/ContentComponent;

.field public static final PORTAL2_DLC2_DIR:Ljava/lang/String; = "portal2_dlc2"

.field public static final PORTAL2_PLATFORM:Lcom/gmodvr/flat/ContentComponent;

.field public static final PORTAL2_PLATFORM_DIR:Ljava/lang/String; = "portal2_platform"

.field public static final PORTAL2_UPDATE:Lcom/gmodvr/flat/ContentComponent;

.field public static final PORTAL2_UPDATE_DIR:Ljava/lang/String; = "update"

.field public static final PORTAL_DIR:Ljava/lang/String; = "portal"

.field public static final SOURCEENGINE:Lcom/gmodvr/flat/ContentComponent;

.field public static final SOURCEENGINE_DIR:Ljava/lang/String; = "sourceengine"


# instance fields
.field public final coreVpkRelPath:Ljava/lang/String;

.field public final dirName:Ljava/lang/String;

.field public final displayName:Ljava/lang/String;

.field public final importDirName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 29
    new-instance v0, Lcom/gmodvr/flat/ContentComponent;

    const-string v1, "Half-Life 2"

    const-string v2, "hl2/hl2_misc_dir.vpk"

    const-string v3, "hl2"

    invoke-direct {v0, v3, v1, v2}, Lcom/gmodvr/flat/ContentComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/gmodvr/flat/ContentComponent;->HL2:Lcom/gmodvr/flat/ContentComponent;

    .line 30
    new-instance v1, Lcom/gmodvr/flat/ContentComponent;

    const-string v2, "Platform (Source 2007)"

    const-string v3, "platform/platform_misc_dir.vpk"

    const-string v4, "platform"

    invoke-direct {v1, v4, v2, v3}, Lcom/gmodvr/flat/ContentComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/gmodvr/flat/ContentComponent;->PLATFORM:Lcom/gmodvr/flat/ContentComponent;

    .line 31
    new-instance v2, Lcom/gmodvr/flat/ContentComponent;

    const-string v3, "Episode One"

    const-string v5, "episodic/ep1_pak_dir.vpk"

    const-string v6, "episodic"

    invoke-direct {v2, v6, v3, v5}, Lcom/gmodvr/flat/ContentComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/gmodvr/flat/ContentComponent;->EPISODIC:Lcom/gmodvr/flat/ContentComponent;

    .line 32
    new-instance v3, Lcom/gmodvr/flat/ContentComponent;

    const-string v5, "Episode Two"

    const-string v6, "ep2/ep2_pak_dir.vpk"

    const-string v7, "ep2"

    invoke-direct {v3, v7, v5, v6}, Lcom/gmodvr/flat/ContentComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/gmodvr/flat/ContentComponent;->EP2:Lcom/gmodvr/flat/ContentComponent;

    .line 33
    new-instance v5, Lcom/gmodvr/flat/ContentComponent;

    const-string v6, "Lost Coast"

    const-string v7, "lostcoast/lostcoast_pak_dir.vpk"

    const-string v8, "lostcoast"

    invoke-direct {v5, v8, v6, v7}, Lcom/gmodvr/flat/ContentComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/gmodvr/flat/ContentComponent;->LOSTCOAST:Lcom/gmodvr/flat/ContentComponent;

    .line 34
    new-instance v6, Lcom/gmodvr/flat/ContentComponent;

    const-string v7, "Portal"

    const-string v8, "portal/portal_pak_dir.vpk"

    const-string v9, "portal"

    invoke-direct {v6, v9, v7, v8}, Lcom/gmodvr/flat/ContentComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/gmodvr/flat/ContentComponent;->PORTAL:Lcom/gmodvr/flat/ContentComponent;

    .line 35
    new-instance v7, Lcom/gmodvr/flat/ContentComponent;

    const-string v8, "Portal 2"

    const-string v9, "portal2/pak01_dir.vpk"

    const-string v10, "portal2"

    invoke-direct {v7, v10, v8, v9}, Lcom/gmodvr/flat/ContentComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/gmodvr/flat/ContentComponent;->PORTAL2:Lcom/gmodvr/flat/ContentComponent;

    .line 36
    new-instance v8, Lcom/gmodvr/flat/ContentComponent;

    const-string v9, "update"

    const-string v10, "Portal 2 Update"

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/gmodvr/flat/ContentComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/gmodvr/flat/ContentComponent;->PORTAL2_UPDATE:Lcom/gmodvr/flat/ContentComponent;

    .line 37
    new-instance v9, Lcom/gmodvr/flat/ContentComponent;

    const-string v10, "Portal 2 DLC 2"

    const-string v12, "portal2_dlc2/pak01_dir.vpk"

    const-string v13, "portal2_dlc2"

    invoke-direct {v9, v13, v10, v12}, Lcom/gmodvr/flat/ContentComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/gmodvr/flat/ContentComponent;->PORTAL2_DLC2:Lcom/gmodvr/flat/ContentComponent;

    .line 38
    new-instance v10, Lcom/gmodvr/flat/ContentComponent;

    const-string v12, "Portal 2 DLC 1"

    const-string v13, "portal2_dlc1/pak01_dir.vpk"

    const-string v14, "portal2_dlc1"

    invoke-direct {v10, v14, v12, v13}, Lcom/gmodvr/flat/ContentComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/gmodvr/flat/ContentComponent;->PORTAL2_DLC1:Lcom/gmodvr/flat/ContentComponent;

    .line 39
    new-instance v12, Lcom/gmodvr/flat/ContentComponent;

    const-string v13, "portal2_platform"

    const-string v14, "Portal 2 Platform"

    invoke-direct {v12, v13, v14, v4, v11}, Lcom/gmodvr/flat/ContentComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/gmodvr/flat/ContentComponent;->PORTAL2_PLATFORM:Lcom/gmodvr/flat/ContentComponent;

    .line 42
    new-instance v11, Lcom/gmodvr/flat/ContentComponent;

    const-string v4, "Garry\'s Mod"

    const-string v13, "garrysmod/garrysmod_dir.vpk"

    const-string v14, "garrysmod"

    invoke-direct {v11, v14, v4, v13}, Lcom/gmodvr/flat/ContentComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/gmodvr/flat/ContentComponent;->GARRYSMOD:Lcom/gmodvr/flat/ContentComponent;

    .line 43
    new-instance v13, Lcom/gmodvr/flat/ContentComponent;

    const-string v4, "Source Engine content"

    const-string v14, "sourceengine/hl2_misc_dir.vpk"

    const-string v15, "sourceengine"

    invoke-direct {v13, v15, v4, v14}, Lcom/gmodvr/flat/ContentComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lcom/gmodvr/flat/ContentComponent;->SOURCEENGINE:Lcom/gmodvr/flat/ContentComponent;

    .line 47
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v12

    move-object v12, v13

    .line 48
    filled-new-array/range {v0 .. v12}, [Lcom/gmodvr/flat/ContentComponent;

    move-result-object v0

    const/4 v1, 0x0

    :goto_b8
    const/16 v2, 0xd

    if-ge v1, v2, :cond_cc

    aget-object v2, v0, v1

    .line 53
    iget-object v3, v2, Lcom/gmodvr/flat/ContentComponent;->dirName:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b8

    .line 55
    :cond_cc
    invoke-static {v14}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/ContentComponent;->ALL_BY_DIR:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 68
    invoke-direct {p0, p1, p2, p1, p3}, Lcom/gmodvr/flat/ContentComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/gmodvr/flat/ContentComponent;->dirName:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/gmodvr/flat/ContentComponent;->displayName:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/gmodvr/flat/ContentComponent;->importDirName:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lcom/gmodvr/flat/ContentComponent;->coreVpkRelPath:Ljava/lang/String;

    return-void
.end method

.method public static all()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/gmodvr/flat/ContentComponent;",
            ">;"
        }
    .end annotation

    .line 59
    sget-object v0, Lcom/gmodvr/flat/ContentComponent;->ALL_BY_DIR:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static forDir(Ljava/lang/String;)Lcom/gmodvr/flat/ContentComponent;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 80
    :cond_4
    sget-object v0, Lcom/gmodvr/flat/ContentComponent;->ALL_BY_DIR:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gmodvr/flat/ContentComponent;

    return-object p0
.end method
