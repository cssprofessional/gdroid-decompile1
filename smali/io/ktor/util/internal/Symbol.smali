###### Class io.ktor.util.internal.Symbol (io.ktor.util.internal.Symbol)
.class public final Lio/ktor/util/internal/Symbol;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# instance fields
.field public final symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "symbol"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/util/internal/Symbol;->symbol:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 59
    iget-object p0, p0, Lio/ktor/util/internal/Symbol;->symbol:Ljava/lang/String;

    return-object p0
.end method
