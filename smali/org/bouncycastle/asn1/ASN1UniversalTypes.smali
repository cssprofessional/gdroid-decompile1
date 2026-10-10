###### Class org.bouncycastle.asn1.ASN1UniversalTypes (org.bouncycastle.asn1.ASN1UniversalTypes)
.class final Lorg/bouncycastle/asn1/ASN1UniversalTypes;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(I)Lorg/bouncycastle/asn1/ASN1UniversalType;
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_50

    :pswitch_3
    const/4 p0, 0x0

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/bouncycastle/asn1/ASN1BMPString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_8
    sget-object p0, Lorg/bouncycastle/asn1/ASN1UniversalString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_b
    sget-object p0, Lorg/bouncycastle/asn1/ASN1GeneralString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_e
    sget-object p0, Lorg/bouncycastle/asn1/ASN1VisibleString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_11
    sget-object p0, Lorg/bouncycastle/asn1/ASN1GraphicString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_14
    sget-object p0, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_17
    sget-object p0, Lorg/bouncycastle/asn1/ASN1UTCTime;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_1a
    sget-object p0, Lorg/bouncycastle/asn1/ASN1IA5String;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_1d
    sget-object p0, Lorg/bouncycastle/asn1/ASN1VideotexString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_20
    sget-object p0, Lorg/bouncycastle/asn1/ASN1T61String;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_23
    sget-object p0, Lorg/bouncycastle/asn1/ASN1PrintableString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_26
    sget-object p0, Lorg/bouncycastle/asn1/ASN1NumericString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_29
    sget-object p0, Lorg/bouncycastle/asn1/ASN1Set;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_2c
    sget-object p0, Lorg/bouncycastle/asn1/ASN1Sequence;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_2f
    sget-object p0, Lorg/bouncycastle/asn1/ASN1RelativeOID;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_32
    sget-object p0, Lorg/bouncycastle/asn1/ASN1UTF8String;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_35
    sget-object p0, Lorg/bouncycastle/asn1/ASN1Enumerated;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_38
    sget-object p0, Lorg/bouncycastle/asn1/ASN1External;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_3b
    sget-object p0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_3e
    sget-object p0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_41
    sget-object p0, Lorg/bouncycastle/asn1/ASN1Null;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_44
    sget-object p0, Lorg/bouncycastle/asn1/ASN1OctetString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_47
    sget-object p0, Lorg/bouncycastle/asn1/ASN1BitString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_4a
    sget-object p0, Lorg/bouncycastle/asn1/ASN1Integer;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_4d
    sget-object p0, Lorg/bouncycastle/asn1/ASN1Boolean;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_3
        :pswitch_35
        :pswitch_3
        :pswitch_32
        :pswitch_2f
        :pswitch_3
        :pswitch_3
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
