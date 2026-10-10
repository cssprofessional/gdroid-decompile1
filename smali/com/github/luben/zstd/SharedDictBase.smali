###### Class com.github.luben.zstd.SharedDictBase (com.github.luben.zstd.SharedDictBase)
.class abstract Lcom/github/luben/zstd/SharedDictBase;
.super Lcom/github/luben/zstd/AutoCloseBase;
.source "SharedDictBase.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lcom/github/luben/zstd/AutoCloseBase;-><init>()V

    return-void
.end method


# virtual methods
.method public finalize()V
    .registers 1

    .line 7
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->close()V

    return-void
.end method
