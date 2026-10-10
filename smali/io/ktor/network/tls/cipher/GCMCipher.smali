###### Class io.ktor.network.tls.cipher.GCMCipher (io.ktor.network.tls.cipher.GCMCipher)
.class public final Lio/ktor/network/tls/cipher/GCMCipher;
.super Ljava/lang/Object;
.source "GCMCipher.kt"

# interfaces
.implements Lio/ktor/network/tls/cipher/TLSCipher;


# instance fields
.field public inputCounter:J

.field public final keyMaterial:[B

.field public outputCounter:J

.field public final suite:Lio/ktor/network/tls/CipherSuite;


# direct methods
.method public static synthetic $r8$lambda$7XbKd6Mm4lT53_Kn7jlzTPWejaA(JLkotlinx/io/Sink;)Lkotlin/Unit;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lio/ktor/network/tls/cipher/GCMCipher;->encrypt$lambda$0(JLkotlinx/io/Sink;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/ktor/network/tls/CipherSuite;[B)V
    .registers 4

    const-string v0, "suite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyMaterial"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lio/ktor/network/tls/cipher/GCMCipher;->suite:Lio/ktor/network/tls/CipherSuite;

    .line 14
    iput-object p2, p0, Lio/ktor/network/tls/cipher/GCMCipher;->keyMaterial:[B

    return-void
.end method

.method public static final encrypt$lambda$0(JLkotlinx/io/Sink;)Lkotlin/Unit;
    .registers 4

    const-string v0, "$this$cipherLoop"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {p2, p0, p1}, Lkotlinx/io/Sink;->writeLong(J)V

    .line 32
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public decrypt(Lio/ktor/network/tls/TLSRecord;)Lio/ktor/network/tls/TLSRecord;
    .registers 13

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getPacket()Lkotlinx/io/Source;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lio/ktor/utils/io/core/ByteReadPacketKt;->getRemaining(Lkotlinx/io/Source;)J

    move-result-wide v1

    .line 42
    invoke-interface {v0}, Lkotlinx/io/Source;->readLong()J

    move-result-wide v7

    .line 45
    iget-object v3, p0, Lio/ktor/network/tls/cipher/GCMCipher;->suite:Lio/ktor/network/tls/CipherSuite;

    .line 46
    iget-object v4, p0, Lio/ktor/network/tls/cipher/GCMCipher;->keyMaterial:[B

    .line 47
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getType()Lio/ktor/network/tls/TLSRecordType;

    move-result-object v5

    long-to-int v6, v1

    .line 50
    iget-wide v9, p0, Lio/ktor/network/tls/cipher/GCMCipher;->inputCounter:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, v9

    iput-wide v1, p0, Lio/ktor/network/tls/cipher/GCMCipher;->inputCounter:J

    .line 44
    invoke-static/range {v3 .. v10}, Lio/ktor/network/tls/cipher/GCMCipherKt;->access$gcmDecryptCipher(Lio/ktor/network/tls/CipherSuite;[BLio/ktor/network/tls/TLSRecordType;IJJ)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 53
    new-instance v1, Lio/ktor/network/tls/TLSRecord;

    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getType()Lio/ktor/network/tls/TLSRecordType;

    move-result-object v2

    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getVersion()Lio/ktor/network/tls/TLSVersion;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, p0, v3, v4, v3}, Lio/ktor/network/tls/cipher/CipherUtilsKt;->cipherLoop$default(Lkotlinx/io/Source;Ljavax/crypto/Cipher;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/io/Source;

    move-result-object p0

    invoke-direct {v1, v2, p1, p0}, Lio/ktor/network/tls/TLSRecord;-><init>(Lio/ktor/network/tls/TLSRecordType;Lio/ktor/network/tls/TLSVersion;Lkotlinx/io/Source;)V

    return-object v1
.end method

.method public encrypt(Lio/ktor/network/tls/TLSRecord;)Lio/ktor/network/tls/TLSRecord;
    .registers 13

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lio/ktor/network/tls/cipher/GCMCipher;->suite:Lio/ktor/network/tls/CipherSuite;

    .line 22
    iget-object v2, p0, Lio/ktor/network/tls/cipher/GCMCipher;->keyMaterial:[B

    .line 23
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getType()Lio/ktor/network/tls/TLSRecordType;

    move-result-object v3

    .line 24
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getPacket()Lkotlinx/io/Source;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/utils/io/core/ByteReadPacketKt;->getRemaining(Lkotlinx/io/Source;)J

    move-result-wide v4

    long-to-int v4, v4

    .line 25
    iget-wide v7, p0, Lio/ktor/network/tls/cipher/GCMCipher;->outputCounter:J

    move-wide v5, v7

    .line 20
    invoke-static/range {v1 .. v8}, Lio/ktor/network/tls/cipher/GCMCipherKt;->access$gcmEncryptCipher(Lio/ktor/network/tls/CipherSuite;[BLio/ktor/network/tls/TLSRecordType;IJJ)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 29
    iget-wide v1, p0, Lio/ktor/network/tls/cipher/GCMCipher;->outputCounter:J

    .line 30
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getPacket()Lkotlinx/io/Source;

    move-result-object v3

    new-instance v4, Lio/ktor/network/tls/cipher/GCMCipher$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v2}, Lio/ktor/network/tls/cipher/GCMCipher$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-static {v3, v0, v4}, Lio/ktor/network/tls/cipher/CipherUtilsKt;->cipherLoop(Lkotlinx/io/Source;Ljavax/crypto/Cipher;Lkotlin/jvm/functions/Function1;)Lkotlinx/io/Source;

    move-result-object v8

    .line 34
    iget-wide v0, p0, Lio/ktor/network/tls/cipher/GCMCipher;->outputCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/ktor/network/tls/cipher/GCMCipher;->outputCounter:J

    .line 36
    new-instance p0, Lio/ktor/network/tls/TLSRecord;

    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getType()Lio/ktor/network/tls/TLSRecordType;

    move-result-object v6

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lio/ktor/network/tls/TLSRecord;-><init>(Lio/ktor/network/tls/TLSRecordType;Lio/ktor/network/tls/TLSVersion;Lkotlinx/io/Source;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

###### Class io.ktor.network.tls.cipher.GCMCipher$$ExternalSyntheticLambda0 (io.ktor.network.tls.cipher.GCMCipher$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/network/tls/cipher/GCMCipher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/ktor/network/tls/cipher/GCMCipher$$ExternalSyntheticLambda0;->f$0:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-wide v0, p0, Lio/ktor/network/tls/cipher/GCMCipher$$ExternalSyntheticLambda0;->f$0:J

    check-cast p1, Lkotlinx/io/Sink;

    invoke-static {v0, v1, p1}, Lio/ktor/network/tls/cipher/GCMCipher;->$r8$lambda$7XbKd6Mm4lT53_Kn7jlzTPWejaA(JLkotlinx/io/Sink;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
