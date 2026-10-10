###### Class com.gmodvr.flat.CrashReporter$$ExternalSyntheticApiModelOutline2 (com.gmodvr.flat.CrashReporter$$ExternalSyntheticApiModelOutline2)
.class public final synthetic Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticApiModelOutline2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
