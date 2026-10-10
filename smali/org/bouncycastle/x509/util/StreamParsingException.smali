###### Class org.bouncycastle.x509.util.StreamParsingException (org.bouncycastle.x509.util.StreamParsingException)
.class public Lorg/bouncycastle/x509/util/StreamParsingException;
.super Ljava/lang/Exception;


# instance fields
.field _e:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/bouncycastle/x509/util/StreamParsingException;->_e:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/x509/util/StreamParsingException;->_e:Ljava/lang/Throwable;

    return-object p0
.end method
