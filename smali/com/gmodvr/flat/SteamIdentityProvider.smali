###### Class com.gmodvr.flat.SteamIdentityProvider (com.gmodvr.flat.SteamIdentityProvider)
.class public final Lcom/gmodvr/flat/SteamIdentityProvider;
.super Landroid/content/ContentProvider;
.source "SteamIdentityProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static read(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    const-string v0, "Steam sign-in could not be read from the launcher. Restart the app."

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".steam_identity"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 v2, 0x0

    .line 47
    invoke-virtual {v1, p0, p1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2c

    return-object p0

    .line 49
    :cond_2c
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_32} :catch_32

    .line 52
    :catch_32
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static savedIdentity(Landroid/content/Context;)Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const-string v0, "identity"

    invoke-static {p0, v0}, Lcom/gmodvr/flat/SteamIdentityProvider;->read(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 58
    const-string v0, "error"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_51

    .line 60
    const-string v0, "account"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "access_token"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    if-eqz p0, :cond_4f

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_4f

    .line 62
    :cond_2b
    new-instance v1, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;

    invoke-direct {v1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;-><init>()V

    .line 63
    invoke-virtual {v1, v0}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->setUsername(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->setAccessToken(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 65
    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->setShouldRememberPassword(Z)V

    .line 66
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const v2, 0x7ffffffe

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->setLoginID(Ljava/lang/Integer;)V

    return-object v1

    :cond_4f
    :goto_4f
    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_51
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sessionStatus(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    const-string v0, "status"

    invoke-static {p0, v0}, Lcom/gmodvr/flat/SteamIdentityProvider;->read(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "unavailable"

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8

    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p3

    if-ne p2, p3, :cond_84

    .line 23
    const-string p2, "identity"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_23

    const-string p2, "status"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b

    goto :goto_23

    .line 24
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown Steam session request"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_23
    :goto_23
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 26
    const-class p3, Lcom/gmodvr/flat/SteamCredentialStore;

    monitor-enter p3

    .line 27
    :try_start_2b
    new-instance v0, Lcom/gmodvr/flat/SteamCredentialStore;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/gmodvr/flat/SteamCredentialStore;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {v0}, Lcom/gmodvr/flat/SteamCredentialStore;->username()Ljava/lang/String;

    move-result-object p0
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_4e

    .line 30
    :try_start_38
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 v0, 0x0

    goto :goto_44

    :cond_40
    invoke-virtual {v0, p0}, Lcom/gmodvr/flat/SteamCredentialStore;->token(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_44
    if-eqz v0, :cond_50

    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_50

    const/4 v1, 0x1

    goto :goto_51

    :catchall_4e
    move-exception p0

    goto :goto_82

    :cond_50
    const/4 v1, 0x0

    .line 32
    :goto_51
    const-string v2, "status"

    if-eqz v1, :cond_58

    const-string v3, "available"

    goto :goto_5a

    :cond_58
    const-string v3, "missing"

    :goto_5a
    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_80

    .line 33
    const-string v1, "identity"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 34
    const-string p1, "account"

    invoke-virtual {p2, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string p0, "access_token"

    invoke-virtual {p2, p0, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_71} :catch_72
    .catchall {:try_start_38 .. :try_end_71} :catchall_4e

    goto :goto_80

    .line 38
    :catch_72
    :try_start_72
    const-string p0, "status"

    const-string p1, "unreadable"

    invoke-virtual {p2, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string p0, "error"

    const-string p1, "Saved Steam session could not be read. Sign in again in Download from Steam."

    invoke-virtual {p2, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_80
    :goto_80
    monitor-exit p3

    return-object p2

    :goto_82
    monitor-exit p3
    :try_end_83
    .catchall {:try_start_72 .. :try_end_83} :catchall_4e

    throw p0

    .line 22
    :cond_84
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Private Steam session"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 79
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 77
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public onCreate()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    .line 76
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 78
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
