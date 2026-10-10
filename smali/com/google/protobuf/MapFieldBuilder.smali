###### Class com.google.protobuf.MapFieldBuilder (com.google.protobuf.MapFieldBuilder)
.class public Lcom/google/protobuf/MapFieldBuilder;
.super Lcom/google/protobuf/MapFieldReflectionAccessor;
.source "MapFieldBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/MapFieldBuilder$Converter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyT:",
        "Ljava/lang/Object;",
        "MessageOrBuilderT::",
        "Lcom/google/protobuf/MessageOrBuilder;",
        "MessageT:TMessageOrBuilderT;BuilderT:TMessageOrBuilderT;>",
        "Lcom/google/protobuf/MapFieldReflectionAccessor;"
    }
.end annotation


# instance fields
.field builderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TKeyT;TMessageOrBuilderT;>;"
        }
    .end annotation
.end field

.field converter:Lcom/google/protobuf/MapFieldBuilder$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldBuilder$Converter<",
            "TKeyT;TMessageOrBuilderT;TMessageT;>;"
        }
    .end annotation
.end field

.field messageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/Message;",
            ">;"
        }
    .end annotation
.end field

.field messageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TKeyT;TMessageT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/protobuf/MapFieldBuilder$Converter;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "converter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/MapFieldBuilder$Converter<",
            "TKeyT;TMessageOrBuilderT;TMessageT;>;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/google/protobuf/MapFieldReflectionAccessor;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MapFieldBuilder;->builderMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/google/protobuf/MapFieldBuilder;->messageMap:Ljava/util/Map;

    .line 43
    iput-object v0, p0, Lcom/google/protobuf/MapFieldBuilder;->messageList:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/google/protobuf/MapFieldBuilder;->converter:Lcom/google/protobuf/MapFieldBuilder$Converter;

    return-void
.end method

.method private getMapEntryList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/MapEntry<",
            "TKeyT;TMessageT;>;>;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/MapFieldBuilder;->messageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    iget-object v1, p0, Lcom/google/protobuf/MapFieldBuilder;->converter:Lcom/google/protobuf/MapFieldBuilder$Converter;

    invoke-interface {v1}, Lcom/google/protobuf/MapFieldBuilder$Converter;->defaultEntry()Lcom/google/protobuf/MapEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/MapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageOrBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/google/protobuf/MapFieldBuilder;->messageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Message;

    .line 64
    move-object v4, v3

    check-cast v4, Lcom/google/protobuf/MapEntry;

    .line 65
    invoke-virtual {v4}, Lcom/google/protobuf/MapEntry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 66
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 69
    :cond_3e
    iget-object v4, p0, Lcom/google/protobuf/MapFieldBuilder;->converter:Lcom/google/protobuf/MapFieldBuilder$Converter;

    invoke-interface {v4}, Lcom/google/protobuf/MapFieldBuilder$Converter;->defaultEntry()Lcom/google/protobuf/MapEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/MapEntry;->toBuilder()Lcom/google/protobuf/MapEntry$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MapEntry$Builder;

    invoke-virtual {v3}, Lcom/google/protobuf/MapEntry$Builder;->build()Lcom/google/protobuf/MapEntry;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_56
    return-object v0
.end method

.method private populateMutableMap()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TKeyT;TMessageT;>;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/google/protobuf/MapFieldBuilder;->messageMap:Ljava/util/Map;

    if-eqz v0, :cond_5

    return-object v0

    .line 138
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/MapFieldBuilder;->builderMap:Ljava/util/Map;

    if-eqz v0, :cond_3f

    .line 139
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/google/protobuf/MapFieldBuilder;->builderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 140
    iget-object v1, p0, Lcom/google/protobuf/MapFieldBuilder;->builderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/protobuf/MapFieldBuilder;->converter:Lcom/google/protobuf/MapFieldBuilder$Converter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageOrBuilder;

    invoke-interface {v4, v2}, Lcom/google/protobuf/MapFieldBuilder$Converter;->build(Lcom/google/protobuf/MessageOrBuilder;)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_3e
    return-object v0

    .line 145
    :cond_3f
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/google/protobuf/MapFieldBuilder;->messageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 146
    invoke-direct {p0}, Lcom/google/protobuf/MapFieldBuilder;->getMapEntryList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_52
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MapEntry;

    .line 147
    invoke-virtual {v1}, Lcom/google/protobuf/MapEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/protobuf/MapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageOrBuilder;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    :cond_6c
    return-object v0
