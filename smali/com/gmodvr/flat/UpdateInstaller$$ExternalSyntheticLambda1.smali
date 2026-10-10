###### Class com.gmodvr.flat.UpdateInstaller$$ExternalSyntheticLambda1 (com.gmodvr.flat.UpdateInstaller$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/UpdateInstaller$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/UpdateDownload$Cancellation;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/UpdateManager;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/UpdateManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/UpdateInstaller$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/UpdateManager;

    return-void
.end method


# virtual methods
.method public final canceled()Z
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/UpdateInstaller$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {p0}, Lcom/gmodvr/flat/UpdateManager;->isCanceled()Z

    move-result p0

    return p0
.end method
