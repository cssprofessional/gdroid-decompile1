###### Class in.dragonbra.javasteam.steam.handlers.steamapps.callback.PurchaseResponseCallback (in.dragonbra.javasteam.steam.handlers.steamapps.callback.PurchaseResponseCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PurchaseResponseCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "PurchaseResponseCallback.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PurchaseResponseCallback$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPurchaseResponseCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PurchaseResponseCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamapps/callback/PurchaseResponseCallback\n+ 2 LogManager.kt\nin/dragonbra/javasteam/util/log/LogManager\n*L\n1#1,60:1\n53#2:61\n*S KotlinDebug\n*F\n+ 1 PurchaseResponseCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamapps/callback/PurchaseResponseCallback\n*L\n20#1:61\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PurchaseResponseCallback$Companion;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private final purchaseReceiptInfo:Lin/dragonbra/javasteam/types/KeyValue;

.field private final purchaseResultDetail:Lin/dragonbra/javasteam/enums/EPurchaseResultDetail;

.field private final result:Lin/dragonbra/javasteam/enums/EResult;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PurchaseResponseCallback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PurchaseResponseCallback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PurchaseResponseCallback;->Companion:Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PurchaseResponseCallback$Companion;

    .line 53
    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PurchaseResponseCallback;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    .line 20
    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PurchaseResponseCallback;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 5

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 39
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 40
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientPurchaseResponse;

    .line 39
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 43
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientPurchaseResponse$Builder;

    .line 45
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 46
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientPurchaseResponse$Builder;->getEresult()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PurchaseResponseCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 47
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientPurchaseResponse$Builder;->getPurchaseResultDetails()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EPurchaseResultDetail;->from(I)Lin/dragonbra/javasteam/enums/EPurchaseResultDetail;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PurchaseResponseCallback;->purchaseResultDetail:Lin/dragonbra/javasteam/enums/EPurchaseResultDetail;

    .line 48
    new-instance v0, Lin/dragonbra/javasteam/types/KeyValue;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lin/dragonbra/javasteam/types/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PurchaseResponseCallback;->purchaseReceiptInfo:Lin/dragonbra/javasteam/types/KeyValue;

    .line 50
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientPurchaseResponse$Builder;->getPurchaseReceiptInfo()Lcom/google/protobuf/ByteString;

    move-result-object p0

    if-eqz p0, :cond_5d

    .line 52
    :try_start_44
    new-instance p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientPurchaseResponse$Builder;->getPurchaseReceiptInfo()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>([B)V

    .line 53
    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/types/KeyValue;->tryReadAsBinary(Ljava/io/InputStream;)Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_54} :catch_55

    goto :goto_5d

    :catch_55
    move-exception p0

    .line 55
    sget-object p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PurchaseResponseCallback;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v0, "Failed to read purchase receipt info"

    invoke-virtual {p1, v0, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5d
    :goto_5d
    return-void
.end method


# virtual methods
.method public final getPurchaseReceiptInfo()Lin/dragonbra/javasteam/types/KeyValue;
    .registers 1

    .line 36
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PurchaseResponseCallback;->purchaseReceiptInfo:Lin/dragonbra/javasteam/types/KeyValue;

    return-object p0
.end method

.method public final getPurchaseResultDetail()Lin/dragonbra/javasteam/enums/EPurchaseResultDetail;
    .registers 1

    .line 31
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PurchaseResponseCallback;->purchaseResultDetail:Lin/dragonbra/javasteam/enums/EPurchaseResultDetail;

    return-object p0
.end method

.method public final getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 26
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PurchaseResponseCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamapps.callback.PurchaseResponseCallback.Companion (in.dragonbra.javasteam.steam.handlers.steamapps.callback.PurchaseResponseCallback$Companion)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PurchaseResponseCallback$Companion;
.super Ljava/lang/Object;
.source "PurchaseResponseCallback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PurchaseResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PurchaseResponseCallback$Companion;-><init>()V

    return-void
.end method
