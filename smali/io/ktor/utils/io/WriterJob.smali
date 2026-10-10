###### Class io.ktor.utils.io.WriterJob (io.ktor.utils.io.WriterJob)
.class public final Lio/ktor/utils/io/WriterJob;
.super Ljava/lang/Object;
.source "ByteWriteChannelOperations.kt"

# interfaces
.implements Lio/ktor/utils/io/ChannelJob;


# instance fields
.field public final channel:Lio/ktor/utils/io/ByteReadChannel;

.field public final job:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/coroutines/Job;)V
    .registers 4

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "job"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lio/ktor/utils/io/WriterJob;->channel:Lio/ktor/utils/io/ByteReadChannel;

    .line 166
    iput-object p2, p0, Lio/ktor/utils/io/WriterJob;->job:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final getChannel()Lio/ktor/utils/io/ByteReadChannel;
    .registers 1

    .line 165
    iget-object p0, p0, Lio/ktor/utils/io/WriterJob;->channel:Lio/ktor/utils/io/ByteReadChannel;

    return-object p0
.end method

.method public getJob()Lkotlinx/coroutines/Job;
    .registers 1

    .line 166
    iget-object p0, p0, Lio/ktor/utils/io/WriterJob;->job:Lkotlinx/coroutines/Job;

    return-object p0
.end method
