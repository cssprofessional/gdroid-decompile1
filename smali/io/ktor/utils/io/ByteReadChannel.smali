###### Class io.ktor.utils.io.ByteReadChannel (io.ktor.utils.io.ByteReadChannel)
.class public interface abstract Lio/ktor/utils/io/ByteReadChannel;
.super Ljava/lang/Object;
.source "ByteReadChannel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/ByteReadChannel$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/utils/io/ByteReadChannel$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    sget-object v0, Lio/ktor/utils/io/ByteReadChannel$Companion;->$$INSTANCE:Lio/ktor/utils/io/ByteReadChannel$Companion;

    sput-object v0, Lio/ktor/utils/io/ByteReadChannel;->Companion:Lio/ktor/utils/io/ByteReadChannel$Companion;

    return-void
.end method

.method public static synthetic awaitContent$default(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    if-nez p4, :cond_c

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_7

    move p1, p4

    .line 35
    :cond_7
    invoke-interface {p0, p1, p2}, Lio/ktor/utils/io/ByteReadChannel;->awaitContent(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: awaitContent"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract awaitContent(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract cancel(Ljava/lang/Throwable;)V
.end method

.method public abstract getClosedCause()Ljava/lang/Throwable;
.end method

.method public abstract getReadBuffer()Lkotlinx/io/Source;
.end method

.method public abstract isClosedForRead()Z
.end method

###### Class io.ktor.utils.io.ByteReadChannel.Companion (io.ktor.utils.io.ByteReadChannel$Companion)
.class public final Lio/ktor/utils/io/ByteReadChannel$Companion;
.super Ljava/lang/Object;
.source "ByteReadChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/ByteReadChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lio/ktor/utils/io/ByteReadChannel$Companion;

.field public static final Empty:Lio/ktor/utils/io/ByteReadChannel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/ktor/utils/io/ByteReadChannel$Companion;

    invoke-direct {v0}, Lio/ktor/utils/io/ByteReadChannel$Companion;-><init>()V

    sput-object v0, Lio/ktor/utils/io/ByteReadChannel$Companion;->$$INSTANCE:Lio/ktor/utils/io/ByteReadChannel$Companion;

    .line 40
    new-instance v0, Lio/ktor/utils/io/ByteReadChannel$Companion$Empty$1;

    invoke-direct {v0}, Lio/ktor/utils/io/ByteReadChannel$Companion$Empty$1;-><init>()V

    sput-object v0, Lio/ktor/utils/io/ByteReadChannel$Companion;->Empty:Lio/ktor/utils/io/ByteReadChannel;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEmpty()Lio/ktor/utils/io/ByteReadChannel;
    .registers 1

    .line 40
    sget-object p0, Lio/ktor/utils/io/ByteReadChannel$Companion;->Empty:Lio/ktor/utils/io/ByteReadChannel;

    return-object p0
.end method

###### Class io.ktor.utils.io.ByteReadChannel$Companion$Empty$1 (io.ktor.utils.io.ByteReadChannel$Companion$Empty$1)
.class public final Lio/ktor/utils/io/ByteReadChannel$Companion$Empty$1;
.super Ljava/lang/Object;
.source "ByteReadChannel.kt"

# interfaces
.implements Lio/ktor/utils/io/ByteReadChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/ByteReadChannel$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final closedCause:Ljava/lang/Throwable;

.field public final readBuffer:Lkotlinx/io/Source;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lkotlinx/io/Buffer;

    invoke-direct {v0}, Lkotlinx/io/Buffer;-><init>()V

    iput-object v0, p0, Lio/ktor/utils/io/ByteReadChannel$Companion$Empty$1;->readBuffer:Lkotlinx/io/Source;

    return-void
.end method


# virtual methods
.method public awaitContent(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p0, 0x0

    .line 49
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public cancel(Ljava/lang/Throwable;)V
    .registers 2

    .line 0
    return-void
.end method

.method public getClosedCause()Ljava/lang/Throwable;
    .registers 1

    .line 41
    iget-object p0, p0, Lio/ktor/utils/io/ByteReadChannel$Companion$Empty$1;->closedCause:Ljava/lang/Throwable;

    return-object p0
.end method

.method public getReadBuffer()Lkotlinx/io/Source;
    .registers 1

    .line 47
    iget-object p0, p0, Lio/ktor/utils/io/ByteReadChannel$Companion$Empty$1;->readBuffer:Lkotlinx/io/Source;

    return-object p0
.end method

.method public isClosedForRead()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method
