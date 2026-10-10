###### Class io.ktor.client.plugins.api.ClientPluginInstance (io.ktor.client.plugins.api.ClientPluginInstance)
.class public final Lio/ktor/client/plugins/api/ClientPluginInstance;
.super Ljava/lang/Object;
.source "ClientPluginInstance.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PluginConfig:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClientPluginInstance.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClientPluginInstance.kt\nio/ktor/client/plugins/api/ClientPluginInstance\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,36:1\n1869#2,2:37\n*S KotlinDebug\n*F\n+ 1 ClientPluginInstance.kt\nio/ktor/client/plugins/api/ClientPluginInstance\n*L\n29#1:37,2\n*E\n"
.end annotation


# instance fields
.field public final body:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lio/ktor/client/plugins/api/ClientPluginBuilder<",
            "TPluginConfig;>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final config:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPluginConfig;"
        }
    .end annotation
.end field

.field public final key:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/client/plugins/api/ClientPluginInstance<",
            "TPluginConfig;>;>;"
        }
    .end annotation
.end field

.field public onClose:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$TN68LgbhJ18DxH3kUPgF1qvd9Xc()Lkotlin/Unit;
    .registers 1

    .line 0
    invoke-static {}, Lio/ktor/client/plugins/api/ClientPluginInstance;->onClose$lambda$0()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lio/ktor/util/AttributeKey;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/client/plugins/api/ClientPluginInstance<",
            "TPluginConfig;>;>;TPluginConfig;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/client/plugins/api/ClientPluginBuilder<",
            "TPluginConfig;>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lio/ktor/client/plugins/api/ClientPluginInstance;->key:Lio/ktor/util/AttributeKey;

    .line 19
    iput-object p2, p0, Lio/ktor/client/plugins/api/ClientPluginInstance;->config:Ljava/lang/Object;

    .line 20
    iput-object p3, p0, Lio/ktor/client/plugins/api/ClientPluginInstance;->body:Lkotlin/jvm/functions/Function1;

    .line 23
    new-instance p1, Lio/ktor/client/plugins/api/ClientPluginInstance$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lio/ktor/client/plugins/api/ClientPluginInstance$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lio/ktor/client/plugins/api/ClientPluginInstance;->onClose:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final onClose$lambda$0()Lkotlin/Unit;
    .registers 1

    .line 23
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 33
    iget-object p0, p0, Lio/ktor/client/plugins/api/ClientPluginInstance;->onClose:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final install(Lio/ktor/client/HttpClient;)V
    .registers 5

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lio/ktor/client/plugins/api/ClientPluginBuilder;

    iget-object v1, p0, Lio/ktor/client/plugins/api/ClientPluginInstance;->key:Lio/ktor/util/AttributeKey;

    iget-object v2, p0, Lio/ktor/client/plugins/api/ClientPluginInstance;->config:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, v2}, Lio/ktor/client/plugins/api/ClientPluginBuilder;-><init>(Lio/ktor/util/AttributeKey;Lio/ktor/client/HttpClient;Ljava/lang/Object;)V

    iget-object v1, p0, Lio/ktor/client/plugins/api/ClientPluginInstance;->body:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {v0}, Lio/ktor/client/plugins/api/ClientPluginBuilder;->getOnClose$ktor_client_core()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    iput-object v1, p0, Lio/ktor/client/plugins/api/ClientPluginInstance;->onClose:Lkotlin/jvm/functions/Function0;

    .line 29
    invoke-virtual {v0}, Lio/ktor/client/plugins/api/ClientPluginBuilder;->getHooks$ktor_client_core()Ljava/util/List;

    move-result-object p0

    .line 1869
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/client/plugins/api/HookHandler;

    .line 29
    invoke-virtual {v0, p1}, Lio/ktor/client/plugins/api/HookHandler;->install(Lio/ktor/client/HttpClient;)V

    goto :goto_21

    :cond_31
    return-void
.end method

###### Class io.ktor.client.plugins.api.ClientPluginInstance$$ExternalSyntheticLambda0 (io.ktor.client.plugins.api.ClientPluginInstance$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/client/plugins/api/ClientPluginInstance$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-static {}, Lio/ktor/client/plugins/api/ClientPluginInstance;->$r8$lambda$TN68LgbhJ18DxH3kUPgF1qvd9Xc()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
