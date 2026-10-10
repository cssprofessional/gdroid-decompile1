###### Class in.dragonbra.javasteam.types.PublishedFileID (in.dragonbra.javasteam.types.PublishedFileID)
.class public final Lin/dragonbra/javasteam/types/PublishedFileID;
.super Lin/dragonbra/javasteam/types/UInt64Handle;
.source "PubFile.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/types/PublishedFileID$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/types/PublishedFileID$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lin/dragonbra/javasteam/types/PublishedFileID$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/types/PublishedFileID$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/types/PublishedFileID;->Companion:Lin/dragonbra/javasteam/types/PublishedFileID$Companion;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    .line 79
    invoke-static {p1, p2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lin/dragonbra/javasteam/types/UInt64Handle;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_9

    const-wide p1, 0x7fffffffffffffffL

    .line 79
    :cond_9
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/types/PublishedFileID;-><init>(J)V

    return-void
.end method

###### Class in.dragonbra.javasteam.types.PublishedFileID.Companion (in.dragonbra.javasteam.types.PublishedFileID$Companion)
.class public final Lin/dragonbra/javasteam/types/PublishedFileID$Companion;
.super Ljava/lang/Object;
.source "PubFile.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/types/PublishedFileID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/types/PublishedFileID$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Lin/dragonbra/javasteam/types/PublishedFileID;Lin/dragonbra/javasteam/types/PublishedFileID;)Z
    .registers 6

    const/4 p0, 0x1

    if-ne p1, p2, :cond_4

    return p0

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_19

    if-nez p2, :cond_a

    goto :goto_19

    .line 97
    :cond_a
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/UInt64Handle;->getValue-s-VKNKU()J

    move-result-wide v1

    invoke-virtual {p2}, Lin/dragonbra/javasteam/types/UInt64Handle;->getValue-s-VKNKU()J

    move-result-wide p1

    cmp-long p1, v1, p1

    if-nez p1, :cond_17

    goto :goto_18

    :cond_17
    move p0, v0

    :goto_18
    return p0

    :cond_19
    :goto_19
    return v0
.end method

.method public final notEquals(Lin/dragonbra/javasteam/types/PublishedFileID;Lin/dragonbra/javasteam/types/PublishedFileID;)Z
    .registers 3

    .line 106
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/types/PublishedFileID$Companion;->equals(Lin/dragonbra/javasteam/types/PublishedFileID;Lin/dragonbra/javasteam/types/PublishedFileID;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
