###### Class in.dragonbra.javasteam.steam.handlers.steamapps.callback.VACStatusCallback (in.dragonbra.javasteam.steam.handlers.steamapps.callback.VACStatusCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/VACStatusCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "VACStatusCallback.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/VACStatusCallback$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVACStatusCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VACStatusCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamapps/callback/VACStatusCallback\n+ 2 LogManager.kt\nin/dragonbra/javasteam/util/log/LogManager\n*L\n1#1,45:1\n53#2:46\n*S KotlinDebug\n*F\n+ 1 VACStatusCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamapps/callback/VACStatusCallback\n*L\n18#1:46\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/VACStatusCallback$Companion;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private final bannedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/VACStatusCallback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/VACStatusCallback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/VACStatusCallback;->Companion:Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/VACStatusCallback$Companion;

    .line 53
    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/VACStatusCallback;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    .line 18
    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/VACStatusCallback;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 6

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 27
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsg;

    const-class v1, Lin/dragonbra/javasteam/generated/MsgClientVACBanStatus;

    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 28
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/MsgClientVACBanStatus;

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    :try_start_1a
    new-instance v2, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->getPayload()Lin/dragonbra/javasteam/util/stream/MemoryStream;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2c} :catch_4a

    .line 34
    :try_start_2c
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientVACBanStatus;->getNumBans()I

    move-result p1

    const/4 v0, 0x0

    :goto_31
    if-ge v0, p1, :cond_43

    .line 35
    invoke-virtual {v2}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :catchall_41
    move-exception p1

    goto :goto_4c

    .line 37
    :cond_43
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_41

    const/4 p1, 0x0

    .line 33
    :try_start_46
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_59

    :catch_4a
    move-exception p1

    goto :goto_52

    :goto_4c
    :try_start_4c
    throw p1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception v0

    :try_start_4e
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_52} :catch_4a

    .line 39
    :goto_52
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/VACStatusCallback;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v2, "failed to read bans"

    invoke-virtual {v0, v2, p1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    :goto_59
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/VACStatusCallback;->bannedApps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getBannedApps()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/VACStatusCallback;->bannedApps:Ljava/util/List;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamapps.callback.VACStatusCallback.Companion (in.dragonbra.javasteam.steam.handlers.steamapps.callback.VACStatusCallback$Companion)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/VACStatusCallback$Companion;
.super Ljava/lang/Object;
.source "VACStatusCallback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/VACStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/VACStatusCallback$Companion;-><init>()V

    return-void
.end method
