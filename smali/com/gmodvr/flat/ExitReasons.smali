###### Class com.gmodvr.flat.ExitReasons (com.gmodvr.flat.ExitReasons)
.class final Lcom/gmodvr/flat/ExitReasons;
.super Ljava/lang/Object;
.source "ExitReasons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/ExitReasons$Record;
    }
.end annotation


# static fields
.field static final GAME_SUFFIX:Ljava/lang/String; = ":game"

.field static final MARKER_AFTER_MS:J = 0x2710L

.field static final MARKER_BEFORE_MS:J = 0x1d4c0L

.field static final REASON_ANR:I = 0x6

.field static final REASON_CRASH:I = 0x4

.field static final REASON_CRASH_NATIVE:I = 0x5

.field static final REASON_DEPENDENCY_DIED:I = 0xc

.field static final REASON_EXCESSIVE_RESOURCE_USAGE:I = 0x9

.field static final REASON_EXIT_SELF:I = 0x1

.field static final REASON_FREEZER:I = 0xe

.field static final REASON_INITIALIZATION_FAILURE:I = 0x7

.field static final REASON_LOW_MEMORY:I = 0x3

.field static final REASON_OTHER:I = 0xd

.field static final REASON_PACKAGE_STATE_CHANGE:I = 0xf

.field static final REASON_PACKAGE_UPDATED:I = 0x10

.field static final REASON_PERMISSION_CHANGE:I = 0x8

.field static final REASON_SIGNALED:I = 0x2

.field static final REASON_UNKNOWN:I = 0x0

.field static final REASON_USER_REQUESTED:I = 0xa

