###### Class in.dragonbra.javasteam.steam.handlers.steamauthticket.callback.TicketAcceptedCallback (in.dragonbra.javasteam.steam.handlers.steamauthticket.callback.TicketAcceptedCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAcceptedCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "TicketAcceptedCallback.kt"


# instance fields
.field private final activeTicketsCRC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final appIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final messageSequence:I


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/types/JobID;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAuthListAck$Builder;)V
    .registers 5

    const-string v0, "jobID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 21
    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAuthListAck$Builder;->getAppIdsList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getAppIdsList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAcceptedCallback;->appIDs:Ljava/util/List;

    .line 26
    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAuthListAck$Builder;->getTicketCrcList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getTicketCrcList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAcceptedCallback;->activeTicketsCRC:Ljava/util/List;

    .line 31
    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAuthListAck$Builder;->getMessageSequence()I

    move-result p2

    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAcceptedCallback;->messageSequence:I

    .line 34
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    return-void
.end method


# virtual methods
.method public final getActiveTicketsCRC()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAcceptedCallback;->activeTicketsCRC:Ljava/util/List;

    return-object p0
.end method

.method public final getAppIDs()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAcceptedCallback;->appIDs:Ljava/util/List;

    return-object p0
.end method

.method public final getMessageSequence()I
    .registers 1

    .line 31
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAcceptedCallback;->messageSequence:I

    return p0
.end method
