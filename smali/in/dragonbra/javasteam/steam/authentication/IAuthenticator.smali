###### Class in.dragonbra.javasteam.steam.authentication.IAuthenticator (in.dragonbra.javasteam.steam.authentication.IAuthenticator)
.class public interface abstract Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;
.super Ljava/lang/Object;
.source "IAuthenticator.kt"


# virtual methods
.method public abstract acceptDeviceConfirmation()Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceCode(Z)Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEmailCode(Ljava/lang/String;Z)Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
