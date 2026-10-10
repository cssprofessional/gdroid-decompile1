###### Class org.slf4j.Logger (org.slf4j.Logger)
.class public interface abstract Lorg/slf4j/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# virtual methods
.method public abstract debug(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract isDebugEnabled()Z
.end method

.method public isEnabledForLevel(Lorg/slf4j/event/Level;)Z
    .registers 4

    .line 146
    invoke-virtual {p1}, Lorg/slf4j/event/Level;->toInt()I

    move-result v0

    if-eqz v0, :cond_46

    const/16 v1, 0xa

    if-eq v0, v1, :cond_41

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3c

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_37

    const/16 v1, 0x28

    if-ne v0, v1, :cond_1b

    .line 157
    invoke-interface {p0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result p0

    return p0

    .line 159
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Level ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] not recognized."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 155
    :cond_37
    invoke-interface {p0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result p0

    return p0

    .line 153
    :cond_3c
    invoke-interface {p0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result p0

    return p0

    .line 151
    :cond_41
    invoke-interface {p0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p0

    return p0

    .line 149
    :cond_46
    invoke-interface {p0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result p0

    return p0
.end method

.method public abstract isErrorEnabled()Z
.end method

.method public abstract isInfoEnabled()Z
.end method

.method public abstract isTraceEnabled()Z
.end method

.method public abstract isWarnEnabled()Z
.end method

.method public abstract trace(Ljava/lang/String;)V
.end method

.method public abstract warn(Ljava/lang/String;)V
.end method
