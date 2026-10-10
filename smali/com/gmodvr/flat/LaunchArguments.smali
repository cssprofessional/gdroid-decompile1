###### Class com.gmodvr.flat.LaunchArguments (com.gmodvr.flat.LaunchArguments)
.class final Lcom/gmodvr/flat/LaunchArguments;
.super Ljava/lang/Object;
.source "LaunchArguments.java"


# static fields
.field static final ACTION_MAP:Ljava/lang/String; = "map"

.field static final ACTION_MENU:Ljava/lang/String; = "menu"

.field static final MUTE_FAILED_GRAB_KEY:Ljava/lang/String; = "gmod_mute_failed_grab"

.field static final NPC_WALKTHROUGH_KEY:Ljava/lang/String; = "gmod_npc_walkthrough"

.field static final START_AT_DEFAULT:Ljava/lang/String; = "menu"

.field static final START_AT_KEY:Ljava/lang/String; = "gmod_start_at"

.field static final START_AT_MAP:Ljava/lang/String; = "map"

.field static final START_AT_MENU:Ljava/lang/String; = "menu"

.field static final WALK_ANIM_KEY:Ljava/lang/String; = "gmod_walk_anim"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    .line 202
    sget-object v0, Lcom/gmodvr/flat/GameContentProfile;->DEFAULT:Lcom/gmodvr/flat/GameContentProfile;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/gmodvr/flat/LaunchArguments;->build(Lcom/gmodvr/flat/GameContentProfile;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static build(Lcom/gmodvr/flat/GameContentProfile;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 14

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 95
    invoke-static/range {v0 .. v7}, Lcom/gmodvr/flat/LaunchArguments;->build(Lcom/gmodvr/flat/GameContentProfile;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static build(Lcom/gmodvr/flat/GameContentProfile;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 100
    invoke-static/range {v0 .. v7}, Lcom/gmodvr/flat/LaunchArguments;->build(Lcom/gmodvr/flat/GameContentProfile;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static build(Lcom/gmodvr/flat/GameContentProfile;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)[Ljava/lang/String;
    .registers 22

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 119
    invoke-static/range {p5 .. p5}, Lcom/gmodvr/flat/LaunchArguments;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 120
    const-string v4, "workshop"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "+connect"

    const-string v7, "+load"

    const-string v8, "+map"

    const/4 v9, 0x0

    if-eqz v5, :cond_77

    move v5, v9

    .line 122
    :cond_19
    :goto_19
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_77

    .line 123
    filled-new-array {v8, v7, v6}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_62

    .line 124
    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 125
    :goto_3c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_19

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_19

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_19

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3c

    .line 126
    :cond_62
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "-nocustom"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_74

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_19

    :cond_74
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 131
    :cond_77
    sget-object v5, Lcom/gmodvr/flat/GameContentProfile;->DEFAULT:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v10, v5, Lcom/gmodvr/flat/GameContentProfile;->gameDir:Ljava/lang/String;

    .line 132
    const-string v11, " only."

    if-eqz v0, :cond_9e

    if-ne v0, v5, :cond_82

    goto :goto_9e

    .line 133
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This build supports "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/gmodvr/flat/GameContentProfile;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9e
    :goto_9e
    move v5, v9

    .line 134
    :goto_9f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    const-string v13, "-game"

    if-ge v5, v12, :cond_e3

    .line 135
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e0

    add-int/lit8 v12, v5, 0x1

    .line 136
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-eq v12, v13, :cond_c6

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c6

    goto :goto_e0

    .line 137
    :cond_c6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This build supports -game "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e0
    :goto_e0
    add-int/lit8 v5, v5, 0x1

    goto :goto_9f

    .line 140
    :cond_e3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_ed

    .line 141
    iget-object v10, v0, Lcom/gmodvr/flat/GameContentProfile;->gameDir:Ljava/lang/String;

    goto :goto_f1

    :cond_ed
    sget-object v10, Lcom/gmodvr/flat/GameContentProfile;->DEFAULT:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v10, v10, Lcom/gmodvr/flat/GameContentProfile;->gameDir:Ljava/lang/String;

    .line 142
    :goto_f1
    filled-new-array {v13, v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v3, v10}, Lcom/gmodvr/flat/LaunchArguments;->defaults(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;)V

    if-eqz v0, :cond_fc

    move-object v10, v0

    goto :goto_fe

    .line 143
    :cond_fc
    sget-object v10, Lcom/gmodvr/flat/GameContentProfile;->DEFAULT:Lcom/gmodvr/flat/GameContentProfile;

    :goto_fe
    iget-object v10, v10, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    const-string v11, "garrysmod"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_112

    .line 144
    const-string v10, "-steam"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v3, v10}, Lcom/gmodvr/flat/LaunchArguments;->defaults(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;)V

    goto :goto_124

    .line 146
    :cond_112
    const-string v10, "-nosteam"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v3, v10}, Lcom/gmodvr/flat/LaunchArguments;->defaults(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;)V

    .line 147
    const-string v10, "-insecure"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v3, v10}, Lcom/gmodvr/flat/LaunchArguments;->defaults(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;)V

    .line 149
    :goto_124
    const-string v10, "-novid"

    const-string v12, "-hushasserts"

    const-string v13, "-nouserclip"

    filled-new-array {v13, v10, v12}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_136
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 150
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v3, v12}, Lcom/gmodvr/flat/LaunchArguments;->defaults(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;)V

    goto :goto_136

    :cond_14a
    if-eqz v0, :cond_16c

    .line 152
    iget-object v10, v0, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16c

    .line 154
    const-string v10, "-mobile"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v3, v10}, Lcom/gmodvr/flat/LaunchArguments;->defaults(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;)V

    if-lez p7, :cond_16c

    .line 155
    const-string v10, "-heapsize"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v3, v10}, Lcom/gmodvr/flat/LaunchArguments;->defaults(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;)V

    .line 157
    :cond_16c
    const-string v10, "-windowed"

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18d

    const-string v10, "-window"

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18d

    const-string v10, "-sw"

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18d

    .line 158
    const-string v10, "-fullscreen"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v3, v10}, Lcom/gmodvr/flat/LaunchArguments;->defaults(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;)V

    :cond_18d
    if-nez p6, :cond_1b9

    .line 163
    const-string v10, "-width"

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1a4

    const-string v10, "-w"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v3, v10}, Lcom/gmodvr/flat/LaunchArguments;->defaults(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;)V

    .line 164
    :cond_1a4
    const-string v10, "-height"

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1b9

    const-string v10, "-h"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v3, v10}, Lcom/gmodvr/flat/LaunchArguments;->defaults(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;)V

    .line 166
    :cond_1b9
    const-string v10, "+exec"

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v10, "android_settings.cfg"

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d8

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d8

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d6

    goto :goto_1d8

    :cond_1d6
    move v10, v9

    goto :goto_1d9

    :cond_1d8
    :goto_1d8
    const/4 v10, 0x1

    .line 170
    :goto_1d9
    const-string v12, "host"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_206

    if-nez v10, :cond_206

    if-eqz v0, :cond_1f0

    .line 173
    iget-object v13, v0, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f0

    const-string v11, "8"

    goto :goto_1f2

    :cond_1f0
    const-string v11, "2"

    :goto_1f2
    const-string v13, "+maxplayers"

    filled-new-array {v13, v11}, [Ljava/lang/String;

    move-result-object v11

    .line 172
    invoke-static {v5, v3, v11}, Lcom/gmodvr/flat/LaunchArguments;->defaults(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;)V

    .line 174
    const-string v11, "+sv_lan"

    const-string v13, "1"

    filled-new-array {v11, v13}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v3, v11}, Lcom/gmodvr/flat/LaunchArguments;->defaults(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;)V

    .line 176
    :cond_206
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-nez v10, :cond_289

    .line 179
    const-string v3, "map"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_270

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_270

    .line 180
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_222

    if-eqz v2, :cond_222

    goto :goto_270

    .line 185
    :cond_222
    const-string v3, "load"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_243

    if-eqz v2, :cond_243

    const-string v3, "[A-Za-z0-9_/-]+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_243

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_243

    .line 186
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_289

    .line 188
    :cond_243
    const-string v3, "connect"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25c

    if-eqz v2, :cond_25c

    const-string v3, "[A-Za-z0-9.:-]{1,253}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25c

    .line 189
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_289

    .line 191
    :cond_25c
    const-string v2, "menu"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_265

    goto :goto_289

    .line 194
    :cond_265
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-static {p0, v1}, Lcom/gmodvr/flat/LaunchArguments;->defaultMap(Lcom/gmodvr/flat/GameContentProfile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_289

    :cond_270
    :goto_270
    if-eqz v2, :cond_281

    .line 181
    const-string v0, "[A-Za-z0-9_-]+(?:/[A-Za-z0-9_-]+)*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_281

    .line 183
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_289

    .line 182
    :cond_281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Choose a valid starting map for this mod."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_289
    :goto_289
    new-array v0, v9, [Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static defaultMap(Lcom/gmodvr/flat/GameContentProfile;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    if-nez p0, :cond_4

    .line 79
    sget-object p0, Lcom/gmodvr/flat/GameContentProfile;->DEFAULT:Lcom/gmodvr/flat/GameContentProfile;

    .line 80
    :cond_4
    const-string v0, "host"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "portal2"

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p0, "mp_coop_start"

    return-object p0

    .line 81
    :cond_19
    iget-object p0, p0, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x4

    sparse-switch p1, :sswitch_data_8e

    goto :goto_6c

    :sswitch_28
    const-string p1, "garrysmod"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6c

    const/4 p0, 0x0

    goto :goto_6d

    :sswitch_32
    const-string p1, "lostcoast"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6c

    move p0, v5

    goto :goto_6d

    :sswitch_3c
    const-string p1, "hl2"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6c

    move p0, v4

    goto :goto_6d

    :sswitch_46
    const-string p1, "ep2"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6c

    move p0, v3

    goto :goto_6d

    :sswitch_50
    const-string p1, "ep1"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6c

    move p0, v2

    goto :goto_6d

    :sswitch_5a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6c

    const/4 p0, 0x6

    goto :goto_6d

    :sswitch_62
    const-string p1, "portal"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6c

    move p0, v1

    goto :goto_6d

    :cond_6c
    :goto_6c
    const/4 p0, -0x1

    :goto_6d
    if-eqz p0, :cond_8b

    if-eq p0, v4, :cond_88

    if-eq p0, v2, :cond_85

    if-eq p0, v3, :cond_82

    if-eq p0, v5, :cond_7f

    if-eq p0, v1, :cond_7c

    .line 90
    const-string p0, "sp_a1_intro1"

    return-object p0

    .line 87
    :cond_7c
    const-string p0, "testchmb_a_00"

    return-object p0

    .line 86
    :cond_7f
    const-string p0, "d2_lostcoast"

    return-object p0

    .line 85
    :cond_82
    const-string p0, "ep2_outland_01"

    return-object p0

    .line 84
    :cond_85
    const-string p0, "ep1_citadel_00"

    return-object p0

    .line 83
    :cond_88
    const-string p0, "d1_trainstation_01"

    return-object p0

    .line 82
    :cond_8b
    const-string p0, "gm_construct"

    return-object p0

    :sswitch_data_8e
    .sparse-switch
        -0x3a8f7794 -> :sswitch_62
        -0x175f7aba -> :sswitch_5a
        0x188e6 -> :sswitch_50
        0x188e7 -> :sswitch_46
        0x193ae -> :sswitch_3c
        0x268715f2 -> :sswitch_32
        0x5bc88d4e -> :sswitch_28
    .end sparse-switch
.end method

.method private static varargs defaults(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 251
    aget-object v0, p2, v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_10
    return-void
.end method

.method public static gameToggleArgs(ZZZ)Ljava/lang/String;
    .registers 5

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+hlvr_disable_player_ally_collisions "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_e

    const/4 p0, 0x2

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " +gmodvr_walk_anim "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " +snd_flat_mute_use_deny "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static heapSizeMB(Landroid/content/Context;)I
    .registers 5

    .line 109
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 110
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    if-nez p0, :cond_12

    const/16 p0, 0x200

    return p0

    .line 112
    :cond_12
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 113
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    const-wide/16 v2, 0x300

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x600

    .line 114
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x100

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .registers 11
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

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    .line 49
    :goto_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x22

    if-ge v3, v6, :cond_5d

    .line 50
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v6, :cond_55

    .line 51
    invoke-static {v6}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v8

    if-eqz v8, :cond_28

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_55

    :cond_28
    const/16 v8, 0x27

    const/4 v9, 0x1

    if-eq v6, v8, :cond_2f

    if-ne v6, v7, :cond_38

    :cond_2f
    if-nez v4, :cond_34

    move v4, v6

    :goto_32
    move v5, v9

    goto :goto_52

    :cond_34
    if-ne v4, v6, :cond_38

    move v4, v2

    goto :goto_52

    :cond_38
    if-nez v4, :cond_4e

    .line 57
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_4e

    if-eqz v5, :cond_52

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move v5, v2

    goto :goto_52

    .line 60
    :cond_4e
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_52
    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 52
    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Remove control characters from the launch arguments."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5d
    if-nez v4, :cond_a6

    if-eqz v5, :cond_68

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_68
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_89

    .line 71
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x3

    add-int/2addr v2, v1

    goto :goto_6c

    .line 70
    :cond_89
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Double quotes can group words, but cannot appear inside an argument."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_91
    const/16 p0, 0x4b0

    if-gt v2, p0, :cond_9e

    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 v1, 0x60

    if-gt p0, v1, :cond_9e

    return-object v0

    .line 74
    :cond_9e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use fewer launch arguments (up to 1,200 bytes / 96 words)."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_a6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Close the quotation mark before saving."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static splitExtra(Ljava/lang/String;)Ljava/util/List;
    .registers 6
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

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 209
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\s+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_24

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_24
    return-object v0
.end method

.method public static startAction(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 41
    invoke-static {p0}, Lcom/gmodvr/flat/LaunchArguments;->startAt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "map"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const-string v0, "menu"

    :goto_f
    return-object v0
.end method

.method public static startAt(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 36
    const-string v0, "map"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "menu"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_12

    :cond_11
    move-object p0, v0

    :cond_12
    :goto_12
    return-object p0
.end method

.method public static withExtra([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 218
    invoke-static {p1}, Lcom/gmodvr/flat/LaunchArguments;->splitExtra(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 219
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 220
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 221
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x2

    if-lt p0, v1, :cond_37

    .line 222
    const-string v1, "+load"

    const-string v2, "+connect"

    const-string v3, "+map"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, p0, -0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    add-int/lit8 p0, p0, -0x2

    .line 223
    :cond_37
    invoke-virtual {v0, p0, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    const/4 p0, 0x0

    .line 224
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static withPlayerName([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_3

    return-object p0

    .line 230
    :cond_3
    invoke-static {p1}, Lcom/gmodvr/flat/PlayerName;->validate(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    move v0, p0

    .line 233
    :cond_11
    :goto_11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_51

    .line 234
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "+name"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 235
    :cond_28
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 236
    :goto_2b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 237
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2b

    .line 239
    :cond_51
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, p0

    .line 240
    :goto_56
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_81

    .line 241
    const-string v2, "+load"

    const-string v3, "+connect"

    const-string v4, "+map"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    move v0, v1

    goto :goto_81

    :cond_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 246
    :cond_81
    :goto_81
    const-string v1, "+exec"

    const-string v2, "android_player_name.cfg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 247
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
