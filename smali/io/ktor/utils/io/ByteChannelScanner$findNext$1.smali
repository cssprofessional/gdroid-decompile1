###### Class io.ktor.utils.io.ByteChannelScanner$findNext$1 (io.ktor.utils.io.ByteChannelScanner$findNext$1)
.class public final Lio/ktor/utils/io/ByteChannelScanner$findNext$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ByteChannelScanner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/ByteChannelScanner;->findNext$ktor_io(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.utils.io.ByteChannelScanner"
    f = "ByteChannelScanner.kt"
    l = {
        0x35,
        0x37,
        0x3a,
        0x46
    }
    m = "findNext$ktor_io"
    v = 0x1
.end annotation


# instance fields
.field public Z$0:Z

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/ktor/utils/io/ByteChannelScanner;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/ByteChannelScanner;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelScanner;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/ByteChannelScanner$findNext$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;->this$0:Lio/ktor/utils/io/ByteChannelScanner;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;->label:I

    iget-object p1, p0, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;->this$0:Lio/ktor/utils/io/ByteChannelScanner;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lio/ktor/utils/io/ByteChannelScanner;->findNext$ktor_io(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
