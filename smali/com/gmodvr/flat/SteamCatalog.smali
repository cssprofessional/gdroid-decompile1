###### Class com.gmodvr.flat.SteamCatalog (com.gmodvr.flat.SteamCatalog)
.class final Lcom/gmodvr/flat/SteamCatalog;
.super Ljava/lang/Object;
.source "SteamCatalog.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appId(Lcom/gmodvr/flat/GameContentProfile;)I
    .registers 2

    .line 10
    sget-object v0, Lcom/gmodvr/flat/GameContentProfile;->GARRYSMOD:Lcom/gmodvr/flat/GameContentProfile;

    if-ne p0, v0, :cond_7

    const/16 p0, 0xfa0

    return p0

    .line 11
    :cond_7
    sget-object v0, Lcom/gmodvr/flat/GameContentProfile;->PORTAL:Lcom/gmodvr/flat/GameContentProfile;

    if-ne p0, v0, :cond_e

    const/16 p0, 0x190

    return p0

    .line 12
    :cond_e
    sget-object v0, Lcom/gmodvr/flat/GameContentProfile;->PORTAL2:Lcom/gmodvr/flat/GameContentProfile;

    if-ne p0, v0, :cond_15

    const/16 p0, 0x26c

    return p0

    :cond_15
    const/16 p0, 0xdc

    return p0
.end method

