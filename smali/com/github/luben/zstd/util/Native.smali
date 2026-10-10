###### Class com.github.luben.zstd.util.Native (com.github.luben.zstd.util.Native)
.class public final enum Lcom/github/luben/zstd/util/Native;
.super Ljava/lang/Enum;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/luben/zstd/util/Native;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/luben/zstd/util/Native;

.field private static final errorMsg:Ljava/lang/String;

.field private static final libname:Ljava/lang/String; = "libzstd-jni-1.5.7-6"

.field private static final libnameShort:Ljava/lang/String; = "zstd-jni-1.5.7-6"

.field private static loaded:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field private static final nativePathOverride:Ljava/lang/String; = "ZstdNativePath"

.field private static final tempFolderOverride:Ljava/lang/String; = "ZstdTempFolder"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    .line 12
    new-array v1, v0, [Lcom/github/luben/zstd/util/Native;

    sput-object v1, Lcom/github/luben/zstd/util/Native;->$VALUES:[Lcom/github/luben/zstd/util/Native;

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported OS/arch, cannot find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {}, Lcom/github/luben/zstd/util/Native;->resourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "zstd-jni-1.5.7-6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from system libraries. Please try building from source the jar or providing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "libzstd-jni-1.5.7-6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in your system."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/luben/zstd/util/Native;->errorMsg:Ljava/lang/String;

    .line 53
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/github/luben/zstd/util/Native;->loaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static declared-synchronized assumeLoaded()V
    .registers 3

    const-class v0, Lcom/github/luben/zstd/util/Native;

    monitor-enter v0

    .line 62
    :try_start_3
    sget-object v1, Lcom/github/luben/zstd/util/Native;->loaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    .line 63
    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v1
.end method

.method public static declared-synchronized isLoaded()Z
    .registers 2

    const-class v0, Lcom/github/luben/zstd/util/Native;

    monitor-enter v0

    .line 66
    :try_start_3
    sget-object v1, Lcom/github/luben/zstd/util/Native;->loaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v1
.end method

.method private static libExtension()Ljava/lang/String;
    .registers 2

    .line 35
    invoke-static {}, Lcom/github/luben/zstd/util/Native;->osName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "os_x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {}, Lcom/github/luben/zstd/util/Native;->osName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "darwin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_2b

    .line 37
    :cond_19
    invoke-static {}, Lcom/github/luben/zstd/util/Native;->osName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "win"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 38
    const-string v0, "dll"

    return-object v0

    .line 40
    :cond_28
    const-string v0, "so"

    return-object v0

    .line 36
    :cond_2b
    :goto_2b
    const-string v0, "dylib"

    return-object v0
.end method

.method public static declared-synchronized load()V
    .registers 3

    const-class v0, Lcom/github/luben/zstd/util/Native;

    monitor-enter v0

    .line 88
    :try_start_3
    const-string v1, "ZstdTempFolder"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 v1, 0x0

    .line 90
    invoke-static {v1}, Lcom/github/luben/zstd/util/Native;->load(Ljava/io/File;)V

    goto :goto_1a

    :catchall_10
    move-exception v1

    goto :goto_1c

    .line 92
    :cond_12
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/github/luben/zstd/util/Native;->load(Ljava/io/File;)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_10

    .line 94
    :goto_1a
    monitor-exit v0

    return-void

    :goto_1c
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_10

    throw v1
.end method

.method public static declared-synchronized load(Ljava/io/File;)V
    .registers 10

    const-class v0, Lcom/github/luben/zstd/util/Native;

    monitor-enter v0

    .line 97
    :try_start_3
    sget-object v1, Lcom/github/luben/zstd/util/Native;->loaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_24

    if-eqz v1, :cond_d

    .line 98
    monitor-exit v0

    return-void

    .line 100
    :cond_d
    :try_start_d
    invoke-static {}, Lcom/github/luben/zstd/util/Native;->resourceName()Ljava/lang/String;

    move-result-object v1

    .line 102
    const-string v2, "ZstdNativePath"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    .line 105
    invoke-static {v2}, Lcom/github/luben/zstd/util/Native;->loadLibraryFile(Ljava/lang/String;)V

    .line 106
    sget-object p0, Lcom/github/luben/zstd/util/Native;->loaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_24

    .line 107
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    goto/16 :goto_159

    .line 112
    :cond_27
    :try_start_27
    const-string v2, "org.osgi.framework.BundleEvent"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 113
    const-string v2, "libzstd-jni-1.5.7-6"

    invoke-static {v2}, Lcom/github/luben/zstd/util/Native;->loadLibrary(Ljava/lang/String;)V

    .line 114
    sget-object v2, Lcom/github/luben/zstd/util/Native;->loaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_38

    .line 115
    monitor-exit v0

    return-void

    .line 120
    :catchall_38
    :try_start_38
    const-class v2, Lcom/github/luben/zstd/util/Native;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_24

    if-nez v1, :cond_74

    .line 125
    :try_start_40
    const-string p0, "zstd-jni-1.5.7-6"

    invoke-static {p0}, Lcom/github/luben/zstd/util/Native;->loadLibrary(Ljava/lang/String;)V

    .line 126
    sget-object p0, Lcom/github/luben/zstd/util/Native;->loaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_40 .. :try_end_4a} :catch_4c
    .catchall {:try_start_40 .. :try_end_4a} :catchall_24

    .line 127
    monitor-exit v0

    return-void

    :catch_4c
    move-exception p0

    .line 129
    :try_start_4d
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/github/luben/zstd/util/Native;->errorMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 131
    throw v1
    :try_end_74
    .catchall {:try_start_4d .. :try_end_74} :catchall_24

    :cond_74
    const/4 v2, 0x0

    .line 137
    :try_start_75
    const-string v4, "libzstd-jni-1.5.7-6"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/github/luben/zstd/util/Native;->libExtension()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_90} :catch_11d
    .catchall {:try_start_75 .. :try_end_90} :catchall_118

    .line 139
    :try_start_90
    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    .line 141
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_98} :catch_bb
    .catchall {:try_start_90 .. :try_end_98} :catchall_b6

    const/16 v5, 0x1000

    .line 142
    :try_start_9a
    new-array v5, v5, [B

    .line 144
    :goto_9c
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_a0} :catch_116
    .catchall {:try_start_9a .. :try_end_a0} :catchall_aa

    const/4 v7, -0x1

    if-ne v6, v7, :cond_111

    .line 151
    :try_start_a3
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 152
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a9} :catch_ad
    .catchall {:try_start_a3 .. :try_end_a9} :catchall_aa

    goto :goto_ae

    :catchall_aa
    move-exception v2

    goto/16 :goto_145

    :catch_ad
    move-object v2, v4

    .line 158
    :goto_ae
    :try_start_ae
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/github/luben/zstd/util/Native;->loadLibraryFile(Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_ae .. :try_end_b5} :catch_bf
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b5} :catch_bb
    .catchall {:try_start_ae .. :try_end_b5} :catchall_b6

    goto :goto_c5

    :catchall_b6
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    goto/16 :goto_145

    :catch_bb
    move-exception v3

    move-object v4, v2

    :goto_bd
    move-object v2, p0

    goto :goto_11f

    :catch_bf
    move-exception v4

    .line 162
    :try_start_c0
    const-string v5, "zstd-jni-1.5.7-6"

    invoke-static {v5}, Lcom/github/luben/zstd/util/Native;->loadLibrary(Ljava/lang/String;)V
    :try_end_c5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_c0 .. :try_end_c5} :catch_dd
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c5} :catch_bb
    .catchall {:try_start_c0 .. :try_end_c5} :catchall_b6

    .line 174
    :goto_c5
    :try_start_c5
    sget-object v4, Lcom/github/luben/zstd/util/Native;->loaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_ca} :catch_bb
    .catchall {:try_start_c5 .. :try_end_ca} :catchall_b6

    .line 183
    :try_start_ca
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    if-eqz v2, :cond_d2

    .line 185
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 187
    :cond_d2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_db

    .line 188
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_db} :catch_db
    .catchall {:try_start_ca .. :try_end_db} :catchall_24

    .line 194
    :catch_db
    :cond_db
    monitor-exit v0

    return-void

    :catch_dd
    move-exception v3

    .line 166
    :try_start_de
    new-instance v5, Ljava/lang/UnsatisfiedLinkError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/github/luben/zstd/util/Native;->errorMsg:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 171
    throw v5
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_111} :catch_bb
    .catchall {:try_start_de .. :try_end_111} :catchall_b6

    :cond_111
    const/4 v7, 0x0

    .line 148
    :try_start_112
    invoke-virtual {v4, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_115} :catch_116
    .catchall {:try_start_112 .. :try_end_115} :catchall_aa

    goto :goto_9c

    :catch_116
    move-exception v3

    goto :goto_bd

    :catchall_118
    move-exception p0

    move-object v4, v2

    move-object v2, p0

    move-object p0, v4

    goto :goto_145

    :catch_11d
    move-exception v3

    move-object v4, v2

    .line 177
    :goto_11f
    :try_start_11f
    new-instance p0, Ljava/lang/ExceptionInInitializerError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot unpack libzstd-jni-1.5.7-6: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 180
    throw p0
    :try_end_141
    .catchall {:try_start_11f .. :try_end_141} :catchall_141

    :catchall_141
    move-exception p0

    move-object v8, v2

    move-object v2, p0

    move-object p0, v8

    .line 183
    :goto_145
    :try_start_145
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    if-eqz v4, :cond_14d

    .line 185
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_14d
    if-eqz p0, :cond_158

    .line 187
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_158

    .line 188
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_158
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_158} :catch_158
    .catchall {:try_start_145 .. :try_end_158} :catchall_24

    .line 193
    :catch_158
    :cond_158
    :try_start_158
    throw v2

    :goto_159
    monitor-exit v0
    :try_end_15a
    .catchall {:try_start_158 .. :try_end_15a} :catchall_24

    throw p0
