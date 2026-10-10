###### Class org.bouncycastle.jcajce.spec.SkeinParameterSpec (org.bouncycastle.jcajce.spec.SkeinParameterSpec)
.class public Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;
    }
.end annotation


# static fields
.field public static final PARAM_TYPE_CONFIG:I = 0x4

.field public static final PARAM_TYPE_KEY:I = 0x0

.field public static final PARAM_TYPE_KEY_IDENTIFIER:I = 0x10

.field public static final PARAM_TYPE_MESSAGE:I = 0x30

.field public static final PARAM_TYPE_NONCE:I = 0x14

.field public static final PARAM_TYPE_OUTPUT:I = 0x3f

.field public static final PARAM_TYPE_PERSONALISATION:I = 0x8

.field public static final PARAM_TYPE_PUBLIC_KEY:I = 0xc


# instance fields
.field private parameters:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->parameters:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$1;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->parameters:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public getKey()[B
    .registers 2

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->parameters:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getKeyIdentifier()[B
    .registers 2

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->parameters:Ljava/util/Map;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getNonce()[B
    .registers 2

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->parameters:Ljava/util/Map;

    const/16 v0, 0x14

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getParameters()Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->parameters:Ljava/util/Map;

    return-object p0
.end method

.method public getPersonalisation()[B
    .registers 2

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->parameters:Ljava/util/Map;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getPublicKey()[B
    .registers 2

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->parameters:Ljava/util/Map;

    const/16 v0, 0xc

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

###### Class org.bouncycastle.jcajce.spec.SkeinParameterSpec.AnonymousClass1 (org.bouncycastle.jcajce.spec.SkeinParameterSpec$1)
.class synthetic Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class org.bouncycastle.jcajce.spec.SkeinParameterSpec.Builder (org.bouncycastle.jcajce.spec.SkeinParameterSpec$Builder)
.class public Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private parameters:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->parameters:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->parameters:Ljava/util/Map;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->access$000(Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->parameters:Ljava/util/Map;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->access$000(Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_30
    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;
    .registers 3

    .line 0
    new-instance v0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->parameters:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;-><init>(Ljava/util/Map;Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$1;)V

    return-object v0
.end method

.method public set(I[B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .registers 5

    .line 0
    if-eqz p2, :cond_2c

    const/4 v0, 0x4

    if-eqz p1, :cond_18

    if-le p1, v0, :cond_10

    const/16 v1, 0x3f

    if-ge p1, v1, :cond_10

    const/16 v1, 0x30

    if-eq p1, v1, :cond_10

    goto :goto_18

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter types must be in the range 0,5..47,49..62."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    :goto_18
    if-eq p1, v0, :cond_24

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->parameters:Ljava/util/Map;

    invoke-static {p1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter type 4 is reserved for internal use."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter value must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setKey([B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .registers 3

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->set(I[B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setKeyIdentifier([B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .registers 3

    .line 0
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->set(I[B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setNonce([B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .registers 3

    .line 0
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->set(I[B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPersonalisation(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .registers 9

    .line 0
    const-string v0, " "

    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p0, p2, p1}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->set(I[B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;

    move-result-object p0
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_35} :catch_36

    return-object p0

    :catch_36
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Byte I/O failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPersonalisation(Ljava/util/Date;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .registers 10

    .line 0
    const-string v0, " "

    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    invoke-direct {v3, v4, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p0, p2, p1}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->set(I[B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;

    move-result-object p0
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_35} :catch_36

    return-object p0

    :catch_36
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Byte I/O failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPersonalisation([B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .registers 3

    .line 0
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->set(I[B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPublicKey([B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .registers 3

    .line 0
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->set(I[B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;

    move-result-object p0

    return-object p0
.end method
