###### Class in.dragonbra.javasteam.types.UGCHandle (in.dragonbra.javasteam.types.UGCHandle)
.class public final Lin/dragonbra/javasteam/types/UGCHandle;
.super Lin/dragonbra/javasteam/types/GlobalID;
.source "UGCHandle.kt"


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 12
    invoke-direct {p0, v2, v3, v0, v1}, Lin/dragonbra/javasteam/types/GlobalID;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/types/GlobalID;-><init>(J)V

    return-void
.end method
