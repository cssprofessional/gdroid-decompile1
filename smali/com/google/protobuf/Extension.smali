###### Class com.google.protobuf.Extension (com.google.protobuf.Extension)
.class public abstract Lcom/google/protobuf/Extension;
.super Lcom/google/protobuf/ExtensionLite;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Extension$MessageType;,
        Lcom/google/protobuf/Extension$ExtensionType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/google/protobuf/MessageLite;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/ExtensionLite<",
        "TContainingType;TType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/google/protobuf/ExtensionLite;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract fromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;
.end method

.method public abstract getExtensionType()Lcom/google/protobuf/Extension$ExtensionType;
.end method

.method public abstract getMessageDefaultInstance()Lcom/google/protobuf/Message;
.end method

.method public bridge synthetic getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/Extension;->getMessageDefaultInstance()Lcom/google/protobuf/Message;

    move-result-object p0

    return-object p0
.end method

.method public getMessageType()Lcom/google/protobuf/Extension$MessageType;
    .registers 1

    .line 55
    sget-object p0, Lcom/google/protobuf/Extension$MessageType;->PROTO2:Lcom/google/protobuf/Extension$MessageType;

    return-object p0
.end method

.method public final isLite()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract singularFromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract singularToReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract toReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

###### Class com.google.protobuf.Extension.ExtensionType (com.google.protobuf.Extension$ExtensionType)
.class public final enum Lcom/google/protobuf/Extension$ExtensionType;
.super Ljava/lang/Enum;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExtensionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/Extension$ExtensionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/Extension$ExtensionType;

.field public static final enum IMMUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

.field public static final enum MUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

.field public static final enum PROTO1:Lcom/google/protobuf/Extension$ExtensionType;


# direct methods
.method private static synthetic $values()[Lcom/google/protobuf/Extension$ExtensionType;
    .registers 3

    .line 36
    sget-object v0, Lcom/google/protobuf/Extension$ExtensionType;->IMMUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

    sget-object v1, Lcom/google/protobuf/Extension$ExtensionType;->MUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

    sget-object v2, Lcom/google/protobuf/Extension$ExtensionType;->PROTO1:Lcom/google/protobuf/Extension$ExtensionType;

    filled-new-array {v0, v1, v2}, [Lcom/google/protobuf/Extension$ExtensionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 37
    new-instance v0, Lcom/google/protobuf/Extension$ExtensionType;

    const-string v1, "IMMUTABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Extension$ExtensionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/Extension$ExtensionType;->IMMUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

    .line 38
    new-instance v0, Lcom/google/protobuf/Extension$ExtensionType;

    const-string v1, "MUTABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Extension$ExtensionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/Extension$ExtensionType;->MUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

    .line 39
    new-instance v0, Lcom/google/protobuf/Extension$ExtensionType;

    const-string v1, "PROTO1"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Extension$ExtensionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/Extension$ExtensionType;->PROTO1:Lcom/google/protobuf/Extension$ExtensionType;

    .line 36
    invoke-static {}, Lcom/google/protobuf/Extension$ExtensionType;->$values()[Lcom/google/protobuf/Extension$ExtensionType;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/Extension$ExtensionType;->$VALUES:[Lcom/google/protobuf/Extension$ExtensionType;

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

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/Extension$ExtensionType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 36
    const-class v0, Lcom/google/protobuf/Extension$ExtensionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Extension$ExtensionType;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/Extension$ExtensionType;
    .registers 1

    .line 36
    sget-object v0, Lcom/google/protobuf/Extension$ExtensionType;->$VALUES:[Lcom/google/protobuf/Extension$ExtensionType;

    invoke-virtual {v0}, [Lcom/google/protobuf/Extension$ExtensionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/Extension$ExtensionType;

    return-object v0
.end method

###### Class com.google.protobuf.Extension.MessageType (com.google.protobuf.Extension$MessageType)
.class public final enum Lcom/google/protobuf/Extension$MessageType;
.super Ljava/lang/Enum;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/Extension$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/Extension$MessageType;

.field public static final enum PROTO1:Lcom/google/protobuf/Extension$MessageType;

.field public static final enum PROTO2:Lcom/google/protobuf/Extension$MessageType;


# direct methods
.method private static synthetic $values()[Lcom/google/protobuf/Extension$MessageType;
    .registers 2

    .line 45
    sget-object v0, Lcom/google/protobuf/Extension$MessageType;->PROTO1:Lcom/google/protobuf/Extension$MessageType;

    sget-object v1, Lcom/google/protobuf/Extension$MessageType;->PROTO2:Lcom/google/protobuf/Extension$MessageType;

    filled-new-array {v0, v1}, [Lcom/google/protobuf/Extension$MessageType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 46
    new-instance v0, Lcom/google/protobuf/Extension$MessageType;

    const-string v1, "PROTO1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Extension$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/Extension$MessageType;->PROTO1:Lcom/google/protobuf/Extension$MessageType;

    .line 47
    new-instance v0, Lcom/google/protobuf/Extension$MessageType;

    const-string v1, "PROTO2"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Extension$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/Extension$MessageType;->PROTO2:Lcom/google/protobuf/Extension$MessageType;

    .line 45
    invoke-static {}, Lcom/google/protobuf/Extension$MessageType;->$values()[Lcom/google/protobuf/Extension$MessageType;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/Extension$MessageType;->$VALUES:[Lcom/google/protobuf/Extension$MessageType;

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

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/Extension$MessageType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 45
    const-class v0, Lcom/google/protobuf/Extension$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Extension$MessageType;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/Extension$MessageType;
    .registers 1

    .line 45
    sget-object v0, Lcom/google/protobuf/Extension$MessageType;->$VALUES:[Lcom/google/protobuf/Extension$MessageType;

    invoke-virtual {v0}, [Lcom/google/protobuf/Extension$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/Extension$MessageType;

    return-object v0
.end method
