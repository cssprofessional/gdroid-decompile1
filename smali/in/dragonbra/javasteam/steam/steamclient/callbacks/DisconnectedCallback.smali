###### Class in.dragonbra.javasteam.steam.steamclient.callbacks.DisconnectedCallback (in.dragonbra.javasteam.steam.steamclient.callbacks.DisconnectedCallback)
.class public final Lin/dragonbra/javasteam/steam/steamclient/callbacks/DisconnectedCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "DisconnectedCallback.kt"


# instance fields
.field private final isUserInitiated:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 13
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    iput-boolean p1, p0, Lin/dragonbra/javasteam/steam/steamclient/callbacks/DisconnectedCallback;->isUserInitiated:Z

    return-void
.end method


# virtual methods
.method public final isUserInitiated()Z
    .registers 1

    .line 13
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbacks/DisconnectedCallback;->isUserInitiated:Z

    return p0
.end method
