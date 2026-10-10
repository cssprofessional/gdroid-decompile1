###### Class io.ktor.network.tls.SecretExchangeType (io.ktor.network.tls.SecretExchangeType)
.class public final enum Lio/ktor/network/tls/SecretExchangeType;
.super Ljava/lang/Enum;
.source "CipherSuites.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/ktor/network/tls/SecretExchangeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lio/ktor/network/tls/SecretExchangeType;

.field public static final enum ECDHE:Lio/ktor/network/tls/SecretExchangeType;

.field public static final enum RSA:Lio/ktor/network/tls/SecretExchangeType;


# instance fields
.field private final jvmName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lio/ktor/network/tls/SecretExchangeType;
    .registers 2

    .line 0
    sget-object v0, Lio/ktor/network/tls/SecretExchangeType;->ECDHE:Lio/ktor/network/tls/SecretExchangeType;

    sget-object v1, Lio/ktor/network/tls/SecretExchangeType;->RSA:Lio/ktor/network/tls/SecretExchangeType;

    filled-new-array {v0, v1}, [Lio/ktor/network/tls/SecretExchangeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 21
    new-instance v0, Lio/ktor/network/tls/SecretExchangeType;

    const/4 v1, 0x0

    const-string v2, "ECDHE_ECDSA"

    const-string v3, "ECDHE"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/network/tls/SecretExchangeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/SecretExchangeType;->ECDHE:Lio/ktor/network/tls/SecretExchangeType;

    .line 28
    new-instance v0, Lio/ktor/network/tls/SecretExchangeType;

    const-string v1, "RSA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/ktor/network/tls/SecretExchangeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/SecretExchangeType;->RSA:Lio/ktor/network/tls/SecretExchangeType;

    invoke-static {}, Lio/ktor/network/tls/SecretExchangeType;->$values()[Lio/ktor/network/tls/SecretExchangeType;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/SecretExchangeType;->$VALUES:[Lio/ktor/network/tls/SecretExchangeType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/SecretExchangeType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/ktor/network/tls/SecretExchangeType;->jvmName:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/ktor/network/tls/SecretExchangeType;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lio/ktor/network/tls/SecretExchangeType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ktor/network/tls/SecretExchangeType;
    .registers 2

    .line 0
    const-class v0, Lio/ktor/network/tls/SecretExchangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/ktor/network/tls/SecretExchangeType;

    return-object p0
.end method

.method public static values()[Lio/ktor/network/tls/SecretExchangeType;
    .registers 1

    .line 0
    sget-object v0, Lio/ktor/network/tls/SecretExchangeType;->$VALUES:[Lio/ktor/network/tls/SecretExchangeType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ktor/network/tls/SecretExchangeType;

    return-object v0
.end method


# virtual methods
.method public final getJvmName()Ljava/lang/String;
    .registers 1

    .line 15
    iget-object p0, p0, Lio/ktor/network/tls/SecretExchangeType;->jvmName:Ljava/lang/String;

    return-object p0
.end method
