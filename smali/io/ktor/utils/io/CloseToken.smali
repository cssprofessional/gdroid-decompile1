###### Class io.ktor.utils.io.CloseToken (io.ktor.utils.io.CloseToken)
.class public final Lio/ktor/utils/io/CloseToken;
.super Ljava/lang/Object;
.source "CloseToken.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCloseToken.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloseToken.kt\nio/ktor/utils/io/CloseToken\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,28:1\n1#2:29\n*E\n"
.end annotation


# instance fields
.field public final origin:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/ktor/utils/io/CloseToken;->origin:Ljava/lang/Throwable;

    return-void
.end method

.method public static synthetic wrapCause$default(Lio/ktor/utils/io/CloseToken;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Throwable;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 16
    sget-object p1, Lio/ktor/utils/io/CloseToken$wrapCause$1;->INSTANCE:Lio/ktor/utils/io/CloseToken$wrapCause$1;

    :cond_6
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/CloseToken;->wrapCause(Lkotlin/jvm/functions/Function1;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final throwOrNull(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 26
    const-string v0, "wrap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/CloseToken;->wrapCause(Lkotlin/jvm/functions/Function1;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    throw p0
.end method

.method public final wrapCause(Lkotlin/jvm/functions/Function1;)Ljava/lang/Throwable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    const-string v0, "wrap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lio/ktor/utils/io/CloseToken;->origin:Ljava/lang/Throwable;

    if-nez v0, :cond_b

    const/4 p0, 0x0

    goto :goto_2d

    .line 19
    :cond_b
    instance-of v1, v0, Lkotlinx/coroutines/CopyableThrowable;

    if-eqz v1, :cond_16

    check-cast v0, Lkotlinx/coroutines/CopyableThrowable;

    invoke-interface {v0}, Lkotlinx/coroutines/CopyableThrowable;->createCopy()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_2d

    .line 20
    :cond_16
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_27

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lio/ktor/utils/io/CloseToken;->origin:Ljava/lang/Throwable;

    invoke-static {p1, p0}, Lkotlinx/coroutines/ExceptionsKt;->CancellationException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    goto :goto_2d

    .line 21
    :cond_27
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    :goto_2d
    return-object p0
.end method

###### Class io.ktor.utils.io.CloseToken.AnonymousClass1 (io.ktor.utils.io.CloseToken$wrapCause$1)
.class public final synthetic Lio/ktor/utils/io/CloseToken$wrapCause$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "CloseToken.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/CloseToken;->wrapCause$default(Lio/ktor/utils/io/CloseToken;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Throwable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lio/ktor/utils/io/ClosedByteChannelException;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/utils/io/CloseToken$wrapCause$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/ktor/utils/io/CloseToken$wrapCause$1;

    invoke-direct {v0}, Lio/ktor/utils/io/CloseToken$wrapCause$1;-><init>()V

    sput-object v0, Lio/ktor/utils/io/CloseToken$wrapCause$1;->INSTANCE:Lio/ktor/utils/io/CloseToken$wrapCause$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 0
    const-string v4, "<init>(Ljava/lang/Throwable;)V"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-class v2, Lio/ktor/utils/io/ClosedByteChannelException;

    const-string v3, "<init>"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Throwable;)Lio/ktor/utils/io/ClosedByteChannelException;
    .registers 2

    .line 16
    new-instance p0, Lio/ktor/utils/io/ClosedByteChannelException;

    invoke-direct {p0, p1}, Lio/ktor/utils/io/ClosedByteChannelException;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 16
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/CloseToken$wrapCause$1;->invoke(Ljava/lang/Throwable;)Lio/ktor/utils/io/ClosedByteChannelException;

    move-result-object p0

    return-object p0
.end method
