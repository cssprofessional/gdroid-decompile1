###### Class io.ktor.http.cio.internals.CharArrayPoolKt (io.ktor.http.cio.internals.CharArrayPoolKt)
.class public final Lio/ktor/http/cio/internals/CharArrayPoolKt;
.super Ljava/lang/Object;
.source "CharArrayPool.kt"


# static fields
.field public static final CharArrayPool:Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    invoke-static {}, Lio/ktor/http/cio/internals/CharArrayPoolJvmKt;->isPoolingDisabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 19
    new-instance v0, Lio/ktor/http/cio/internals/CharArrayPoolKt$CharArrayPool$1;

    invoke-direct {v0}, Lio/ktor/http/cio/internals/CharArrayPoolKt$CharArrayPool$1;-><init>()V

    goto :goto_11

    .line 25
    :cond_c
    new-instance v0, Lio/ktor/http/cio/internals/CharArrayPoolKt$CharArrayPool$2;

    invoke-direct {v0}, Lio/ktor/http/cio/internals/CharArrayPoolKt$CharArrayPool$2;-><init>()V

    .line 18
    :goto_11
    sput-object v0, Lio/ktor/http/cio/internals/CharArrayPoolKt;->CharArrayPool:Lio/ktor/utils/io/pool/ObjectPool;

    return-void
.end method

.method public static final getCharArrayPool()Lio/ktor/utils/io/pool/ObjectPool;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "[C>;"
        }
    .end annotation

    .line 18
    sget-object v0, Lio/ktor/http/cio/internals/CharArrayPoolKt;->CharArrayPool:Lio/ktor/utils/io/pool/ObjectPool;

    return-object v0
.end method

###### Class io.ktor.http.cio.internals.CharArrayPoolKt$CharArrayPool$1 (io.ktor.http.cio.internals.CharArrayPoolKt$CharArrayPool$1)
.class public final Lio/ktor/http/cio/internals/CharArrayPoolKt$CharArrayPool$1;
.super Lio/ktor/utils/io/pool/NoPoolImpl;
.source "CharArrayPool.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/cio/internals/CharArrayPoolKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/utils/io/pool/NoPoolImpl<",
        "[C>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lio/ktor/utils/io/pool/NoPoolImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic borrow()Ljava/lang/Object;
    .registers 1

    .line 19
    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayPoolKt$CharArrayPool$1;->borrow()[C

    move-result-object p0

    return-object p0
.end method

.method public borrow()[C
    .registers 1

    const/16 p0, 0x800

    .line 21
    new-array p0, p0, [C

    return-object p0
.end method

###### Class io.ktor.http.cio.internals.CharArrayPoolKt$CharArrayPool$2 (io.ktor.http.cio.internals.CharArrayPoolKt$CharArrayPool$2)
.class public final Lio/ktor/http/cio/internals/CharArrayPoolKt$CharArrayPool$2;
.super Lio/ktor/utils/io/pool/DefaultPool;
.source "CharArrayPool.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/cio/internals/CharArrayPoolKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/utils/io/pool/DefaultPool<",
        "[C>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x1000

    .line 25
    invoke-direct {p0, v0}, Lio/ktor/utils/io/pool/DefaultPool;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic produceInstance()Ljava/lang/Object;
    .registers 1

    .line 25
    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayPoolKt$CharArrayPool$2;->produceInstance()[C

    move-result-object p0

    return-object p0
.end method

.method public produceInstance()[C
    .registers 1

    const/16 p0, 0x800

    .line 26
    new-array p0, p0, [C

    return-object p0
.end method
