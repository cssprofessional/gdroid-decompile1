###### Class in.dragonbra.javasteam.steam.handlers.steamapps.callback.GuestPassListCallback (in.dragonbra.javasteam.steam.handlers.steamapps.callback.GuestPassListCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "GuestPassListCallback.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGuestPassListCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GuestPassListCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback\n+ 2 LogManager.kt\nin/dragonbra/javasteam/util/log/LogManager\n*L\n1#1,63:1\n53#2:64\n*S KotlinDebug\n*F\n+ 1 GuestPassListCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback\n*L\n18#1:64\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback$Companion;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private final countGuestPassesToGive:I

.field private final countGuestPassesToRedeem:I

.field private final guestPasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/types/KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private final result:Lin/dragonbra/javasteam/enums/EResult;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback;->Companion:Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback$Companion;

    .line 53
    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    .line 18
    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 8

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 42
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsg;

    const-class v1, Lin/dragonbra/javasteam/generated/MsgClientUpdateGuestPassesList;

    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 43
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/MsgClientUpdateGuestPassesList;

    .line 45
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientUpdateGuestPassesList;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v1

    const-string v2, "getResult(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 46
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientUpdateGuestPassesList;->getCountGuestPassesToGive()I

    move-result v1

    iput v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback;->countGuestPassesToGive:I

    .line 47
    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/MsgClientUpdateGuestPassesList;->getCountGuestPassesToRedeem()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback;->countGuestPassesToRedeem:I

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr v1, p1

    const/4 p1, 0x0

    :goto_33
    if-ge p1, v1, :cond_51

    .line 52
    :try_start_35
    new-instance v3, Lin/dragonbra/javasteam/types/KeyValue;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4, v5}, Lin/dragonbra/javasteam/types/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AbstractMsgBase;->getPayload()Lin/dragonbra/javasteam/util/stream/MemoryStream;

    move-result-object v4

    invoke-virtual {v3, v4}, Lin/dragonbra/javasteam/types/KeyValue;->tryReadAsBinary(Ljava/io/InputStream;)Z

    .line 54
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_46} :catch_49

    add-int/lit8 p1, p1, 0x1

    goto :goto_33

    :catch_49
    move-exception p1

    .line 57
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v1, "failed to read guest passes"

    invoke-virtual {v0, v1, p1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    :cond_51
    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback;->guestPasses:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCountGuestPassesToGive()I
    .registers 1

    .line 29
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback;->countGuestPassesToGive:I

    return p0
.end method

.method public final getCountGuestPassesToRedeem()I
    .registers 1

    .line 34
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback;->countGuestPassesToRedeem:I

    return p0
.end method

.method public final getGuestPasses()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/types/KeyValue;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback;->guestPasses:Ljava/util/List;

    return-object p0
.end method

.method public final getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 24
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamapps.callback.GuestPassListCallback.Companion (in.dragonbra.javasteam.steam.handlers.steamapps.callback.GuestPassListCallback$Companion)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback$Companion;
.super Ljava/lang/Object;
.source "GuestPassListCallback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback;
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
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback$Companion;-><init>()V

    return-void
.end method
