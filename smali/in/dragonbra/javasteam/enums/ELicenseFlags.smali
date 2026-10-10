###### Class in.dragonbra.javasteam.enums.ELicenseFlags (in.dragonbra.javasteam.enums.ELicenseFlags)
.class public final enum Lin/dragonbra/javasteam/enums/ELicenseFlags;
.super Ljava/lang/Enum;
.source "ELicenseFlags.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/enums/ELicenseFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/enums/ELicenseFlags;

.field public static final enum Borrowed:Lin/dragonbra/javasteam/enums/ELicenseFlags;

.field public static final enum CancelledByAdmin:Lin/dragonbra/javasteam/enums/ELicenseFlags;

.field public static final enum CancelledByFriendlyFraudLock:Lin/dragonbra/javasteam/enums/ELicenseFlags;

.field public static final enum CancelledByPartner:Lin/dragonbra/javasteam/enums/ELicenseFlags;

.field public static final enum CancelledByUser:Lin/dragonbra/javasteam/enums/ELicenseFlags;

.field public static final enum Expired:Lin/dragonbra/javasteam/enums/ELicenseFlags;

.field public static final enum ForceRunRestriction:Lin/dragonbra/javasteam/enums/ELicenseFlags;

.field public static final enum ImportedFromSteam2:Lin/dragonbra/javasteam/enums/ELicenseFlags;

.field public static final enum LowViolenceContent:Lin/dragonbra/javasteam/enums/ELicenseFlags;

.field public static final enum NonPermanent:Lin/dragonbra/javasteam/enums/ELicenseFlags;

.field public static final enum None:Lin/dragonbra/javasteam/enums/ELicenseFlags;

.field public static final enum NotActivated:Lin/dragonbra/javasteam/enums/ELicenseFlags;

.field public static final enum Pending:Lin/dragonbra/javasteam/enums/ELicenseFlags;

.field public static final enum PendingRefund:Lin/dragonbra/javasteam/enums/ELicenseFlags;

.field public static final enum PreferredOwner:Lin/dragonbra/javasteam/enums/ELicenseFlags;

.field public static final enum RegionRestrictionExpired:Lin/dragonbra/javasteam/enums/ELicenseFlags;

.field public static final enum ReleaseStateOverride:Lin/dragonbra/javasteam/enums/ELicenseFlags;

.field public static final enum Renew:Lin/dragonbra/javasteam/enums/ELicenseFlags;

