###### Class org.slf4j.helpers.NOP_FallbackServiceProvider (org.slf4j.helpers.NOP_FallbackServiceProvider)
.class public Lorg/slf4j/helpers/NOP_FallbackServiceProvider;
.super Ljava/lang/Object;
.source "NOP_FallbackServiceProvider.java"

# interfaces
.implements Lorg/slf4j/spi/SLF4JServiceProvider;


# static fields
.field public static REQUESTED_API_VERSION:Ljava/lang/String; = "2.0.99"


# instance fields
.field public final loggerFactory:Lorg/slf4j/ILoggerFactory;

.field public final markerFactory:Lorg/slf4j/IMarkerFactory;

.field public final mdcAdapter:Lorg/slf4j/spi/MDCAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lorg/slf4j/helpers/NOPLoggerFactory;

    invoke-direct {v0}, Lorg/slf4j/helpers/NOPLoggerFactory;-><init>()V

    iput-object v0, p0, Lorg/slf4j/helpers/NOP_FallbackServiceProvider;->loggerFactory:Lorg/slf4j/ILoggerFactory;

    .line 18
    new-instance v0, Lorg/slf4j/helpers/BasicMarkerFactory;

    invoke-direct {v0}, Lorg/slf4j/helpers/BasicMarkerFactory;-><init>()V

    iput-object v0, p0, Lorg/slf4j/helpers/NOP_FallbackServiceProvider;->markerFactory:Lorg/slf4j/IMarkerFactory;

    .line 19
    new-instance v0, Lorg/slf4j/helpers/NOPMDCAdapter;

    invoke-direct {v0}, Lorg/slf4j/helpers/NOPMDCAdapter;-><init>()V

    iput-object v0, p0, Lorg/slf4j/helpers/NOP_FallbackServiceProvider;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    return-void
.end method


# virtual methods
.method public getLoggerFactory()Lorg/slf4j/ILoggerFactory;
    .registers 1

    .line 24
    iget-object p0, p0, Lorg/slf4j/helpers/NOP_FallbackServiceProvider;->loggerFactory:Lorg/slf4j/ILoggerFactory;

    return-object p0
.end method

.method public getMDCAdapter()Lorg/slf4j/spi/MDCAdapter;
    .registers 1

    .line 35
    iget-object p0, p0, Lorg/slf4j/helpers/NOP_FallbackServiceProvider;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    return-object p0
.end method

.method public getRequestedApiVersion()Ljava/lang/String;
    .registers 1

    .line 40
    sget-object p0, Lorg/slf4j/helpers/NOP_FallbackServiceProvider;->REQUESTED_API_VERSION:Ljava/lang/String;

    return-object p0
.end method

.method public initialize()V
    .registers 1

    .line 0
    return-void
.end method
