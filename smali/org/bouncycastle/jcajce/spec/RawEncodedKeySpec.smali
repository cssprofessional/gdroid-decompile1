###### Class org.bouncycastle.jcajce.spec.RawEncodedKeySpec (org.bouncycastle.jcajce.spec.RawEncodedKeySpec)
.class public Lorg/bouncycastle/jcajce/spec/RawEncodedKeySpec;
.super Ljava/security/spec/EncodedKeySpec;


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .registers 1

    .line 0
    const-string p0, "RAW"

    return-object p0
.end method
