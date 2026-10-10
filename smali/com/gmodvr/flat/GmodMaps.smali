###### Class com.gmodvr.flat.GmodMaps (com.gmodvr.flat.GmodMaps)
.class final Lcom/gmodvr/flat/GmodMaps;
.super Ljava/lang/Object;
.source "GmodMaps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/GmodMaps$Game;,
        Lcom/gmodvr/flat/GmodMaps$Entry;,
        Lcom/gmodvr/flat/GmodMaps$Category;,
        Lcom/gmodvr/flat/GmodMaps$KeyValues;,
        Lcom/gmodvr/flat/GmodMaps$LuaPattern;
    }
.end annotation


# static fields
.field private static final CONTENT_PACKS:[Ljava/lang/String;

.field static final GAMES:[[Ljava/lang/String;

.field private static final HL2_PACKS:[Ljava/lang/String;

.field private static final IGNORE_MAPS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IGNORE_PATTERNS:[Ljava/lang/String;

.field private static final MAP_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAP_PATTERNS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_FILES:I = 0x30d40

.field static final OTHER:Ljava/lang/String; = "Other"

.field static final SANDBOX:Ljava/lang/String; = "Sandbox"


# direct methods
.method public static synthetic $r8$lambda$8eAsyuo4L4la-kZr3qAz0lMeGm4(Lcom/gmodvr/flat/GmodMaps$Entry;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gmodvr/flat/GmodMaps;->lambda$group$4(Lcom/gmodvr/flat/GmodMaps$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9MwFUXY9xRW_p72d0laXvQLTWPY(Lcom/gmodvr/flat/GmodMaps$Category;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gmodvr/flat/GmodMaps;->lambda$group$3(Lcom/gmodvr/flat/GmodMaps$Category;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Dp6J9vLVZ0yA1Fzs4y-USR632XI(Lcom/gmodvr/flat/GmodMaps$Entry;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gmodvr/flat/GmodMaps;->lambda$scan$1(Lcom/gmodvr/flat/GmodMaps$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cPpkEf4EBkbH6YHBdMKNDZLmps0(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gmodvr/flat/GmodMaps;->lambda$scan$0(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hXX9lS2P9UtNzC56VlAr5lYcads(Lcom/gmodvr/flat/GmodMaps$Category;)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gmodvr/flat/GmodMaps;->lambda$group$2(Lcom/gmodvr/flat/GmodMaps$Category;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 98

    .line 51
    const-string v0, "ep2"

    const-string v1, "Half-Life 2: Episode 2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v0, "episodic"

    const-string v12, "Half-Life 2: Episode 1"

    filled-new-array {v0, v12}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "lostcoast"

    const-string v13, "Half-Life 2: Lost Coast"

    filled-new-array {v0, v13}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "hl2"

    const-string v14, "Half-Life 2"

    filled-new-array {v0, v14}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "portal"

    const-string v15, "Portal"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "cstrike"

    const-string v11, "Counter-Strike"

    filled-new-array {v0, v11}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "hl1"

    const-string v10, "Half-Life"

    filled-new-array {v0, v10}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "hl1mp"

    const-string v9, "Half-Life Deathmatch"

    filled-new-array {v0, v9}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v9

    const-string v9, "hl2mp"

    move-object/from16 v17, v15

    const-string v15, "Half-Life 2: Deathmatch"

    filled-new-array {v9, v15}, [Ljava/lang/String;

    move-result-object v18

    const-string v9, "dod"

    move-object/from16 v19, v13

    const-string v13, "Day Of Defeat"

    filled-new-array {v9, v13}, [Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v16

    move-object v9, v0

    move-object v0, v10

    move-object/from16 v10, v18

    move-object/from16 v16, v0

    move-object v0, v11

    move-object/from16 v11, v20

    filled-new-array/range {v2 .. v11}, [[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gmodvr/flat/GmodMaps;->GAMES:[[Ljava/lang/String;

    .line 59
    const-string v2, "hl2_sound_misc"

    const-string v3, "hl2_misc"

    const-string v4, "hl2_textures"

    const-string v5, "hl2_sound_vo_english"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gmodvr/flat/GmodMaps;->HL2_PACKS:[Ljava/lang/String;

    .line 60
    const-string v2, "content_hl2"

    const-string v3, "content_cstrike"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gmodvr/flat/GmodMaps;->CONTENT_PACKS:[Ljava/lang/String;

    .line 426
    const-string v2, "^ep2_background"

    const-string v3, "^styleguide"

    const-string v4, "^background"

    const-string v5, "^devtest"

    const-string v6, "^ep1_background"

    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gmodvr/flat/GmodMaps;->IGNORE_PATTERNS:[Ljava/lang/String;

    .line 427
    new-instance v2, Ljava/util/HashSet;

    const-string v31, "intro"

    const-string v32, "test"

    const-string v22, "sdk_"

    const-string v23, "test_"

    const-string v24, "vst_"

    const-string v25, "c4a1y"

    const-string v26, "credits"

    const-string v27, "d2_coast_02"

    const-string v28, "d3_c17_02_camera"

    const-string v29, "ep1_citadel_00_demo"

    const-string v30, "c5m1_waterfront_sndscape"

    filled-new-array/range {v22 .. v32}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v2, Lcom/gmodvr/flat/GmodMaps;->IGNORE_MAPS:Ljava/util/Set;

    .line 431
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/gmodvr/flat/GmodMaps;->MAP_NAMES:Ljava/util/Map;

    .line 432
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v2, Lcom/gmodvr/flat/GmodMaps;->MAP_PATTERNS:Ljava/util/Map;

    .line 437
    const-string v3, "aoc_"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "Age of Chivalry"

    invoke-static {v4, v3}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 438
    const-string v3, "infra_"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "INFRA"

    invoke-static {v4, v3}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 439
    const-string v3, "^asi-"

    const-string v4, "Alien Swarm"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v3, "lobby"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 441
    const-string v31, "tut_training"

    const-string v32, "lightstyle_test"

    const-string v22, "cp_docks"

    const-string v23, "cp_parkour"

    const-string v24, "cp_sequence"

    const-string v25, "cp_terrace"

    const-string v26, "cp_test"

    const-string v27, "duel_"

    const-string v28, "ffa_community"

    const-string v29, "free_"

    const-string v30, "practice_box"

    filled-new-array/range {v22 .. v32}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "Blade Symphony"

    invoke-static {v4, v3}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 443
    const-string v29, "training1"

    const-string v30, "lobby_mapveto"

    const-string v22, "ar_"

    const-string v23, "cs_"

    const-string v24, "de_"

    const-string v25, "es_"

    const-string v26, "fy_"

    const-string v27, "gd_"

    const-string v28, "dz_"

    filled-new-array/range {v22 .. v30}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 444
    const-string v8, "fy_"

    const-string v9, "1v1_"

    const-string v4, "35hp_"

    const-string v5, "aim_"

    const-string v6, "awp_"

    const-string v7, "am_"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v0

    const-string v3, "Counter-Strike (Custom)"

    invoke-static {v3, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 445
    const-string v0, "dod_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 446
    const-string v0, "ddd_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v3, "Dino D-Day"

    invoke-static {v3, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 447
    const-string v29, "ur_supermarket"

    const-string v30, "ur_village"

    const-string v22, "de_dam"

    const-string v23, "dm_city"

    const-string v24, "dm_refinery"

    const-string v25, "dm_supermarket"

    const-string v26, "dm_village"

    const-string v27, "ur_city"

    const-string v28, "ur_refinery"

    filled-new-array/range {v22 .. v30}, [Ljava/lang/String;

    move-result-object v0

    const-string v3, "DIPRIP"

    invoke-static {v3, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 449
    const-string v9, "sav_dojo6"

    const-string v10, "varena"

    const-string v4, "dys_"

    const-string v5, "pb_dojo"

    const-string v6, "pb_rooftop"

    const-string v7, "pb_round"

    const-string v8, "pb_urbandome"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v0

    const-string v3, "Dystopia"

    invoke-static {v3, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 450
    const-string v88, "d3_citadel_05"

    const-string v89, "d3_breen_01"

    const-string v22, "d1_trainstation_01"

    const-string v23, "d1_trainstation_02"

    const-string v24, "d1_trainstation_03"

    const-string v25, "d1_trainstation_04"

    const-string v26, "d1_trainstation_05"

    const-string v27, "d1_trainstation_06"

    const-string v28, "d1_canals_01"

    const-string v29, "d1_canals_01a"

    const-string v30, "d1_canals_02"

    const-string v31, "d1_canals_03"

    const-string v32, "d1_canals_05"

    const-string v33, "d1_canals_06"

    const-string v34, "d1_canals_07"

    const-string v35, "d1_canals_08"

    const-string v36, "d1_canals_09"

    const-string v37, "d1_canals_10"

    const-string v38, "d1_canals_11"

    const-string v39, "d1_canals_12"

    const-string v40, "d1_canals_13"

    const-string v41, "d1_eli_01"

    const-string v42, "d1_eli_02"

    const-string v43, "d1_town_01"

    const-string v44, "d1_town_01a"

    const-string v45, "d1_town_02"

    const-string v46, "d1_town_02a"

    const-string v47, "d1_town_03"

    const-string v48, "d1_town_04"

    const-string v49, "d1_town_05"

    const-string v50, "d2_coast_01"

    const-string v51, "d2_coast_03"

    const-string v52, "d2_coast_04"

    const-string v53, "d2_coast_05"

    const-string v54, "d2_coast_07"

    const-string v55, "d2_coast_08"

    const-string v56, "d2_coast_09"

    const-string v57, "d2_coast_10"

    const-string v58, "d2_coast_11"

    const-string v59, "d2_coast_12"

    const-string v60, "d2_prison_01"

    const-string v61, "d2_prison_02"

    const-string v62, "d2_prison_03"

    const-string v63, "d2_prison_04"

    const-string v64, "d2_prison_05"

    const-string v65, "d2_prison_06"

    const-string v66, "d2_prison_07"

    const-string v67, "d2_prison_08"

    const-string v68, "d3_c17_01"

    const-string v69, "d3_c17_02"

    const-string v70, "d3_c17_03"

    const-string v71, "d3_c17_04"

    const-string v72, "d3_c17_05"

    const-string v73, "d3_c17_06a"

    const-string v74, "d3_c17_06b"

    const-string v75, "d3_c17_07"

    const-string v76, "d3_c17_08"

    const-string v77, "d3_c17_09"

    const-string v78, "d3_c17_10a"

    const-string v79, "d3_c17_10b"

    const-string v80, "d3_c17_11"

    const-string v81, "d3_c17_12"

    const-string v82, "d3_c17_12b"

    const-string v83, "d3_c17_13"

    const-string v84, "d3_citadel_01"

    const-string v85, "d3_citadel_02"

    const-string v86, "d3_citadel_03"

    const-string v87, "d3_citadel_04"

    filled-new-array/range {v22 .. v89}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 460
    const-string v35, "ep1_c17_05"

    const-string v36, "ep1_c17_06"

    const-string v22, "ep1_citadel_00"

    const-string v23, "ep1_citadel_01"

    const-string v24, "ep1_citadel_02"

    const-string v25, "ep1_citadel_02b"

    const-string v26, "ep1_citadel_03"

    const-string v27, "ep1_citadel_04"

    const-string v28, "ep1_c17_00"

    const-string v29, "ep1_c17_00a"

    const-string v30, "ep1_c17_01"

    const-string v31, "ep1_c17_01a"

    const-string v32, "ep1_c17_02"

    const-string v33, "ep1_c17_02b"

    const-string v34, "ep1_c17_02a"

    filled-new-array/range {v22 .. v36}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 463
    const-string v38, "ep2_outland_12"

    const-string v39, "ep2_outland_12a"

    const-string v22, "ep2_outland_01"

    const-string v23, "ep2_outland_01a"

    const-string v24, "ep2_outland_02"

    const-string v25, "ep2_outland_03"

    const-string v26, "ep2_outland_04"

    const-string v27, "ep2_outland_05"

    const-string v28, "ep2_outland_06"

    const-string v29, "ep2_outland_06a"

    const-string v30, "ep2_outland_07"

    const-string v31, "ep2_outland_08"

    const-string v32, "ep2_outland_09"

    const-string v33, "ep2_outland_10"

    const-string v34, "ep2_outland_10a"

    const-string v35, "ep2_outland_11"

    const-string v36, "ep2_outland_11a"

    const-string v37, "ep2_outland_11b"

    filled-new-array/range {v22 .. v39}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 466
    const-string v96, "terror_management_x3"

    const-string v97, "the_call1"

    const-string v22, "dragon_girl"

    const-string v23, "dragon_girl1"

    const-string v24, "dragon_girl2"

    const-string v25, "dragon_girl3"

    const-string v26, "free_mars1"

    const-string v27, "free_mars2"

    const-string v28, "free_mars3"

    const-string v29, "hazardous_ai"

    const-string v30, "hazardous_ai_more"

    const-string v31, "hazardous_ai0"

    const-string v32, "hazardous_ai01"

    const-string v33, "hazardous_ai2"

    const-string v34, "hazardous_ai3"

    const-string v35, "hazardous_ai3b"

    const-string v36, "hazardous_ai4"

    const-string v37, "hazardous_ai5"

    const-string v38, "hazardous_ai6"

    const-string v39, "hazardous_ai7"

    const-string v40, "human_waste_x1"

    const-string v41, "human_waste1"

    const-string v42, "human_waste2"

    const-string v43, "human_waste3"

    const-string v44, "human_waste4"

    const-string v45, "human_waste5"

    const-string v46, "human_waste6"

    const-string v47, "human_waste7"

    const-string v48, "human_waste8"

    const-string v49, "human_waste9"

    const-string v50, "lab_rat"

    const-string v51, "lab_rat1"

    const-string v52, "money_is_dead"

    const-string v53, "money_is_dead_1"

    const-string v54, "money_is_dead0"

    const-string v55, "money_is_dead2"

    const-string v56, "money_is_dead2_1"

    const-string v57, "money_is_dead2_2"

    const-string v58, "money_is_dead3"

    const-string v59, "money_is_dead3_2"

    const-string v60, "money_is_dead4"

    const-string v61, "money_is_dead4_2"

    const-string v62, "money_is_dead4_3"

    const-string v63, "murdock_air_x1"

    const-string v64, "murdock_air_x2"

    const-string v65, "murdock_air_x3"

    const-string v66, "murdock_air_x4"

    const-string v67, "murdock_air_x5"

    const-string v68, "murdock_air_x6"

    const-string v69, "murdock_air1"

    const-string v70, "murdock_air2"

    const-string v71, "murdock_air3"

    const-string v72, "murdock_air4"

    const-string v73, "murdock_air5"

    const-string v74, "murdock_air6"

    const-string v75, "murdock_air7"

    const-string v76, "murdock_air8"

    const-string v77, "murdock_air9"

    const-string v78, "perp_org1"

    const-string v79, "perp_org2"

    const-string v80, "perp_org3"

    const-string v81, "perp_org4"

    const-string v82, "sabotage"

    const-string v83, "sabotage1"

    const-string v84, "smog_storm"

    const-string v85, "smog_storm1"

    const-string v86, "smog_storm2"

    const-string v87, "smog_storm3"

    const-string v88, "space_race"

    const-string v89, "space_race1"

    const-string v90, "space_race2"

    const-string v91, "space_race3"

    const-string v92, "space_race4"

    const-string v93, "space_race5"

    const-string v94, "terror_management_x1"

    const-string v95, "terror_management_x2"

    filled-new-array/range {v22 .. v97}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "G String"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 478
    const-string v69, "verticality_coop"

    const-string v70, "verticality_night"

    const-string v22, "buhriz"

    const-string v23, "buhriz_coop"

    const-string v24, "buhriz_night"

    const-string v25, "contact"

    const-string v26, "contact_coop"

    const-string v27, "contact_night"

    const-string v28, "district"

    const-string v29, "district_coop"

    const-string v30, "district_night"

    const-string v31, "drycanal"

    const-string v32, "drycanal_coop"

    const-string v33, "drycanal_night"

    const-string v34, "embassy"

    const-string v35, "embassy_coop"

    const-string v36, "embassy_night"

    const-string v37, "heights"

    const-string v38, "heights_coop"

    const-string v39, "heights_night"

    const-string v40, "kandagal"

    const-string v41, "kandagal_night"

    const-string v42, "market"

    const-string v43, "market_coop"

    const-string v44, "market_night"

    const-string v45, "ministry"

    const-string v46, "ministry_coop"

    const-string v47, "ministry_night"

    const-string v48, "panj"

    const-string v49, "panj_night"

    const-string v50, "peak"

    const-string v51, "peak_night"

    const-string v52, "revolt"

    const-string v53, "revolt_coop"

    const-string v54, "revolt_night"

    const-string v55, "siege"

    const-string v56, "siege_coop"

    const-string v57, "sinjar"

    const-string v58, "sinjar_coop"

    const-string v59, "sinjar_night"

    const-string v60, "station"

    const-string v61, "station_night"

    const-string v62, "tell"

    const-string v63, "tell_coop"

    const-string v64, "tell_night"

    const-string v65, "training"

    const-string v66, "uprising"

    const-string v67, "uprising_night"

    const-string v68, "verticality"

    filled-new-array/range {v22 .. v70}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Insurgency"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 484
    const-string v0, "dm_"

    const-string v3, "halls3"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 485
    const-string v0, "d2_lostcoast"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v19

    invoke-static {v3, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 486
    const-string v0, "^c[%d]a"

    move-object/from16 v3, v16

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string v0, "^t0a"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string v13, "subtransit"

    const-string v14, "undertow"

    const-string v4, "boot_camp"

    const-string v5, "bounce"

    const-string v6, "crossfire"

    const-string v7, "datacore"

    const-string v8, "frenzy"

    const-string v9, "lambda_bunker"

    const-string v10, "rapidcore"

    const-string v11, "snarkpit"

    const-string v12, "stalkyard"

    filled-new-array/range {v4 .. v14}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v21

    invoke-static {v3, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 490
    const-string v0, "ins_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 491
    const-string v0, "t_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Klaus Veen\'s Treason"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 492
    const-string v0, "l4d_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Left 4 Dead"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 493
    const-string v0, "^c[%d]m"

    const-string v1, "Left 4 Dead 2"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v0, "^c1[%d]m"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v0, "tutorial_standards"

    const-string v3, "tutorial_standards_vs"

    const-string v4, "curling_stadium"

    filled-new-array {v4, v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 496
    const-string v13, "sk_metro"

    const-string v14, "training"

    const-string v3, "clocktower"

    const-string v4, "coast"

    const-string v5, "downtown"

    const-string v6, "gate"

    const-string v7, "hydro"

    const-string v8, "metro"

    const-string v9, "metro_training"

    const-string v10, "oasis"

    const-string v11, "oilfield"

    const-string v12, "silo"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Nuclear Dawn"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 498
    const-string v0, "te_"

    const-string v1, "tw_"

    const-string v3, "bt_"

    const-string v4, "lts_"

    filled-new-array {v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pirates, Vikings, & Knights II"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 499
    const-string v0, "escape_"

    const-string v1, "testchmb_"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 500
    const-string v0, "e1912"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Portal 2"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 501
    const-string v0, "^mp_coop_"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string v0, "^sp_a"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string v23, "cppl_"

    const-string v24, "htf_"

    const-string v3, "achievement_"

    const-string v4, "arena_"

    const-string v5, "cp_"

    const-string v6, "ctf_"

    const-string v7, "itemtest"

    const-string v8, "koth_"

    const-string v9, "mvm_"

    const-string v10, "pl_"

    const-string v11, "plr_"

    const-string v12, "rd_"

    const-string v13, "pd_"

    const-string v14, "sd_"

    const-string v15, "tc_"

    const-string v16, "tr_"

    const-string v17, "trade_"

    const-string v18, "pass_"

    const-string v19, "vsh_"

    const-string v20, "zi_"

    const-string v21, "tow_"

    const-string v22, "2koth_"

    filled-new-array/range {v3 .. v24}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Team Fortress 2"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 505
    const-string v0, "zps_"

    const-string v1, "zph_"

    const-string v2, "zpa_"

    const-string v3, "zpl_"

    const-string v4, "zpo_"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Zombie Panic! Source"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 506
    const-string v6, "tp_"

    const-string v7, "vs_"

    const-string v2, "fof_"

    const-string v3, "fofhr_"

    const-string v4, "cm_"

    const-string v5, "gt_"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fistful of Frags"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 507
    const-string v0, "ff_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fortress Forever"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 508
    const-string v0, "mcv_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Military Conflict: Vietnam"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 509
    const-string v13, "dm_undertow"

    const-string v14, "bm_"

    const-string v2, "dm_boom"

    const-string v3, "dm_bounce"

    const-string v4, "dm_chopper"

    const-string v5, "dm_crossfire"

    const-string v6, "dm_gasworks"

    const-string v7, "dm_lambdabunker"

    const-string v8, "dm_power"

    const-string v9, "dm_rail"

    const-string v10, "dm_stack"

    const-string v11, "dm_stalkyard"

    const-string v12, "dm_subtransit"

    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Black Mesa"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 511
    const-string v0, "bhop_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bunny Hop"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 512
    const-string v0, "cinema_"

    const-string v1, "theater_"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cinema"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 513
    const-string v0, "xc_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Climb"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 514
    const-string v0, "deathrun_"

    const-string v1, "dr_"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Deathrun"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 515
    const-string v0, "fm_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Flood"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 516
    const-string v0, "gmt_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "GMod Tower"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 517
    const-string v0, "gg_"

    const-string v1, "scoutzknivez"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Gun Game"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 518
    const-string v0, "jail_"

    const-string v1, "jb_"

    const-string v2, "ba_"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Jailbreak"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 519
    const-string v0, "mg_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Minigames"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 520
    const-string v0, "pw_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pirate Ship Wars"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 521
    const-string v0, "ph_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Prop Hunt"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 522
    const-string v0, "rp_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Roleplay"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 523
    const-string v0, "slb_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sled Build"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 524
    const-string v0, "sb_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Spacebuild"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 525
    const-string v0, "slender_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stop it Slender"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 526
    const-string v0, "gms_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stranded"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 527
    const-string v0, "surf_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Surf"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 528
    const-string v0, "ts_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "The Stalker"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 529
    const-string v0, "zombiesurvival_"

    const-string v1, "zs_"

    const-string v2, "zm_"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Zombie Survival"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 530
    const-string v0, "ze_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Zombie Escape"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    .line 531
    const-string v0, "coop_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cooperative"

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodMaps;->names(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addonMountPrefs(Ljava/io/File;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 227
    :cond_8
    new-instance v1, Ljava/io/File;

    const-string v2, "data/gmodvr_addon_mount.txt"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_81

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    cmp-long p0, v2, v4

    if-lez p0, :cond_21

    goto :goto_81

    .line 230
    :cond_21
    :try_start_21
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v1, "[\r\n]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_39
    if-ge v3, v1, :cond_81

    aget-object v4, p0, v3

    const/16 v5, 0x20

    .line 231
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-lez v5, :cond_7e

    add-int/lit8 v6, v5, 0x1

    .line 232
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_58

    goto :goto_7e

    .line 233
    :cond_58
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 234
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7e

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x30

    if-eq v4, v6, :cond_76

    const/4 v4, 0x1

    goto :goto_77

    :cond_76
    move v4, v2

    :goto_77
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_7e} :catch_81

    :cond_7e
    :goto_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :catch_81
    :cond_81
    :goto_81
    return-object v0
.end method

.method private static addonMounted(Ljava/io/File;Ljava/util/Map;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 241
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v0}, Lcom/gmodvr/flat/GmaArchive;->archiveStem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_f
    move-object v1, v0

    .line 244
    :goto_10
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const-string v3, "[0-9]+"

    const/4 v4, 0x0

    if-eqz v2, :cond_2f

    .line 245
    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->readMeta(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v2

    .line 246
    const-string v5, ""

    if-nez v2, :cond_22

    goto :goto_28

    :cond_22
    const-string v6, "id"

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 247
    :goto_28
    invoke-virtual {v5, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_30

    :cond_2f
    move-object v5, v4

    :goto_30
    const/4 v2, 0x1

    if-nez v5, :cond_55

    .line 250
    const-string v6, "([0-9]{4,})"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 251
    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    move-object v5, v1

    goto :goto_55

    .line 252
    :cond_45
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 254
    :cond_55
    :goto_55
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_79

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addons/"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Ljava/lang/Boolean;

    :cond_79
    if-nez v4, :cond_88

    .line 255
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Ljava/lang/Boolean;

    :cond_88
    if-nez v4, :cond_93

    if-eqz v5, :cond_93

    .line 256
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Ljava/lang/Boolean;

    :cond_93
    if-eqz v4, :cond_9d

    .line 257
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_9c

    goto :goto_9d

    :cond_9c
    const/4 v2, 0x0

    :cond_9d
    :goto_9d
    return v2
.end method

.method private static atoi(Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 599
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_15

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_15

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 600
    :cond_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_35

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2d

    if-eq v2, v4, :cond_2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x2b

    if-ne v2, v5, :cond_35

    :cond_2c
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_33

    const/4 v3, -0x1

    :cond_33
    add-int/lit8 v1, v1, 0x1

    .line 601
    :cond_35
    :goto_35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_57

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_57

    const v2, 0x5f5e100

    if-ge v0, v2, :cond_57

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    move v1, v2

    goto :goto_35

    :cond_57
    mul-int/2addr v3, v0

    return v3
.end method

.method public static bspName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 359
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-le v0, v2, :cond_34

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".bsp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_34

    .line 360
    :cond_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 361
    invoke-static {p0}, Lcom/gmodvr/flat/GameMod;->validMap(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_34

    move-object v1, p0

    :cond_34
    :goto_34
    return-object v1
.end method

.method public static category(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 553
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gmodvr/flat/GmodMaps;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    sget-object v1, Lcom/gmodvr/flat/GmodMaps;->MAP_NAMES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1d

    if-eqz v0, :cond_1d

    .line 555
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    :cond_1d
    if-eqz v2, :cond_20

    return-object v2

    .line 557
    :cond_20
    sget-object v0, Lcom/gmodvr/flat/GmodMaps;->MAP_PATTERNS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/gmodvr/flat/GmodMaps$LuaPattern;->find(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_49
    if-eqz p1, :cond_72

    .line 559
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/gmodvr/flat/GmodMaps$LuaPattern;->find(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_72
    const/4 p0, 0x0

    return-object p0
.end method

.method private static gameMaps(Ljava/util/Collection;Lcom/gmodvr/flat/GmodMaps$Game;Ljava/util/Map;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gmodvr/flat/GmodMaps$Game;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 163
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    iget-object v1, p1, Lcom/gmodvr/flat/GmodMaps$Game;->id:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/gmodvr/flat/GmodMaps$Game;->title:Ljava/lang/String;

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_1e
    return-void
.end method

.method public static gameTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 303
    sget-object v0, Lcom/gmodvr/flat/GmodMaps;->GAMES:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    aget-object v5, v4, v2

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 p0, 0x1

    aget-object p0, v4, p0

    return-object p0

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_18
    return-object p0
.end method

.method public static gamemodePatterns(Ljava/io/File;Ljava/util/List;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 569
    const-string v0, ""

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 570
    const-string v2, "^gm_"

    const-string v3, "Sandbox"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v2, "^gmod_"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string v2, "^phys_"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const-string v2, "^ttt_"

    const-string v3, "Trouble in Terrorist Town"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 575
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2b
    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 577
    new-instance v2, Ljava/io/File;

    const-string v3, "gamemodes"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_45

    goto :goto_2b

    .line 579
    :cond_45
    new-instance v2, Lcom/gmodvr/flat/GameMod$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/gmodvr/flat/GameMod$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 580
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_54
    if-ge v4, v2, :cond_2b

    aget-object v5, p1, v4

    .line 581
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 582
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_d3

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/32 v9, 0x40000

    cmp-long v5, v7, v9

    if-lez v5, :cond_84

    goto :goto_d3

    .line 584
    :cond_84
    :try_start_84
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-static {v6}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v5}, Lcom/gmodvr/flat/GmodMaps$KeyValues;->parse(Ljava/lang/String;)Lcom/gmodvr/flat/GmodMaps$KeyValues;

    move-result-object v5

    if-nez v5, :cond_9a

    goto :goto_d3

    .line 586
    :cond_9a
    const-string v6, "maps"

    invoke-virtual {v5, v6, v0}, Lcom/gmodvr/flat/GmodMaps$KeyValues;->value(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 587
    const-string v7, "title"

    invoke-virtual {v5, v7, v0}, Lcom/gmodvr/flat/GmodMaps$KeyValues;->value(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 588
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_ae

    const-string v5, "Unnammed Gamemode"

    .line 589
    :cond_ae
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b5

    goto :goto_d3

    .line 590
    :cond_b5
    const-string v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_bd
    if-ge v8, v7, :cond_d3

    aget-object v9, v6, v8

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_d0

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_d0} :catch_d3

    :cond_d0
    add-int/lit8 v8, v8, 0x1

    goto :goto_bd

    :catch_d3
    :cond_d3
    :goto_d3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_54

    :cond_d7
    return-object v1
.end method

.method private static gma(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 343
    :try_start_0
    invoke-static {p0}, Lcom/gmodvr/flat/GmaArchive;->readIndex(Ljava/io/File;)Lcom/gmodvr/flat/GmaArchive$Info;

    move-result-object p0

    iget-object p0, p0, Lcom/gmodvr/flat/GmaArchive$Info;->entries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmodvr/flat/GmaArchive$Entry;

    .line 344
    iget-object v0, v0, Lcom/gmodvr/flat/GmaArchive$Entry;->archivePath:Ljava/lang/String;

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 345
    const-string v1, "maps/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_a

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gmodvr/flat/GmodMaps;->bspName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 347
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_42} :catch_43

    goto :goto_a

    :catch_43
    :cond_43
    return-void
.end method

.method public static group(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GmodMaps$Entry;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GmodMaps$Category;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 154
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/GmodMaps$Entry;

    iget-object v2, v1, Lcom/gmodvr/flat/GmodMaps$Entry;->category:Ljava/lang/String;

    new-instance v3, Lcom/gmodvr/flat/GmodMaps$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/gmodvr/flat/GmodMaps$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/GmodMaps$Category;

    iget-object v2, v2, Lcom/gmodvr/flat/GmodMaps$Category;->maps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 155
    :cond_2a
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 156
    new-instance v0, Lcom/gmodvr/flat/GmodMaps$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gmodvr/flat/GmodMaps$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/gmodvr/flat/GmodMaps$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/gmodvr/flat/GmodMaps$$ExternalSyntheticLambda2;-><init>()V

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 157
    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 156
    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 158
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/GmodMaps$Category;

    iget-object v1, v1, Lcom/gmodvr/flat/GmodMaps$Category;->maps:Ljava/util/List;

    new-instance v2, Lcom/gmodvr/flat/GmodMaps$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/gmodvr/flat/GmodMaps$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    goto :goto_4e

    :cond_69
    return-object p0
.end method

.method public static ignored(Ljava/lang/String;)Z
    .registers 7

    .line 542
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gmodvr/flat/GmodMaps;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    sget-object v1, Lcom/gmodvr/flat/GmodMaps;->IGNORE_MAPS:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_30

    if-eqz v0, :cond_1c

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_30

    .line 544
    :cond_1c
    sget-object v0, Lcom/gmodvr/flat/GmodMaps;->IGNORE_PATTERNS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v4, v2

    :goto_21
    if-ge v4, v1, :cond_2f

    aget-object v5, v0, v4

    invoke-static {p0, v5}, Lcom/gmodvr/flat/GmodMaps$LuaPattern;->find(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    return v3

    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_2f
    return v2

    :cond_30
    :goto_30
    return v3
.end method

.method private static synthetic lambda$group$2(Lcom/gmodvr/flat/GmodMaps$Category;)I
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/gmodvr/flat/GmodMaps$Category;->name:Ljava/lang/String;

    const-string v1, "Sandbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    goto :goto_19

    :cond_c
    const-string v0, "Other"

    iget-object p0, p0, Lcom/gmodvr/flat/GmodMaps$Category;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x2

    goto :goto_19

    :cond_18
    const/4 p0, 0x1

    :goto_19
    return p0
.end method

.method private static synthetic lambda$group$3(Lcom/gmodvr/flat/GmodMaps$Category;)Ljava/lang/String;
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/gmodvr/flat/GmodMaps$Category;->name:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$group$4(Lcom/gmodvr/flat/GmodMaps$Entry;)Ljava/lang/String;
    .registers 1

    .line 158
    iget-object p0, p0, Lcom/gmodvr/flat/GmodMaps$Entry;->map:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$scan$0(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    .line 126
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$scan$1(Lcom/gmodvr/flat/GmodMaps$Entry;)Ljava/lang/String;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/gmodvr/flat/GmodMaps$Entry;->map:Ljava/lang/String;

    return-object p0
.end method

.method private static loadConfig(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lcom/gmodvr/flat/GmodMaps$KeyValues;
    .registers 7

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_20

    .line 211
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cfg/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_20
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "garrysmod/cfg/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_3d
    :cond_3d
    :goto_3d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_71

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 214
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_3d

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x40000

    cmp-long p2, v0, v2

    if-lez p2, :cond_5b

    goto :goto_3d

    .line 216
    :cond_5b
    :try_start_5b
    new-instance p2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {p2}, Lcom/gmodvr/flat/GmodMaps$KeyValues;->parse(Ljava/lang/String;)Lcom/gmodvr/flat/GmodMaps$KeyValues;

    move-result-object p1
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_6e} :catch_3d

    if-eqz p1, :cond_3d

    return-object p1

    :cond_71
    const/4 p0, 0x0

    return-object p0
.end method

.method private static loose(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;[I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[I)V"
        }
    .end annotation

    .line 330
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 331
    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    .line 333
    :cond_e
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 334
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_38

    aget-object v4, v0, v3

    .line 335
    aget v5, p3, v2

    add-int/lit8 v5, v5, -0x1

    aput v5, p3, v2

    if-gez v5, :cond_21

    return-void

    .line 336
    :cond_21
    invoke-static {v4}, Lcom/gmodvr/flat/GmodMaps;->bspName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_35

    .line 337
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {p2, v5, p1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_38
    return-void
.end method

.method public static missingContentNote(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 309
    invoke-static {p0, p1}, Lcom/gmodvr/flat/GmodMaps;->missingGames(Ljava/lang/String;Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    .line 310
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 311
    :cond_c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 312
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/gmodvr/flat/GmodMaps;->gameTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 313
    :cond_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Needs "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static missingContentWarning(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 318
    invoke-static {p1, p2}, Lcom/gmodvr/flat/GmodMaps;->missingGames(Ljava/lang/String;Ljava/util/Set;)Ljava/util/List;

    move-result-object p2

    .line 319
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 320
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_15
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\n\u2022 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/gmodvr/flat/GmodMaps;->gameTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (srceng/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 322
    :cond_3b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is a "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " map, but this game content is not installed or not mounted:\n"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n\nThe map can still start, but textures, models and sounds will be missing, as in Garry\'s Mod without those games mounted. Copy the game folders into srceng/ next to garrysmod/ (and check that cfg/mountdepots.txt does not disable them)."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static missingGames(Ljava/lang/String;Ljava/util/Set;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    invoke-static {p0}, Lcom/gmodvr/flat/GmodMaps;->requiredGames(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_23
    return-object v0
.end method

.method public static mountedGameIds(Ljava/io/File;Ljava/io/File;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 285
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 286
    invoke-static {p0, p1}, Lcom/gmodvr/flat/GmodMaps;->mountedGames(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/GmodMaps$Game;

    .line 287
    iget-object v2, v1, Lcom/gmodvr/flat/GmodMaps$Game;->id:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v1, v1, Lcom/gmodvr/flat/GmodMaps$Game;->folder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 290
    :cond_32
    invoke-static {p0}, Lcom/gmodvr/flat/GmodMaps;->usesHL2Fallback(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_3d

    const-string p0, "hl2"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3d
    return-object v0
.end method

.method public static mountedGames(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GmodMaps$Game;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 176
    const-string v2, "mountdepots.txt"

    invoke-static {p0, p1, v2}, Lcom/gmodvr/flat/GmodMaps;->loadConfig(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lcom/gmodvr/flat/GmodMaps$KeyValues;

    move-result-object v2

    .line 177
    sget-object v3, Lcom/gmodvr/flat/GmodMaps;->GAMES:[[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_15
    const/4 v7, 0x1

    if-ge v6, v4, :cond_53

    aget-object v8, v3, v6

    .line 178
    new-instance v9, Ljava/io/File;

    aget-object v10, v8, v5

    invoke-direct {v9, p0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_28

    goto :goto_50

    :cond_28
    if-eqz v2, :cond_39

    .line 180
    aget-object v10, v8, v5

    const-string v11, "1"

    invoke-virtual {v2, v10, v11}, Lcom/gmodvr/flat/GmodMaps$KeyValues;->value(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gmodvr/flat/GmodMaps;->atoi(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_39

    goto :goto_50

    .line 181
    :cond_39
    new-instance v10, Lcom/gmodvr/flat/GmodMaps$Game;

    aget-object v11, v8, v5

    aget-object v7, v8, v7

    invoke-direct {v10, v11, v7, v9}, Lcom/gmodvr/flat/GmodMaps$Game;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    aget-object v7, v8, v5

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_50
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 184
    :cond_53
    const-string v2, "mount.cfg"

    invoke-static {p0, p1, v2}, Lcom/gmodvr/flat/GmodMaps;->loadConfig(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lcom/gmodvr/flat/GmodMaps$KeyValues;

    move-result-object p1

    if-eqz p1, :cond_e8

    .line 186
    iget-object p1, p1, Lcom/gmodvr/flat/GmodMaps$KeyValues;->children:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_61
    :goto_61
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/GmodMaps$KeyValues;

    .line 187
    iget-object v3, v2, Lcom/gmodvr/flat/GmodMaps$KeyValues;->value:Ljava/lang/String;

    if-eqz v3, :cond_61

    iget-object v3, v2, Lcom/gmodvr/flat/GmodMaps$KeyValues;->key:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_61

    iget-object v3, v2, Lcom/gmodvr/flat/GmodMaps$KeyValues;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_82

    goto :goto_61

    .line 188
    :cond_82
    iget-object v3, v2, Lcom/gmodvr/flat/GmodMaps$KeyValues;->key:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    goto :goto_61

    .line 189
    :cond_91
    iget-object v3, v2, Lcom/gmodvr/flat/GmodMaps$KeyValues;->value:Ljava/lang/String;

    const/16 v4, 0x5c

    const/16 v6, 0x2f

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 190
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isAbsolute()Z

    move-result v4

    if-eqz v4, :cond_ac

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_b1

    :cond_ac
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 191
    :goto_b1
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_b8

    goto :goto_61

    .line 192
    :cond_b8
    iget-object v3, v2, Lcom/gmodvr/flat/GmodMaps$KeyValues;->key:Ljava/lang/String;

    .line 193
    sget-object v6, Lcom/gmodvr/flat/GmodMaps;->GAMES:[[Ljava/lang/String;

    array-length v8, v6

    move v9, v5

    :goto_be
    if-ge v9, v8, :cond_d1

    aget-object v10, v6, v9

    aget-object v11, v10, v5

    iget-object v12, v2, Lcom/gmodvr/flat/GmodMaps$KeyValues;->key:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_ce

    aget-object v3, v10, v7

    :cond_ce
    add-int/lit8 v9, v9, 0x1

    goto :goto_be

    .line 194
    :cond_d1
    new-instance v6, Lcom/gmodvr/flat/GmodMaps$Game;

    iget-object v8, v2, Lcom/gmodvr/flat/GmodMaps$KeyValues;->key:Ljava/lang/String;

    invoke-direct {v6, v8, v3, v4}, Lcom/gmodvr/flat/GmodMaps$Game;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v2, v2, Lcom/gmodvr/flat/GmodMaps$KeyValues;->key:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_61

    :cond_e8
    return-object v0
.end method

.method private static varargs names(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6

    .line 434
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p1, v1

    sget-object v3, Lcom/gmodvr/flat/GmodMaps;->MAP_NAMES:Ljava/util/Map;

    invoke-interface {v3, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return-void
.end method

.method private static nonEmpty(Ljava/io/File;)Z
    .registers 5

    .line 206
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static prefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x5f

    .line 536
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_a

    const/4 p0, 0x0

    goto :goto_11

    :cond_a
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 537
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_11
    return-object p0
.end method

.method public static requiredGames(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_7

    .line 269
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 270
    :cond_7
    const-string v0, "episodic"

    const-string v1, "hl2"

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_6c

    goto :goto_3f

    :sswitch_14
    const-string v3, "Half-Life 2: Lost Coast"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_3f

    :cond_1d
    const/4 v2, 0x3

    goto :goto_3f

    :sswitch_1f
    const-string v3, "Half-Life 2"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_3f

    :cond_28
    const/4 v2, 0x2

    goto :goto_3f

    :sswitch_2a
    const-string v3, "Half-Life 2: Episode 2"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto :goto_3f

    :cond_33
    const/4 v2, 0x1

    goto :goto_3f

    :sswitch_35
    const-string v3, "Half-Life 2: Episode 1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    packed-switch v2, :pswitch_data_7e

    .line 275
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 274
    :pswitch_47
    const-string p0, "lostcoast"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 271
    :pswitch_52
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 273
    :pswitch_57
    const-string p0, "ep2"

    filled-new-array {v1, v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 272
    :pswitch_62
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_6c
    .sparse-switch
        -0x4f738122 -> :sswitch_35
        -0x4f738121 -> :sswitch_2a
        0x34dd12e8 -> :sswitch_1f
        0x35d8a928 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_62
        :pswitch_57
        :pswitch_52
        :pswitch_47
    .end packed-switch
.end method

.method public static scan(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GmodMaps$Entry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 80
    new-instance v1, Ljava/io/File;

    const-string v2, "garrysmod"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 82
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const v5, 0x30d40

    .line 83
    filled-new-array {v5}, [I

    move-result-object v5

    .line 86
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-static/range {p1 .. p1}, Lcom/gmodvr/flat/GmodMaps;->addonMountPrefs(Ljava/io/File;)Ljava/util/Map;

    move-result-object v7

    .line 88
    new-instance v8, Ljava/io/File;

    const-string v9, "addons"

    invoke-direct {v8, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 89
    const-string v9, "."

    const-string v10, "maps"

    if-eqz v8, :cond_a3

    .line 90
    new-instance v12, Lcom/gmodvr/flat/GameMod$$ExternalSyntheticLambda1;

    invoke-direct {v12}, Lcom/gmodvr/flat/GameMod$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v12}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v12

    invoke-static {v8, v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 91
    array-length v12, v8

    const/4 v13, 0x0

    :goto_42
    if-ge v13, v12, :cond_a3

    aget-object v14, v8, v13

    .line 92
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    .line 93
    invoke-virtual {v15, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_56

    invoke-static {v14, v7}, Lcom/gmodvr/flat/GmodMaps;->addonMounted(Ljava/io/File;Ljava/util/Map;)Z

    move-result v16

    if-nez v16, :cond_59

    :cond_56
    move-object/from16 v16, v7

    goto :goto_9e

    .line 94
    :cond_59
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v16

    const-string v11, "addon "

    if-eqz v16, :cond_7e

    .line 95
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v7

    .line 96
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v14, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11, v3, v5}, Lcom/gmodvr/flat/GmodMaps;->loose(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;[I)V

    goto :goto_9e

    :cond_7e
    move-object/from16 v16, v7

    .line 97
    invoke-virtual {v14}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_9e

    invoke-static {v15}, Lcom/gmodvr/flat/GmaArchive;->isArchiveName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9e

    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7, v3}, Lcom/gmodvr/flat/GmodMaps;->gma(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;)V

    :cond_9e
    :goto_9e
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, v16

    goto :goto_42

    .line 103
    :cond_a3
    new-instance v7, Ljava/io/File;

    const-string v8, "garrysmod_dir.vpk"

    invoke-direct {v7, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v8, "garrysmod.vpk"

    invoke-static {v7, v8, v3}, Lcom/gmodvr/flat/GmodMaps;->vpk(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;)V

    .line 105
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/GmodMaps;->usesHL2Fallback(Ljava/io/File;)Z

    move-result v7

    .line 106
    sget-object v8, Lcom/gmodvr/flat/GmodMaps;->HL2_PACKS:[Ljava/lang/String;

    array-length v11, v8

    const/4 v12, 0x0

    :goto_b7
    const-string v13, "_dir.vpk"

    const-string v14, "sourceengine/"

    if-ge v12, v11, :cond_132

    aget-object v15, v8, v12

    move-object/from16 v16, v8

    .line 107
    new-instance v8, Ljava/io/File;

    move/from16 v17, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    new-instance v11, Ljava/io/File;

    move-object/from16 v18, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v9

    const-string v9, "hl2/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v11, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    invoke-static {v8}, Lcom/gmodvr/flat/GmodMaps;->nonEmpty(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_106

    invoke-static {v11}, Lcom/gmodvr/flat/GmodMaps;->nonEmpty(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_104

    goto :goto_106

    :cond_104
    move-object v6, v11

    goto :goto_107

    :cond_106
    :goto_106
    move-object v6, v8

    :goto_107
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/gmodvr/flat/GmodMaps;->nonEmpty(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_11a

    invoke-static {v11}, Lcom/gmodvr/flat/GmodMaps;->nonEmpty(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_119

    goto :goto_11a

    :cond_119
    move-object v14, v9

    :cond_11a
    :goto_11a
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v3}, Lcom/gmodvr/flat/GmodMaps;->vpk(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, v16

    move/from16 v11, v17

    move-object/from16 v6, v18

    move-object/from16 v9, v19

    goto :goto_b7

    :cond_132
    move-object/from16 v18, v6

    move-object/from16 v19, v9

    .line 112
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6, v2, v3, v5}, Lcom/gmodvr/flat/GmodMaps;->loose(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;[I)V

    .line 113
    new-instance v2, Ljava/io/File;

    const-string v6, "sourceengine/maps"

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v6, "sourceengine"

    invoke-static {v2, v6, v3, v5}, Lcom/gmodvr/flat/GmodMaps;->loose(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;[I)V

    if-eqz v7, :cond_170

    .line 115
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 116
    new-instance v6, Ljava/io/File;

    const-string v7, "hl2/maps"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v7, "hl2"

    invoke-static {v6, v7, v2, v5}, Lcom/gmodvr/flat/GmodMaps;->loose(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;[I)V

    .line 117
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    new-instance v6, Lcom/gmodvr/flat/GmodMaps$Game;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v9, "Half-Life 2"

    invoke-direct {v6, v7, v9, v8}, Lcom/gmodvr/flat/GmodMaps$Game;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-static {v2, v6, v3, v4}, Lcom/gmodvr/flat/GmodMaps;->gameMaps(Ljava/util/Collection;Lcom/gmodvr/flat/GmodMaps$Game;Ljava/util/Map;Ljava/util/Map;)V

    .line 119
    :cond_170
    new-instance v2, Ljava/io/File;

    const-string v6, "download/maps"

    invoke-direct {v2, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v6, "download"

    invoke-static {v2, v6, v3, v5}, Lcom/gmodvr/flat/GmodMaps;->loose(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;[I)V

    .line 121
    sget-object v2, Lcom/gmodvr/flat/GmodMaps;->CONTENT_PACKS:[Ljava/lang/String;

    array-length v6, v2

    const/4 v7, 0x0

    :goto_180
    if-ge v7, v6, :cond_1b0

    aget-object v8, v2, v7

    new-instance v9, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8, v3}, Lcom/gmodvr/flat/GmodMaps;->vpk(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_180

    .line 123
    :cond_1b0
    invoke-static/range {p0 .. p1}, Lcom/gmodvr/flat/GmodMaps;->mountedGames(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_237

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/GmodMaps$Game;

    .line 124
    iget-object v6, v2, Lcom/gmodvr/flat/GmodMaps$Game;->folder:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_21a

    .line 126
    new-instance v7, Lcom/gmodvr/flat/GmodMaps$$ExternalSyntheticLambda4;

    invoke-direct {v7}, Lcom/gmodvr/flat/GmodMaps$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v7}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 127
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1da
    if-ge v8, v7, :cond_21a

    aget-object v9, v6, v8

    .line 128
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, v19

    .line 129
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_215

    invoke-virtual {v11, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_215

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v14

    if-nez v14, :cond_1fd

    goto :goto_215

    .line 130
    :cond_1fd
    const-string v14, "_sound_vo_"

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_20e

    const-string v14, "_sound_vo_english_"

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_20e

    goto :goto_215

    .line 131
    :cond_20e
    invoke-static {v9}, Lcom/gmodvr/flat/GmodMaps;->vpkMaps(Ljava/io/File;)Ljava/util/List;

    move-result-object v9

    invoke-static {v9, v2, v3, v4}, Lcom/gmodvr/flat/GmodMaps;->gameMaps(Ljava/util/Collection;Lcom/gmodvr/flat/GmodMaps$Game;Ljava/util/Map;Ljava/util/Map;)V

    :cond_215
    :goto_215
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v19, v12

    goto :goto_1da

    :cond_21a
    move-object/from16 v12, v19

    .line 134
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 135
    new-instance v7, Ljava/io/File;

    iget-object v8, v2, Lcom/gmodvr/flat/GmodMaps$Game;->folder:Ljava/io/File;

    invoke-direct {v7, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v8, v2, Lcom/gmodvr/flat/GmodMaps$Game;->id:Ljava/lang/String;

    invoke-static {v7, v8, v6, v5}, Lcom/gmodvr/flat/GmodMaps;->loose(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;[I)V

    .line 136
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6, v2, v3, v4}, Lcom/gmodvr/flat/GmodMaps;->gameMaps(Ljava/util/Collection;Lcom/gmodvr/flat/GmodMaps$Game;Ljava/util/Map;Ljava/util/Map;)V

    move-object/from16 v19, v12

    goto :goto_1b8

    :cond_237
    move-object/from16 v2, v18

    .line 139
    invoke-static {v1, v2}, Lcom/gmodvr/flat/GmodMaps;->gamemodePatterns(Ljava/io/File;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_290

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 142
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/gmodvr/flat/GmodMaps;->ignored(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_263

    goto :goto_24a

    .line 143
    :cond_263
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/gmodvr/flat/GmodMaps;->category(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_27b

    .line 144
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Other"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 145
    :cond_27b
    new-instance v6, Lcom/gmodvr/flat/GmodMaps$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v6, v7, v5, v3}, Lcom/gmodvr/flat/GmodMaps$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24a

    .line 147
    :cond_290
    new-instance v0, Lcom/gmodvr/flat/GmodMaps$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/gmodvr/flat/GmodMaps$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v1
.end method

.method private static string(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 418
    :goto_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-eqz v1, :cond_1c

    .line 419
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v1, v0

    const/16 v2, 0x1000

    if-gt v1, v2, :cond_14

    goto :goto_4

    :cond_14
    new-instance p0, Ljava/io/IOException;

    const-string v0, "VPK path is too long"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 421
    :cond_1c
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v0, p0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static usesHL2Fallback(Ljava/io/File;)Z
    .registers 3

    .line 203
    new-instance v0, Ljava/io/File;

    const-string v1, "sourceengine/hl2_misc_dir.vpk"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gmodvr/flat/GmodMaps;->nonEmpty(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1c

    new-instance v0, Ljava/io/File;

    const-string v1, "hl2/hl2_misc_dir.vpk"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gmodvr/flat/GmodMaps;->nonEmpty(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method private static vpk(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 354
    invoke-static {p0}, Lcom/gmodvr/flat/GmodMaps;->vpkMaps(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_18
    return-void
.end method

.method public static vpkEntries(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_c

    return-object v0

    .line 382
    :cond_c
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 383
    :try_start_13
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0xc

    cmp-long p0, v2, v4

    if-ltz p0, :cond_101

    .line 384
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    .line 385
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    .line 386
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    const/16 v5, 0xc

    const/4 v6, 0x1

    if-ne v2, v6, :cond_40

    move v7, v5

    goto :goto_42

    :cond_40
    const/16 v7, 0x1c

    :goto_42
    const v8, 0x55aa1234

    if-ne p0, v8, :cond_f9

    if-eq v2, v6, :cond_4c

    const/4 p0, 0x2

    if-ne v2, p0, :cond_f9

    :cond_4c
    const-wide/32 v8, 0x4000000

    cmp-long p0, v3, v8

    if-gtz p0, :cond_f9

    int-to-long v6, v7

    add-long v8, v3, v6

    .line 388
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    cmp-long p0, v8, v10

    if-gtz p0, :cond_f9

    long-to-int p0, v3

    .line 390
    new-array p0, p0, [B

    .line 391
    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 392
    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 393
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_71
    .catchall {:try_start_13 .. :try_end_71} :catchall_c2

    .line 396
    :cond_71
    :try_start_71
    invoke-static {p0}, Lcom/gmodvr/flat/GmodMaps;->string(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ed

    .line 397
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 399
    :cond_7f
    invoke-static {p0}, Lcom/gmodvr/flat/GmodMaps;->string(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_71

    .line 401
    :cond_89
    :goto_89
    invoke-static {p0}, Lcom/gmodvr/flat/GmodMaps;->string(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7f

    .line 402
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 403
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v7

    .line 404
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v8

    add-int/2addr v7, v5

    invoke-static {v8, v7}, Ljava/lang/Math;->addExact(II)I

    move-result v7

    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-eqz v3, :cond_89

    .line 405
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c6

    const-string v8, ""

    goto :goto_d7

    :catchall_c2
    move-exception p0

    goto :goto_109

    :catch_c4
    move-exception p0

    goto :goto_f1

    :cond_c6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_d7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ec
    .catch Ljava/nio/BufferUnderflowException; {:try_start_71 .. :try_end_ec} :catch_c4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_71 .. :try_end_ec} :catch_c4
    .catch Ljava/lang/ArithmeticException; {:try_start_71 .. :try_end_ec} :catch_c4
    .catchall {:try_start_71 .. :try_end_ec} :catchall_c2

    goto :goto_89

    .line 412
    :cond_ed
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object v0

    .line 410
    :goto_f1
    :try_start_f1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Corrupt VPK tree"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 389
    :cond_f9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid VPK directory"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 383
    :cond_101
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Truncated VPK"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_109
    .catchall {:try_start_f1 .. :try_end_109} :catchall_c2

    .line 382
    :goto_109
    :try_start_109
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10c
    .catchall {:try_start_109 .. :try_end_10c} :catchall_10d

    goto :goto_111

    :catchall_10d
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_111
    throw p0
.end method

.method public static vpkMaps(Ljava/io/File;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 368
    :try_start_5
    const-string v1, "bsp"

    invoke-static {p0, v1}, Lcom/gmodvr/flat/GmodMaps;->vpkEntries(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x2f

    .line 369
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_f

    const/4 v3, 0x0

    .line 370
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "maps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_31

    goto :goto_f

    :cond_31
    add-int/lit8 v2, v2, 0x1

    .line 371
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gmodvr/flat/GmodMaps;->bspName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 372
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_40} :catch_41

    goto :goto_f

    :catch_41
    :cond_41
    return-object v0
.end method

###### Class com.gmodvr.flat.GmodMaps.Category (com.gmodvr.flat.GmodMaps$Category)
.class final Lcom/gmodvr/flat/GmodMaps$Category;
.super Ljava/lang/Object;
.source "GmodMaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/GmodMaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Category"
.end annotation


# instance fields
.field final maps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GmodMaps$Entry;",
            ">;"
        }
    .end annotation
.end field

.field final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/GmodMaps$Category;->maps:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lcom/gmodvr/flat/GmodMaps$Category;->name:Ljava/lang/String;

    return-void
.end method

###### Class com.gmodvr.flat.GmodMaps.Entry (com.gmodvr.flat.GmodMaps$Entry)
.class final Lcom/gmodvr/flat/GmodMaps$Entry;
.super Ljava/lang/Object;
.source "GmodMaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/GmodMaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field final category:Ljava/lang/String;

.field final map:Ljava/lang/String;

.field final source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/GmodMaps$Entry;->map:Ljava/lang/String;

    iput-object p2, p0, Lcom/gmodvr/flat/GmodMaps$Entry;->category:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmodvr/flat/GmodMaps$Entry;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gmodvr/flat/GmodMaps$Entry;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmodvr/flat/GmodMaps$Entry;->map:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gmodvr/flat/GmodMaps$Entry;->source:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.GmodMaps.Game (com.gmodvr.flat.GmodMaps$Game)
.class final Lcom/gmodvr/flat/GmodMaps$Game;
.super Ljava/lang/Object;
.source "GmodMaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/GmodMaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Game"
.end annotation


# instance fields
.field final folder:Ljava/io/File;

.field final id:Ljava/lang/String;

.field final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/GmodMaps$Game;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/gmodvr/flat/GmodMaps$Game;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmodvr/flat/GmodMaps$Game;->folder:Ljava/io/File;

    return-void
.end method

###### Class com.gmodvr.flat.GmodMaps.KeyValues (com.gmodvr.flat.GmodMaps$KeyValues)
.class final Lcom/gmodvr/flat/GmodMaps$KeyValues;
.super Ljava/lang/Object;
.source "GmodMaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/GmodMaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyValues"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;
    }
.end annotation


# instance fields
.field final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GmodMaps$KeyValues;",
            ">;"
        }
    .end annotation
.end field

.field final key:Ljava/lang/String;

.field final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues;->children:Ljava/util/List;

    .line 612
    iput-object p1, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues;->value:Ljava/lang/String;

    return-void
.end method

.method private block(Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;I)Z
    .registers 10

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-le p2, v0, :cond_6

    return v1

    .line 632
    :cond_6
    :goto_6
    invoke-virtual {p1}, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->next()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 633
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_16

    return v4

    .line 634
    :cond_16
    invoke-virtual {p1}, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->next()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 635
    const-string v5, "{"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_50

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_50

    .line 636
    :cond_2b
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 637
    new-instance v2, Lcom/gmodvr/flat/GmodMaps$KeyValues;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/gmodvr/flat/GmodMaps$KeyValues;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v4, p2

    .line 638
    invoke-direct {v2, p1, v4}, Lcom/gmodvr/flat/GmodMaps$KeyValues;->block(Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;I)Z

    move-result v0

    if-nez v0, :cond_3f

    return v1

    .line 639
    :cond_3f
    iget-object v0, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues;->children:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 641
    :cond_45
    iget-object v2, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues;->children:Ljava/util/List;

    new-instance v4, Lcom/gmodvr/flat/GmodMaps$KeyValues;

    invoke-direct {v4, v0, v3}, Lcom/gmodvr/flat/GmodMaps$KeyValues;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_50
    :goto_50
    return v1
.end method

.method public static parse(Ljava/lang/String;)Lcom/gmodvr/flat/GmodMaps$KeyValues;
    .registers 5

    .line 621
    new-instance v0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;

    invoke-direct {v0, p0}, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;-><init>(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v0}, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->next()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_35

    .line 623
    const-string v2, "{"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    const-string v3, "}"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_35

    .line 624
    :cond_1d
    invoke-virtual {v0}, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->next()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    return-object v1

    .line 625
    :cond_28
    new-instance v2, Lcom/gmodvr/flat/GmodMaps$KeyValues;

    invoke-direct {v2, p0, v1}, Lcom/gmodvr/flat/GmodMaps$KeyValues;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 626
    invoke-direct {v2, v0, p0}, Lcom/gmodvr/flat/GmodMaps$KeyValues;->block(Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;I)Z

    move-result p0

    if-eqz p0, :cond_35

    move-object v1, v2

    :cond_35
    :goto_35
    return-object v1
.end method


# virtual methods
.method public value(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 615
    iget-object p0, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues;->children:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmodvr/flat/GmodMaps$KeyValues;

    iget-object v1, v0, Lcom/gmodvr/flat/GmodMaps$KeyValues;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, v0, Lcom/gmodvr/flat/GmodMaps$KeyValues;->value:Ljava/lang/String;

    if-eqz v0, :cond_6

    return-object v0

    :cond_1f
    return-object p2
.end method

###### Class com.gmodvr.flat.GmodMaps.KeyValues.Tokenizer (com.gmodvr.flat.GmodMaps$KeyValues$Tokenizer)
.class final Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;
.super Ljava/lang/Object;
.source "GmodMaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/GmodMaps$KeyValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tokenizer"
.end annotation


# instance fields
.field i:I

.field final s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\ufeff"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/String;
    .registers 5

    .line 652
    :cond_0
    :goto_0
    iget v0, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    iget-object v1, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1f

    iget-object v0, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->s:Ljava/lang/String;

    iget v1, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    goto :goto_0

    .line 653
    :cond_1f
    iget-object v0, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->s:Ljava/lang/String;

    const-string v1, "//"

    iget v2, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_48

    :goto_2b
    iget v0, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    iget-object v1, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->s:Ljava/lang/String;

    iget v1, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    goto :goto_2b

    .line 654
    :cond_48
    iget v0, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    iget-object v1, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_76

    iget-object v0, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->s:Ljava/lang/String;

    iget v1, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_76

    .line 655
    iget-object v0, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->s:Ljava/lang/String;

    const/16 v1, 0x5d

    iget v2, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_71

    .line 656
    iget-object v0, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_73

    :cond_71
    add-int/lit8 v0, v0, 0x1

    :goto_73
    iput v0, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    goto :goto_0

    .line 661
    :cond_76
    iget v0, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    iget-object v1, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_82

    const/4 p0, 0x0

    return-object p0

    .line 662
    :cond_82
    iget-object v0, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->s:Ljava/lang/String;

    iget v1, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_116

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_98

    goto/16 :goto_116

    :cond_98
    const/16 v1, 0x22

    if-ne v0, v1, :cond_da

    .line 665
    iget v0, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    .line 666
    :goto_9e
    iget v2, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    iget-object v3, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->s:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_b9

    iget-object v2, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->s:Ljava/lang/String;

    iget v3, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_b9

    iget v2, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    goto :goto_9e

    .line 667
    :cond_b9
    iget-object v1, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->s:Ljava/lang/String;

    iget v2, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 668
    iget v1, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    iget-object v2, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->s:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_d9

    iget v1, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    :cond_d9
    return-object v0

    .line 671
    :cond_da
    iget v0, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    add-int/lit8 v0, v0, -0x1

    .line 672
    :goto_de
    iget v1, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    iget-object v2, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->s:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_10d

    iget-object v1, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->s:Ljava/lang/String;

    iget v2, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_10d

    iget-object v1, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->s:Ljava/lang/String;

    iget v2, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v2, "{}\""

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_10d

    iget v1, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    goto :goto_de

    .line 673
    :cond_10d
    iget-object v1, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->s:Ljava/lang/String;

    iget p0, p0, Lcom/gmodvr/flat/GmodMaps$KeyValues$Tokenizer;->i:I

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 663
    :cond_116
    :goto_116
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.GmodMaps.LuaPattern (com.gmodvr.flat.GmodMaps$LuaPattern)
.class final Lcom/gmodvr/flat/GmodMaps$LuaPattern;
.super Ljava/lang/Object;
.source "GmodMaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/GmodMaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LuaPattern"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static classEnd(Ljava/lang/String;I)I
    .registers 6

    add-int/lit8 v0, p1, 0x1

    .line 730
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_1b

    .line 732
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge v0, p0, :cond_13

    add-int/lit8 p1, p1, 0x2

    return p1

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "malformed pattern (ends with \'%\')"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    const/16 v3, 0x5b

    if-ne v1, v3, :cond_5a

    .line 736
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x5e

    if-ne v1, v3, :cond_2f

    add-int/lit8 v0, p1, 0x2

    .line 738
    :cond_2f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v0, p1, :cond_52

    add-int/lit8 p1, v0, 0x1

    .line 739
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_40

    add-int/lit8 v0, v0, 0x2

    goto :goto_41

    :cond_40
    move v0, p1

    .line 741
    :goto_41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v0, p1, :cond_2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x5d

    if-ne p1, v1, :cond_2f

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 738
    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "malformed pattern (missing \']\')"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5a
    return v0
.end method

.method public static find(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 684
    :try_start_1
    const-string v1, "^"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    invoke-static {p0, v0, p1, v2}, Lcom/gmodvr/flat/GmodMaps$LuaPattern;->match(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_11

    move v0, v2

    :cond_11
    return v0

    :cond_12
    move v1, v0

    .line 685
    :goto_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v1, v3, :cond_23

    invoke-static {p0, v1, p1, v0}, Lcom/gmodvr/flat/GmodMaps$LuaPattern;->match(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v3
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1d} :catch_23

    if-ltz v3, :cond_20

    return v2

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :catch_23
    :cond_23
    return v0
.end method

.method private static match(Ljava/lang/String;ILjava/lang/String;I)I
    .registers 10

    .line 692
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p3, v0, :cond_7

    return p1

    .line 693
    :cond_7
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x24

    const/4 v2, -0x1

    if-ne v0, v1, :cond_21

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_21

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p1, p0, :cond_1f

    goto :goto_20

    :cond_1f
    move p1, v2

    :goto_20
    return p1

    .line 694
    :cond_21
    invoke-static {p2, p3}, Lcom/gmodvr/flat/GmodMaps$LuaPattern;->classEnd(Ljava/lang/String;I)I

    move-result v0

    .line 695
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-ge p1, v1, :cond_38

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, p2, p3, v0}, Lcom/gmodvr/flat/GmodMaps$LuaPattern;->single(CLjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_38

    move v1, v3

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    .line 696
    :goto_39
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_76

    .line 697
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_71

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_69

    const/16 v3, 0x2d

    if-eq v4, v3, :cond_64

    const/16 p3, 0x3f

    if-eq v4, p3, :cond_54

    goto :goto_76

    :cond_54
    if-eqz v1, :cond_61

    add-int/lit8 p3, p1, 0x1

    add-int/lit8 v1, v0, 0x1

    .line 699
    invoke-static {p0, p3, p2, v1}, Lcom/gmodvr/flat/GmodMaps$LuaPattern;->match(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p3

    if-ltz p3, :cond_61

    return p3

    :cond_61
    add-int/lit8 p3, v0, 0x1

    goto :goto_0

    .line 704
    :cond_64
    invoke-static {p0, p1, p2, p3, v0}, Lcom/gmodvr/flat/GmodMaps$LuaPattern;->minExpand(Ljava/lang/String;ILjava/lang/String;II)I

    move-result p0

    return p0

    :cond_69
    if-eqz v1, :cond_70

    add-int/2addr p1, v3

    .line 703
    invoke-static {p0, p1, p2, p3, v0}, Lcom/gmodvr/flat/GmodMaps$LuaPattern;->maxExpand(Ljava/lang/String;ILjava/lang/String;II)I

    move-result v2

    :cond_70
    return v2

    .line 702
    :cond_71
    invoke-static {p0, p1, p2, p3, v0}, Lcom/gmodvr/flat/GmodMaps$LuaPattern;->maxExpand(Ljava/lang/String;ILjava/lang/String;II)I

    move-result p0

    return p0

    :cond_76
    :goto_76
    if-nez v1, :cond_79

    return v2

    :cond_79
    add-int/lit8 p1, p1, 0x1

    move p3, v0

    goto :goto_0
.end method

.method private static matchBracket(CLjava/lang/String;II)Z
    .registers 10

    add-int/lit8 v0, p2, 0x1

    .line 775
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5e

    const/4 v3, 0x1

    if-ne v1, v2, :cond_10

    const/4 p2, 0x0

    move v5, v0

    move v0, p2

    move p2, v5

    goto :goto_11

    :cond_10
    move v0, v3

    :cond_11
    :goto_11
    add-int/lit8 v1, p2, 0x1

    if-ge v1, p3, :cond_50

    .line 777
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x25

    if-ne v2, v4, :cond_2a

    add-int/lit8 p2, p2, 0x2

    .line 779
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {p0, v1}, Lcom/gmodvr/flat/GmodMaps$LuaPattern;->matchClass(CC)Z

    move-result v1

    if-eqz v1, :cond_11

    return v0

    :cond_2a
    add-int/lit8 v2, p2, 0x3

    if-ge v2, p3, :cond_47

    add-int/lit8 p2, p2, 0x2

    .line 780
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v4, 0x2d

    if-ne p2, v4, :cond_47

    .line 781
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-gt p2, p0, :cond_45

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-gt p0, p2, :cond_45

    return v0

    :cond_45
    move p2, v2

    goto :goto_11

    .line 783
    :cond_47
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, p0, :cond_4e

    return v0

    :cond_4e
    move p2, v1

    goto :goto_11

    :cond_50
    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method private static matchClass(CC)Z
    .registers 11

    .line 758
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x80

    const/16 v2, 0x61

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_85

    const/16 v5, 0x6c

    if-eq v0, v5, :cond_7e

    const/16 v5, 0x70

    const/16 v6, 0x7f

    const/16 v7, 0x20

    if-eq v0, v5, :cond_73

    const/16 v5, 0x73

    if-eq v0, v5, :cond_68

    const/16 v5, 0x75

    const/16 v8, 0x41

    if-eq v0, v5, :cond_61

    const/16 v5, 0x63

    if-eq v0, v5, :cond_5c

    const/16 v5, 0x64

    const/16 v6, 0x39

    const/16 v7, 0x30

    if-eq v0, v5, :cond_57

    const/16 v5, 0x77

    if-eq v0, v5, :cond_4e

    const/16 v1, 0x78

    if-eq v0, v1, :cond_3a

    if-ne p1, p0, :cond_39

    move v3, v4

    :cond_39
    return v3

    :cond_3a
    if-lt p0, v7, :cond_3e

    if-le p0, v6, :cond_4a

    :cond_3e
    if-lt p0, v2, :cond_44

    const/16 v0, 0x66

    if-le p0, v0, :cond_4a

    :cond_44
    if-lt p0, v8, :cond_4c

    const/16 v0, 0x46

    if-gt p0, v0, :cond_4c

    :cond_4a
    :goto_4a
    move p0, v4

    goto :goto_8e

    :cond_4c
    move p0, v3

    goto :goto_8e

    :cond_4e
    if-ge p0, v1, :cond_4c

    .line 766
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p0

    if-eqz p0, :cond_4c

    goto :goto_4a

    :cond_57
    if-lt p0, v7, :cond_4c

    if-gt p0, v6, :cond_4c

    goto :goto_4a

    :cond_5c
    if-lt p0, v7, :cond_4a

    if-ne p0, v6, :cond_4c

    goto :goto_4a

    :cond_61
    if-lt p0, v8, :cond_4c

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_4c

    goto :goto_4a

    :cond_68
    if-eq p0, v7, :cond_4a

    const/16 v0, 0x9

    if-lt p0, v0, :cond_4c

    const/16 v0, 0xd

    if-gt p0, v0, :cond_4c

    goto :goto_4a

    :cond_73
    if-le p0, v7, :cond_4c

    if-ge p0, v6, :cond_4c

    .line 763
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p0

    if-nez p0, :cond_4c

    goto :goto_4a

    :cond_7e
    if-lt p0, v2, :cond_4c

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_4c

    goto :goto_4a

    .line 759
    :cond_85
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_4c

    if-ge p0, v1, :cond_4c

    goto :goto_4a

    .line 770
    :goto_8e
    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p1

    if-eq p1, p0, :cond_95

    move v3, v4

    :cond_95
    return v3
.end method

.method private static maxExpand(Ljava/lang/String;ILjava/lang/String;II)I
    .registers 8

    const/4 v0, 0x0

    :goto_1
    add-int v1, p1, v0

    .line 715
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_16

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, p2, p3, p4}, Lcom/gmodvr/flat/GmodMaps$LuaPattern;->single(CLjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_16

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    :goto_16
    if-ltz v0, :cond_26

    add-int p3, p1, v0

    add-int/lit8 v1, p4, 0x1

    .line 716
    invoke-static {p0, p3, p2, v1}, Lcom/gmodvr/flat/GmodMaps$LuaPattern;->match(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p3

    if-ltz p3, :cond_23

    return p3

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    :cond_26
    const/4 p0, -0x1

    return p0
.end method

.method private static minExpand(Ljava/lang/String;ILjava/lang/String;II)I
    .registers 6

    :goto_0
    add-int/lit8 v0, p4, 0x1

    .line 722
    invoke-static {p0, p1, p2, v0}, Lcom/gmodvr/flat/GmodMaps$LuaPattern;->match(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_9

    return v0

    .line 724
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1c

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p2, p3, p4}, Lcom/gmodvr/flat/GmodMaps$LuaPattern;->single(CLjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1c

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1c
    const/4 p0, -0x1

    return p0
.end method

.method private static single(CLjava/lang/String;II)Z
    .registers 7

    .line 748
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x25

    const/4 v2, 0x1

    if-eq v0, v1, :cond_21

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_20

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_1a

    .line 752
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, p0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    return v2

    :cond_1a
    sub-int/2addr p3, v2

    .line 751
    invoke-static {p0, p1, p2, p3}, Lcom/gmodvr/flat/GmodMaps$LuaPattern;->matchBracket(CLjava/lang/String;II)Z

    move-result p0

    return p0

    :cond_20
    return v2

    :cond_21
    add-int/2addr p2, v2

    .line 750
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p0, p1}, Lcom/gmodvr/flat/GmodMaps$LuaPattern;->matchClass(CC)Z

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.GmodMaps$$ExternalSyntheticLambda0 (com.gmodvr.flat.GmodMaps$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/GmodMaps$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    new-instance p0, Lcom/gmodvr/flat/GmodMaps$Category;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/GmodMaps$Category;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

###### Class com.gmodvr.flat.GmodMaps$$ExternalSyntheticLambda1 (com.gmodvr.flat.GmodMaps$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/GmodMaps$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    .line 0
    check-cast p1, Lcom/gmodvr/flat/GmodMaps$Category;

    invoke-static {p1}, Lcom/gmodvr/flat/GmodMaps;->$r8$lambda$hXX9lS2P9UtNzC56VlAr5lYcads(Lcom/gmodvr/flat/GmodMaps$Category;)I

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.GmodMaps$$ExternalSyntheticLambda2 (com.gmodvr.flat.GmodMaps$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gmodvr/flat/GmodMaps$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lcom/gmodvr/flat/GmodMaps$Category;

    invoke-static {p1}, Lcom/gmodvr/flat/GmodMaps;->$r8$lambda$9MwFUXY9xRW_p72d0laXvQLTWPY(Lcom/gmodvr/flat/GmodMaps$Category;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.GmodMaps$$ExternalSyntheticLambda3 (com.gmodvr.flat.GmodMaps$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/gmodvr/flat/GmodMaps$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lcom/gmodvr/flat/GmodMaps$Entry;

    invoke-static {p1}, Lcom/gmodvr/flat/GmodMaps;->$r8$lambda$8eAsyuo4L4la-kZr3qAz0lMeGm4(Lcom/gmodvr/flat/GmodMaps$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.GmodMaps$$ExternalSyntheticLambda4 (com.gmodvr.flat.GmodMaps$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/gmodvr/flat/GmodMaps$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Lcom/gmodvr/flat/GmodMaps;->$r8$lambda$cPpkEf4EBkbH6YHBdMKNDZLmps0(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.GmodMaps$$ExternalSyntheticLambda5 (com.gmodvr.flat.GmodMaps$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/gmodvr/flat/GmodMaps$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lcom/gmodvr/flat/GmodMaps$Entry;

    invoke-static {p1}, Lcom/gmodvr/flat/GmodMaps;->$r8$lambda$Dp6J9vLVZ0yA1Fzs4y-USR632XI(Lcom/gmodvr/flat/GmodMaps$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
