###### Class in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$getAuthSessionTicketInternal$1 (in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$getAuthSessionTicketInternal$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SteamAuthTicket.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->getAuthSessionTicketInternal$javasteam(ILin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket"
    f = "SteamAuthTicket.kt"
    l = {
        0x72,
        0x87
    }
    m = "getAuthSessionTicketInternal$javasteam"
    v = 0x1
.end annotation


# instance fields
.field I$0:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->result:Ljava/lang/Object;

    iget p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->label:I

    iget-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, p0}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->getAuthSessionTicketInternal$javasteam(ILin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
