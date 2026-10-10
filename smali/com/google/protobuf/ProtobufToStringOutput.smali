###### Class com.google.protobuf.ProtobufToStringOutput (com.google.protobuf.ProtobufToStringOutput)
.class public final Lcom/google/protobuf/ProtobufToStringOutput;
.super Ljava/lang/Object;
.source "ProtobufToStringOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;
    }
.end annotation


# static fields
.field private static final outputMode:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$V-qwJWY46uOp-a7215Kz0I0dM9E()Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;
    .registers 1

    .line 0
    invoke-static {}, Lcom/google/protobuf/ProtobufToStringOutput;->lambda$static$0()Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/google/protobuf/ProtobufToStringOutput$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/protobuf/ProtobufToStringOutput$$ExternalSyntheticLambda0;-><init>()V

    .line 18
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/ProtobufToStringOutput;->outputMode:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callWithDebugFormat(Ljava/lang/Runnable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;->DEBUG_FORMAT:Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

    invoke-static {p0, v0}, Lcom/google/protobuf/ProtobufToStringOutput;->callWithSpecificFormat(Ljava/lang/Runnable;Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;)V

    return-void
.end method

.method private static callWithSpecificFormat(Ljava/lang/Runnable;Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "impl",
            "mode"
        }
    .end annotation

    .line 29
    invoke-static {p1}, Lcom/google/protobuf/ProtobufToStringOutput;->setOutputMode(Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;)Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

    move-result-object p1

    .line 31
    :try_start_4
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 33
    invoke-static {p1}, Lcom/google/protobuf/ProtobufToStringOutput;->setOutputMode(Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;)Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

    return-void

    :catchall_b
    move-exception p0

    invoke-static {p1}, Lcom/google/protobuf/ProtobufToStringOutput;->setOutputMode(Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;)Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

    .line 34
    throw p0
.end method

.method public static callWithTextFormat(Ljava/lang/Runnable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;->TEXT_FORMAT:Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

    invoke-static {p0, v0}, Lcom/google/protobuf/ProtobufToStringOutput;->callWithSpecificFormat(Ljava/lang/Runnable;Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;)V

    return-void
.end method

.method private static synthetic lambda$static$0()Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;
    .registers 1

    .line 18
    sget-object v0, Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;->TEXT_FORMAT:Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

    return-object v0
.end method

.method private static setOutputMode(Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;)Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newMode"
        }
    .end annotation

    .line 23
    sget-object v0, Lcom/google/protobuf/ProtobufToStringOutput;->outputMode:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static shouldOutputDebugFormat()Z
    .registers 2

    .line 46
    sget-object v0, Lcom/google/protobuf/ProtobufToStringOutput;->outputMode:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;->DEBUG_FORMAT:Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

###### Class com.google.protobuf.ProtobufToStringOutput.OutputMode (com.google.protobuf.ProtobufToStringOutput$OutputMode)
.class final enum Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;
.super Ljava/lang/Enum;
.source "ProtobufToStringOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ProtobufToStringOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OutputMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

.field public static final enum DEBUG_FORMAT:Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

.field public static final enum TEXT_FORMAT:Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;


# direct methods
.method private static synthetic $values()[Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;
    .registers 2

    .line 12
    sget-object v0, Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;->DEBUG_FORMAT:Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

    sget-object v1, Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;->TEXT_FORMAT:Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

    filled-new-array {v0, v1}, [Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 13
    new-instance v0, Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

    const-string v1, "DEBUG_FORMAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;->DEBUG_FORMAT:Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

    .line 14
    new-instance v0, Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

    const-string v1, "TEXT_FORMAT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;->TEXT_FORMAT:Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

    .line 12
    invoke-static {}, Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;->$values()[Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;->$VALUES:[Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 12
    const-class v0, Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;
    .registers 1

    .line 12
    sget-object v0, Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;->$VALUES:[Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

    invoke-virtual {v0}, [Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

    return-object v0
.end method

###### Class com.google.protobuf.ProtobufToStringOutput$$ExternalSyntheticLambda0 (com.google.protobuf.ProtobufToStringOutput$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/google/protobuf/ProtobufToStringOutput$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-static {}, Lcom/google/protobuf/ProtobufToStringOutput;->$r8$lambda$V-qwJWY46uOp-a7215Kz0I0dM9E()Lcom/google/protobuf/ProtobufToStringOutput$OutputMode;

    move-result-object p0

    return-object p0
.end method
