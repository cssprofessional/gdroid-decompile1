###### Class org.bouncycastle.crypto.modes.gcm.BasicGCMExponentiator (org.bouncycastle.crypto.modes.gcm.BasicGCMExponentiator)
.class public Lorg/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/gcm/GCMExponentiator;


# instance fields
.field private x:[J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exponentiateX(J[B)V
    .registers 10

    .line 0
    invoke-static {}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->oneAsLongs()[J

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_25

    const/4 v3, 0x2

    new-array v3, v3, [J

    iget-object p0, p0, Lorg/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;->x:[J

    invoke-static {p0, v3}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->copy([J[J)V

    :cond_12
    const-wide/16 v4, 0x1

    and-long/2addr v4, p1

    cmp-long p0, v4, v1

    if-eqz p0, :cond_1c

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([J[J)V

    :cond_1c
    invoke-static {v3, v3}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->square([J[J)V

    const/4 p0, 0x1

    ushr-long/2addr p1, p0

    cmp-long p0, p1, v1

    if-gtz p0, :cond_12

    :cond_25
    invoke-static {v0, p3}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asBytes([J[B)V

    return-void
.end method

.method public init([B)V
    .registers 2

    .line 0
    invoke-static {p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;->x:[J

    return-void
.end method
