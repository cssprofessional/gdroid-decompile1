###### Class com.gmodvr.flat.CrashReporter$$ExternalSyntheticApiModelOutline11 (com.gmodvr.flat.CrashReporter$$ExternalSyntheticApiModelOutline11)
.class public final synthetic Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticApiModelOutline11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/app/ActivityManager;Ljava/lang/String;II)Ljava/util/List;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
