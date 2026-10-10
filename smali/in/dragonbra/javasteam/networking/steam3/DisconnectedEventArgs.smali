###### Class in.dragonbra.javasteam.networking.steam3.DisconnectedEventArgs (in.dragonbra.javasteam.networking.steam3.DisconnectedEventArgs)
.class public Lin/dragonbra/javasteam/networking/steam3/DisconnectedEventArgs;
.super Lin/dragonbra/javasteam/util/event/EventArgs;
.source "DisconnectedEventArgs.java"


# instance fields
.field private final userInitiated:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 13
    invoke-direct {p0}, Lin/dragonbra/javasteam/util/event/EventArgs;-><init>()V

    .line 14
    iput-boolean p1, p0, Lin/dragonbra/javasteam/networking/steam3/DisconnectedEventArgs;->userInitiated:Z

    return-void
.end method


# virtual methods
.method public isUserInitiated()Z
    .registers 1

    .line 18
    iget-boolean p0, p0, Lin/dragonbra/javasteam/networking/steam3/DisconnectedEventArgs;->userInitiated:Z

    return p0
.end method
