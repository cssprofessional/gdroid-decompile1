###### Class io.ktor.network.selector.SelectorManagerSupportKt (io.ktor.network.selector.SelectorManagerSupportKt)
.class public final Lio/ktor/network/selector/SelectorManagerSupportKt;
.super Ljava/lang/Object;
.source "SelectorManagerSupport.kt"


# direct methods
.method public static final synthetic access$selectableIsClosed()Ljava/lang/Void;
    .registers 1

    .line 1
    invoke-static {}, Lio/ktor/network/selector/SelectorManagerSupportKt;->selectableIsClosed()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$selectableIsInvalid(II)Ljava/lang/Void;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lio/ktor/network/selector/SelectorManagerSupportKt;->selectableIsInvalid(II)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static final selectableIsClosed()Ljava/lang/Void;
    .registers 2

    .line 181
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Selectable is already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final selectableIsInvalid(II)Ljava/lang/Void;
    .registers 5

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selectable is invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
