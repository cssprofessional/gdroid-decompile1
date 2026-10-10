###### Class io.ktor.network.tls.cipher.TLSCipher (io.ktor.network.tls.cipher.TLSCipher)
.class public interface abstract Lio/ktor/network/tls/cipher/TLSCipher;
.super Ljava/lang/Object;
.source "Cipher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/tls/cipher/TLSCipher$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/network/tls/cipher/TLSCipher$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    sget-object v0, Lio/ktor/network/tls/cipher/TLSCipher$Companion;->$$INSTANCE:Lio/ktor/network/tls/cipher/TLSCipher$Companion;

    sput-object v0, Lio/ktor/network/tls/cipher/TLSCipher;->Companion:Lio/ktor/network/tls/cipher/TLSCipher$Companion;

    return-void
.end method


# virtual methods
.method public abstract decrypt(Lio/ktor/network/tls/TLSRecord;)Lio/ktor/network/tls/TLSRecord;
.end method

.method public abstract encrypt(Lio/ktor/network/tls/TLSRecord;)Lio/ktor/network/tls/TLSRecord;
.end method

###### Class io.ktor.network.tls.cipher.TLSCipher.Companion (io.ktor.network.tls.cipher.TLSCipher$Companion)
.class public final Lio/ktor/network/tls/cipher/TLSCipher$Companion;
.super Ljava/lang/Object;
.source "Cipher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/tls/cipher/TLSCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/tls/cipher/TLSCipher$Companion$WhenMappings;
    }
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lio/ktor/network/tls/cipher/TLSCipher$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/ktor/network/tls/cipher/TLSCipher$Companion;

    invoke-direct {v0}, Lio/ktor/network/tls/cipher/TLSCipher$Companion;-><init>()V

    sput-object v0, Lio/ktor/network/tls/cipher/TLSCipher$Companion;->$$INSTANCE:Lio/ktor/network/tls/cipher/TLSCipher$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromSuite(Lio/ktor/network/tls/CipherSuite;[B)Lio/ktor/network/tls/cipher/TLSCipher;
    .registers 4

    const-string p0, "suite"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "keyMaterial"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getCipherType()Lio/ktor/network/tls/CipherType;

    move-result-object p0

    sget-object v0, Lio/ktor/network/tls/cipher/TLSCipher$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_28

    const/4 v0, 0x2

    if-ne p0, v0, :cond_22

    .line 20
    new-instance p0, Lio/ktor/network/tls/cipher/CBCCipher;

    invoke-direct {p0, p1, p2}, Lio/ktor/network/tls/cipher/CBCCipher;-><init>(Lio/ktor/network/tls/CipherSuite;[B)V

    goto :goto_2d

    .line 18
    :cond_22
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 19
    :cond_28
    new-instance p0, Lio/ktor/network/tls/cipher/GCMCipher;

    invoke-direct {p0, p1, p2}, Lio/ktor/network/tls/cipher/GCMCipher;-><init>(Lio/ktor/network/tls/CipherSuite;[B)V

    :goto_2d
    return-object p0
.end method

###### Class io.ktor.network.tls.cipher.TLSCipher.Companion.WhenMappings (io.ktor.network.tls.cipher.TLSCipher$Companion$WhenMappings)
.class public final synthetic Lio/ktor/network/tls/cipher/TLSCipher$Companion$WhenMappings;
.super Ljava/lang/Object;
.source "Cipher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/tls/cipher/TLSCipher$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lio/ktor/network/tls/CipherType;->values()[Lio/ktor/network/tls/CipherType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/ktor/network/tls/CipherType;->GCM:Lio/ktor/network/tls/CipherType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/ktor/network/tls/CipherType;->CBC:Lio/ktor/network/tls/CipherType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lio/ktor/network/tls/cipher/TLSCipher$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
