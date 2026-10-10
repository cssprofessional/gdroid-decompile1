###### Class io.ktor.network.tls.EncryptionInfo (io.ktor.network.tls.EncryptionInfo)
.class public final Lio/ktor/network/tls/EncryptionInfo;
.super Ljava/lang/Object;
.source "EncryptionInfo.kt"


# instance fields
.field public final clientPrivate:Ljava/security/PrivateKey;

.field public final clientPublic:Ljava/security/PublicKey;

.field public final serverPublic:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    .registers 5

    const-string v0, "serverPublic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientPublic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientPrivate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/ktor/network/tls/EncryptionInfo;->serverPublic:Ljava/security/PublicKey;

    .line 11
    iput-object p2, p0, Lio/ktor/network/tls/EncryptionInfo;->clientPublic:Ljava/security/PublicKey;

    .line 12
    iput-object p3, p0, Lio/ktor/network/tls/EncryptionInfo;->clientPrivate:Ljava/security/PrivateKey;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/ktor/network/tls/EncryptionInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/ktor/network/tls/EncryptionInfo;

    iget-object v1, p0, Lio/ktor/network/tls/EncryptionInfo;->serverPublic:Ljava/security/PublicKey;

    iget-object v3, p1, Lio/ktor/network/tls/EncryptionInfo;->serverPublic:Ljava/security/PublicKey;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/ktor/network/tls/EncryptionInfo;->clientPublic:Ljava/security/PublicKey;

    iget-object v3, p1, Lio/ktor/network/tls/EncryptionInfo;->clientPublic:Ljava/security/PublicKey;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object p0, p0, Lio/ktor/network/tls/EncryptionInfo;->clientPrivate:Ljava/security/PrivateKey;

    iget-object p1, p1, Lio/ktor/network/tls/EncryptionInfo;->clientPrivate:Ljava/security/PrivateKey;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getClientPrivate()Ljava/security/PrivateKey;
    .registers 1

    .line 12
    iget-object p0, p0, Lio/ktor/network/tls/EncryptionInfo;->clientPrivate:Ljava/security/PrivateKey;

    return-object p0
.end method

.method public final getClientPublic()Ljava/security/PublicKey;
    .registers 1

    .line 11
    iget-object p0, p0, Lio/ktor/network/tls/EncryptionInfo;->clientPublic:Ljava/security/PublicKey;

    return-object p0
.end method

.method public final getServerPublic()Ljava/security/PublicKey;
    .registers 1

    .line 10
    iget-object p0, p0, Lio/ktor/network/tls/EncryptionInfo;->serverPublic:Ljava/security/PublicKey;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lio/ktor/network/tls/EncryptionInfo;->serverPublic:Ljava/security/PublicKey;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/ktor/network/tls/EncryptionInfo;->clientPublic:Ljava/security/PublicKey;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/ktor/network/tls/EncryptionInfo;->clientPrivate:Ljava/security/PrivateKey;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncryptionInfo(serverPublic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/network/tls/EncryptionInfo;->serverPublic:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clientPublic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/network/tls/EncryptionInfo;->clientPublic:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clientPrivate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/ktor/network/tls/EncryptionInfo;->clientPrivate:Ljava/security/PrivateKey;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