.end method

.method private static loadLibrary(Ljava/lang/String;)V
    .registers 2

    .line 70
    new-instance v0, Lcom/github/luben/zstd/util/Native$1;

    invoke-direct {v0, p0}, Lcom/github/luben/zstd/util/Native$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method private static loadLibraryFile(Ljava/lang/String;)V
    .registers 2

    .line 79
    new-instance v0, Lcom/github/luben/zstd/util/Native$2;

    invoke-direct {v0, p0}, Lcom/github/luben/zstd/util/Native$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method private static osName()Ljava/lang/String;
    .registers 3

    .line 24
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 25
    const-string v1, "win"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return-object v1

    .line 27
    :cond_1b
    const-string v1, "mac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 28
    const-string v0, "darwin"

    :cond_25
    return-object v0
.end method

.method private static resourceName()Ljava/lang/String;
    .registers 4

    .line 45
    invoke-static {}, Lcom/github/luben/zstd/util/Native;->osName()Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    const-string v2, "darwin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "amd64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 48
    const-string v1, "x86_64"

    .line 50
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "libzstd-jni-1.5.7-6"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/github/luben/zstd/util/Native;->libExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/luben/zstd/util/Native;
    .registers 2

    .line 12
    const-class v0, Lcom/github/luben/zstd/util/Native;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/luben/zstd/util/Native;

    return-object p0
