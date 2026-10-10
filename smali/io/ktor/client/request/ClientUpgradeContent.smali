###### Class io.ktor.client.request.ClientUpgradeContent (io.ktor.client.request.ClientUpgradeContent)
.class public abstract Lio/ktor/client/request/ClientUpgradeContent;
.super Lio/ktor/http/content/OutgoingContent$NoContent;
.source "ClientUpgradeContent.kt"


# instance fields
.field public final content$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$V1_kykRHVK70sgc2C_khxQSrvQ8()Lio/ktor/utils/io/ByteChannel;
    .registers 1

    .line 0
    invoke-static {}, Lio/ktor/client/request/ClientUpgradeContent;->content_delegate$lambda$0()Lio/ktor/utils/io/ByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Lio/ktor/http/content/OutgoingContent$NoContent;-><init>()V

    .line 14
    new-instance v0, Lio/ktor/client/request/ClientUpgradeContent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/ktor/client/request/ClientUpgradeContent$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/request/ClientUpgradeContent;->content$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final content_delegate$lambda$0()Lio/ktor/utils/io/ByteChannel;
    .registers 4

    .line 14
    new-instance v0, Lio/ktor/utils/io/ByteChannel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/utils/io/ByteChannel;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

###### Class io.ktor.client.request.ClientUpgradeContent$$ExternalSyntheticLambda0 (io.ktor.client.request.ClientUpgradeContent$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/client/request/ClientUpgradeContent$$ExternalSyntheticLambda0;
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
    invoke-static {}, Lio/ktor/client/request/ClientUpgradeContent;->$r8$lambda$V1_kykRHVK70sgc2C_khxQSrvQ8()Lio/ktor/utils/io/ByteChannel;

    move-result-object p0

    return-object p0
.end method
