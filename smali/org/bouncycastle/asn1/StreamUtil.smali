###### Class org.bouncycastle.asn1.StreamUtil (org.bouncycastle.asn1.StreamUtil)
.class Lorg/bouncycastle/asn1/StreamUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findLimit(Ljava/io/InputStream;)I
    .registers 6

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/asn1/LimitedInputStream;

    if-eqz v0, :cond_b

    check-cast p0, Lorg/bouncycastle/asn1/LimitedInputStream;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/LimitedInputStream;->getLimit()I

    move-result p0

    return p0

    :cond_b
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;

    if-eqz v0, :cond_16

    check-cast p0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->getLimit()I

    move-result p0

    return p0

    :cond_16
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_21

    check-cast p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p0

    return p0

    :cond_21
    instance-of v0, p0, Ljava/io/FileInputStream;

    const-wide/32 v1, 0x7fffffff

    if-eqz v0, :cond_3c

    :try_start_28
    check-cast p0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_34} :catch_3c

    goto :goto_36

    :cond_35
    move-wide v3, v1

    :goto_36
    cmp-long p0, v3, v1

    if-gez p0, :cond_3c

    long-to-int p0, v3

    return p0

    :catch_3c
    :cond_3c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-lez p0, :cond_4c

    const p0, 0x7fffffff

    return p0

    :cond_4c
    long-to-int p0, v3

    return p0
.end method
