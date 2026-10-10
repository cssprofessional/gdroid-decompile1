###### Class com.google.protobuf.LegacyUnredactedTextFormat (com.google.protobuf.LegacyUnredactedTextFormat)
.class public final Lcom/google/protobuf/LegacyUnredactedTextFormat;
.super Ljava/lang/Object;
.source "LegacyUnredactedTextFormat.java"


# direct methods
.method public static synthetic $r8$lambda$qTaQqB8-twntAe8JK2EkwTjSSQg([Ljava/lang/String;Ljava/lang/Object;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/google/protobuf/LegacyUnredactedTextFormat;->lambda$legacyUnredactedToString$0([Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$legacyUnredactedToString$0([Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    return-void
.end method

.method public static legacyUnredactedMultilineString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 15
    invoke-static {}, Lcom/google/protobuf/TextFormat;->printer()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/TextFormat$Printer$FieldReporterLevel;->LEGACY_MULTILINE:Lcom/google/protobuf/TextFormat$Printer$FieldReporterLevel;

    .line 16
    invoke-virtual {v0, p0, v1}, Lcom/google/protobuf/TextFormat$Printer;->printToString(Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/TextFormat$Printer$FieldReporterLevel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static legacyUnredactedMultilineString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fields"
        }
    .end annotation

    .line 21
    invoke-static {}, Lcom/google/protobuf/TextFormat;->printer()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/TextFormat$Printer;->printToString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static legacyUnredactedSingleLineString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/google/protobuf/TextFormat;->printer()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Lcom/google/protobuf/TextFormat$Printer;->emittingSingleLine(Z)Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/TextFormat$Printer$FieldReporterLevel;->LEGACY_SINGLE_LINE:Lcom/google/protobuf/TextFormat$Printer$FieldReporterLevel;

    .line 31
    invoke-virtual {v0, p0, v1}, Lcom/google/protobuf/TextFormat$Printer;->printToString(Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/TextFormat$Printer$FieldReporterLevel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static legacyUnredactedSingleLineString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fields"
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/google/protobuf/TextFormat;->printer()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/TextFormat$Printer;->emittingSingleLine(Z)Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/TextFormat$Printer;->printToString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static legacyUnredactedStringValueOf(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    if-nez p0, :cond_7

    .line 64
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    :cond_7
    invoke-static {p0}, Lcom/google/protobuf/LegacyUnredactedTextFormat;->legacyUnredactedToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_b
    return-object p0
.end method

.method public static legacyUnredactedToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    const/4 v0, 0x1

    .line 50
    new-array v0, v0, [Ljava/lang/String;

    .line 51
    new-instance v1, Lcom/google/protobuf/LegacyUnredactedTextFormat$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lcom/google/protobuf/LegacyUnredactedTextFormat$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/google/protobuf/ProtobufToStringOutput;->callWithTextFormat(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    .line 52
    aget-object p0, v0, p0

    return-object p0
.end method

###### Class com.google.protobuf.LegacyUnredactedTextFormat$$ExternalSyntheticLambda0 (com.google.protobuf.LegacyUnredactedTextFormat$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/google/protobuf/LegacyUnredactedTextFormat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/LegacyUnredactedTextFormat$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/String;

    iput-object p2, p0, Lcom/google/protobuf/LegacyUnredactedTextFormat$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/protobuf/LegacyUnredactedTextFormat$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/String;

    iget-object p0, p0, Lcom/google/protobuf/LegacyUnredactedTextFormat$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/google/protobuf/LegacyUnredactedTextFormat;->$r8$lambda$qTaQqB8-twntAe8JK2EkwTjSSQg([Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
