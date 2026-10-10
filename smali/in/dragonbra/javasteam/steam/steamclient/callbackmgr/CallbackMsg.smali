###### Class in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg (in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg)
.class public abstract Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.super Ljava/lang/Object;
.source "CallbackMsg.kt"


# instance fields
.field private jobID:Lin/dragonbra/javasteam/types/JobID;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lin/dragonbra/javasteam/types/JobID;->INVALID:Lin/dragonbra/javasteam/types/JobID;

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->jobID:Lin/dragonbra/javasteam/types/JobID;

    return-void
.end method


# virtual methods
.method public final getJobID()Lin/dragonbra/javasteam/types/JobID;
    .registers 1

    .line 18
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->jobID:Lin/dragonbra/javasteam/types/JobID;

    return-object p0
.end method

.method public final setJobID(Lin/dragonbra/javasteam/types/JobID;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->jobID:Lin/dragonbra/javasteam/types/JobID;

    return-void
.end method