.end method

.method public static values()[Lcom/github/luben/zstd/util/Native;
    .registers 1

    .line 12
    sget-object v0, Lcom/github/luben/zstd/util/Native;->$VALUES:[Lcom/github/luben/zstd/util/Native;

    invoke-virtual {v0}, [Lcom/github/luben/zstd/util/Native;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/luben/zstd/util/Native;

    return-object v0
.end method

###### Class com.github.luben.zstd.util.Native.AnonymousClass1 (com.github.luben.zstd.util.Native$1)
.class Lcom/github/luben/zstd/util/Native$1;
.super Ljava/lang/Object;
.source "Native.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/luben/zstd/util/Native;->loadLibrary(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$libName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/github/luben/zstd/util/Native$1;->val$libName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 1

    .line 70
    invoke-virtual {p0}, Lcom/github/luben/zstd/util/Native$1;->run()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava/lang/Void;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/github/luben/zstd/util/Native$1;->val$libName:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

###### Class com.github.luben.zstd.util.Native.AnonymousClass2 (com.github.luben.zstd.util.Native$2)
.class Lcom/github/luben/zstd/util/Native$2;
.super Ljava/lang/Object;
.source "Native.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/luben/zstd/util/Native;->loadLibraryFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$libFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/github/luben/zstd/util/Native$2;->val$libFileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 1

    .line 79
    invoke-virtual {p0}, Lcom/github/luben/zstd/util/Native$2;->run()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava/lang/Void;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/github/luben/zstd/util/Native$2;->val$libFileName:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
