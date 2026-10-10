###### Class io.ktor.network.tls.CertificateInfo (io.ktor.network.tls.CertificateInfo)
.class public final Lio/ktor/network/tls/CertificateInfo;
.super Ljava/lang/Object;
.source "CertificateInfo.kt"


# instance fields
.field public final authorities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation
.end field

.field public final hashAndSign:[Lio/ktor/network/tls/extensions/HashAndSign;

.field public final types:[B


# direct methods
.method public constructor <init>([B[Lio/ktor/network/tls/extensions/HashAndSign;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[",
            "Lio/ktor/network/tls/extensions/HashAndSign;",
            "Ljava/util/Set<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;)V"
        }
    .end annotation

    const-string v0, "types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hashAndSign"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorities"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lio/ktor/network/tls/CertificateInfo;->types:[B

    .line 12
    iput-object p2, p0, Lio/ktor/network/tls/CertificateInfo;->hashAndSign:[Lio/ktor/network/tls/extensions/HashAndSign;

    .line 13
    iput-object p3, p0, Lio/ktor/network/tls/CertificateInfo;->authorities:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getAuthorities()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object p0, p0, Lio/ktor/network/tls/CertificateInfo;->authorities:Ljava/util/Set;

    return-object p0
.end method

.method public final getHashAndSign()[Lio/ktor/network/tls/extensions/HashAndSign;
    .registers 1

    .line 12
    iget-object p0, p0, Lio/ktor/network/tls/CertificateInfo;->hashAndSign:[Lio/ktor/network/tls/extensions/HashAndSign;

    return-object p0
.end method

.method public final getTypes()[B
    .registers 1

    .line 11
    iget-object p0, p0, Lio/ktor/network/tls/CertificateInfo;->types:[B

    return-object p0
.end method
