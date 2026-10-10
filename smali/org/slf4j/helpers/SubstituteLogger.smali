###### Class org.slf4j.helpers.SubstituteLogger (org.slf4j.helpers.SubstituteLogger)
.class public Lorg/slf4j/helpers/SubstituteLogger;
.super Ljava/lang/Object;
.source "SubstituteLogger.java"

# interfaces
.implements Lorg/slf4j/Logger;


# instance fields
.field private volatile _delegate:Lorg/slf4j/Logger;

.field public final createdPostInitialization:Z

.field public delegateEventAware:Ljava/lang/Boolean;

.field public final eventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/slf4j/event/SubstituteLoggingEvent;",
            ">;"
        }
    .end annotation
.end field

.field public eventRecordingLogger:Lorg/slf4j/event/EventRecordingLogger;

.field public logMethodCache:Ljava/lang/reflect/Method;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Queue;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Queue<",
            "Lorg/slf4j/event/SubstituteLoggingEvent;",
            ">;Z)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/slf4j/helpers/SubstituteLogger;->name:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lorg/slf4j/helpers/SubstituteLogger;->eventQueue:Ljava/util/Queue;

    .line 63
    iput-boolean p3, p0, Lorg/slf4j/helpers/SubstituteLogger;->createdPostInitialization:Z

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 176
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public delegate()Lorg/slf4j/Logger;
    .registers 2

    .line 437
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->_delegate:Lorg/slf4j/Logger;

    if-eqz v0, :cond_7

    .line 438
    iget-object p0, p0, Lorg/slf4j/helpers/SubstituteLogger;->_delegate:Lorg/slf4j/Logger;

    return-object p0

    .line 440
    :cond_7
    iget-boolean v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->createdPostInitialization:Z

    if-eqz v0, :cond_e

    .line 441
    sget-object p0, Lorg/slf4j/helpers/NOPLogger;->NOP_LOGGER:Lorg/slf4j/helpers/NOPLogger;

    return-object p0

    .line 443
    :cond_e
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->getEventRecordingLogger()Lorg/slf4j/Logger;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_20

    .line 416
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_20

    .line 419
    :cond_12
    check-cast p1, Lorg/slf4j/helpers/SubstituteLogger;

    .line 421
    iget-object p0, p0, Lorg/slf4j/helpers/SubstituteLogger;->name:Ljava/lang/String;

    iget-object p1, p1, Lorg/slf4j/helpers/SubstituteLogger;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    return v1

    :cond_1f
    return v0

    :cond_20
    :goto_20
    return v1
.end method

.method public final getEventRecordingLogger()Lorg/slf4j/Logger;
    .registers 3

    .line 448
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->eventRecordingLogger:Lorg/slf4j/event/EventRecordingLogger;

    if-nez v0, :cond_d

    .line 449
    new-instance v0, Lorg/slf4j/event/EventRecordingLogger;

    iget-object v1, p0, Lorg/slf4j/helpers/SubstituteLogger;->eventQueue:Ljava/util/Queue;

    invoke-direct {v0, p0, v1}, Lorg/slf4j/event/EventRecordingLogger;-><init>(Lorg/slf4j/helpers/SubstituteLogger;Ljava/util/Queue;)V

    iput-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->eventRecordingLogger:Lorg/slf4j/event/EventRecordingLogger;

    .line 451
    :cond_d
    iget-object p0, p0, Lorg/slf4j/helpers/SubstituteLogger;->eventRecordingLogger:Lorg/slf4j/event/EventRecordingLogger;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lorg/slf4j/helpers/SubstituteLogger;->name:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 429
    iget-object p0, p0, Lorg/slf4j/helpers/SubstituteLogger;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isDebugEnabled()Z
    .registers 1

    .line 151
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p0

    return p0
.end method

.method public isDelegateEventAware()Z
    .registers 4

    .line 463
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->delegateEventAware:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 464
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 467
    :cond_9
    :try_start_9
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->_delegate:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "log"

    const-class v2, Lorg/slf4j/event/LoggingEvent;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->logMethodCache:Ljava/lang/reflect/Method;

    .line 468
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->delegateEventAware:Ljava/lang/Boolean;
    :try_end_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_21} :catch_22

    goto :goto_26

    .line 470
    :catch_22
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->delegateEventAware:Ljava/lang/Boolean;

    .line 472
    :goto_26
    iget-object p0, p0, Lorg/slf4j/helpers/SubstituteLogger;->delegateEventAware:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isDelegateNOP()Z
    .registers 1

    .line 491
    iget-object p0, p0, Lorg/slf4j/helpers/SubstituteLogger;->_delegate:Lorg/slf4j/Logger;

    instance-of p0, p0, Lorg/slf4j/helpers/NOPLogger;

    return p0
.end method

.method public isDelegateNull()Z
    .registers 1

    .line 487
    iget-object p0, p0, Lorg/slf4j/helpers/SubstituteLogger;->_delegate:Lorg/slf4j/Logger;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isEnabledForLevel(Lorg/slf4j/event/Level;)Z
    .registers 2

    .line 83
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isEnabledForLevel(Lorg/slf4j/event/Level;)Z

    move-result p0

    return p0
.end method

.method public isErrorEnabled()Z
    .registers 1

    .line 349
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result p0

    return p0
.end method

.method public isInfoEnabled()Z
    .registers 1

    .line 216
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result p0

    return p0
.end method

.method public isTraceEnabled()Z
    .registers 1

    .line 88
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result p0

    return p0
.end method

.method public isWarnEnabled()Z
    .registers 1

    .line 283
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result p0

    return p0
.end method

.method public log(Lorg/slf4j/event/LoggingEvent;)V
    .registers 3

    .line 476
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->isDelegateEventAware()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 478
    :try_start_6
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->logMethodCache:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lorg/slf4j/helpers/SubstituteLogger;->_delegate:Lorg/slf4j/Logger;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_11} :catch_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_11} :catch_11
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public setDelegate(Lorg/slf4j/Logger;)V
    .registers 2

    .line 459
    iput-object p1, p0, Lorg/slf4j/helpers/SubstituteLogger;->_delegate:Lorg/slf4j/Logger;

    return-void
.end method

.method public trace(Ljava/lang/String;)V
    .registers 2

    .line 93
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .registers 2

    .line 288
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method
