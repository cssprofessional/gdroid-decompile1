###### Class com.google.protobuf.DiscardUnknownFieldsParser (com.google.protobuf.DiscardUnknownFieldsParser)
.class public final Lcom/google/protobuf/DiscardUnknownFieldsParser;
.super Ljava/lang/Object;
.source "DiscardUnknownFieldsParser.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final wrap(Lcom/google/protobuf/Parser;)Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/Message;",
            ">(",
            "Lcom/google/protobuf/Parser<",
            "TT;>;)",
            "Lcom/google/protobuf/Parser<",
            "TT;>;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/google/protobuf/DiscardUnknownFieldsParser$1;

    invoke-direct {v0, p0}, Lcom/google/protobuf/DiscardUnknownFieldsParser$1;-><init>(Lcom/google/protobuf/Parser;)V

    return-object v0
.end method

###### Class com.google.protobuf.DiscardUnknownFieldsParser.AnonymousClass1 (com.google.protobuf.DiscardUnknownFieldsParser$1)
.class Lcom/google/protobuf/DiscardUnknownFieldsParser$1;
.super Lcom/google/protobuf/AbstractParser;
.source "DiscardUnknownFieldsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/DiscardUnknownFieldsParser;->wrap(Lcom/google/protobuf/Parser;)Lcom/google/protobuf/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractParser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$parser:Lcom/google/protobuf/Parser;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Parser;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$parser"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/google/protobuf/DiscardUnknownFieldsParser$1;->val$parser:Lcom/google/protobuf/Parser;

    invoke-direct {p0}, Lcom/google/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 37
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->discardUnknownFields()V

    .line 38
    iget-object p0, p0, Lcom/google/protobuf/DiscardUnknownFieldsParser$1;->val$parser:Lcom/google/protobuf/Parser;

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Message;
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_f

    .line 40
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->unsetDiscardUnknownFields()V

    return-object p0

    :catchall_f
    move-exception p0

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->unsetDiscardUnknownFields()V

    .line 41
    throw p0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DiscardUnknownFieldsParser$1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    return-object p0
.end method
