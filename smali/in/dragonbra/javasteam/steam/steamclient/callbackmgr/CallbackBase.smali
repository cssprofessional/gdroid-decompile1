###### Class in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackBase (in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackBase)
.class public abstract Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackBase;
.super Ljava/lang/Object;
.source "CallbackBase.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCallbackType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract run(Ljava/lang/Object;)V
.end method
