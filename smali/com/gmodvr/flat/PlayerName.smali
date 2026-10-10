###### Class com.gmodvr.flat.PlayerName (com.gmodvr.flat.PlayerName)
.class final Lcom/gmodvr/flat/PlayerName;
.super Ljava/lang/Object;
.source "PlayerName.java"


# static fields
.field static final CONFIG:Ljava/lang/String; = "android_player_name.cfg"

.field static final DEFAULT:Ljava/lang/String; = "unnamed"

.field static final KEY:Ljava/lang/String; = "gmod_player_name"

.field private static final MAX_UTF8_BYTES:I = 0x1f


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static config(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    .line 34
    const-string p0, ""

    goto :goto_1f

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/gmodvr/flat/PlayerName;->validate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1f
    return-object p0
.end method

.method public static validate(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 16
    const-string v0, "Enter a player name."

    if-eqz p0, :cond_57

    const/4 v1, 0x0

    .line 17
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v3

    const/16 v4, 0x22

    if-eq v2, v4, :cond_2b

    .line 20
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v4

    if-nez v4, :cond_2b

    const/16 v4, 0x10

    if-eq v3, v4, :cond_2b

    const/16 v4, 0x13

    if-eq v3, v4, :cond_2b

    .line 23
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_5

    .line 22
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Remove double quotes and invisible or control characters."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_33
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_51

    .line 27
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_49

    return-object p0

    .line 28
    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Player name is too long. Shorten it to fit the game\'s limit."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_57
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
