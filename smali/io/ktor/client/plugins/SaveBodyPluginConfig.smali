###### Class io.ktor.client.plugins.SaveBodyPluginConfig (io.ktor.client.plugins.SaveBodyPluginConfig)
.class public final Lio/ktor/client/plugins/SaveBodyPluginConfig;
.super Ljava/lang/Object;
.source "SaveBody.kt"


# instance fields
.field public disabled:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDisabled()Z
    .registers 1

    .line 74
    iget-boolean p0, p0, Lio/ktor/client/plugins/SaveBodyPluginConfig;->disabled:Z

    return p0
.end method
