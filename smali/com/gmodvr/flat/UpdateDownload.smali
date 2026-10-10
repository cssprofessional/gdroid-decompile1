###### Class com.gmodvr.flat.UpdateDownload (com.gmodvr.flat.UpdateDownload)
.class final Lcom/gmodvr/flat/UpdateDownload;
.super Ljava/lang/Object;
.source "UpdateDownload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/UpdateDownload$Truncated;,
        Lcom/gmodvr/flat/UpdateDownload$ConnectionFactory;,
        Lcom/gmodvr/flat/UpdateDownload$Cancellation;,
        Lcom/gmodvr/flat/UpdateDownload$Progress;,
        Lcom/gmodvr/flat/UpdateDownload$Sleeper;
    }
.end annotation


# static fields
.field static final HEADROOM:J = 0x4000000L

.field static final MAX_STALLED_ATTEMPTS:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apk(Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;)Ljava/io/File;
    .registers 4

    .line 79
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/gmodvr/flat/UpdateRelease$Candidate;->sha256:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".apk"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static checkCanceled(Lcom/gmodvr/flat/UpdateDownload$Cancellation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 176
    invoke-interface {p0}, Lcom/gmodvr/flat/UpdateDownload$Cancellation;->canceled()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/io/InterruptedIOException;

    const-string v0, "Download paused. Resume whenever you are ready."

    invoke-direct {p0, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static digest([B)Ljava/lang/String;
    .registers 2

    .line 165
    invoke-static {}, Lcom/gmodvr/flat/UpdateDownload;->sha256()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/gmodvr/flat/UpdateDownload;->hex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static download(Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;Lcom/gmodvr/flat/UpdateDownload$ConnectionFactory;Lcom/gmodvr/flat/UpdateDownload$Cancellation;Lcom/gmodvr/flat/UpdateDownload$Progress;)Ljava/io/File;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    :cond_d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot create update storage."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_15
    :goto_15
    invoke-static {p0, p1}, Lcom/gmodvr/flat/UpdateDownload;->part(Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;)Ljava/io/File;

    move-result-object v0

    .line 87
    invoke-static {p0, p1}, Lcom/gmodvr/flat/UpdateDownload;->apk(Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;)Ljava/io/File;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 89
    invoke-static {v1, p1, p3}, Lcom/gmodvr/flat/UpdateDownload;->verify(Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;Lcom/gmodvr/flat/UpdateDownload$Cancellation;)Z

    move-result v2

    if-eqz v2, :cond_2a

    return-object v1

    .line 90
    :cond_2a
    invoke-static {v1}, Lcom/gmodvr/flat/UpdateDownload;->remove(Ljava/io/File;)V

    .line 92
    :cond_2d
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/gmodvr/flat/UpdateRelease$Candidate;->size:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3a

    invoke-static {v0}, Lcom/gmodvr/flat/UpdateDownload;->remove(Ljava/io/File;)V

    .line 93
    :cond_3a
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 95
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    iget-wide v6, p1, Lcom/gmodvr/flat/UpdateRelease$Candidate;->size:J

    sub-long v8, v6, v2

    add-long/2addr v8, v6

    const-wide/32 v6, 0x4000000

    add-long/2addr v8, v6

    cmp-long p0, v4, v8

    if-ltz p0, :cond_162

    .line 98
    invoke-static {p3}, Lcom/gmodvr/flat/UpdateDownload;->checkCanceled(Lcom/gmodvr/flat/UpdateDownload$Cancellation;)V

    .line 99
    iget-wide v4, p1, Lcom/gmodvr/flat/UpdateRelease$Candidate;->size:J

    cmp-long p0, v2, v4

    const/4 v4, 0x1

    if-gez p0, :cond_137

    const-wide/16 v5, 0x0

    cmp-long p0, v2, v5

    if-nez p0, :cond_64

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    goto :goto_80

    .line 101
    :cond_64
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v7, "Range"

    invoke-static {v7, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    .line 102
    :goto_80
    iget-object v7, p1, Lcom/gmodvr/flat/UpdateRelease$Candidate;->url:Ljava/lang/String;

    invoke-interface {p2, v7, p0}, Lcom/gmodvr/flat/UpdateDownload$ConnectionFactory;->open(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 104
    :try_start_86
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v7, 0xce

    if-ne p2, v7, :cond_9d

    .line 106
    const-string p2, "Content-Range"

    invoke-virtual {p0, p2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-wide v7, p1, Lcom/gmodvr/flat/UpdateRelease$Candidate;->size:J

    invoke-static {p2, v2, v3, v7, v8}, Lcom/gmodvr/flat/UpdateDownload;->requireRange(Ljava/lang/String;JJ)V

    goto :goto_ad

    :catchall_9a
    move-exception p1

    goto/16 :goto_133

    :cond_9d
    const/16 v7, 0xc8

    if-ne p2, v7, :cond_a3

    move-wide v2, v5

    goto :goto_ad

    :cond_a3
    const/16 v7, 0x1a0

    if-ne p2, v7, :cond_aa

    .line 110
    invoke-static {v0}, Lcom/gmodvr/flat/UpdateDownload;->remove(Ljava/io/File;)V

    .line 111
    :cond_aa
    invoke-static {p0}, Lcom/gmodvr/flat/UpdateHttp;->requireOk(Ljava/net/HttpURLConnection;)V

    .line 113
    :goto_ad
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentLengthLong()J

    move-result-wide v7

    cmp-long p2, v7, v5

    if-ltz p2, :cond_c5

    .line 114
    iget-wide v9, p1, Lcom/gmodvr/flat/UpdateRelease$Candidate;->size:J

    sub-long/2addr v9, v2

    cmp-long p2, v7, v9

    if-nez p2, :cond_bd

    goto :goto_c5

    .line 115
    :cond_bd
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The APK download has an unexpected size."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_c5
    :goto_c5
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_c9
    .catchall {:try_start_86 .. :try_end_c9} :catchall_9a

    .line 118
    :try_start_c9
    new-instance v7, Ljava/io/FileOutputStream;

    cmp-long v5, v2, v5

    const/4 v6, 0x0

    if-eqz v5, :cond_d2

    move v5, v4

    goto :goto_d3

    :cond_d2
    move v5, v6

    :goto_d3
    invoke-direct {v7, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_d6
    .catchall {:try_start_c9 .. :try_end_d6} :catchall_11d

    const/high16 v5, 0x20000

    .line 119
    :try_start_d8
    new-array v5, v5, [B

    .line 121
    invoke-interface {p4, v2, v3, v6}, Lcom/gmodvr/flat/UpdateDownload$Progress;->update(JZ)V

    .line 122
    :goto_dd
    invoke-virtual {p2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_100

    .line 123
    invoke-static {p3}, Lcom/gmodvr/flat/UpdateDownload;->checkCanceled(Lcom/gmodvr/flat/UpdateDownload$Cancellation;)V

    int-to-long v9, v8

    add-long/2addr v2, v9

    .line 124
    iget-wide v9, p1, Lcom/gmodvr/flat/UpdateRelease$Candidate;->size:J

    cmp-long v9, v2, v9

    if-gtz v9, :cond_f8

    .line 125
    invoke-virtual {v7, v5, v6, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 127
    invoke-interface {p4, v2, v3, v6}, Lcom/gmodvr/flat/UpdateDownload$Progress;->update(JZ)V

    goto :goto_dd

    :catchall_f6
    move-exception p1

    goto :goto_11f

    .line 124
    :cond_f8
    new-instance p1, Ljava/io/IOException;

    const-string p3, "The APK download exceeded its published size."

    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_100
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_107
    .catchall {:try_start_d8 .. :try_end_107} :catchall_f6

    .line 130
    :try_start_107
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_10a
    .catchall {:try_start_107 .. :try_end_10a} :catchall_11d

    :try_start_10a
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 131
    iget-wide v5, p1, Lcom/gmodvr/flat/UpdateRelease$Candidate;->size:J
    :try_end_10f
    .catchall {:try_start_10a .. :try_end_10f} :catchall_9a

    cmp-long p2, v2, v5

    if-nez p2, :cond_117

    .line 132
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_137

    .line 131
    :cond_117
    :try_start_117
    new-instance p1, Lcom/gmodvr/flat/UpdateDownload$Truncated;

    invoke-direct {p1}, Lcom/gmodvr/flat/UpdateDownload$Truncated;-><init>()V

    throw p1
    :try_end_11d
    .catchall {:try_start_117 .. :try_end_11d} :catchall_9a

    :catchall_11d
    move-exception p1

    goto :goto_128

    .line 117
    :goto_11f
    :try_start_11f
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_122
    .catchall {:try_start_11f .. :try_end_122} :catchall_123

    goto :goto_127

    :catchall_123
    move-exception p3

    :try_start_124
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_127
    throw p1
    :try_end_128
    .catchall {:try_start_124 .. :try_end_128} :catchall_11d

    :goto_128
    if-eqz p2, :cond_132

    :try_start_12a
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_12d
    .catchall {:try_start_12a .. :try_end_12d} :catchall_12e

    goto :goto_132

    :catchall_12e
    move-exception p2

    :try_start_12f
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_132
    :goto_132
    throw p1
    :try_end_133
    .catchall {:try_start_12f .. :try_end_133} :catchall_9a

    .line 132
    :goto_133
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p1

    .line 134
    :cond_137
    :goto_137
    invoke-static {p3}, Lcom/gmodvr/flat/UpdateDownload;->checkCanceled(Lcom/gmodvr/flat/UpdateDownload$Cancellation;)V

    .line 135
    iget-wide v2, p1, Lcom/gmodvr/flat/UpdateRelease$Candidate;->size:J

    invoke-interface {p4, v2, v3, v4}, Lcom/gmodvr/flat/UpdateDownload$Progress;->update(JZ)V

    .line 136
    invoke-static {v0, p1, p3}, Lcom/gmodvr/flat/UpdateDownload;->verify(Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;Lcom/gmodvr/flat/UpdateDownload$Cancellation;)Z

    move-result p0

    if-eqz p0, :cond_157

    .line 140
    invoke-static {p3}, Lcom/gmodvr/flat/UpdateDownload;->checkCanceled(Lcom/gmodvr/flat/UpdateDownload$Cancellation;)V

    .line 141
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_14f

    return-object v1

    :cond_14f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot finish saving the update."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 137
    :cond_157
    invoke-static {v0}, Lcom/gmodvr/flat/UpdateDownload;->remove(Ljava/io/File;)V

    .line 138
    new-instance p0, Ljava/io/IOException;

    const-string p1, "The downloaded APK failed its SHA-256 check. Please download it again."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 96
    :cond_162
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Not enough free storage to download and install this update."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static downloadWithRetries(Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;Lcom/gmodvr/flat/UpdateDownload$ConnectionFactory;Lcom/gmodvr/flat/UpdateDownload$Cancellation;Lcom/gmodvr/flat/UpdateDownload$Progress;Lcom/gmodvr/flat/UpdateDownload$Sleeper;)Ljava/io/File;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 54
    :cond_2
    invoke-static {p0, p1}, Lcom/gmodvr/flat/UpdateDownload;->part(Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 56
    :try_start_a
    invoke-static {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/UpdateDownload;->download(Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;Lcom/gmodvr/flat/UpdateDownload$ConnectionFactory;Lcom/gmodvr/flat/UpdateDownload$Cancellation;Lcom/gmodvr/flat/UpdateDownload$Progress;)Ljava/io/File;

    move-result-object p0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception v4

    .line 58
    invoke-interface {p3}, Lcom/gmodvr/flat/UpdateDownload$Cancellation;->canceled()Z

    move-result v5

    if-nez v5, :cond_51

    invoke-static {v4}, Lcom/gmodvr/flat/UpdateDownload;->retryable(Ljava/io/IOException;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 59
    invoke-static {p0, p1}, Lcom/gmodvr/flat/UpdateDownload;->part(Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v2, v5, v2

    if-lez v2, :cond_2a

    move v1, v0

    goto :goto_2c

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    :goto_2c
    const/4 v2, 0x5

    if-ge v1, v2, :cond_50

    const-wide/16 v2, 0x7d0

    shl-long/2addr v2, v1

    const-wide/16 v5, 0x7530

    .line 61
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-wide/16 v5, 0x0

    :goto_3a
    cmp-long v7, v5, v2

    if-gez v7, :cond_2

    .line 64
    :try_start_3e
    invoke-static {p3}, Lcom/gmodvr/flat/UpdateDownload;->checkCanceled(Lcom/gmodvr/flat/UpdateDownload$Cancellation;)V

    const-wide/16 v7, 0xfa

    .line 65
    invoke-interface {p5, v7, v8}, Lcom/gmodvr/flat/UpdateDownload$Sleeper;->sleep(J)V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_46} :catch_48

    add-long/2addr v5, v7

    goto :goto_3a

    .line 68
    :catch_48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 69
    throw v4

    .line 60
    :cond_50
    throw v4

    .line 58
    :cond_51
    throw v4
.end method

.method private static hex([B)Ljava/lang/String;
    .registers 7

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 172
    array-length v1, p0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_25

    aget-byte v3, p0, v2

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%02x"

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 173
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static part(Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;)Ljava/io/File;
    .registers 4

    .line 76
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/gmodvr/flat/UpdateRelease$Candidate;->sha256:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".part"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static remove(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_15

    :cond_d
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Cannot remove an old update file."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_15
    return-void
.end method

.method public static requireRange(Ljava/lang/String;JJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 p1, 0x1

    sub-long p1, p3, p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    return-void

    :cond_2c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "The server returned the wrong download range."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static retryable(Ljava/io/IOException;)Z
    .registers 2

    .line 34
    instance-of v0, p0, Lcom/gmodvr/flat/UpdateDownload$Truncated;

    if-nez v0, :cond_1f

    instance-of v0, p0, Ljava/net/SocketException;

    if-nez v0, :cond_1f

    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_1f

    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_1f

    instance-of v0, p0, Ljava/net/ProtocolException;

    if-nez v0, :cond_1f

    instance-of v0, p0, Ljava/io/EOFException;

    if-nez v0, :cond_1f

    instance-of p0, p0, Ljavax/net/ssl/SSLException;

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    return p0
.end method

.method private static sha256()Ljava/security/MessageDigest;
    .registers 2

    .line 167
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 168
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static verify(Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;Lcom/gmodvr/flat/UpdateDownload$Cancellation;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/gmodvr/flat/UpdateRelease$Candidate;->size:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 153
    :cond_c
    invoke-static {}, Lcom/gmodvr/flat/UpdateDownload;->sha256()Ljava/security/MessageDigest;

    move-result-object v0

    .line 154
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 p0, 0x20000

    .line 155
    :try_start_17
    new-array p0, p0, [B

    .line 157
    :goto_19
    invoke-virtual {v2, p0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_29

    .line 158
    invoke-static {p2}, Lcom/gmodvr/flat/UpdateDownload;->checkCanceled(Lcom/gmodvr/flat/UpdateDownload$Cancellation;)V

    .line 159
    invoke-virtual {v0, p0, v1, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_27

    goto :goto_19

    :catchall_27
    move-exception p0

    goto :goto_3b

    .line 161
    :cond_29
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 162
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/gmodvr/flat/UpdateDownload;->hex([B)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/gmodvr/flat/UpdateRelease$Candidate;->sha256:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 154
    :goto_3b
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_43
    throw p0
.end method

###### Class com.gmodvr.flat.UpdateDownload.Cancellation (com.gmodvr.flat.UpdateDownload$Cancellation)
.class interface abstract Lcom/gmodvr/flat/UpdateDownload$Cancellation;
.super Ljava/lang/Object;
.source "UpdateDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/UpdateDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Cancellation"
.end annotation


# virtual methods
.method public abstract canceled()Z
.end method

###### Class com.gmodvr.flat.UpdateDownload.ConnectionFactory (com.gmodvr.flat.UpdateDownload$ConnectionFactory)
.class interface abstract Lcom/gmodvr/flat/UpdateDownload$ConnectionFactory;
.super Ljava/lang/Object;
.source "UpdateDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/UpdateDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionFactory"
.end annotation


# virtual methods
.method public abstract open(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
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
.end method

###### Class com.gmodvr.flat.UpdateDownload.Progress (com.gmodvr.flat.UpdateDownload$Progress)
.class interface abstract Lcom/gmodvr/flat/UpdateDownload$Progress;
.super Ljava/lang/Object;
.source "UpdateDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/UpdateDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Progress"
.end annotation


# virtual methods
.method public abstract update(JZ)V
.end method

###### Class com.gmodvr.flat.UpdateDownload.Sleeper (com.gmodvr.flat.UpdateDownload$Sleeper)
.class interface abstract Lcom/gmodvr/flat/UpdateDownload$Sleeper;
.super Ljava/lang/Object;
.source "UpdateDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/UpdateDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Sleeper"
.end annotation


# virtual methods
.method public abstract sleep(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

###### Class com.gmodvr.flat.UpdateDownload.Truncated (com.gmodvr.flat.UpdateDownload$Truncated)
.class final Lcom/gmodvr/flat/UpdateDownload$Truncated;
.super Ljava/io/IOException;
.source "UpdateDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/UpdateDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Truncated"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    const-string v0, "Download interrupted. Resume to continue."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
