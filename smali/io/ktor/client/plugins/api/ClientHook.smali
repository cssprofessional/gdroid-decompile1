###### Class io.ktor.client.plugins.api.ClientHook (io.ktor.client.plugins.api.ClientHook)
.class public interface abstract Lio/ktor/client/plugins/api/ClientHook;
.super Ljava/lang/Object;
.source "ClientHook.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<HookHandler:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract install(Lio/ktor/client/HttpClient;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/HttpClient;",
            "THookHandler;)V"
        }
    .end annotation
.end method
