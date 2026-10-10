###### Class in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$dispatchMap$3 (in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$dispatchMap$3)
.class final synthetic Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$dispatchMap$3;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SteamAuthTicket.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lin/dragonbra/javasteam/base/IPacketMsg;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 0
    const-string v5, "handleGameConnectTokens(Lin/dragonbra/javasteam/base/IPacketMsg;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;

    const-string v4, "handleGameConnectTokens"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 67
    check-cast p1, Lin/dragonbra/javasteam/base/IPacketMsg;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$dispatchMap$3;->invoke(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;

    invoke-static {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->access$handleGameConnectTokens(Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    return-void
.end method
