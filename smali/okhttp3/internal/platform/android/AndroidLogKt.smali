###### Class okhttp3.internal.platform.android.AndroidLogKt (okhttp3.internal.platform.android.AndroidLogKt)
.class public final Lokhttp3/internal/platform/android/AndroidLogKt;
.super Ljava/lang/Object;
.source "AndroidLog.kt"


# direct methods
.method public static final synthetic access$getAndroidLevel(Ljava/util/logging/LogRecord;)I
    .registers 1

    .line 1
    invoke-static {p0}, Lokhttp3/internal/platform/android/AndroidLogKt;->getAndroidLevel(Ljava/util/logging/LogRecord;)I

    move-result p0

    return p0
.end method

.method public static final getAndroidLevel(Ljava/util/logging/LogRecord;)I
    .registers 4

    .line 33
    invoke-virtual {p0}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    if-le v0, v2, :cond_12

    const/4 p0, 0x5

    goto :goto_23

    .line 34
    :cond_12
    invoke-virtual {p0}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/logging/Level;->intValue()I

    move-result p0

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    if-ne p0, v0, :cond_22

    const/4 p0, 0x4

    goto :goto_23

    :cond_22
    const/4 p0, 0x3

    :goto_23
    return p0
.end method
