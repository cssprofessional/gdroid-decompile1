###### Class in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager$sam$i$in_dragonbra_javasteam_util_compat_Consumer$0 (in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackManager$sam$i$in_dragonbra_javasteam_util_compat_Consumer$0)
.class public final synthetic Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$sam$i$in_dragonbra_javasteam_util_compat_Consumer$0;
.super Ljava/lang/Object;
.source "CallbackManager.kt"

# interfaces
.implements Lin/dragonbra/javasteam/util/compat/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final synthetic function:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 3

    .line 0
    const-string v0, "function"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$sam$i$in_dragonbra_javasteam_util_compat_Consumer$0;->function:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager$sam$i$in_dragonbra_javasteam_util_compat_Consumer$0;->function:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
