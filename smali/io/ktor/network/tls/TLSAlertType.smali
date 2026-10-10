###### Class io.ktor.network.tls.TLSAlertType (io.ktor.network.tls.TLSAlertType)
.class public final enum Lio/ktor/network/tls/TLSAlertType;
.super Ljava/lang/Enum;
.source "TLSAlert.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/tls/TLSAlertType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/ktor/network/tls/TLSAlertType;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTLSAlert.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TLSAlert.kt\nio/ktor/network/tls/TLSAlertType\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,94:1\n295#2,2:95\n*S KotlinDebug\n*F\n+ 1 TLSAlert.kt\nio/ktor/network/tls/TLSAlertType\n*L\n81#1:95,2\n*E\n"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lio/ktor/network/tls/TLSAlertType;

.field public static final enum AccessDenied:Lio/ktor/network/tls/TLSAlertType;

.field public static final enum BadCertificate:Lio/ktor/network/tls/TLSAlertType;

.field public static final enum BadRecordMac:Lio/ktor/network/tls/TLSAlertType;

.field public static final enum CertificateExpired:Lio/ktor/network/tls/TLSAlertType;

.field public static final enum CertificateRevoked:Lio/ktor/network/tls/TLSAlertType;

.field public static final enum CertificateUnknown:Lio/ktor/network/tls/TLSAlertType;

.field public static final enum CloseNotify:Lio/ktor/network/tls/TLSAlertType;

.field public static final Companion:Lio/ktor/network/tls/TLSAlertType$Companion;

.field public static final enum DecodeError:Lio/ktor/network/tls/TLSAlertType;

.field public static final enum DecompressionFailure:Lio/ktor/network/tls/TLSAlertType;

.field public static final enum DecryptError:Lio/ktor/network/tls/TLSAlertType;

.field public static final enum DecryptionFailed_RESERVED:Lio/ktor/network/tls/TLSAlertType;

.field public static final enum ExportRestriction_RESERVED:Lio/ktor/network/tls/TLSAlertType;

.field public static final enum HandshakeFailure:Lio/ktor/network/tls/TLSAlertType;

.field public static final enum IllegalParameter:Lio/ktor/network/tls/TLSAlertType;

.field public static final enum InsufficientSecurity:Lio/ktor/network/tls/TLSAlertType;

.field public static final enum InternalError:Lio/ktor/network/tls/TLSAlertType;

.field public static final enum NoCertificate_RESERVED:Lio/ktor/network/tls/TLSAlertType;

.field public static final enum NoRenegotiation:Lio/ktor/network/tls/TLSAlertType;

.field public static final enum ProtocolVersion:Lio/ktor/network/tls/TLSAlertType;

.field public static final enum RecordOverflow:Lio/ktor/network/tls/TLSAlertType;

.field public static final enum UnexpectedMessage:Lio/ktor/network/tls/TLSAlertType;

.field public static final enum UnknownCa:Lio/ktor/network/tls/TLSAlertType;

.field public static final enum UnsupportedCertificate:Lio/ktor/network/tls/TLSAlertType;

.field public static final enum UnsupportedExtension:Lio/ktor/network/tls/TLSAlertType;

.field public static final enum UserCanceled:Lio/ktor/network/tls/TLSAlertType;

