###### Class com.gmodvr.flat.UpdateHttp (com.gmodvr.flat.UpdateHttp)
.class final Lcom/gmodvr/flat/UpdateHttp;
.super Ljava/lang/Object;
.source "UpdateHttp.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static open(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    move v1, p0

    :goto_7
    const/4 v2, 0x5

    if-gt v1, v2, :cond_8d

    .line 19
    invoke-static {v0}, Lcom/gmodvr/flat/UpdateHttp;->requireTrusted(Ljava/net/URL;)V

    .line 20
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    const/16 v3, 0x3a98

    .line 21
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x7530

    .line 22
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 23
    invoke-virtual {v2, p0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 24
    const-string v3, "User-Agent"

    const-string v4, "GDroid-Updater/1"

    invoke-virtual {v2, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v3, "Accept-Encoding"

    const-string v4, "identity"

    invoke-virtual {v2, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    .line 30
    :cond_52
    :try_start_52
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_56} :catch_88

    const/16 v4, 0x12d

    if-eq v3, v4, :cond_6c

    const/16 v4, 0x12e

    if-eq v3, v4, :cond_6c

    const/16 v4, 0x12f

    if-eq v3, v4, :cond_6c

    const/16 v4, 0x133

    if-eq v3, v4, :cond_6c

    const/16 v4, 0x134

    if-ne v3, v4, :cond_6b

    goto :goto_6c

    :cond_6b
    return-object v2

    .line 33
    :cond_6c
    :goto_6c
    const-string v3, "Location"

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v3, :cond_80

    .line 36
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_7

    .line 35
    :cond_80
    new-instance p0, Ljava/io/IOException;

    const-string p1, "GitHub sent an empty redirect."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_88
    move-exception p0

    .line 31
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p0

    .line 41
    :cond_8d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Too many GitHub download redirects."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read(Ljava/lang/String;I)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    const-string v0, "Accept"

    const-string v1, "application/vnd.github+json"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gmodvr/flat/UpdateHttp;->open(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 59
    :try_start_c
    invoke-static {p0}, Lcom/gmodvr/flat/UpdateHttp;->requireOk(Ljava/net/HttpURLConnection;)V

    .line 60
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentLengthLong()J

    move-result-wide v0
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_50

    int-to-long v2, p1

    cmp-long v0, v0, v2

    const-string v1, "Update metadata is too large."

    if-gtz v0, :cond_68

    .line 61
    :try_start_1a
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_50

    .line 62
    :try_start_1e
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_52

    const/16 v3, 0x2000

    .line 63
    :try_start_25
    new-array v3, v3, [B

    .line 65
    :goto_27
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_42

    .line 66
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    add-int/2addr v5, v4

    if-gt v5, p1, :cond_3c

    const/4 v5, 0x0

    .line 67
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_27

    :catchall_3a
    move-exception p1

    goto :goto_54

    .line 66
    :cond_3c
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_42
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_46
    .catchall {:try_start_25 .. :try_end_46} :catchall_3a

    .line 70
    :try_start_46
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_52

    :try_start_49
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_50

    .line 71
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :catchall_50
    move-exception p1

    goto :goto_6e

    :catchall_52
    move-exception p1

    goto :goto_5d

    .line 61
    :goto_54
    :try_start_54
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception v1

    :try_start_59
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5c
    throw p1
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_52

    :goto_5d
    if-eqz v0, :cond_67

    :try_start_5f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_67

    :catchall_63
    move-exception v0

    :try_start_64
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_67
    :goto_67
    throw p1

    .line 60
    :cond_68
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6e
    .catchall {:try_start_64 .. :try_end_6e} :catchall_50

    .line 71
    :goto_6e
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p1
.end method

.method public static requireOk(Ljava/net/HttpURLConnection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    const/16 v0, 0x193

    if-eq p0, v0, :cond_39

    const/16 v0, 0x1ad

    if-eq p0, v0, :cond_39

    const/16 v0, 0x194

    if-eq p0, v0, :cond_31

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_15

    return-void

    .line 82
    :cond_15
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GitHub returned HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". Try again later."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_31
    new-instance p0, Ljava/io/IOException;

    const-string v0, "No published update was found on GitHub."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 79
    :cond_39
    new-instance p0, Ljava/io/IOException;

    const-string v0, "GitHub is limiting update requests. Try again later."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static requireTrusted(Ljava/net/URL;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string v1, "https"

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {p0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_46

    .line 47
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_25

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result p0

    const/16 v1, 0x1bb

    if-ne p0, v1, :cond_46

    :cond_25
    const-string p0, "api.github.com"

    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_45

    const-string p0, "github.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_45

    const-string p0, "release-assets.githubusercontent.com"

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_45

    const-string p0, "objects.githubusercontent.com"

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    :cond_45
    return-void

    .line 51
    :cond_46
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Refusing an untrusted update download address."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static text([B)Ljava/lang/String;
    .registers 3

    .line 74
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
