###### Class in.dragonbra.javasteam.types.JobID (in.dragonbra.javasteam.types.JobID)
.class public final Lin/dragonbra/javasteam/types/JobID;
.super Lin/dragonbra/javasteam/types/GlobalID;
.source "JobID.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/types/JobID$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/types/JobID$Companion;

.field public static final INVALID:Lin/dragonbra/javasteam/types/JobID;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/types/JobID$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/types/JobID$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/types/JobID;->Companion:Lin/dragonbra/javasteam/types/JobID$Companion;

    .line 13
    new-instance v0, Lin/dragonbra/javasteam/types/JobID;

    invoke-direct {v0}, Lin/dragonbra/javasteam/types/JobID;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/types/JobID;->INVALID:Lin/dragonbra/javasteam/types/JobID;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 19
    invoke-direct {p0, v2, v3, v0, v1}, Lin/dragonbra/javasteam/types/GlobalID;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    .line 25
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/types/GlobalID;-><init>(J)V

    return-void
.end method

###### Class in.dragonbra.javasteam.types.JobID.Companion (in.dragonbra.javasteam.types.JobID$Companion)
.class public final Lin/dragonbra/javasteam/types/JobID$Companion;
.super Ljava/lang/Object;
.source "JobID.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/types/JobID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/types/JobID$Companion;-><init>()V

    return-void
.end method
