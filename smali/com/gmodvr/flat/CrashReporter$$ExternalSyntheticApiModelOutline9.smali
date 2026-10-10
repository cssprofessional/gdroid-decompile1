###### Class com.gmodvr.flat.CrashReporter$$ExternalSyntheticApiModelOutline9 (com.gmodvr.flat.CrashReporter$$ExternalSyntheticApiModelOutline9)
.class public final synthetic Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticApiModelOutline9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/app/ApplicationExitInfo;)Ljava/io/InputStream;
    .registers 1

    .line 0
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