.end method

.method private typedEquals(Lcom/google/protobuf/MapFieldBuilder;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/MapFieldBuilder<",
            "TKeyT;TMessageOrBuilderT;TMessageT;TBuilderT;>;)Z"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldBuilder;->ensureBuilderMap()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/MapFieldBuilder;->ensureBuilderMap()Ljava/util/Map;

    move-result-object p1

    .line 163
    invoke-static {p0, p1}, Lcom/google/protobuf/MapFieldLite;->equals(Ljava/util/Map;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public build(Lcom/google/protobuf/MapEntry;)Lcom/google/protobuf/MapField;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultEntry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/MapEntry<",
            "TKeyT;TMessageT;>;)",
            "Lcom/google/protobuf/MapField<",
            "TKeyT;TMessageT;>;"
        }
    .end annotation

    .line 192
    invoke-static {p1}, Lcom/google/protobuf/MapField;->newMapField(Lcom/google/protobuf/MapEntry;)Lcom/google/protobuf/MapField;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lcom/google/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldBuilder;->ensureBuilderMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/protobuf/MapFieldBuilder;->converter:Lcom/google/protobuf/MapFieldBuilder$Converter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageOrBuilder;

    invoke-interface {v4, v2}, Lcom/google/protobuf/MapFieldBuilder$Converter;->build(Lcom/google/protobuf/MessageOrBuilder;)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 197
    :cond_34
    invoke-virtual {p1}, Lcom/google/protobuf/MapField;->makeImmutable()V

    return-object p1
.end method

.method public clear()V
    .registers 2

    .line 157
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MapFieldBuilder;->builderMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/google/protobuf/MapFieldBuilder;->messageMap:Ljava/util/Map;

    .line 159
    iput-object v0, p0, Lcom/google/protobuf/MapFieldBuilder;->messageList:Ljava/util/List;

    return-void
.end method

.method public copy()Lcom/google/protobuf/MapFieldBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldBuilder<",
            "TKeyT;TMessageOrBuilderT;TMessageT;TBuilderT;>;"
        }
    .end annotation

    .line 184
    new-instance v0, Lcom/google/protobuf/MapFieldBuilder;

    iget-object v1, p0, Lcom/google/protobuf/MapFieldBuilder;->converter:Lcom/google/protobuf/MapFieldBuilder$Converter;

    invoke-direct {v0, v1}, Lcom/google/protobuf/MapFieldBuilder;-><init>(Lcom/google/protobuf/MapFieldBuilder$Converter;)V

    .line 186
    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldBuilder;->ensureBuilderMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldBuilder;->ensureBuilderMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public ensureBuilderMap()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TKeyT;TMessageOrBuilderT;>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/google/protobuf/MapFieldBuilder;->builderMap:Ljava/util/Map;

    if-eqz v0, :cond_5

    return-object v0

    .line 79
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/MapFieldBuilder;->messageMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    .line 80
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/google/protobuf/MapFieldBuilder;->messageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/MapFieldBuilder;->builderMap:Ljava/util/Map;

    .line 81
    iget-object v0, p0, Lcom/google/protobuf/MapFieldBuilder;->messageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 82
    iget-object v3, p0, Lcom/google/protobuf/MapFieldBuilder;->builderMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageOrBuilder;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 84
    :cond_3d
    iput-object v1, p0, Lcom/google/protobuf/MapFieldBuilder;->messageMap:Ljava/util/Map;

    .line 85
    iget-object p0, p0, Lcom/google/protobuf/MapFieldBuilder;->builderMap:Ljava/util/Map;

    return-object p0

    .line 87
    :cond_42
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/google/protobuf/MapFieldBuilder;->messageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/MapFieldBuilder;->builderMap:Ljava/util/Map;

    .line 88
    invoke-direct {p0}, Lcom/google/protobuf/MapFieldBuilder;->getMapEntryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MapEntry;

    .line 89
    iget-object v3, p0, Lcom/google/protobuf/MapFieldBuilder;->builderMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/protobuf/MapEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/protobuf/MapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageOrBuilder;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_57

    .line 91
    :cond_73
    iput-object v1, p0, Lcom/google/protobuf/MapFieldBuilder;->messageList:Ljava/util/List;

    .line 92
    iget-object p0, p0, Lcom/google/protobuf/MapFieldBuilder;->builderMap:Ljava/util/Map;

    return-object p0
