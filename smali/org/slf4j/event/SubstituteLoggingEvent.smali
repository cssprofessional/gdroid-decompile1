###### Class org.slf4j.event.SubstituteLoggingEvent (org.slf4j.event.SubstituteLoggingEvent)
.class public Lorg/slf4j/event/SubstituteLoggingEvent;
.super Ljava/lang/Object;
.source "SubstituteLoggingEvent.java"

# interfaces
.implements Lorg/slf4j/event/LoggingEvent;


# instance fields
.field public argArray:[Ljava/lang/Object;

.field public level:Lorg/slf4j/event/Level;

.field public logger:Lorg/slf4j/helpers/SubstituteLogger;

.field public loggerName:Ljava/lang/String;

.field public markers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/slf4j/Marker;",
            ">;"
        }
    .end annotation
.end field

.field public message:Ljava/lang/String;

.field public threadName:Ljava/lang/String;

.field public throwable:Ljava/lang/Throwable;

.field public timeStamp:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addMarker(Lorg/slf4j/Marker;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 40
    :cond_3
    iget-object v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->markers:Ljava/util/List;

    if-nez v0, :cond_f

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->markers:Ljava/util/List;

    .line 44
    :cond_f
    iget-object p0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->markers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getLevel()Lorg/slf4j/event/Level;
    .registers 1

    .line 25
    iget-object p0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->level:Lorg/slf4j/event/Level;

    return-object p0
.end method

.method public getLogger()Lorg/slf4j/helpers/SubstituteLogger;
    .registers 1

    .line 56
    iget-object p0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->logger:Lorg/slf4j/helpers/SubstituteLogger;

    return-object p0
.end method

.method public setArgumentArray([Ljava/lang/Object;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->argArray:[Ljava/lang/Object;

    return-void
.end method

.method public setLevel(Lorg/slf4j/event/Level;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->level:Lorg/slf4j/event/Level;

    return-void
.end method

.method public setLogger(Lorg/slf4j/helpers/SubstituteLogger;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->logger:Lorg/slf4j/helpers/SubstituteLogger;

    return-void
.end method

.method public setLoggerName(Ljava/lang/String;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->loggerName:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->message:Ljava/lang/String;

    return-void
.end method

.method public setThreadName(Ljava/lang/String;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->threadName:Ljava/lang/String;

    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public setTimeStamp(J)V
    .registers 3

    .line 92
    iput-wide p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->timeStamp:J

    return-void
.end method
