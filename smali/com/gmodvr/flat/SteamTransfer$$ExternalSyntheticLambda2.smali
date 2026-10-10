###### Class com.gmodvr.flat.SteamTransfer$$ExternalSyntheticLambda2 (com.gmodvr.flat.SteamTransfer$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .registers 2

    .line 0
    check-cast p1, Lin/dragonbra/javasteam/types/ChunkData;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/ChunkData;->getOffset()J

    move-result-wide p0

    return-wide p0
.end method
