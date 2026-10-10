###### Class com.gmodvr.flat.UpdateInstallReceiver (com.gmodvr.flat.UpdateInstallReceiver)
.class public final Lcom/gmodvr/flat/UpdateInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateInstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 10
    invoke-static {p1}, Lcom/gmodvr/flat/UpdateManager;->get(Landroid/content/Context;)Lcom/gmodvr/flat/UpdateManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/gmodvr/flat/UpdateManager;->installResult(Landroid/content/Intent;)V

    return-void
.end method
