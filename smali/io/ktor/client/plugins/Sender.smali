###### Class io.ktor.client.plugins.Sender (io.ktor.client.plugins.Sender)
.class public interface abstract Lio/ktor/client/plugins/Sender;
.super Ljava/lang/Object;
.source "HttpSend.kt"


# virtual methods
.method public abstract execute(Lio/ktor/client/request/HttpRequestBuilder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/call/HttpClientCall;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
