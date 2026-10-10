###### Class in.dragonbra.javasteam.networking.steam3.Connection (in.dragonbra.javasteam.networking.steam3.Connection)
.class public abstract Lin/dragonbra/javasteam/networking/steam3/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# instance fields
.field protected final connected:Lin/dragonbra/javasteam/util/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lin/dragonbra/javasteam/util/event/Event<",
            "Lin/dragonbra/javasteam/util/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field protected final disconnected:Lin/dragonbra/javasteam/util/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lin/dragonbra/javasteam/util/event/Event<",
            "Lin/dragonbra/javasteam/networking/steam3/DisconnectedEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field protected final netMsgReceived:Lin/dragonbra/javasteam/util/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lin/dragonbra/javasteam/util/event/Event<",
            "Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lin/dragonbra/javasteam/util/event/Event;

    invoke-direct {v0}, Lin/dragonbra/javasteam/util/event/Event;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/Connection;->netMsgReceived:Lin/dragonbra/javasteam/util/event/Event;

    .line 23
    new-instance v0, Lin/dragonbra/javasteam/util/event/Event;

    invoke-direct {v0}, Lin/dragonbra/javasteam/util/event/Event;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/Connection;->connected:Lin/dragonbra/javasteam/util/event/Event;

    .line 28
    new-instance v0, Lin/dragonbra/javasteam/util/event/Event;

    invoke-direct {v0}, Lin/dragonbra/javasteam/util/event/Event;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/Connection;->disconnected:Lin/dragonbra/javasteam/util/event/Event;

    return-void
.end method


# virtual methods
.method public final connect(Ljava/net/InetSocketAddress;)V
    .registers 3

    const/16 v0, 0x1388

    .line 56
    invoke-virtual {p0, p1, v0}, Lin/dragonbra/javasteam/networking/steam3/Connection;->connect(Ljava/net/InetSocketAddress;I)V

    return-void
.end method

.method public abstract connect(Ljava/net/InetSocketAddress;I)V
.end method

.method public abstract disconnect(Z)V
.end method

.method public getConnected()Lin/dragonbra/javasteam/util/event/Event;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lin/dragonbra/javasteam/util/event/Event<",
            "Lin/dragonbra/javasteam/util/event/EventArgs;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/Connection;->connected:Lin/dragonbra/javasteam/util/event/Event;

    return-object p0
.end method

.method public abstract getCurrentEndPoint()Ljava/net/InetSocketAddress;
.end method

.method public getDisconnected()Lin/dragonbra/javasteam/util/event/Event;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lin/dragonbra/javasteam/util/event/Event<",
            "Lin/dragonbra/javasteam/networking/steam3/DisconnectedEventArgs;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/Connection;->disconnected:Lin/dragonbra/javasteam/util/event/Event;

    return-object p0
.end method

.method public abstract getLocalIP()Ljava/net/InetAddress;
.end method

.method public getNetMsgReceived()Lin/dragonbra/javasteam/util/event/Event;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lin/dragonbra/javasteam/util/event/Event<",
            "Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/Connection;->netMsgReceived:Lin/dragonbra/javasteam/util/event/Event;

    return-object p0
.end method

.method public abstract getProtocolTypes()Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;
.end method

.method public onConnected()V
    .registers 3

    .line 35
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/Connection;->connected:Lin/dragonbra/javasteam/util/event/Event;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lin/dragonbra/javasteam/util/event/Event;->handleEvent(Ljava/lang/Object;Lin/dragonbra/javasteam/util/event/EventArgs;)V

    return-void
.end method

.method public onDisconnected(Z)V
    .registers 4

    .line 39
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/Connection;->disconnected:Lin/dragonbra/javasteam/util/event/Event;

    new-instance v1, Lin/dragonbra/javasteam/networking/steam3/DisconnectedEventArgs;

    invoke-direct {v1, p1}, Lin/dragonbra/javasteam/networking/steam3/DisconnectedEventArgs;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Lin/dragonbra/javasteam/util/event/Event;->handleEvent(Ljava/lang/Object;Lin/dragonbra/javasteam/util/event/EventArgs;)V

    return-void
.end method

.method public onNetMsgReceived(Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;)V
    .registers 3

    .line 31
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/Connection;->netMsgReceived:Lin/dragonbra/javasteam/util/event/Event;

    invoke-virtual {v0, p0, p1}, Lin/dragonbra/javasteam/util/event/Event;->handleEvent(Ljava/lang/Object;Lin/dragonbra/javasteam/util/event/EventArgs;)V

    return-void
.end method

.method public abstract send([B)V
.end method