.end method

.method public ensureMessageList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Message;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/google/protobuf/MapFieldBuilder;->messageList:Ljava/util/List;

    if-eqz v0, :cond_5

    return-object v0

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/MapFieldBuilder;->builderMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/MapFieldBuilder;->builderMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/MapFieldBuilder;->messageList:Ljava/util/List;

    .line 101
    iget-object v0, p0, Lcom/google/protobuf/MapFieldBuilder;->builderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 102
    iget-object v3, p0, Lcom/google/protobuf/MapFieldBuilder;->messageList:Ljava/util/List;

    iget-object v4, p0, Lcom/google/protobuf/MapFieldBuilder;->converter:Lcom/google/protobuf/MapFieldBuilder$Converter;

    .line 103
    invoke-interface {v4}, Lcom/google/protobuf/MapFieldBuilder$Converter;->defaultEntry()Lcom/google/protobuf/MapEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/MapEntry;->toBuilder()Lcom/google/protobuf/MapEntry$Builder;

    move-result-object v4

    .line 104
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/protobuf/MapEntry$Builder;->setKey(Ljava/lang/Object;)Lcom/google/protobuf/MapEntry$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/protobuf/MapFieldBuilder;->converter:Lcom/google/protobuf/MapFieldBuilder$Converter;

    .line 105
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageOrBuilder;

    invoke-interface {v5, v2}, Lcom/google/protobuf/MapFieldBuilder$Converter;->build(Lcom/google/protobuf/MessageOrBuilder;)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/protobuf/MapEntry$Builder;->setValue(Ljava/lang/Object;)Lcom/google/protobuf/MapEntry$Builder;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lcom/google/protobuf/MapEntry$Builder;->build()Lcom/google/protobuf/MapEntry;

    move-result-object v2

    .line 102
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 108
    :cond_59
    iput-object v1, p0, Lcom/google/protobuf/MapFieldBuilder;->builderMap:Ljava/util/Map;

    .line 109
    iget-object p0, p0, Lcom/google/protobuf/MapFieldBuilder;->messageList:Ljava/util/List;

    return-object p0

    .line 111
    :cond_5e
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/MapFieldBuilder;->messageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/MapFieldBuilder;->messageList:Ljava/util/List;

    .line 112
    iget-object v0, p0, Lcom/google/protobuf/MapFieldBuilder;->messageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_75
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 113
    iget-object v3, p0, Lcom/google/protobuf/MapFieldBuilder;->messageList:Ljava/util/List;

    iget-object v4, p0, Lcom/google/protobuf/MapFieldBuilder;->converter:Lcom/google/protobuf/MapFieldBuilder$Converter;

    .line 114
    invoke-interface {v4}, Lcom/google/protobuf/MapFieldBuilder$Converter;->defaultEntry()Lcom/google/protobuf/MapEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/MapEntry;->toBuilder()Lcom/google/protobuf/MapEntry$Builder;

    move-result-object v4

    .line 115
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/protobuf/MapEntry$Builder;->setKey(Ljava/lang/Object;)Lcom/google/protobuf/MapEntry$Builder;

    move-result-object v4

    .line 116
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageOrBuilder;

    invoke-virtual {v4, v2}, Lcom/google/protobuf/MapEntry$Builder;->setValue(Ljava/lang/Object;)Lcom/google/protobuf/MapEntry$Builder;

    move-result-object v2

    .line 117
    invoke-virtual {v2}, Lcom/google/protobuf/MapEntry$Builder;->build()Lcom/google/protobuf/MapEntry;

    move-result-object v2

    .line 113
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_75

    .line 119
    :cond_a7
    iput-object v1, p0, Lcom/google/protobuf/MapFieldBuilder;->messageMap:Ljava/util/Map;

    .line 120
    iget-object p0, p0, Lcom/google/protobuf/MapFieldBuilder;->messageList:Ljava/util/List;

    return-object p0
