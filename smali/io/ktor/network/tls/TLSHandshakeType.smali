###### Class io.ktor.network.tls.TLSHandshakeType (io.ktor.network.tls.TLSHandshakeType)
.class public final enum Lio/ktor/network/tls/TLSHandshakeType;
.super Ljava/lang/Enum;
.source "TLSHandshakeType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/tls/TLSHandshakeType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/ktor/network/tls/TLSHandshakeType;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTLSHandshakeType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TLSHandshakeType.kt\nio/ktor/network/tls/TLSHandshakeType\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n295#2,2:101\n*S KotlinDebug\n*F\n+ 1 TLSHandshakeType.kt\nio/ktor/network/tls/TLSHandshakeType\n*L\n30#1:101,2\n*E\n"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lio/ktor/network/tls/TLSHandshakeType;

.field public static final enum Certificate:Lio/ktor/network/tls/TLSHandshakeType;

.field public static final enum CertificateRequest:Lio/ktor/network/tls/TLSHandshakeType;

.field public static final enum CertificateVerify:Lio/ktor/network/tls/TLSHandshakeType;

.field public static final enum ClientHello:Lio/ktor/network/tls/TLSHandshakeType;

.field public static final enum ClientKeyExchange:Lio/ktor/network/tls/TLSHandshakeType;

.field public static final Companion:Lio/ktor/network/tls/TLSHandshakeType$Companion;

.field public static final enum Finished:Lio/ktor/network/tls/TLSHandshakeType;

.field public static final enum HelloRequest:Lio/ktor/network/tls/TLSHandshakeType;

.field public static final enum ServerDone:Lio/ktor/network/tls/TLSHandshakeType;

.field public static final enum ServerHello:Lio/ktor/network/tls/TLSHandshakeType;

.field public static final enum ServerKeyExchange:Lio/ktor/network/tls/TLSHandshakeType;

