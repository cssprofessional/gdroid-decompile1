###### Class com.google.protobuf.MapFieldReflectionAccessor (com.google.protobuf.MapFieldReflectionAccessor)
.class public abstract Lcom/google/protobuf/MapFieldReflectionAccessor;
.super Ljava/lang/Object;
.source "MapFieldReflectionAccessor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Message;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMapEntryMessageDefaultInstance()Lcom/google/protobuf/Message;
.end method

.method public abstract getMutableList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Message;",
            ">;"
        }
    .end annotation
.end method