.field static final REASON_USER_STOPPED:I = 0xb


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abnormal(Lcom/gmodvr/flat/ExitReasons$Record;Ljava/lang/String;Z)Z
    .registers 7

    .line 81
    iget-object v0, p0, Lcom/gmodvr/flat/ExitReasons$Record;->processName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/gmodvr/flat/ExitReasons;->isGameProcess(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/gmodvr/flat/ExitReasons$Record;->processName:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/gmodvr/flat/ExitReasons;->isLauncherProcess(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez v0, :cond_12

    if-nez p1, :cond_12

    return v1

    .line 84
    :cond_12
    iget p1, p0, Lcom/gmodvr/flat/ExitReasons$Record;->reason:I

    const/4 v2, 0x1

    if-eqz p1, :cond_2f

    const/16 v3, 0x9

    if-eq p1, v3, :cond_2e

    const/16 v3, 0xc

    if-eq p1, v3, :cond_2e

    const/16 v3, 0xd

    if-eq p1, v3, :cond_2f

    packed-switch p1, :pswitch_data_38

    return v1

    :pswitch_27
    return v2

    :pswitch_28
    if-eqz v0, :cond_2d

    if-nez p2, :cond_2d

    move v1, v2

    :cond_2d
    return v1

    :cond_2e
    :pswitch_2e
    return v0

    :cond_2f
    if-eqz v0, :cond_36

    .line 98
    iget p0, p0, Lcom/gmodvr/flat/ExitReasons$Record;->status:I

    if-eqz p0, :cond_36

    move v1, v2

    :cond_36
    return v1

    nop

    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_28
        :pswitch_2e
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method

.method public static cleanExit(Lcom/gmodvr/flat/ExitReasons$Record;Ljava/util/Map;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gmodvr/flat/ExitReasons$Record;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 67
    iget v0, p0, Lcom/gmodvr/flat/ExitReasons$Record;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    const/4 v0, 0x0

    if-nez p1, :cond_10

    return v0

    .line 69
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/gmodvr/flat/ExitReasons$Record;->timestamp:J

    const-wide/32 v5, 0x1d4c0

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide p0, p0, Lcom/gmodvr/flat/ExitReasons$Record;->timestamp:J

    const-wide/16 v3, 0x2710

    add-long/2addr p0, v3

    cmp-long p0, v1, p0

    if-gtz p0, :cond_2c

    const/4 v0, 0x1

    :cond_2c
    return v0
.end method

.method public static format(Lcom/gmodvr/flat/ExitReasons$Record;)Ljava/lang/String;
    .registers 7

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    const-string v1, "reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gmodvr/flat/ExitReasons$Record;->reason:I

    invoke-static {v1}, Lcom/gmodvr/flat/ExitReasons;->reasonName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gmodvr/flat/ExitReasons$Record;->reason:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v3, "status: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/gmodvr/flat/ExitReasons$Record;->status:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    iget v3, p0, Lcom/gmodvr/flat/ExitReasons$Record;->reason:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_34

    const/4 v4, 0x5

    if-ne v3, v4, :cond_45

    :cond_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/gmodvr/flat/ExitReasons$Record;->status:I

    invoke-static {v3}, Lcom/gmodvr/flat/ExitReasons;->signalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_45
    const/16 v3, 0xa

    .line 168
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    const-string v4, "description: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/gmodvr/flat/ExitReasons$Record;->description:Ljava/lang/String;

    if-nez v4, :cond_55

    const-string v4, ""

    :cond_55
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    const-string v4, "importance: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/gmodvr/flat/ExitReasons$Record;->importance:I

    invoke-static {v4}, Lcom/gmodvr/flat/ExitReasons;->importanceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/gmodvr/flat/ExitReasons$Record;->importance:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v4, "pss: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/gmodvr/flat/ExitReasons$Record;->pssKb:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " KB, rss: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/gmodvr/flat/ExitReasons$Record;->rssKb:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " KB\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v4, "timestamp: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/gmodvr/flat/ExitReasons$Record;->timestamp:J

    invoke-static {v4, v5}, Lcom/gmodvr/flat/ExitReasons;->time(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/gmodvr/flat/ExitReasons$Record;->timestamp:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, "pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gmodvr/flat/ExitReasons$Record;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, "process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gmodvr/flat/ExitReasons$Record;->processName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static importanceName(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x64

    if-eq p0, v0, :cond_41

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_3e

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_3b

    const/16 v0, 0xe6

    if-eq p0, v0, :cond_38

    const/16 v0, 0x12c

    if-eq p0, v0, :cond_35

    const/16 v0, 0x145

    if-eq p0, v0, :cond_32

    const/16 v0, 0x15e

    if-eq p0, v0, :cond_2f

    const/16 v0, 0x190

    if-eq p0, v0, :cond_2c

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_29

    .line 154
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 153
    :cond_29
    const-string p0, "GONE"

    return-object p0

    .line 152
    :cond_2c
    const-string p0, "CACHED"

    return-object p0

    .line 151
    :cond_2f
    const-string p0, "CANT_SAVE_STATE"

    return-object p0

    .line 150
    :cond_32
    const-string p0, "TOP_SLEEPING"

    return-object p0

    .line 149
    :cond_35
    const-string p0, "SERVICE"

    return-object p0

    .line 148
    :cond_38
    const-string p0, "PERCEPTIBLE"

    return-object p0

    .line 147
    :cond_3b
    const-string p0, "VISIBLE"

    return-object p0

    .line 146
    :cond_3e
    const-string p0, "FOREGROUND_SERVICE"

    return-object p0

    .line 145
    :cond_41
    const-string p0, "FOREGROUND"

    return-object p0
.end method

.method public static isGameProcess(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_1b

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":game"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public static isLauncherProcess(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_a

    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static reasonName(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_48

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REASON_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 122
    :pswitch_15
    const-string p0, "PACKAGE_UPDATED"

    return-object p0

    .line 121
    :pswitch_18
    const-string p0, "PACKAGE_STATE_CHANGE"

    return-object p0

    .line 120
    :pswitch_1b
    const-string p0, "FREEZER"

    return-object p0

    .line 119
    :pswitch_1e
    const-string p0, "OTHER"

    return-object p0

    .line 118
    :pswitch_21
    const-string p0, "DEPENDENCY_DIED"

    return-object p0

    .line 117
    :pswitch_24
    const-string p0, "USER_STOPPED"

    return-object p0

    .line 116
    :pswitch_27
    const-string p0, "USER_REQUESTED"

    return-object p0

    .line 115
    :pswitch_2a
    const-string p0, "EXCESSIVE_RESOURCE_USAGE"

    return-object p0

    .line 114
    :pswitch_2d
    const-string p0, "PERMISSION_CHANGE"

    return-object p0

    .line 113
    :pswitch_30
    const-string p0, "INITIALIZATION_FAILURE"

    return-object p0

    .line 112
    :pswitch_33
    const-string p0, "ANR"

    return-object p0

    .line 111
    :pswitch_36
    const-string p0, "CRASH_NATIVE"

    return-object p0

    .line 110
    :pswitch_39
    const-string p0, "CRASH"

    return-object p0

    .line 109
    :pswitch_3c
    const-string p0, "LOW_MEMORY"

    return-object p0

    .line 108
    :pswitch_3f
    const-string p0, "SIGNALED"

    return-object p0

    .line 107
    :pswitch_42
    const-string p0, "EXIT_SELF"

    return-object p0

    .line 106
    :pswitch_45
    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method public static signalName(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_34

    .line 139
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "signal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 138
    :pswitch_15
    const-string p0, "SIGTERM"

    return-object p0

    .line 137
    :pswitch_18
    const-string p0, "SIGPIPE"

    return-object p0

    .line 136
    :pswitch_1b
    const-string p0, "SIGSEGV"

    return-object p0

    .line 135
    :pswitch_1e
    const-string p0, "SIGKILL"

    return-object p0

    .line 134
    :pswitch_21
    const-string p0, "SIGFPE"

    return-object p0

    .line 133
    :pswitch_24
    const-string p0, "SIGBUS"

    return-object p0

    .line 132
    :pswitch_27
    const-string p0, "SIGABRT"

    return-object p0

    .line 131
    :pswitch_2a
    const-string p0, "SIGTRAP"

    return-object p0

    .line 130
    :pswitch_2d
    const-string p0, "SIGILL"

    return-object p0

    .line 129
    :pswitch_30
    const-string p0, "SIGQUIT"

    return-object p0

    nop

    :pswitch_data_34
    .packed-switch 0x3
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_3
        :pswitch_1b
        :pswitch_3
        :pswitch_18
        :pswitch_3
        :pswitch_15
    .end packed-switch
.end method

.method public static time(J)Ljava/lang/String;
    .registers 5

    .line 159
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS Z"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.ExitReasons.Record (com.gmodvr.flat.ExitReasons$Record)
.class final Lcom/gmodvr/flat/ExitReasons$Record;
.super Ljava/lang/Object;
.source "ExitReasons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/ExitReasons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Record"
.end annotation


# instance fields
.field final description:Ljava/lang/String;

.field final importance:I

.field final pid:I

.field final processName:Ljava/lang/String;

.field final pssKb:J

.field final reason:I

.field final rssKb:J

.field final status:I

.field final timestamp:J


# direct methods
.method public constructor <init>(JILjava/lang/String;IIIJJLjava/lang/String;)V
    .registers 13

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/gmodvr/flat/ExitReasons$Record;->timestamp:J

    .line 44
    iput p3, p0, Lcom/gmodvr/flat/ExitReasons$Record;->pid:I

    .line 45
    iput-object p4, p0, Lcom/gmodvr/flat/ExitReasons$Record;->processName:Ljava/lang/String;

    .line 46
    iput p5, p0, Lcom/gmodvr/flat/ExitReasons$Record;->reason:I

    .line 47
    iput p6, p0, Lcom/gmodvr/flat/ExitReasons$Record;->status:I

    .line 48
    iput p7, p0, Lcom/gmodvr/flat/ExitReasons$Record;->importance:I

    .line 49
    iput-wide p8, p0, Lcom/gmodvr/flat/ExitReasons$Record;->pssKb:J

    .line 50
    iput-wide p10, p0, Lcom/gmodvr/flat/ExitReasons$Record;->rssKb:J

    .line 51
    iput-object p12, p0, Lcom/gmodvr/flat/ExitReasons$Record;->description:Ljava/lang/String;

    return-void
.end method