.field private static final byCode:[Lio/ktor/network/tls/TLSHandshakeType;


# instance fields
.field private final code:I


# direct methods
.method private static final synthetic $values()[Lio/ktor/network/tls/TLSHandshakeType;
    .registers 10

    .line 0
    sget-object v0, Lio/ktor/network/tls/TLSHandshakeType;->HelloRequest:Lio/ktor/network/tls/TLSHandshakeType;

    sget-object v1, Lio/ktor/network/tls/TLSHandshakeType;->ClientHello:Lio/ktor/network/tls/TLSHandshakeType;

    sget-object v2, Lio/ktor/network/tls/TLSHandshakeType;->ServerHello:Lio/ktor/network/tls/TLSHandshakeType;

    sget-object v3, Lio/ktor/network/tls/TLSHandshakeType;->Certificate:Lio/ktor/network/tls/TLSHandshakeType;

    sget-object v4, Lio/ktor/network/tls/TLSHandshakeType;->ServerKeyExchange:Lio/ktor/network/tls/TLSHandshakeType;

    sget-object v5, Lio/ktor/network/tls/TLSHandshakeType;->CertificateRequest:Lio/ktor/network/tls/TLSHandshakeType;

    sget-object v6, Lio/ktor/network/tls/TLSHandshakeType;->ServerDone:Lio/ktor/network/tls/TLSHandshakeType;

    sget-object v7, Lio/ktor/network/tls/TLSHandshakeType;->CertificateVerify:Lio/ktor/network/tls/TLSHandshakeType;

    sget-object v8, Lio/ktor/network/tls/TLSHandshakeType;->ClientKeyExchange:Lio/ktor/network/tls/TLSHandshakeType;

    sget-object v9, Lio/ktor/network/tls/TLSHandshakeType;->Finished:Lio/ktor/network/tls/TLSHandshakeType;

    filled-new-array/range {v0 .. v9}, [Lio/ktor/network/tls/TLSHandshakeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 18
    new-instance v0, Lio/ktor/network/tls/TLSHandshakeType;

    const-string v1, "HelloRequest"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/ktor/network/tls/TLSHandshakeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSHandshakeType;->HelloRequest:Lio/ktor/network/tls/TLSHandshakeType;

    .line 19
    new-instance v0, Lio/ktor/network/tls/TLSHandshakeType;

    const-string v1, "ClientHello"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lio/ktor/network/tls/TLSHandshakeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSHandshakeType;->ClientHello:Lio/ktor/network/tls/TLSHandshakeType;

    .line 20
    new-instance v0, Lio/ktor/network/tls/TLSHandshakeType;

    const-string v1, "ServerHello"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v3}, Lio/ktor/network/tls/TLSHandshakeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSHandshakeType;->ServerHello:Lio/ktor/network/tls/TLSHandshakeType;

    .line 21
    new-instance v0, Lio/ktor/network/tls/TLSHandshakeType;

    const/4 v1, 0x3

    const/16 v3, 0xb

    const-string v4, "Certificate"

    invoke-direct {v0, v4, v1, v3}, Lio/ktor/network/tls/TLSHandshakeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSHandshakeType;->Certificate:Lio/ktor/network/tls/TLSHandshakeType;

    .line 22
    new-instance v0, Lio/ktor/network/tls/TLSHandshakeType;

    const/4 v1, 0x4

    const/16 v3, 0xc

    const-string v4, "ServerKeyExchange"

    invoke-direct {v0, v4, v1, v3}, Lio/ktor/network/tls/TLSHandshakeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSHandshakeType;->ServerKeyExchange:Lio/ktor/network/tls/TLSHandshakeType;

    .line 23
    new-instance v0, Lio/ktor/network/tls/TLSHandshakeType;

    const/4 v1, 0x5

    const/16 v3, 0xd

    const-string v4, "CertificateRequest"

    invoke-direct {v0, v4, v1, v3}, Lio/ktor/network/tls/TLSHandshakeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSHandshakeType;->CertificateRequest:Lio/ktor/network/tls/TLSHandshakeType;

    .line 24
    new-instance v0, Lio/ktor/network/tls/TLSHandshakeType;

    const/4 v1, 0x6

    const/16 v3, 0xe

    const-string v4, "ServerDone"

    invoke-direct {v0, v4, v1, v3}, Lio/ktor/network/tls/TLSHandshakeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSHandshakeType;->ServerDone:Lio/ktor/network/tls/TLSHandshakeType;

    .line 25
    new-instance v0, Lio/ktor/network/tls/TLSHandshakeType;

    const/4 v1, 0x7

    const/16 v3, 0xf

    const-string v4, "CertificateVerify"

    invoke-direct {v0, v4, v1, v3}, Lio/ktor/network/tls/TLSHandshakeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSHandshakeType;->CertificateVerify:Lio/ktor/network/tls/TLSHandshakeType;

    .line 26
    new-instance v0, Lio/ktor/network/tls/TLSHandshakeType;

    const/16 v1, 0x8

    const/16 v3, 0x10

    const-string v4, "ClientKeyExchange"

    invoke-direct {v0, v4, v1, v3}, Lio/ktor/network/tls/TLSHandshakeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSHandshakeType;->ClientKeyExchange:Lio/ktor/network/tls/TLSHandshakeType;

    .line 27
    new-instance v0, Lio/ktor/network/tls/TLSHandshakeType;

    const/16 v1, 0x9

    const/16 v3, 0x14

    const-string v4, "Finished"

    invoke-direct {v0, v4, v1, v3}, Lio/ktor/network/tls/TLSHandshakeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSHandshakeType;->Finished:Lio/ktor/network/tls/TLSHandshakeType;

    invoke-static {}, Lio/ktor/network/tls/TLSHandshakeType;->$values()[Lio/ktor/network/tls/TLSHandshakeType;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/TLSHandshakeType;->$VALUES:[Lio/ktor/network/tls/TLSHandshakeType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/TLSHandshakeType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lio/ktor/network/tls/TLSHandshakeType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/network/tls/TLSHandshakeType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/network/tls/TLSHandshakeType;->Companion:Lio/ktor/network/tls/TLSHandshakeType$Companion;

    const/16 v0, 0x100

    .line 30
    new-array v3, v0, [Lio/ktor/network/tls/TLSHandshakeType;

    :goto_8c
    if-ge v2, v0, :cond_ae

    invoke-static {}, Lio/ktor/network/tls/TLSHandshakeType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v4

    .line 295
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_96
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lio/ktor/network/tls/TLSHandshakeType;

    .line 30
    iget v6, v6, Lio/ktor/network/tls/TLSHandshakeType;->code:I

    if-ne v6, v2, :cond_96

    goto :goto_a9

    :cond_a8
    move-object v5, v1

    .line 296
    :goto_a9
    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8c

    .line 30
    :cond_ae
    sput-object v3, Lio/ktor/network/tls/TLSHandshakeType;->byCode:[Lio/ktor/network/tls/TLSHandshakeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/ktor/network/tls/TLSHandshakeType;->code:I

    return-void
.end method

.method public static final synthetic access$getByCode$cp()[Lio/ktor/network/tls/TLSHandshakeType;
    .registers 1

    .line 17
    sget-object v0, Lio/ktor/network/tls/TLSHandshakeType;->byCode:[Lio/ktor/network/tls/TLSHandshakeType;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/ktor/network/tls/TLSHandshakeType;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lio/ktor/network/tls/TLSHandshakeType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ktor/network/tls/TLSHandshakeType;
    .registers 2

    .line 0
    const-class v0, Lio/ktor/network/tls/TLSHandshakeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/ktor/network/tls/TLSHandshakeType;

    return-object p0
.end method

.method public static values()[Lio/ktor/network/tls/TLSHandshakeType;
    .registers 1

    .line 0
    sget-object v0, Lio/ktor/network/tls/TLSHandshakeType;->$VALUES:[Lio/ktor/network/tls/TLSHandshakeType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ktor/network/tls/TLSHandshakeType;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .registers 1

    .line 17
    iget p0, p0, Lio/ktor/network/tls/TLSHandshakeType;->code:I

    return p0
.end method

###### Class io.ktor.network.tls.TLSHandshakeType.Companion (io.ktor.network.tls.TLSHandshakeType$Companion)
.class public final Lio/ktor/network/tls/TLSHandshakeType$Companion;
.super Ljava/lang/Object;
.source "TLSHandshakeType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/tls/TLSHandshakeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/network/tls/TLSHandshakeType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final byCode(I)Lio/ktor/network/tls/TLSHandshakeType;
    .registers 4

    if-ltz p1, :cond_d

    const/16 p0, 0x100

    if-ge p1, p0, :cond_d

    .line 38
    invoke-static {}, Lio/ktor/network/tls/TLSHandshakeType;->access$getByCode$cp()[Lio/ktor/network/tls/TLSHandshakeType;

    move-result-object p0

    aget-object p0, p0, p1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    if-eqz p0, :cond_11

    return-object p0

    .line 40
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid TLS handshake type code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
