###### Class org.slf4j.helpers.NOPLogger (org.slf4j.helpers.NOPLogger)
.class public Lorg/slf4j/helpers/NOPLogger;
.super Lorg/slf4j/helpers/NamedLoggerBase;
.source "NOPLogger.java"

# interfaces
.implements Lorg/slf4j/Logger;


# static fields
.field public static final NOP_LOGGER:Lorg/slf4j/helpers/NOPLogger;

.field private static final serialVersionUID:J = -0x72d8937e719b999L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Lorg/slf4j/helpers/NOPLogger;

    invoke-direct {v0}, Lorg/slf4j/helpers/NOPLogger;-><init>()V

    sput-object v0, Lorg/slf4j/helpers/NOPLogger;->NOP_LOGGER:Lorg/slf4j/helpers/NOPLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Lorg/slf4j/helpers/NamedLoggerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 57
    const-string p0, "NOP"

    return-object p0
.end method

.method public final isDebugEnabled()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final isErrorEnabled()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final isInfoEnabled()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final isTraceEnabled()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final isWarnEnabled()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final trace(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public final warn(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method
