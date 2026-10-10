###### Class in.dragonbra.javasteam.steam.handlers.steamauthticket.TicketInfo (in.dragonbra.javasteam.steam.handlers.steamauthticket.TicketInfo)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;
.super Ljava/lang/Object;
.source "TicketInfo.kt"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final appID:I

.field private final handler:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;

.field private final ticket:[B

.field private final ticketCRC:J


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;I[B)V
    .registers 5

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ticket"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;->handler:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;

    .line 17
    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;->appID:I

    .line 18
    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;->ticket:[B

    .line 24
    invoke-static {p3}, Lin/dragonbra/javasteam/util/Utils;->crc32([B)J

    move-result-wide p1

    iput-wide p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;->ticketCRC:J

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 30
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;->handler:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->cancelAuthTicket$javasteam(Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;)V

    return-void
.end method

.method public final getAppID$javasteam()I
    .registers 1

    .line 17
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;->appID:I

    return p0
.end method

.method public final getTicket()[B
    .registers 1

    .line 18
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;->ticket:[B

    return-object p0
.end method

.method public final getTicketCRC$javasteam()J
    .registers 3

    .line 24
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;->ticketCRC:J

    return-wide v0
.end method
