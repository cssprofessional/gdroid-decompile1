###### Class io.ktor.client.engine.cio.CIO (io.ktor.client.engine.cio.CIO)
.class public final Lio/ktor/client/engine/cio/CIO;
.super Ljava/lang/Object;
.source "CIOCommon.kt"

# interfaces
.implements Lio/ktor/client/engine/HttpClientEngineFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/client/engine/HttpClientEngineFactory<",
        "Lio/ktor/client/engine/cio/CIOEngineConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/client/engine/cio/CIO;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/ktor/client/engine/cio/CIO;

    invoke-direct {v0}, Lio/ktor/client/engine/cio/CIO;-><init>()V

    sput-object v0, Lio/ktor/client/engine/cio/CIO;->INSTANCE:Lio/ktor/client/engine/cio/CIO;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/engine/HttpClientEngine;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/client/engine/cio/CIOEngineConfig;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/client/engine/HttpClientEngine;"
        }
    .end annotation

    const-string p0, "block"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance p0, Lio/ktor/client/engine/cio/CIOEngine;

    new-instance v0, Lio/ktor/client/engine/cio/CIOEngineConfig;

    invoke-direct {v0}, Lio/ktor/client/engine/cio/CIOEngineConfig;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/ktor/client/engine/cio/CIOEngine;-><init>(Lio/ktor/client/engine/cio/CIOEngineConfig;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of p0, p1, Lio/ktor/client/engine/cio/CIO;

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    return v0
.end method

.method public hashCode()I
    .registers 1

    .line 0
    const p0, 0x665c8941

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 0
    const-string p0, "CIO"

    return-object p0
.end method