.method public static depotMatches(Lin/dragonbra/javasteam/types/KeyValue;Ljava/lang/String;)Z
    .registers 7

    .line 31
    const-string v0, "config"

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v0

    .line 32
    const-string v1, "oslist"

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v1

    invoke-static {v1}, Lcom/gmodvr/flat/SteamCatalog;->value(Lin/dragonbra/javasteam/types/KeyValue;)Ljava/lang/String;

    move-result-object v1

    .line 33
    const-string v2, "osarch"

    invoke-virtual {v0, v2}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v2

    invoke-static {v2}, Lcom/gmodvr/flat/SteamCatalog;->value(Lin/dragonbra/javasteam/types/KeyValue;)Ljava/lang/String;

    move-result-object v2

    .line 34
    const-string v3, "language"

    invoke-virtual {v0, v3}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v3

    invoke-static {v3}, Lcom/gmodvr/flat/SteamCatalog;->value(Lin/dragonbra/javasteam/types/KeyValue;)Ljava/lang/String;

    move-result-object v3

    .line 35
    const-string v4, "dlcappid"

    invoke-virtual {p0, v4}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    invoke-static {p0}, Lcom/gmodvr/flat/SteamCatalog;->value(Lin/dragonbra/javasteam/types/KeyValue;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_82

    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4c

    const-string p0, ","

    invoke-virtual {v1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v1, "windows"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_82

    .line 37
    :cond_4c
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5a

    const-string p0, "32"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_82

    .line 38
    :cond_5a
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6e

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6e

    const-string p0, "english"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_82

    :cond_6e
    const-string p0, "lowviolence"

    .line 39
    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    invoke-static {p0}, Lcom/gmodvr/flat/SteamCatalog;->value(Lin/dragonbra/javasteam/types/KeyValue;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_82

    const/4 p0, 0x1

    goto :goto_83

    :cond_82
    const/4 p0, 0x0

    :goto_83
    return p0
.end method

.method public static gamePath(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/gmodvr/flat/ContentComponent;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-static {p1}, Lcom/gmodvr/flat/SteamFiles;->relative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_e

    return-object v1

    :cond_e
    const/4 v2, 0x0

    .line 73
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v3, v1

    :cond_18
    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gmodvr/flat/ContentComponent;

    .line 76
    iget-object v5, v4, Lcom/gmodvr/flat/ContentComponent;->importDirName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    move-object v3, v4

    goto :goto_18

    :cond_2e
    if-nez v3, :cond_31

    return-object v1

    .line 79
    :cond_31
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v3, Lcom/gmodvr/flat/ContentComponent;->dirName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 80
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 81
    const-string v0, "/bin/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8e

    const-string v0, ".exe"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8e

    const-string v0, ".dll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8e

    const-string v0, ".so"

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8e

    const-string v0, ".dylib"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8e

    const-string v0, "/save/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8e

    const-string v0, "/custom/"

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8e

    const-string v0, "/download/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8d

    goto :goto_8e

    :cond_8d
    return-object p0

    :cond_8e
    :goto_8e
    return-object v1
.end method

.method public static providedByHalfLife2(Ljava/io/File;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 60
    :cond_4
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 61
    const-string v1, "sourceengine/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    const/16 v2, 0x2f

    const/16 v3, 0xd

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_1d

    goto :goto_54

    .line 62
    :cond_1d
    sget-object v2, Lcom/gmodvr/flat/GameFolder;->GMOD_HL2_PACKS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_(dir|[0-9]{3})\\.vpk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 64
    const-string p1, "hl2"

    invoke-static {p0, v3}, Lcom/gmodvr/flat/GameFolder;->hl2PackFolder(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_54
    :goto_54
    return v0
.end method

.method public static proxyWanted(Lcom/gmodvr/flat/GameContentProfile;Lin/dragonbra/javasteam/types/KeyValue;)Z
    .registers 5

    const/4 v0, 0x1

    .line 43
    const-string v1, "depotfromapp"

    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p1

    invoke-static {p1}, Lcom/gmodvr/flat/SteamCatalog;->value(Lin/dragonbra/javasteam/types/KeyValue;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_50

    goto :goto_37

    :sswitch_17
    const-string v2, "420"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_37

    :cond_20
    const/4 v1, 0x2

    goto :goto_37

    :sswitch_22
    const-string v2, "380"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_37

    :cond_2b
    move v1, v0

    goto :goto_37

    :sswitch_2d
    const-string v2, "340"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    packed-switch v1, :pswitch_data_5e

    return v0

    .line 45
    :pswitch_3b
    sget-object p1, Lcom/gmodvr/flat/ContentComponent;->EP2:Lcom/gmodvr/flat/ContentComponent;

    invoke-virtual {p0, p1}, Lcom/gmodvr/flat/GameContentProfile;->dependsOn(Lcom/gmodvr/flat/ContentComponent;)Z

    move-result p0

    return p0

    .line 44
    :pswitch_42
    sget-object p1, Lcom/gmodvr/flat/ContentComponent;->EPISODIC:Lcom/gmodvr/flat/ContentComponent;

    invoke-virtual {p0, p1}, Lcom/gmodvr/flat/GameContentProfile;->dependsOn(Lcom/gmodvr/flat/ContentComponent;)Z

    move-result p0

    return p0

    .line 46
    :pswitch_49
    sget-object p1, Lcom/gmodvr/flat/ContentComponent;->LOSTCOAST:Lcom/gmodvr/flat/ContentComponent;

    invoke-virtual {p0, p1}, Lcom/gmodvr/flat/GameContentProfile;->dependsOn(Lcom/gmodvr/flat/ContentComponent;)Z

    move-result p0

    return p0

    :sswitch_data_50
    .sparse-switch
        0xc5ef -> :sswitch_2d
        0xc66b -> :sswitch_22
        0xc972 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_49
        :pswitch_42
        :pswitch_3b
    .end packed-switch
.end method

.method public static value(Lin/dragonbra/javasteam/types/KeyValue;)Ljava/lang/String;
    .registers 2

    .line 51
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KeyValue;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string p0, ""

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/KeyValue;->getValue()Ljava/lang/String;

    move-result-object p0

    :goto_d
    return-object p0
.end method

.method public static workshopApp(Lcom/gmodvr/flat/GameContentProfile;I)Z
    .registers 8

    .line 18
    iget-object p0, p0, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const v0, 0xa0de8

    const/16 v1, 0xdc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_ac

    goto :goto_61

    :sswitch_15
    const-string v5, "garrysmod"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_61

    :cond_1e
    const/4 v4, 0x6

    goto :goto_61

    :sswitch_20
    const-string v5, "lostcoast"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto :goto_61

    :cond_29
    const/4 v4, 0x5

    goto :goto_61

    :sswitch_2b
    const-string v5, "hl2"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto :goto_61

    :cond_34
    const/4 v4, 0x4

    goto :goto_61

    :sswitch_36
    const-string v5, "ep2"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f

    goto :goto_61

    :cond_3f
    const/4 v4, 0x3

    goto :goto_61

    :sswitch_41
    const-string v5, "ep1"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4a

    goto :goto_61

    :cond_4a
    const/4 v4, 0x2

    goto :goto_61

    :sswitch_4c
    const-string v5, "portal2"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_55

    goto :goto_61

    :cond_55
    move v4, v2

    goto :goto_61

    :sswitch_57
    const-string v5, "portal"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_60

    goto :goto_61

    :cond_60
    move v4, v3

    :goto_61
    packed-switch v4, :pswitch_data_ca

    return v3

    :pswitch_65
    const/16 p0, 0xfa0

    if-ne p1, p0, :cond_6a

    goto :goto_6b

    :cond_6a
    move v2, v3

    :goto_6b
    return v2

    :pswitch_6c
    if-eq p1, v1, :cond_76

    const/16 p0, 0x154

    if-eq p1, p0, :cond_76

    if-ne p1, v0, :cond_75

    goto :goto_76

    :cond_75
    move v2, v3

    :cond_76
    :goto_76
    return v2

    :pswitch_77
    if-eq p1, v1, :cond_7d

    if-ne p1, v0, :cond_7c

    goto :goto_7d

    :cond_7c
    move v2, v3

    :cond_7d
    :goto_7d
    return v2

    :pswitch_7e
    if-eq p1, v1, :cond_8d

    const/16 p0, 0x1a4

    if-eq p1, p0, :cond_8d

    const p0, 0x213ae0

    if-eq p1, p0, :cond_8d

    if-ne p1, v0, :cond_8c

    goto :goto_8d

    :cond_8c
    move v2, v3

    :cond_8d
    :goto_8d
    return v2

    :pswitch_8e
    if-eq p1, v1, :cond_9d

    const/16 p0, 0x17c

    if-eq p1, p0, :cond_9d

    const p0, 0x213ad6

    if-eq p1, p0, :cond_9d

    if-ne p1, v0, :cond_9c

    goto :goto_9d

    :cond_9c
    move v2, v3

    :cond_9d
    :goto_9d
    return v2

    :pswitch_9e
    const/16 p0, 0x26c

    if-ne p1, p0, :cond_a3

    goto :goto_a4

    :cond_a3
    move v2, v3

    :goto_a4
    return v2

    :pswitch_a5
    const/16 p0, 0x190

    if-ne p1, p0, :cond_aa

    goto :goto_ab

    :cond_aa
    move v2, v3

    :goto_ab
    return v2

    :sswitch_data_ac
    .sparse-switch
        -0x3a8f7794 -> :sswitch_57
        -0x175f7aba -> :sswitch_4c
        0x188e6 -> :sswitch_41
        0x188e7 -> :sswitch_36
        0x193ae -> :sswitch_2b
        0x268715f2 -> :sswitch_20
        0x5bc88d4e -> :sswitch_15
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_a5
        :pswitch_9e
        :pswitch_8e
        :pswitch_7e
        :pswitch_77
        :pswitch_6c
        :pswitch_65
    .end packed-switch
.end method
