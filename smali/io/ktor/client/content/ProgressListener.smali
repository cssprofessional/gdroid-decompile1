###### Class io.ktor.client.content.ProgressListener (io.ktor.client.content.ProgressListener)
.class public interface abstract Lio/ktor/client/content/ProgressListener;
.super Ljava/lang/Object;
.source "ObservableContent.kt"


# virtual methods
.method public abstract onProgress(JLjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
