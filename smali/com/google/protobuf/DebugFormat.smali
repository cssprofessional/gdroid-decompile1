###### Class com.google.protobuf.DebugFormat (com.google.protobuf.DebugFormat)
.class public final Lcom/google/protobuf/DebugFormat;
.super Ljava/lang/Object;
.source "DebugFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DebugFormat$LazyDebugOutput;
    }
.end annotation


# instance fields
.field private final isSingleLine:Z


# direct methods
.method private constructor <init>(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singleLine"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/google/protobuf/DebugFormat;->isSingleLine:Z

    return-void
.end method

.method public static multiline()Lcom/google/protobuf/DebugFormat;
    .registers 2

    .line 22
    new-instance v0, Lcom/google/protobuf/DebugFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/DebugFormat;-><init>(Z)V

    return-object v0
.end method

.method public static singleLine()Lcom/google/protobuf/DebugFormat;
    .registers 2

    .line 18
    new-instance v0, Lcom/google/protobuf/DebugFormat;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/DebugFormat;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public lazyToString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/google/protobuf/DebugFormat$LazyDebugOutput;

    invoke-direct {v0, p1, p0}, Lcom/google/protobuf/DebugFormat$LazyDebugOutput;-><init>(Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/DebugFormat;)V

    return-object v0
.end method

.method public lazyToString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fields"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/google/protobuf/DebugFormat$LazyDebugOutput;

    invoke-direct {v0, p1, p0}, Lcom/google/protobuf/DebugFormat$LazyDebugOutput;-><init>(Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/DebugFormat;)V

    return-object v0
.end method

.method public toString(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 36
    iget-boolean v0, p0, Lcom/google/protobuf/DebugFormat;->isSingleLine:Z

    if-nez v0, :cond_d

    .line 37
    invoke-static {}, Lcom/google/protobuf/TextFormat;->debugFormatPrinter()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TextFormat$Printer;->printFieldToString(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 39
    :cond_d
    invoke-static {}, Lcom/google/protobuf/TextFormat;->debugFormatPrinter()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    iget-boolean p0, p0, Lcom/google/protobuf/DebugFormat;->isSingleLine:Z

    .line 40
    invoke-virtual {v0, p0}, Lcom/google/protobuf/TextFormat$Printer;->emittingSingleLine(Z)Lcom/google/protobuf/TextFormat$Printer;

    move-result-object p0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TextFormat$Printer;->printFieldToString(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 26
    iget-boolean v0, p0, Lcom/google/protobuf/DebugFormat;->isSingleLine:Z

    if-nez v0, :cond_f

    .line 27
    invoke-static {}, Lcom/google/protobuf/TextFormat;->debugFormatPrinter()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object p0

    sget-object v0, Lcom/google/protobuf/TextFormat$Printer$FieldReporterLevel;->DEBUG_MULTILINE:Lcom/google/protobuf/TextFormat$Printer$FieldReporterLevel;

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/TextFormat$Printer;->printToString(Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/TextFormat$Printer$FieldReporterLevel;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 30
    :cond_f
    invoke-static {}, Lcom/google/protobuf/TextFormat;->debugFormatPrinter()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    iget-boolean p0, p0, Lcom/google/protobuf/DebugFormat;->isSingleLine:Z

    .line 31
    invoke-virtual {v0, p0}, Lcom/google/protobuf/TextFormat$Printer;->emittingSingleLine(Z)Lcom/google/protobuf/TextFormat$Printer;

    move-result-object p0

    sget-object v0, Lcom/google/protobuf/TextFormat$Printer$FieldReporterLevel;->DEBUG_SINGLE_LINE:Lcom/google/protobuf/TextFormat$Printer$FieldReporterLevel;

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/TextFormat$Printer;->printToString(Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/TextFormat$Printer$FieldReporterLevel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fields"
        }
    .end annotation

    .line 45
    iget-boolean v0, p0, Lcom/google/protobuf/DebugFormat;->isSingleLine:Z

    if-nez v0, :cond_d

    .line 46
    invoke-static {}, Lcom/google/protobuf/TextFormat;->debugFormatPrinter()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$Printer;->printToString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 48
    :cond_d
    invoke-static {}, Lcom/google/protobuf/TextFormat;->debugFormatPrinter()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    iget-boolean p0, p0, Lcom/google/protobuf/DebugFormat;->isSingleLine:Z

    .line 49
    invoke-virtual {v0, p0}, Lcom/google/protobuf/TextFormat$Printer;->emittingSingleLine(Z)Lcom/google/protobuf/TextFormat$Printer;

    move-result-object p0

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$Printer;->printToString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class com.google.protobuf.DebugFormat.LazyDebugOutput (com.google.protobuf.DebugFormat$LazyDebugOutput)
.class Lcom/google/protobuf/DebugFormat$LazyDebugOutput;
.super Ljava/lang/Object;
.source "DebugFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DebugFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyDebugOutput"
.end annotation


# instance fields
.field private final fields:Lcom/google/protobuf/UnknownFieldSet;

.field private final format:Lcom/google/protobuf/DebugFormat;

.field private final message:Lcom/google/protobuf/MessageOrBuilder;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/DebugFormat;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "format"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/protobuf/DebugFormat$LazyDebugOutput;->message:Lcom/google/protobuf/MessageOrBuilder;

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/google/protobuf/DebugFormat$LazyDebugOutput;->fields:Lcom/google/protobuf/UnknownFieldSet;

    .line 69
    iput-object p2, p0, Lcom/google/protobuf/DebugFormat$LazyDebugOutput;->format:Lcom/google/protobuf/DebugFormat;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/DebugFormat;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fields",
            "format"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/google/protobuf/DebugFormat$LazyDebugOutput;->message:Lcom/google/protobuf/MessageOrBuilder;

    .line 74
    iput-object p1, p0, Lcom/google/protobuf/DebugFormat$LazyDebugOutput;->fields:Lcom/google/protobuf/UnknownFieldSet;

    .line 75
    iput-object p2, p0, Lcom/google/protobuf/DebugFormat$LazyDebugOutput;->format:Lcom/google/protobuf/DebugFormat;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/google/protobuf/DebugFormat$LazyDebugOutput;->message:Lcom/google/protobuf/MessageOrBuilder;

    if-eqz v0, :cond_b

    .line 81
    iget-object p0, p0, Lcom/google/protobuf/DebugFormat$LazyDebugOutput;->format:Lcom/google/protobuf/DebugFormat;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DebugFormat;->toString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 83
    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/DebugFormat$LazyDebugOutput;->format:Lcom/google/protobuf/DebugFormat;

    iget-object p0, p0, Lcom/google/protobuf/DebugFormat$LazyDebugOutput;->fields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DebugFormat;->toString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