.field public static final enum RenewalFailed:Lin/dragonbra/javasteam/enums/ELicenseFlags;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/enums/ELicenseFlags;
    .registers 19

    .line 5
    sget-object v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->None:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    sget-object v1, Lin/dragonbra/javasteam/enums/ELicenseFlags;->Renew:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    sget-object v2, Lin/dragonbra/javasteam/enums/ELicenseFlags;->RenewalFailed:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    sget-object v3, Lin/dragonbra/javasteam/enums/ELicenseFlags;->Pending:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    sget-object v4, Lin/dragonbra/javasteam/enums/ELicenseFlags;->Expired:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    sget-object v5, Lin/dragonbra/javasteam/enums/ELicenseFlags;->CancelledByUser:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    sget-object v6, Lin/dragonbra/javasteam/enums/ELicenseFlags;->CancelledByAdmin:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    sget-object v7, Lin/dragonbra/javasteam/enums/ELicenseFlags;->LowViolenceContent:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    sget-object v8, Lin/dragonbra/javasteam/enums/ELicenseFlags;->ImportedFromSteam2:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    sget-object v9, Lin/dragonbra/javasteam/enums/ELicenseFlags;->ForceRunRestriction:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    sget-object v10, Lin/dragonbra/javasteam/enums/ELicenseFlags;->RegionRestrictionExpired:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    sget-object v11, Lin/dragonbra/javasteam/enums/ELicenseFlags;->CancelledByFriendlyFraudLock:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    sget-object v12, Lin/dragonbra/javasteam/enums/ELicenseFlags;->NotActivated:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    sget-object v13, Lin/dragonbra/javasteam/enums/ELicenseFlags;->PendingRefund:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    sget-object v14, Lin/dragonbra/javasteam/enums/ELicenseFlags;->Borrowed:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    sget-object v15, Lin/dragonbra/javasteam/enums/ELicenseFlags;->ReleaseStateOverride:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    sget-object v16, Lin/dragonbra/javasteam/enums/ELicenseFlags;->CancelledByPartner:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    sget-object v17, Lin/dragonbra/javasteam/enums/ELicenseFlags;->NonPermanent:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    sget-object v18, Lin/dragonbra/javasteam/enums/ELicenseFlags;->PreferredOwner:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    filled-new-array/range {v0 .. v18}, [Lin/dragonbra/javasteam/enums/ELicenseFlags;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 7
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ELicenseFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->None:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    .line 9
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;

    const-string v1, "Renew"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ELicenseFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->Renew:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    .line 11
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;

    const-string v1, "RenewalFailed"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ELicenseFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->RenewalFailed:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    .line 13
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;

    const-string v1, "Pending"

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/ELicenseFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->Pending:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    .line 15
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;

    const-string v1, "Expired"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/ELicenseFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->Expired:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    .line 17
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;

    const-string v1, "CancelledByUser"

    const/4 v3, 0x5

    const/16 v4, 0x10

    invoke-direct {v0, v1, v3, v4}, Lin/dragonbra/javasteam/enums/ELicenseFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->CancelledByUser:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    .line 19
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;

    const/4 v1, 0x6

    const/16 v3, 0x20

    const-string v5, "CancelledByAdmin"

    invoke-direct {v0, v5, v1, v3}, Lin/dragonbra/javasteam/enums/ELicenseFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->CancelledByAdmin:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    .line 21
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;

    const/4 v1, 0x7

    const/16 v3, 0x40

    const-string v5, "LowViolenceContent"

    invoke-direct {v0, v5, v1, v3}, Lin/dragonbra/javasteam/enums/ELicenseFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->LowViolenceContent:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    .line 23
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;

    const-string v1, "ImportedFromSteam2"

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/ELicenseFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->ImportedFromSteam2:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    .line 25
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;

    const/16 v1, 0x9

    const/16 v2, 0x100

    const-string v3, "ForceRunRestriction"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/ELicenseFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->ForceRunRestriction:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    .line 27
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;

    const/16 v1, 0xa

    const/16 v2, 0x200

    const-string v3, "RegionRestrictionExpired"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/ELicenseFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->RegionRestrictionExpired:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    .line 29
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;

    const/16 v1, 0xb

    const/16 v2, 0x400

    const-string v3, "CancelledByFriendlyFraudLock"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/ELicenseFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->CancelledByFriendlyFraudLock:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    .line 31
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;

    const/16 v1, 0xc

    const/16 v2, 0x800

    const-string v3, "NotActivated"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/ELicenseFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->NotActivated:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    .line 33
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;

    const/16 v1, 0xd

    const/16 v2, 0x2000

    const-string v3, "PendingRefund"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/ELicenseFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->PendingRefund:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    .line 35
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;

    const/16 v1, 0xe

    const/16 v2, 0x4000

    const-string v3, "Borrowed"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/ELicenseFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->Borrowed:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    .line 37
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;

    const/16 v1, 0xf

    const v2, 0x8000

    const-string v3, "ReleaseStateOverride"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/ELicenseFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->ReleaseStateOverride:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    .line 39
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;

    const-string v1, "CancelledByPartner"

    const/high16 v2, 0x40000

    invoke-direct {v0, v1, v4, v2}, Lin/dragonbra/javasteam/enums/ELicenseFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->CancelledByPartner:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    .line 41
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;

    const/16 v1, 0x11

    const/high16 v2, 0x80000

    const-string v3, "NonPermanent"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/ELicenseFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->NonPermanent:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    .line 43
    new-instance v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;

    const/16 v1, 0x12

    const/high16 v2, 0x100000

    const-string v3, "PreferredOwner"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/ELicenseFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->PreferredOwner:Lin/dragonbra/javasteam/enums/ELicenseFlags;

    .line 5
    invoke-static {}, Lin/dragonbra/javasteam/enums/ELicenseFlags;->$values()[Lin/dragonbra/javasteam/enums/ELicenseFlags;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->$VALUES:[Lin/dragonbra/javasteam/enums/ELicenseFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->code:I

    return-void
.end method

.method public static code(Ljava/util/EnumSet;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/ELicenseFlags;",
            ">;)I"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/enums/ELicenseFlags;

    .line 70
    iget v1, v1, Lin/dragonbra/javasteam/enums/ELicenseFlags;->code:I

    or-int/2addr v0, v1

    goto :goto_5

    :cond_15
    return v0
.end method

.method public static from(I)Ljava/util/EnumSet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/ELicenseFlags;",
            ">;"
        }
    .end annotation

    .line 58
    const-class v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 59
    invoke-static {}, Lin/dragonbra/javasteam/enums/ELicenseFlags;->values()[Lin/dragonbra/javasteam/enums/ELicenseFlags;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    .line 60
    iget v5, v4, Lin/dragonbra/javasteam/enums/ELicenseFlags;->code:I

    and-int v6, v5, p0

    if-ne v6, v5, :cond_19

    .line 61
    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1c
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/enums/ELicenseFlags;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 5
    const-class v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/enums/ELicenseFlags;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/enums/ELicenseFlags;
    .registers 1

    .line 5
    sget-object v0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->$VALUES:[Lin/dragonbra/javasteam/enums/ELicenseFlags;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/enums/ELicenseFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/enums/ELicenseFlags;

    return-object v0
.end method


# virtual methods
.method public code()I
    .registers 1

    .line 54
    iget p0, p0, Lin/dragonbra/javasteam/enums/ELicenseFlags;->code:I

    return p0
.end method
