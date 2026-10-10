###### Class io.ktor.client.plugins.BodyProgressKt (io.ktor.client.plugins.BodyProgressKt)
.class public final Lio/ktor/client/plugins/BodyProgressKt;
.super Ljava/lang/Object;
.source "BodyProgress.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBodyProgress.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BodyProgress.kt\nio/ktor/client/plugins/BodyProgressKt\n+ 2 Attributes.kt\nio/ktor/util/AttributesKt\n+ 3 Type.kt\nio/ktor/util/reflect/TypeKt\n*L\n1#1,101:1\n21#2:102\n21#2:112\n69#3:103\n84#3,8:104\n69#3:113\n84#3,8:114\n*S KotlinDebug\n*F\n+ 1 BodyProgress.kt\nio/ktor/client/plugins/BodyProgressKt\n*L\n21#1:102\n24#1:112\n21#1:103\n21#1:104,8\n24#1:113\n24#1:114,8\n*E\n"
.end annotation


# static fields
.field public static final BodyProgress:Lio/ktor/client/plugins/api/ClientPlugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/client/plugins/api/ClientPlugin<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public static final DownloadProgressListenerAttributeKey:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/client/content/ProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field public static final UploadProgressListenerAttributeKey:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/client/content/ProgressListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$e8pXuMq_fdrM0l4z_TFdjeGYKPI(Lio/ktor/client/plugins/api/ClientPluginBuilder;)Lkotlin/Unit;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/ktor/client/plugins/BodyProgressKt;->BodyProgress$lambda$0(Lio/ktor/client/plugins/api/ClientPluginBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rfFhqt_zu3sltVrTkgtU-rlqJI8(Lio/ktor/client/content/ProgressListener;Lio/ktor/client/statement/HttpResponse;)Lio/ktor/utils/io/ByteReadChannel;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/client/plugins/BodyProgressKt;->withObservableDownload$lambda$0(Lio/ktor/client/content/ProgressListener;Lio/ktor/client/statement/HttpResponse;)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 69
    const-class v0, Lio/ktor/client/content/ProgressListener;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x0

    .line 88
    :try_start_7
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v3
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_c

    goto :goto_d

    :catchall_c
    move-object v3, v2

    .line 69
    :goto_d
    new-instance v4, Lio/ktor/util/reflect/TypeInfo;

    invoke-direct {v4, v1, v3}, Lio/ktor/util/reflect/TypeInfo;-><init>(Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)V

    .line 21
    new-instance v1, Lio/ktor/util/AttributeKey;

    const-string v3, "UploadProgressListenerAttributeKey"

    invoke-direct {v1, v3, v4}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;Lio/ktor/util/reflect/TypeInfo;)V

    .line 21
    sput-object v1, Lio/ktor/client/plugins/BodyProgressKt;->UploadProgressListenerAttributeKey:Lio/ktor/util/AttributeKey;

    .line 69
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 88
    :try_start_1f
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v2
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    .line 69
    :catchall_23
    new-instance v0, Lio/ktor/util/reflect/TypeInfo;

    invoke-direct {v0, v1, v2}, Lio/ktor/util/reflect/TypeInfo;-><init>(Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)V

    .line 21
    new-instance v1, Lio/ktor/util/AttributeKey;

    const-string v2, "DownloadProgressListenerAttributeKey"

    invoke-direct {v1, v2, v0}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;Lio/ktor/util/reflect/TypeInfo;)V

    .line 24
    sput-object v1, Lio/ktor/client/plugins/BodyProgressKt;->DownloadProgressListenerAttributeKey:Lio/ktor/util/AttributeKey;

    .line 31
    new-instance v0, Lio/ktor/client/plugins/BodyProgressKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/ktor/client/plugins/BodyProgressKt$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "BodyProgress"

    invoke-static {v1, v0}, Lio/ktor/client/plugins/api/CreatePluginUtilsKt;->createClientPlugin(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/client/plugins/api/ClientPlugin;

    move-result-object v0

    sput-object v0, Lio/ktor/client/plugins/BodyProgressKt;->BodyProgress:Lio/ktor/client/plugins/api/ClientPlugin;

    return-void
.end method

.method public static final BodyProgress$lambda$0(Lio/ktor/client/plugins/api/ClientPluginBuilder;)Lkotlin/Unit;
    .registers 4

    const-string v0, "$this$createClientPlugin"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lio/ktor/client/plugins/AfterRenderHook;->INSTANCE:Lio/ktor/client/plugins/AfterRenderHook;

    new-instance v1, Lio/ktor/client/plugins/BodyProgressKt$BodyProgress$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/ktor/client/plugins/BodyProgressKt$BodyProgress$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lio/ktor/client/plugins/api/ClientPluginBuilder;->on(Lio/ktor/client/plugins/api/ClientHook;Ljava/lang/Object;)V

    .line 40
    sget-object v0, Lio/ktor/client/plugins/AfterReceiveHook;->INSTANCE:Lio/ktor/client/plugins/AfterReceiveHook;

    new-instance v1, Lio/ktor/client/plugins/BodyProgressKt$BodyProgress$1$2;

    invoke-direct {v1, v2}, Lio/ktor/client/plugins/BodyProgressKt$BodyProgress$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lio/ktor/client/plugins/api/ClientPluginBuilder;->on(Lio/ktor/client/plugins/api/ClientHook;Ljava/lang/Object;)V

    .line 45
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$getDownloadProgressListenerAttributeKey$p()Lio/ktor/util/AttributeKey;
    .registers 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/BodyProgressKt;->DownloadProgressListenerAttributeKey:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public static final synthetic access$getUploadProgressListenerAttributeKey$p()Lio/ktor/util/AttributeKey;
    .registers 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/BodyProgressKt;->UploadProgressListenerAttributeKey:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public static final getBodyProgress()Lio/ktor/client/plugins/api/ClientPlugin;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/client/plugins/api/ClientPlugin<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 31
    sget-object v0, Lio/ktor/client/plugins/BodyProgressKt;->BodyProgress:Lio/ktor/client/plugins/api/ClientPlugin;

    return-object v0
.end method

.method public static final withObservableDownload(Lio/ktor/client/statement/HttpResponse;Lio/ktor/client/content/ProgressListener;)Lio/ktor/client/statement/HttpResponse;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lio/ktor/client/statement/HttpResponse;->getCall()Lio/ktor/client/call/HttpClientCall;

    move-result-object p0

    new-instance v0, Lio/ktor/client/plugins/BodyProgressKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lio/ktor/client/plugins/BodyProgressKt$$ExternalSyntheticLambda1;-><init>(Lio/ktor/client/content/ProgressListener;)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, v1}, Lio/ktor/client/call/DelegatedCallKt;->replaceResponse$default(Lio/ktor/client/call/HttpClientCall;Lio/ktor/http/Headers;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/client/call/HttpClientCall;

    move-result-object p0

    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static final withObservableDownload$lambda$0(Lio/ktor/client/content/ProgressListener;Lio/ktor/client/statement/HttpResponse;)Lio/ktor/utils/io/ByteReadChannel;
    .registers 4

    const-string v0, "$this$replaceResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lio/ktor/client/statement/HttpResponse;->getRawContent()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v0

    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {p1}, Lio/ktor/http/HttpMessagePropertiesKt;->contentLength(Lio/ktor/http/HttpMessage;)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, v1, p1, p0}, Lio/ktor/client/utils/ByteChannelUtilsKt;->observable(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Long;Lio/ktor/client/content/ProgressListener;)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.client.plugins.BodyProgressKt$$ExternalSyntheticLambda0 (io.ktor.client.plugins.BodyProgressKt$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/client/plugins/BodyProgressKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lio/ktor/client/plugins/api/ClientPluginBuilder;

    invoke-static {p1}, Lio/ktor/client/plugins/BodyProgressKt;->$r8$lambda$e8pXuMq_fdrM0l4z_TFdjeGYKPI(Lio/ktor/client/plugins/api/ClientPluginBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.client.plugins.BodyProgressKt$$ExternalSyntheticLambda1 (io.ktor.client.plugins.BodyProgressKt$$ExternalSyntheticLambda1)
.class public final synthetic Lio/ktor/client/plugins/BodyProgressKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/ktor/client/content/ProgressListener;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/client/content/ProgressListener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/plugins/BodyProgressKt$$ExternalSyntheticLambda1;->f$0:Lio/ktor/client/content/ProgressListener;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lio/ktor/client/plugins/BodyProgressKt$$ExternalSyntheticLambda1;->f$0:Lio/ktor/client/content/ProgressListener;

    check-cast p1, Lio/ktor/client/statement/HttpResponse;

    invoke-static {p0, p1}, Lio/ktor/client/plugins/BodyProgressKt;->$r8$lambda$rfFhqt_zu3sltVrTkgtU-rlqJI8(Lio/ktor/client/content/ProgressListener;Lio/ktor/client/statement/HttpResponse;)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p0

    return-object p0
.end method
