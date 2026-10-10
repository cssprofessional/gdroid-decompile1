###### Class in.dragonbra.javasteam.steam.discovery.FileServerListProvider (in.dragonbra.javasteam.steam.discovery.FileServerListProvider)
.class public final Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider;
.super Ljava/lang/Object;
.source "FileServerListProvider.kt"

# interfaces
.implements Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileServerListProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileServerListProvider.kt\nin/dragonbra/javasteam/steam/discovery/FileServerListProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 LogManager.kt\nin/dragonbra/javasteam/util/log/LogManager\n*L\n1#1,110:1\n1#2:111\n1563#3:112\n1634#3,3:113\n53#4:116\n*S KotlinDebug\n*F\n+ 1 FileServerListProvider.kt\nin/dragonbra/javasteam/steam/discovery/FileServerListProvider\n*L\n91#1:112\n91#1:113,3\n24#1:116\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider$Companion;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private final file:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider;->Companion:Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider$Companion;

    .line 53
    const-class v0, Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    .line 24
    sput-object v0, Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const-string v0, "toPath(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider;-><init>(Ljava/nio/file/Path;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 37
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    const-string v0, "of(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider;-><init>(Ljava/nio/file/Path;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .registers 3

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider;->file:Ljava/nio/file/Path;

    .line 40
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_19

    return-void

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FileName must not be blank"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public fetchServerList()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/discovery/ServerRecord;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 60
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 61
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider;->file:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_54

    .line 62
    :try_start_c
    invoke-static {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->parseFrom(Ljava/io/InputStream;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->getServersCount()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_19
    if-ge v1, v3, :cond_4c

    .line 64
    invoke-virtual {v2, v1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->getServers(I)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object v5

    const-string v6, "getServers(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object v6, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->Companion:Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;

    .line 66
    invoke-virtual {v5}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->getAddress()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getAddress(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v5}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->getPort()I

    move-result v8

    .line 68
    invoke-virtual {v5}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->getProtocol()I

    move-result v5

    invoke-static {v5}, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->from(I)Ljava/util/EnumSet;

    move-result-object v5

    const-string v9, "from(...)"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v6, v7, v8, v5}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord$Companion;->createServer(Ljava/lang/String;ILjava/util/EnumSet;)Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    move-result-object v5

    .line 63
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catchall {:try_start_c .. :try_end_47} :catchall_4a

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :catchall_4a
    move-exception v1

    goto :goto_56

    .line 61
    :cond_4c
    :try_start_4c
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 60
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_54

    goto :goto_66

    :catchall_54
    move-exception p0

    goto :goto_5c

    .line 61
    :goto_56
    :try_start_56
    throw v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception v2

    :try_start_58
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_54

    .line 60
    :goto_5c
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 72
    :goto_66
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_6f

    check-cast p0, Ljava/util/List;

    goto :goto_87

    .line 76
    :cond_6f
    instance-of p0, v1, Ljava/nio/file/NoSuchFileException;

    if-eqz p0, :cond_7c

    sget-object p0, Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v1, "File doesn\'t exist"

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2, v0}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_83

    .line 77
    :cond_7c
    sget-object p0, Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v0, "Unknown error occurred"

    invoke-virtual {p0, v0, v1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    :goto_83
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_87
    return-object p0
.end method

.method public final getFile()Ljava/nio/file/Path;
    .registers 1

    .line 21
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider;->file:Ljava/nio/file/Path;

    return-object p0
.end method

.method public getLastServerListRefresh()Ljava/time/Instant;
    .registers 2

    .line 50
    :try_start_0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider;->file:Ljava/nio/file/Path;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    .line 49
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_16

    .line 52
    :catch_11
    sget-object p0, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    .line 51
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_16
    return-object p0
.end method

.method public updateServerList(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/discovery/ServerRecord;",
            ">;)V"
        }
    .end annotation

    const-string v0, "endpoints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->newBuilder()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    move-result-object v0

    .line 1563
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1635
    check-cast v2, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;

    .line 92
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->newBuilder()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object v3

    .line 93
    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->setAddress(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object v3

    .line 94
    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->setPort(I)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object v3

    .line 95
    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/discovery/ServerRecord;->getProtocolTypes()Ljava/util/EnumSet;

    move-result-object v2

    invoke-static {v2}, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->code(Ljava/util/EnumSet;)I

    move-result v2

    invoke-virtual {v3, v2}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->setProtocol(I)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->build()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object v2

    .line 1635
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 90
    :cond_4c
    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->addAllServers(Ljava/lang/Iterable;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    .line 102
    :try_start_4f
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider;->file:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_58} :catch_66

    .line 103
    :try_start_58
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->build()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessageLite;->writeTo(Ljava/io/OutputStream;)V

    .line 104
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_68

    const/4 v0, 0x0

    .line 102
    :try_start_62
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_8b

    :catch_66
    move-exception p1

    goto :goto_6f

    :catchall_68
    move-exception v0

    :try_start_69
    throw v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    :catchall_6a
    move-exception v1

    :try_start_6b
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6f} :catch_66

    .line 106
    :goto_6f
    sget-object v0, Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider;->file:Ljava/nio/file/Path;

    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write servers to file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8b
    return-void
.end method

###### Class in.dragonbra.javasteam.steam.discovery.FileServerListProvider.Companion (in.dragonbra.javasteam.steam.discovery.FileServerListProvider$Companion)
.class public final Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider$Companion;
.super Ljava/lang/Object;
.source "FileServerListProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/discovery/FileServerListProvider$Companion;-><init>()V

    return-void
.end method
