###### Class in.dragonbra.javasteam.steam.handlers.steamuser.callback.WalletInfoCallback (in.dragonbra.javasteam.steam.handlers.steamuser.callback.WalletInfoCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/WalletInfoCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "WalletInfoCallback.kt"


# instance fields
.field private final balance:I

.field private final balanceDelayed:I

.field private final currency:Lin/dragonbra/javasteam/enums/ECurrencyCode;

.field private final isHasWallet:Z

.field private final longBalance:J

.field private final longBalanceDelayed:J


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 46
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 47
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientWalletInfoUpdate;

    .line 46
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 50
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientWalletInfoUpdate$Builder;

    .line 52
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientWalletInfoUpdate$Builder;->getHasWallet()Z

    move-result v0

    iput-boolean v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/WalletInfoCallback;->isHasWallet:Z

    .line 54
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientWalletInfoUpdate$Builder;->getCurrency()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/ECurrencyCode;->from(I)Lin/dragonbra/javasteam/enums/ECurrencyCode;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/WalletInfoCallback;->currency:Lin/dragonbra/javasteam/enums/ECurrencyCode;

    .line 55
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientWalletInfoUpdate$Builder;->getBalance()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/WalletInfoCallback;->balance:I

    .line 56
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientWalletInfoUpdate$Builder;->getBalanceDelayed()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/WalletInfoCallback;->balanceDelayed:I

    .line 57
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientWalletInfoUpdate$Builder;->getBalance64()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/WalletInfoCallback;->longBalance:J

    .line 58
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientWalletInfoUpdate$Builder;->getBalance64Delayed()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/WalletInfoCallback;->longBalanceDelayed:J

    return-void
.end method


# virtual methods
.method public final getBalance()I
    .registers 1

    .line 28
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/WalletInfoCallback;->balance:I

    return p0
.end method

.method public final getBalanceDelayed()I
    .registers 1

    .line 33
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/WalletInfoCallback;->balanceDelayed:I

    return p0
.end method

.method public final getCurrency()Lin/dragonbra/javasteam/enums/ECurrencyCode;
    .registers 1

    .line 23
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/WalletInfoCallback;->currency:Lin/dragonbra/javasteam/enums/ECurrencyCode;

    return-object p0
.end method

.method public final getLongBalance()J
    .registers 3

    .line 38
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/WalletInfoCallback;->longBalance:J

    return-wide v0
.end method

.method public final getLongBalanceDelayed()J
    .registers 3

    .line 43
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/WalletInfoCallback;->longBalanceDelayed:J

    return-wide v0
.end method

.method public final isHasWallet()Z
    .registers 1

    .line 18
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/WalletInfoCallback;->isHasWallet:Z

    return p0
.end method