.end method

.method public ensureMessageMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TKeyT;TMessageT;>;"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lcom/google/protobuf/MapFieldBuilder;->populateMutableMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MapFieldBuilder;->messageMap:Ljava/util/Map;

    const/4 v1, 0x0

    .line 125
    iput-object v1, p0, Lcom/google/protobuf/MapFieldBuilder;->builderMap:Ljava/util/Map;

    .line 126
    iput-object v1, p0, Lcom/google/protobuf/MapFieldBuilder;->messageList:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 171
    instance-of v0, p1, Lcom/google/protobuf/MapFieldBuilder;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 174
    :cond_6
    check-cast p1, Lcom/google/protobuf/MapFieldBuilder;

    invoke-direct {p0, p1}, Lcom/google/protobuf/MapFieldBuilder;->typedEquals(Lcom/google/protobuf/MapFieldBuilder;)Z

    move-result p0

    return p0
.end method

.method public getImmutableMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TKeyT;TMessageT;>;"
        }
    .end annotation

    .line 131
    new-instance v0, Lcom/google/protobuf/MapField$MutabilityAwareMap;

    sget-object v1, Lcom/google/protobuf/MutabilityOracle;->IMMUTABLE:Lcom/google/protobuf/MutabilityOracle;

    invoke-direct {p0}, Lcom/google/protobuf/MapFieldBuilder;->populateMutableMap()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/protobuf/MapField$MutabilityAwareMap;-><init>(Lcom/google/protobuf/MutabilityOracle;Ljava/util/Map;)V

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Message;",
            ">;"
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldBuilder;->ensureMessageList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMapEntryMessageDefaultInstance()Lcom/google/protobuf/Message;
    .registers 1

    .line 217
    iget-object p0, p0, Lcom/google/protobuf/MapFieldBuilder;->converter:Lcom/google/protobuf/MapFieldBuilder$Converter;

    invoke-interface {p0}, Lcom/google/protobuf/MapFieldBuilder$Converter;->defaultEntry()Lcom/google/protobuf/MapEntry;

    move-result-object p0

    return-object p0
.end method

.method public getMutableList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Message;",
            ">;"
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldBuilder;->ensureMessageList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 179
    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldBuilder;->ensureBuilderMap()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/MapFieldLite;->calculateHashCodeForMap(Ljava/util/Map;)I

    move-result p0

    return p0
.end method

.method public mergeFrom(Lcom/google/protobuf/MapField;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/MapField<",
            "TKeyT;TMessageT;>;)V"
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldBuilder;->ensureBuilderMap()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/MapFieldLite;->copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

###### Class com.google.protobuf.MapFieldBuilder.Converter (com.google.protobuf.MapFieldBuilder$Converter)
.class public interface abstract Lcom/google/protobuf/MapFieldBuilder$Converter;
.super Ljava/lang/Object;
.source "MapFieldBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MapFieldBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Converter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyT:",
        "Ljava/lang/Object;",
        "MessageOrBuilderT::",
        "Lcom/google/protobuf/MessageOrBuilder;",
        "MessageT:TMessageOrBuilderT;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract build(Lcom/google/protobuf/MessageOrBuilder;)Lcom/google/protobuf/MessageOrBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageOrBuilderT;)TMessageT;"
        }
    .end annotation
.end method

.method public abstract defaultEntry()Lcom/google/protobuf/MapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapEntry<",
            "TKeyT;TMessageT;>;"
        }
    .end annotation
.end method
