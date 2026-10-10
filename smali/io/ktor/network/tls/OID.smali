###### Class io.ktor.network.tls.OID (io.ktor.network.tls.OID)
.class public final Lio/ktor/network/tls/OID;
.super Ljava/lang/Object;
.source "OID.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/tls/OID$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOID.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OID.kt\nio/ktor/network/tls/OID\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,85:1\n1563#2:86\n1634#2,3:87\n*S KotlinDebug\n*F\n+ 1 OID.kt\nio/ktor/network/tls/OID\n*L\n8#1:86\n8#1:87,3\n*E\n"
.end annotation


# static fields
.field public static final BasicConstraints:Lio/ktor/network/tls/OID;

.field public static final ClientAuth:Lio/ktor/network/tls/OID;

.field public static final CommonName:Lio/ktor/network/tls/OID;

.field public static final Companion:Lio/ktor/network/tls/OID$Companion;

.field public static final CountryName:Lio/ktor/network/tls/OID;

.field public static final ECDSAwithSHA256Encryption:Lio/ktor/network/tls/OID;

.field public static final ECDSAwithSHA384Encryption:Lio/ktor/network/tls/OID;

.field public static final ECEncryption:Lio/ktor/network/tls/OID;

.field public static final ExtKeyUsage:Lio/ktor/network/tls/OID;

.field public static final KeyUsage:Lio/ktor/network/tls/OID;

.field public static final OrganizationName:Lio/ktor/network/tls/OID;

.field public static final OrganizationalUnitName:Lio/ktor/network/tls/OID;

.field public static final RSAEncryption:Lio/ktor/network/tls/OID;

.field public static final RSAwithSHA1Encryption:Lio/ktor/network/tls/OID;

.field public static final RSAwithSHA256Encryption:Lio/ktor/network/tls/OID;

.field public static final RSAwithSHA384Encryption:Lio/ktor/network/tls/OID;

.field public static final RSAwithSHA512Encryption:Lio/ktor/network/tls/OID;

.field public static final ServerAuth:Lio/ktor/network/tls/OID;

.field public static final SubjectAltName:Lio/ktor/network/tls/OID;

.field public static final secp256r1:Lio/ktor/network/tls/OID;


