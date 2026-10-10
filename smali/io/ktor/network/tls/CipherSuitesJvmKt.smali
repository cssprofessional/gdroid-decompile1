###### Class io.ktor.network.tls.CipherSuitesJvmKt (io.ktor.network.tls.CipherSuitesJvmKt)
.class public final Lio/ktor/network/tls/CipherSuitesJvmKt;
.super Ljava/lang/Object;
.source "CipherSuitesJvm.kt"


# direct methods
.method public static final isSupported(Lio/ktor/network/tls/CipherSuite;)Z
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lio/ktor/network/tls/platform/PlatformVersionKt;->getPlatformVersion()Lio/ktor/network/tls/platform/PlatformVersion;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/network/tls/platform/PlatformVersion;->getMajor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x2c8393b

    const/4 v3, 0x0

    const/16 v4, 0x80

    const/4 v5, 0x1

    if-eq v1, v2, :cond_5d

    const v2, 0x2c83cfc

    if-eq v1, v2, :cond_41

    const v2, 0x2c840bd

    if-eq v1, v2, :cond_25

    goto :goto_65

    :cond_25
    const-string v1, "1.8.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 10
    invoke-static {}, Lio/ktor/network/tls/platform/PlatformVersionKt;->getPlatformVersion()Lio/ktor/network/tls/platform/PlatformVersion;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/network/tls/platform/PlatformVersion;->getMinor()I

    move-result v0

    const/16 v1, 0xa1

    if-ge v0, v1, :cond_3f

    invoke-virtual {p0}, Lio/ktor/network/tls/CipherSuite;->getKeyStrength()I

    move-result p0

    if-gt p0, v4, :cond_79

    :cond_3f
    :goto_3f
    move v3, v5

    goto :goto_79

    .line 9
    :cond_41
    const-string v1, "1.7.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto :goto_65

    .line 11
    :cond_4a
    invoke-static {}, Lio/ktor/network/tls/platform/PlatformVersionKt;->getPlatformVersion()Lio/ktor/network/tls/platform/PlatformVersion;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/network/tls/platform/PlatformVersion;->getMinor()I

    move-result v0

    const/16 v1, 0xab

    if-ge v0, v1, :cond_3f

    invoke-virtual {p0}, Lio/ktor/network/tls/CipherSuite;->getKeyStrength()I

    move-result p0

    if-gt p0, v4, :cond_79

    goto :goto_3f

    .line 9
    :cond_5d
    const-string v1, "1.6.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    :goto_65
    goto :goto_3f

    .line 12
    :cond_66
    invoke-static {}, Lio/ktor/network/tls/platform/PlatformVersionKt;->getPlatformVersion()Lio/ktor/network/tls/platform/PlatformVersion;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/network/tls/platform/PlatformVersion;->getMinor()I

    move-result v0

    const/16 v1, 0xb5

    if-ge v0, v1, :cond_3f

    invoke-virtual {p0}, Lio/ktor/network/tls/CipherSuite;->getKeyStrength()I

    move-result p0

    if-gt p0, v4, :cond_79

    goto :goto_3f

    :cond_79
    :goto_79
    return v3
.end method