.field private static final byCode:[Lio/ktor/network/tls/TLSAlertType;


# instance fields
.field private final code:I


# direct methods
.method private static final synthetic $values()[Lio/ktor/network/tls/TLSAlertType;
    .registers 25

    .line 0
    sget-object v0, Lio/ktor/network/tls/TLSAlertType;->DecryptionFailed_RESERVED:Lio/ktor/network/tls/TLSAlertType;

    sget-object v1, Lio/ktor/network/tls/TLSAlertType;->CloseNotify:Lio/ktor/network/tls/TLSAlertType;

    sget-object v2, Lio/ktor/network/tls/TLSAlertType;->UnexpectedMessage:Lio/ktor/network/tls/TLSAlertType;

    sget-object v3, Lio/ktor/network/tls/TLSAlertType;->BadRecordMac:Lio/ktor/network/tls/TLSAlertType;

    sget-object v4, Lio/ktor/network/tls/TLSAlertType;->RecordOverflow:Lio/ktor/network/tls/TLSAlertType;

    sget-object v5, Lio/ktor/network/tls/TLSAlertType;->DecompressionFailure:Lio/ktor/network/tls/TLSAlertType;

    sget-object v6, Lio/ktor/network/tls/TLSAlertType;->HandshakeFailure:Lio/ktor/network/tls/TLSAlertType;

    sget-object v7, Lio/ktor/network/tls/TLSAlertType;->NoCertificate_RESERVED:Lio/ktor/network/tls/TLSAlertType;

    sget-object v8, Lio/ktor/network/tls/TLSAlertType;->BadCertificate:Lio/ktor/network/tls/TLSAlertType;

    sget-object v9, Lio/ktor/network/tls/TLSAlertType;->UnsupportedCertificate:Lio/ktor/network/tls/TLSAlertType;

    sget-object v10, Lio/ktor/network/tls/TLSAlertType;->CertificateRevoked:Lio/ktor/network/tls/TLSAlertType;

    sget-object v11, Lio/ktor/network/tls/TLSAlertType;->CertificateExpired:Lio/ktor/network/tls/TLSAlertType;

    sget-object v12, Lio/ktor/network/tls/TLSAlertType;->CertificateUnknown:Lio/ktor/network/tls/TLSAlertType;

    sget-object v13, Lio/ktor/network/tls/TLSAlertType;->IllegalParameter:Lio/ktor/network/tls/TLSAlertType;

    sget-object v14, Lio/ktor/network/tls/TLSAlertType;->UnknownCa:Lio/ktor/network/tls/TLSAlertType;

    sget-object v15, Lio/ktor/network/tls/TLSAlertType;->AccessDenied:Lio/ktor/network/tls/TLSAlertType;

    sget-object v16, Lio/ktor/network/tls/TLSAlertType;->DecodeError:Lio/ktor/network/tls/TLSAlertType;

    sget-object v17, Lio/ktor/network/tls/TLSAlertType;->DecryptError:Lio/ktor/network/tls/TLSAlertType;

    sget-object v18, Lio/ktor/network/tls/TLSAlertType;->ExportRestriction_RESERVED:Lio/ktor/network/tls/TLSAlertType;

    sget-object v19, Lio/ktor/network/tls/TLSAlertType;->ProtocolVersion:Lio/ktor/network/tls/TLSAlertType;

    sget-object v20, Lio/ktor/network/tls/TLSAlertType;->InsufficientSecurity:Lio/ktor/network/tls/TLSAlertType;

    sget-object v21, Lio/ktor/network/tls/TLSAlertType;->InternalError:Lio/ktor/network/tls/TLSAlertType;

    sget-object v22, Lio/ktor/network/tls/TLSAlertType;->UserCanceled:Lio/ktor/network/tls/TLSAlertType;

    sget-object v23, Lio/ktor/network/tls/TLSAlertType;->NoRenegotiation:Lio/ktor/network/tls/TLSAlertType;

    sget-object v24, Lio/ktor/network/tls/TLSAlertType;->UnsupportedExtension:Lio/ktor/network/tls/TLSAlertType;

    filled-new-array/range {v0 .. v24}, [Lio/ktor/network/tls/TLSAlertType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 9

    .line 53
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const-string v1, "DecryptionFailed_RESERVED"

    const/4 v2, 0x0

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->DecryptionFailed_RESERVED:Lio/ktor/network/tls/TLSAlertType;

    .line 54
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const-string v1, "CloseNotify"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->CloseNotify:Lio/ktor/network/tls/TLSAlertType;

    .line 55
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const-string v1, "UnexpectedMessage"

    const/4 v4, 0x2

    const/16 v5, 0xa

    invoke-direct {v0, v1, v4, v5}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->UnexpectedMessage:Lio/ktor/network/tls/TLSAlertType;

    .line 56
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const-string v1, "BadRecordMac"

    const/4 v4, 0x3

    const/16 v6, 0x14

    invoke-direct {v0, v1, v4, v6}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->BadRecordMac:Lio/ktor/network/tls/TLSAlertType;

    .line 57
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const-string v1, "RecordOverflow"

    const/4 v4, 0x4

    const/16 v7, 0x16

    invoke-direct {v0, v1, v4, v7}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->RecordOverflow:Lio/ktor/network/tls/TLSAlertType;

    .line 58
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const/4 v1, 0x5

    const/16 v4, 0x1e

    const-string v8, "DecompressionFailure"

    invoke-direct {v0, v8, v1, v4}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->DecompressionFailure:Lio/ktor/network/tls/TLSAlertType;

    .line 59
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const/4 v1, 0x6

    const/16 v4, 0x28

    const-string v8, "HandshakeFailure"

    invoke-direct {v0, v8, v1, v4}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->HandshakeFailure:Lio/ktor/network/tls/TLSAlertType;

    .line 60
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const/4 v1, 0x7

    const/16 v4, 0x29

    const-string v8, "NoCertificate_RESERVED"

    invoke-direct {v0, v8, v1, v4}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->NoCertificate_RESERVED:Lio/ktor/network/tls/TLSAlertType;

    .line 61
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const/16 v1, 0x8

    const/16 v4, 0x2a

    const-string v8, "BadCertificate"

    invoke-direct {v0, v8, v1, v4}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->BadCertificate:Lio/ktor/network/tls/TLSAlertType;

    .line 62
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const/16 v1, 0x9

    const/16 v4, 0x2b

    const-string v8, "UnsupportedCertificate"

    invoke-direct {v0, v8, v1, v4}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->UnsupportedCertificate:Lio/ktor/network/tls/TLSAlertType;

    .line 63
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const-string v1, "CertificateRevoked"

    const/16 v4, 0x2c

    invoke-direct {v0, v1, v5, v4}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->CertificateRevoked:Lio/ktor/network/tls/TLSAlertType;

    .line 64
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const/16 v1, 0xb

    const/16 v4, 0x2d

    const-string v5, "CertificateExpired"

    invoke-direct {v0, v5, v1, v4}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->CertificateExpired:Lio/ktor/network/tls/TLSAlertType;

    .line 65
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const/16 v1, 0xc

    const/16 v4, 0x2e

    const-string v5, "CertificateUnknown"

    invoke-direct {v0, v5, v1, v4}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->CertificateUnknown:Lio/ktor/network/tls/TLSAlertType;

    .line 66
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const/16 v1, 0xd

    const/16 v4, 0x2f

    const-string v5, "IllegalParameter"

    invoke-direct {v0, v5, v1, v4}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->IllegalParameter:Lio/ktor/network/tls/TLSAlertType;

    .line 67
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const/16 v1, 0xe

    const/16 v4, 0x30

    const-string v5, "UnknownCa"

    invoke-direct {v0, v5, v1, v4}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->UnknownCa:Lio/ktor/network/tls/TLSAlertType;

    .line 68
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const/16 v1, 0xf

    const/16 v4, 0x31

    const-string v5, "AccessDenied"

    invoke-direct {v0, v5, v1, v4}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->AccessDenied:Lio/ktor/network/tls/TLSAlertType;

    .line 69
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const/16 v1, 0x10

    const/16 v4, 0x32

    const-string v5, "DecodeError"

    invoke-direct {v0, v5, v1, v4}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->DecodeError:Lio/ktor/network/tls/TLSAlertType;

    .line 70
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const/16 v1, 0x11

    const/16 v4, 0x33

    const-string v5, "DecryptError"

    invoke-direct {v0, v5, v1, v4}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->DecryptError:Lio/ktor/network/tls/TLSAlertType;

    .line 72
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const/16 v1, 0x12

    const/16 v4, 0x3c

    const-string v5, "ExportRestriction_RESERVED"

    invoke-direct {v0, v5, v1, v4}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->ExportRestriction_RESERVED:Lio/ktor/network/tls/TLSAlertType;

    .line 73
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const/16 v1, 0x13

    const/16 v4, 0x46

    const-string v5, "ProtocolVersion"

    invoke-direct {v0, v5, v1, v4}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->ProtocolVersion:Lio/ktor/network/tls/TLSAlertType;

    .line 74
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const-string v1, "InsufficientSecurity"

    const/16 v4, 0x47

    invoke-direct {v0, v1, v6, v4}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->InsufficientSecurity:Lio/ktor/network/tls/TLSAlertType;

    .line 75
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const-string v1, "InternalError"

    const/16 v4, 0x50

    invoke-direct {v0, v1, v3, v4}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->InternalError:Lio/ktor/network/tls/TLSAlertType;

    .line 76
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const-string v1, "UserCanceled"

    const/16 v3, 0x5a

    invoke-direct {v0, v1, v7, v3}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->UserCanceled:Lio/ktor/network/tls/TLSAlertType;

    .line 77
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const/16 v1, 0x17

    const/16 v3, 0x64

    const-string v4, "NoRenegotiation"

    invoke-direct {v0, v4, v1, v3}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->NoRenegotiation:Lio/ktor/network/tls/TLSAlertType;

    .line 78
    new-instance v0, Lio/ktor/network/tls/TLSAlertType;

    const/16 v1, 0x18

    const/16 v3, 0x6e

    const-string v4, "UnsupportedExtension"

    invoke-direct {v0, v4, v1, v3}, Lio/ktor/network/tls/TLSAlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->UnsupportedExtension:Lio/ktor/network/tls/TLSAlertType;

    invoke-static {}, Lio/ktor/network/tls/TLSAlertType;->$values()[Lio/ktor/network/tls/TLSAlertType;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->$VALUES:[Lio/ktor/network/tls/TLSAlertType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lio/ktor/network/tls/TLSAlertType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/network/tls/TLSAlertType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/network/tls/TLSAlertType;->Companion:Lio/ktor/network/tls/TLSAlertType$Companion;

    const/16 v0, 0x100

    .line 81
    new-array v3, v0, [Lio/ktor/network/tls/TLSAlertType;

    :goto_14b
    if-ge v2, v0, :cond_16d

    invoke-static {}, Lio/ktor/network/tls/TLSAlertType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v4

    .line 295
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_155
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_167

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lio/ktor/network/tls/TLSAlertType;

    .line 81
    iget v6, v6, Lio/ktor/network/tls/TLSAlertType;->code:I

    if-ne v6, v2, :cond_155

    goto :goto_168

    :cond_167
    move-object v5, v1

    .line 296
    :goto_168
    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14b

    .line 81
    :cond_16d
    sput-object v3, Lio/ktor/network/tls/TLSAlertType;->byCode:[Lio/ktor/network/tls/TLSAlertType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lio/ktor/network/tls/TLSAlertType;->code:I

    return-void
.end method

.method public static final synthetic access$getByCode$cp()[Lio/ktor/network/tls/TLSAlertType;
    .registers 1

    .line 51
    sget-object v0, Lio/ktor/network/tls/TLSAlertType;->byCode:[Lio/ktor/network/tls/TLSAlertType;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/ktor/network/tls/TLSAlertType;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lio/ktor/network/tls/TLSAlertType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ktor/network/tls/TLSAlertType;
    .registers 2

    .line 0
    const-class v0, Lio/ktor/network/tls/TLSAlertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/ktor/network/tls/TLSAlertType;

    return-object p0
.end method

.method public static values()[Lio/ktor/network/tls/TLSAlertType;
    .registers 1

    .line 0
    sget-object v0, Lio/ktor/network/tls/TLSAlertType;->$VALUES:[Lio/ktor/network/tls/TLSAlertType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ktor/network/tls/TLSAlertType;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .registers 1

    .line 52
    iget p0, p0, Lio/ktor/network/tls/TLSAlertType;->code:I

    return p0
.end method

###### Class io.ktor.network.tls.TLSAlertType.Companion (io.ktor.network.tls.TLSAlertType$Companion)
.class public final Lio/ktor/network/tls/TLSAlertType$Companion;
.super Ljava/lang/Object;
.source "TLSAlert.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/tls/TLSAlertType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/network/tls/TLSAlertType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final byCode(I)Lio/ktor/network/tls/TLSAlertType;
    .registers 4

    if-ltz p1, :cond_d

    const/16 p0, 0x100

    if-ge p1, p0, :cond_d

    .line 89
    invoke-static {}, Lio/ktor/network/tls/TLSAlertType;->access$getByCode$cp()[Lio/ktor/network/tls/TLSAlertType;

    move-result-object p0

    aget-object p0, p0, p1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    if-eqz p0, :cond_11

    return-object p0

    .line 91
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid TLS record type code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