# instance fields
.field public final asArray:[I

.field public final identifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/ktor/network/tls/OID$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/network/tls/OID$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/network/tls/OID;->Companion:Lio/ktor/network/tls/OID$Companion;

    .line 11
    new-instance v0, Lio/ktor/network/tls/OID;

    const-string v1, "2.5.4.10"

    invoke-direct {v0, v1}, Lio/ktor/network/tls/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/OID;->OrganizationName:Lio/ktor/network/tls/OID;

    .line 12
    new-instance v0, Lio/ktor/network/tls/OID;

    const-string v1, "2.5.4.11"

    invoke-direct {v0, v1}, Lio/ktor/network/tls/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/OID;->OrganizationalUnitName:Lio/ktor/network/tls/OID;

    .line 13
    new-instance v0, Lio/ktor/network/tls/OID;

    const-string v1, "2.5.4.6"

    invoke-direct {v0, v1}, Lio/ktor/network/tls/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/OID;->CountryName:Lio/ktor/network/tls/OID;

    .line 14
    new-instance v0, Lio/ktor/network/tls/OID;

    const-string v1, "2.5.4.3"

    invoke-direct {v0, v1}, Lio/ktor/network/tls/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/OID;->CommonName:Lio/ktor/network/tls/OID;

    .line 15
    new-instance v0, Lio/ktor/network/tls/OID;

    const-string v1, "2.5.29.17"

    invoke-direct {v0, v1}, Lio/ktor/network/tls/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/OID;->SubjectAltName:Lio/ktor/network/tls/OID;

    .line 22
    new-instance v0, Lio/ktor/network/tls/OID;

    const-string v1, "2.5.29.19"

    invoke-direct {v0, v1}, Lio/ktor/network/tls/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/OID;->BasicConstraints:Lio/ktor/network/tls/OID;

    .line 23
    new-instance v0, Lio/ktor/network/tls/OID;

    const-string v1, "2.5.29.15"

    invoke-direct {v0, v1}, Lio/ktor/network/tls/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/OID;->KeyUsage:Lio/ktor/network/tls/OID;

    .line 24
    new-instance v0, Lio/ktor/network/tls/OID;

    const-string v1, "2.5.29.37"

    invoke-direct {v0, v1}, Lio/ktor/network/tls/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/OID;->ExtKeyUsage:Lio/ktor/network/tls/OID;

    .line 25
    new-instance v0, Lio/ktor/network/tls/OID;

    const-string v1, "1.3.6.1.5.5.7.3.1"

    invoke-direct {v0, v1}, Lio/ktor/network/tls/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/OID;->ServerAuth:Lio/ktor/network/tls/OID;

    .line 26
    new-instance v0, Lio/ktor/network/tls/OID;

    const-string v1, "1.3.6.1.5.5.7.3.2"

    invoke-direct {v0, v1}, Lio/ktor/network/tls/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/OID;->ClientAuth:Lio/ktor/network/tls/OID;

    .line 33
    new-instance v0, Lio/ktor/network/tls/OID;

    const-string v1, "1 2 840 113549 1 1 1"

    invoke-direct {v0, v1}, Lio/ktor/network/tls/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/OID;->RSAEncryption:Lio/ktor/network/tls/OID;

    .line 34
    new-instance v0, Lio/ktor/network/tls/OID;

    const-string v1, "1.2.840.10045.2.1"

    invoke-direct {v0, v1}, Lio/ktor/network/tls/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/OID;->ECEncryption:Lio/ktor/network/tls/OID;

    .line 41
    new-instance v0, Lio/ktor/network/tls/OID;

    const-string v1, "1.2.840.10045.4.3.3"

    invoke-direct {v0, v1}, Lio/ktor/network/tls/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/OID;->ECDSAwithSHA384Encryption:Lio/ktor/network/tls/OID;

    .line 42
    new-instance v0, Lio/ktor/network/tls/OID;

    const-string v1, "1.2.840.10045.4.3.2"

    invoke-direct {v0, v1}, Lio/ktor/network/tls/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/OID;->ECDSAwithSHA256Encryption:Lio/ktor/network/tls/OID;

    .line 44
    new-instance v0, Lio/ktor/network/tls/OID;

    const-string v1, "1.2.840.113549.1.1.13"

    invoke-direct {v0, v1}, Lio/ktor/network/tls/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/OID;->RSAwithSHA512Encryption:Lio/ktor/network/tls/OID;

    .line 45
    new-instance v0, Lio/ktor/network/tls/OID;

    const-string v1, "1.2.840.113549.1.1.12"

    invoke-direct {v0, v1}, Lio/ktor/network/tls/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/OID;->RSAwithSHA384Encryption:Lio/ktor/network/tls/OID;

    .line 46
    new-instance v0, Lio/ktor/network/tls/OID;

    const-string v1, "1.2.840.113549.1.1.11"

    invoke-direct {v0, v1}, Lio/ktor/network/tls/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/OID;->RSAwithSHA256Encryption:Lio/ktor/network/tls/OID;

    .line 47
    new-instance v0, Lio/ktor/network/tls/OID;

    const-string v1, "1.2.840.113549.1.1.5"

    invoke-direct {v0, v1}, Lio/ktor/network/tls/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/OID;->RSAwithSHA1Encryption:Lio/ktor/network/tls/OID;

    .line 54
    new-instance v0, Lio/ktor/network/tls/OID;

    const-string v1, "1.2.840.10045.3.1.7"

    invoke-direct {v0, v1}, Lio/ktor/network/tls/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/OID;->secp256r1:Lio/ktor/network/tls/OID;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 10

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/network/tls/OID;->identifier:Ljava/lang/String;

    .line 8
    const-string v0, "."

    const-string v1, " "

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1635
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 8
    :cond_4a
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p1

    iput-object p1, p0, Lio/ktor/network/tls/OID;->asArray:[I

    return-void
.end method

.method public static final synthetic access$getECDSAwithSHA256Encryption$cp()Lio/ktor/network/tls/OID;
    .registers 1

    .line 7
    sget-object v0, Lio/ktor/network/tls/OID;->ECDSAwithSHA256Encryption:Lio/ktor/network/tls/OID;

    return-object v0
.end method

.method public static final synthetic access$getECDSAwithSHA384Encryption$cp()Lio/ktor/network/tls/OID;
    .registers 1

    .line 7
    sget-object v0, Lio/ktor/network/tls/OID;->ECDSAwithSHA384Encryption:Lio/ktor/network/tls/OID;

    return-object v0
.end method

.method public static final synthetic access$getRSAwithSHA1Encryption$cp()Lio/ktor/network/tls/OID;
    .registers 1

    .line 7
    sget-object v0, Lio/ktor/network/tls/OID;->RSAwithSHA1Encryption:Lio/ktor/network/tls/OID;

    return-object v0
.end method

.method public static final synthetic access$getRSAwithSHA256Encryption$cp()Lio/ktor/network/tls/OID;
    .registers 1

    .line 7
    sget-object v0, Lio/ktor/network/tls/OID;->RSAwithSHA256Encryption:Lio/ktor/network/tls/OID;

    return-object v0
.end method

.method public static final synthetic access$getRSAwithSHA384Encryption$cp()Lio/ktor/network/tls/OID;
    .registers 1

    .line 7
    sget-object v0, Lio/ktor/network/tls/OID;->RSAwithSHA384Encryption:Lio/ktor/network/tls/OID;

    return-object v0
.end method

.method public static final synthetic access$getRSAwithSHA512Encryption$cp()Lio/ktor/network/tls/OID;
    .registers 1

    .line 7
    sget-object v0, Lio/ktor/network/tls/OID;->RSAwithSHA512Encryption:Lio/ktor/network/tls/OID;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/ktor/network/tls/OID;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/ktor/network/tls/OID;

    iget-object p0, p0, Lio/ktor/network/tls/OID;->identifier:Ljava/lang/String;

    iget-object p1, p1, Lio/ktor/network/tls/OID;->identifier:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .registers 1

    .line 7
    iget-object p0, p0, Lio/ktor/network/tls/OID;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/network/tls/OID;->identifier:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OID(identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/ktor/network/tls/OID;->identifier:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.tls.OID.Companion (io.ktor.network.tls.OID$Companion)
.class public final Lio/ktor/network/tls/OID$Companion;
.super Ljava/lang/Object;
.source "OID.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/tls/OID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/network/tls/OID$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getECDSAwithSHA256Encryption()Lio/ktor/network/tls/OID;
    .registers 1

    .line 42
    invoke-static {}, Lio/ktor/network/tls/OID;->access$getECDSAwithSHA256Encryption$cp()Lio/ktor/network/tls/OID;

    move-result-object p0

    return-object p0
.end method

.method public final getECDSAwithSHA384Encryption()Lio/ktor/network/tls/OID;
    .registers 1

    .line 41
    invoke-static {}, Lio/ktor/network/tls/OID;->access$getECDSAwithSHA384Encryption$cp()Lio/ktor/network/tls/OID;

    move-result-object p0

    return-object p0
.end method

.method public final getRSAwithSHA1Encryption()Lio/ktor/network/tls/OID;
    .registers 1

    .line 47
    invoke-static {}, Lio/ktor/network/tls/OID;->access$getRSAwithSHA1Encryption$cp()Lio/ktor/network/tls/OID;

    move-result-object p0

    return-object p0
.end method

.method public final getRSAwithSHA256Encryption()Lio/ktor/network/tls/OID;
    .registers 1

    .line 46
    invoke-static {}, Lio/ktor/network/tls/OID;->access$getRSAwithSHA256Encryption$cp()Lio/ktor/network/tls/OID;

    move-result-object p0

    return-object p0
.end method

.method public final getRSAwithSHA384Encryption()Lio/ktor/network/tls/OID;
    .registers 1

    .line 45
    invoke-static {}, Lio/ktor/network/tls/OID;->access$getRSAwithSHA384Encryption$cp()Lio/ktor/network/tls/OID;

    move-result-object p0

    return-object p0
.end method

.method public final getRSAwithSHA512Encryption()Lio/ktor/network/tls/OID;
    .registers 1

    .line 44
    invoke-static {}, Lio/ktor/network/tls/OID;->access$getRSAwithSHA512Encryption$cp()Lio/ktor/network/tls/OID;

    move-result-object p0

    return-object p0
.end method
