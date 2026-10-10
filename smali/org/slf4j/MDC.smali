###### Class org.slf4j.MDC (org.slf4j.MDC)
.class public Lorg/slf4j/MDC;
.super Ljava/lang/Object;
.source "MDC.java"


# static fields
.field public static MDC_ADAPTER:Lorg/slf4j/spi/MDCAdapter;


# direct methods
.method public static setMDCAdapter(Lorg/slf4j/spi/MDCAdapter;)V
    .registers 2

    if-eqz p0, :cond_5

    .line 285
    sput-object p0, Lorg/slf4j/MDC;->MDC_ADAPTER:Lorg/slf4j/spi/MDCAdapter;

    return-void

    .line 283
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
