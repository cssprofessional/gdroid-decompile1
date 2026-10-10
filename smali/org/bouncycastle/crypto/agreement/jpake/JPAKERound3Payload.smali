###### Class org.bouncycastle.crypto.agreement.jpake.JPAKERound3Payload (org.bouncycastle.crypto.agreement.jpake.JPAKERound3Payload)
.class public Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound3Payload;
.super Ljava/lang/Object;


# instance fields
.field private final macTag:Ljava/math/BigInteger;

.field private final participantId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigInteger;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound3Payload;->participantId:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound3Payload;->macTag:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getMacTag()Ljava/math/BigInteger;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound3Payload;->macTag:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getParticipantId()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound3Payload;->participantId:Ljava/lang/String;

    return-object p0
.end method
