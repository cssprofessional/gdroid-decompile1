###### Class org.bouncycastle.pqc.crypto.picnic.PicnicParameters (org.bouncycastle.pqc.crypto.picnic.PicnicParameters)
.class public Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters$L1Constants;,
        Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters$L3Constants;,
        Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters$L5Constants;
    }
.end annotation


# static fields
.field public static final picnic3l1:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

.field public static final picnic3l3:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

.field public static final picnic3l5:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

.field public static final picnicl1fs:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

.field public static final picnicl1full:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

.field public static final picnicl1ur:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

.field public static final picnicl3fs:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

.field public static final picnicl3full:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

.field public static final picnicl3ur:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

.field public static final picnicl5fs:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

.field public static final picnicl5full:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

.field public static final picnicl5ur:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;


# instance fields
.field private final name:Ljava/lang/String;

.field private final param:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnicl1fs"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl1fs:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnicl1ur"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl1ur:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnicl3fs"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl3fs:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnicl3ur"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl3ur:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnicl5fs"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl5fs:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnicl5ur"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl5ur:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnic3l1"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnic3l1:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnic3l3"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnic3l3:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnic3l5"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnic3l5:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnicl1full"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl1full:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnicl3full"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl3full:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    const-string v1, "picnicl5full"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl5full:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->name:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->param:I

    return-void
.end method


# virtual methods
.method public getEngine()Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;
    .registers 3

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->param:I

    packed-switch v0, :pswitch_data_26

    const/4 p0, 0x0

    return-object p0

    :pswitch_7
    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->param:I

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters$L5Constants;->INSTANCE:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;-><init>(ILorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;)V

    return-object v0

    :pswitch_11
    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->param:I

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters$L3Constants;->INSTANCE:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;-><init>(ILorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;)V

    return-object v0

    :pswitch_1b
    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->param:I

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters$L1Constants;->INSTANCE:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL1;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;-><init>(ILorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;)V

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1b
        :pswitch_11
        :pswitch_11
        :pswitch_7
        :pswitch_7
        :pswitch_1b
        :pswitch_11
        :pswitch_7
        :pswitch_1b
        :pswitch_11
        :pswitch_7
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->name:Ljava/lang/String;

    return-object p0
.end method

###### Class org.bouncycastle.pqc.crypto.picnic.PicnicParameters.L1Constants (org.bouncycastle.pqc.crypto.picnic.PicnicParameters$L1Constants)
.class Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters$L1Constants;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "L1Constants"
.end annotation


# static fields
.field static final INSTANCE:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL1;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL1;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters$L1Constants;->INSTANCE:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL1;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class org.bouncycastle.pqc.crypto.picnic.PicnicParameters.L3Constants (org.bouncycastle.pqc.crypto.picnic.PicnicParameters$L3Constants)
.class Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters$L3Constants;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "L3Constants"
.end annotation


# static fields
.field static final INSTANCE:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters$L3Constants;->INSTANCE:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class org.bouncycastle.pqc.crypto.picnic.PicnicParameters.L5Constants (org.bouncycastle.pqc.crypto.picnic.PicnicParameters$L5Constants)
.class Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters$L5Constants;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "L5Constants"
.end annotation


# static fields
.field static final INSTANCE:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters$L5Constants;->INSTANCE:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
