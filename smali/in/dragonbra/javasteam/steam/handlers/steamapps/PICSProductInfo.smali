###### Class in.dragonbra.javasteam.steam.handlers.steamapps.PICSProductInfo (in.dragonbra.javasteam.steam.handlers.steamapps.PICSProductInfo)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "PICSProductInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPICSProductInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PICSProductInfo.kt\nin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo\n+ 2 LogManager.kt\nin/dragonbra/javasteam/util/log/LogManager\n*L\n1#1,134:1\n53#2:135\n*S KotlinDebug\n*F\n+ 1 PICSProductInfo.kt\nin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo\n*L\n22#1:135\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo$Companion;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private final changeNumber:I

.field private httpHost:Ljava/lang/String;

.field private final id:I

.field private final isMissingToken:Z

.field private isOnlyPublic:Z

.field private isUseHttp:Z

.field private final keyValues:Lin/dragonbra/javasteam/types/KeyValue;

.field private final shaHash:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->Companion:Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo$Companion;

    .line 53
    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    .line 22
    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoResponse$Builder;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoResponse$AppInfo;)V
    .registers 10

    const-string v0, "parentResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 86
    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoResponse$AppInfo;->getAppid()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->id:I

    .line 87
    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoResponse$AppInfo;->getChangeNumber()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->changeNumber:I

    .line 88
    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoResponse$AppInfo;->getMissingToken()Z

    move-result v0

    iput-boolean v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->isMissingToken:Z

    .line 89
    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoResponse$AppInfo;->getSha()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->shaHash:[B

    .line 91
    new-instance v0, Lin/dragonbra/javasteam/types/KeyValue;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Lin/dragonbra/javasteam/types/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->keyValues:Lin/dragonbra/javasteam/types/KeyValue;

    .line 93
    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoResponse$AppInfo;->hasBuffer()Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_71

    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoResponse$AppInfo;->getBuffer()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_71

    .line 96
    :try_start_44
    new-instance v1, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoResponse$AppInfo;->getBuffer()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoResponse$AppInfo;->getBuffer()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-direct {v1, v5, v4, v6}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>([BII)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_5a} :catch_61

    .line 97
    :try_start_5a
    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/types/KeyValue;->readAsText(Ljava/io/InputStream;)Z
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_63

    .line 96
    :try_start_5d
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_71

    :catch_61
    move-exception v0

    goto :goto_6a

    :catchall_63
    move-exception v0

    :try_start_64
    throw v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_65

    :catchall_65
    move-exception v2

    :try_start_66
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6a} :catch_61

    .line 100
    :goto_6a
    sget-object v1, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v2, "failed to read buffer"

    invoke-virtual {v1, v2, v0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    :cond_71
    :goto_71
    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoResponse$AppInfo;->getOnlyPublic()Z

    move-result v0

    iput-boolean v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->isOnlyPublic:Z

    .line 105
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoResponse$Builder;->getHttpHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->httpHost:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->getHttpUri()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_8e

    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoResponse$AppInfo;->getSize()I

    move-result p2

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoResponse$Builder;->getHttpMinSize()I

    move-result p1

    if-lt p2, p1, :cond_8e

    goto :goto_8f

    :cond_8e
    move v3, v4

    :goto_8f
    iput-boolean v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->isUseHttp:Z

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoResponse$PackageInfo;)V
    .registers 5

    const-string v0, "packageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 110
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoResponse$PackageInfo;->getPackageid()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->id:I

    .line 111
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoResponse$PackageInfo;->getChangeNumber()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->changeNumber:I

    .line 112
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoResponse$PackageInfo;->getMissingToken()Z

    move-result v0

    iput-boolean v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->isMissingToken:Z

    .line 113
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoResponse$PackageInfo;->getSha()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->shaHash:[B

    .line 115
    new-instance v0, Lin/dragonbra/javasteam/types/KeyValue;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Lin/dragonbra/javasteam/types/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->keyValues:Lin/dragonbra/javasteam/types/KeyValue;

    .line 117
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoResponse$PackageInfo;->hasBuffer()Z

    move-result p0

    if-eqz p0, :cond_5f

    .line 121
    :try_start_33
    new-instance p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoResponse$PackageInfo;->getBuffer()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_45} :catch_4f

    .line 125
    :try_start_45
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    .line 126
    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/types/KeyValue;->tryReadAsBinary(Ljava/io/InputStream;)Z
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_51

    .line 121
    :try_start_4b
    invoke-static {p0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_5f

    :catch_4f
    move-exception p0

    goto :goto_58

    :catchall_51
    move-exception p1

    :try_start_52
    throw p1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    :catchall_53
    move-exception v0

    :try_start_54
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_58} :catch_4f

    .line 129
    :goto_58
    sget-object p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v0, "failed to read buffer"

    invoke-virtual {p1, v0, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method private final getHasValidHttpUri()Z
    .registers 4

    .line 80
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->shaHash:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    array-length v0, v0

    const/4 v2, 0x1

    if-nez v0, :cond_b

    move v0, v2

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    if-nez v0, :cond_1a

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->httpHost:Ljava/lang/String;

    if-eqz p0, :cond_1a

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_19

    goto :goto_1a

    :cond_19
    move v1, v2

    :cond_1a
    :goto_1a
    return v1
.end method


# virtual methods
.method public final getChangeNumber()I
    .registers 1

    .line 33
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->changeNumber:I

    return p0
.end method

.method public final getHttpUri()Ljava/net/URI;
    .registers 8

    .line 68
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->getHasValidHttpUri()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_8
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->shaHash:[B

    invoke-static {v0}, Lin/dragonbra/javasteam/util/Strings;->toHex([B)Ljava/lang/String;

    move-result-object v1

    const-string v0, "toHex(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "-"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "getDefault(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->httpHost:Ljava/lang/String;

    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "https://%s/appinfo/%d/sha/%s.txt.gz"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public final getId()I
    .registers 1

    .line 28
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->id:I

    return p0
.end method

.method public final getKeyValues()Lin/dragonbra/javasteam/types/KeyValue;
    .registers 1

    .line 48
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->keyValues:Lin/dragonbra/javasteam/types/KeyValue;

    return-object p0
.end method

.method public final getShaHash()[B
    .registers 1

    .line 43
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->shaHash:[B

    return-object p0
.end method

.method public final isMissingToken()Z
    .registers 1

    .line 38
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->isMissingToken:Z

    return p0
.end method

.method public final isOnlyPublic()Z
    .registers 1

    .line 53
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->isOnlyPublic:Z

    return p0
.end method

.method public final isUseHttp()Z
    .registers 1

    .line 59
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;->isUseHttp:Z

    return p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamapps.PICSProductInfo.Companion (in.dragonbra.javasteam.steam.handlers.steamapps.PICSProductInfo$Companion)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo$Companion;
.super Ljava/lang/Object;
.source "PICSProductInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSProductInfo$Companion;-><init>()V

    return-void
.end method
