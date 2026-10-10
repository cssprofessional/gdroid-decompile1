###### Class com.google.protobuf.RuntimeVersion (com.google.protobuf.RuntimeVersion)
.class public final Lcom/google/protobuf/RuntimeVersion;
.super Ljava/lang/Object;
.source "RuntimeVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;,
        Lcom/google/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;
    }
.end annotation


# static fields
.field public static final DOMAIN:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

.field public static final MAJOR:I = 0x4

.field private static final MAX_WARNING_COUNT:I = 0x14

.field public static final MINOR:I = 0x1f

.field public static final OSS_DOMAIN:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

.field public static final OSS_MAJOR:I = 0x4

.field public static final OSS_MINOR:I = 0x1f

.field public static final OSS_PATCH:I = 0x1

.field public static final OSS_SUFFIX:Ljava/lang/String; = ""

.field public static final PATCH:I = 0x1

.field public static final SUFFIX:Ljava/lang/String; = ""

.field private static final VERSION_STRING:Ljava/lang/String;

.field private static final logger:Ljava/util/logging/Logger;

.field static majorWarningLoggedCount:I

.field static minorWarningLoggedCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 28
    sget-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    sput-object v0, Lcom/google/protobuf/RuntimeVersion;->OSS_DOMAIN:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    .line 34
    sput-object v0, Lcom/google/protobuf/RuntimeVersion;->DOMAIN:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const/4 v0, 0x0

    .line 43
    sput v0, Lcom/google/protobuf/RuntimeVersion;->majorWarningLoggedCount:I

    .line 46
    sput v0, Lcom/google/protobuf/RuntimeVersion;->minorWarningLoggedCount:I

    const/4 v0, 0x1

    .line 48
    const-string v1, ""

    const/4 v2, 0x4

    const/16 v3, 0x1f

    invoke-static {v2, v3, v0, v1}, Lcom/google/protobuf/RuntimeVersion;->versionString(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/RuntimeVersion;->VERSION_STRING:Ljava/lang/String;

    .line 49
    const-class v0, Lcom/google/protobuf/RuntimeVersion;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/RuntimeVersion;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDisabled()Z
    .registers 2

    .line 156
    const-string v0, "TEMPORARILY_DISABLE_PROTOBUF_VERSION_CHECK"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 157
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "domain",
            "major",
            "minor",
            "patch",
            "suffix",
            "location"
        }
    .end annotation

    .line 68
    invoke-static/range {p0 .. p5}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersionImpl(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static validateProtobufGencodeVersionImpl(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "domain",
            "major",
            "minor",
            "patch",
            "suffix",
            "location"
        }
    .end annotation

    .line 74
    invoke-static {}, Lcom/google/protobuf/RuntimeVersion;->checkDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-ltz p1, :cond_a2

    if-ltz p2, :cond_a2

    if-ltz p3, :cond_a2

    .line 84
    sget-object v0, Lcom/google/protobuf/RuntimeVersion;->DOMAIN:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    if-ne p0, v0, :cond_92

    const/4 p0, 0x4

    const/4 v0, 0x1

    if-eq p1, p0, :cond_4f

    const/4 p0, 0x3

    if-ne p1, p0, :cond_39

    .line 96
    sget p0, Lcom/google/protobuf/RuntimeVersion;->majorWarningLoggedCount:I

    const/16 v1, 0x14

    if-ge p0, v1, :cond_39

    .line 97
    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/RuntimeVersion;->versionString(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 98
    sget-object v1, Lcom/google/protobuf/RuntimeVersion;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lcom/google/protobuf/RuntimeVersion;->VERSION_STRING:Ljava/lang/String;

    filled-new-array {p0, v2, p5}, [Ljava/lang/Object;

    move-result-object v2

    .line 99
    const-string v3, " Protobuf gencode version %s is exactly one major version older than the runtime version %s at %s. Please update the gencode to avoid compatibility violations in the next runtime release."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 104
    sget v1, Lcom/google/protobuf/RuntimeVersion;->majorWarningLoggedCount:I

    add-int/2addr v1, v0

    sput v1, Lcom/google/protobuf/RuntimeVersion;->majorWarningLoggedCount:I

    goto :goto_50

    .line 106
    :cond_39
    new-instance p0, Lcom/google/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;

    .line 110
    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/RuntimeVersion;->versionString(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/google/protobuf/RuntimeVersion;->VERSION_STRING:Ljava/lang/String;

    filled-new-array {p5, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 107
    const-string p2, "Detected mismatched Protobuf Gencode/Runtime major versions when loading %s: gencode %s, runtime %s. Same major version is required."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4f
    const/4 p0, 0x0

    :goto_50
    const/16 v1, 0x1f

    if-lt v1, p2, :cond_7a

    if-ne p2, v1, :cond_59

    if-ge v0, p3, :cond_59

    goto :goto_7a

    .line 127
    :cond_59
    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    if-nez p0, :cond_67

    .line 129
    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/RuntimeVersion;->versionString(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 131
    :cond_67
    new-instance p1, Lcom/google/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;

    sget-object p2, Lcom/google/protobuf/RuntimeVersion;->VERSION_STRING:Ljava/lang/String;

    filled-new-array {p5, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 132
    const-string p2, "Detected mismatched Protobuf Gencode/Runtime version suffixes when loading %s: gencode %s, runtime %s. Version suffixes must be the same."

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_79
    return-void

    :cond_7a
    :goto_7a
    if-nez p0, :cond_80

    .line 117
    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/RuntimeVersion;->versionString(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 119
    :cond_80
    new-instance p1, Lcom/google/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;

    sget-object p2, Lcom/google/protobuf/RuntimeVersion;->VERSION_STRING:Ljava/lang/String;

    filled-new-array {p5, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 120
    const-string p2, "Detected incompatible Protobuf Gencode/Runtime versions when loading %s: gencode %s, runtime %s. Runtime version cannot be older than the linked gencode version."

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_92
    new-instance p1, Lcom/google/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;

    const-string p2, "Detected mismatched Protobuf Gencode/Runtime domains when loading %s: gencode %s, runtime %s. Cross-domain usage of Protobuf is not supported."

    filled-new-array {p5, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 86
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_a2
    new-instance p0, Lcom/google/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid gencode version: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/RuntimeVersion;->versionString(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static versionString(IIILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "major",
            "minor",
            "patch",
            "suffix"
        }
    .end annotation

    .line 151
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d.%d.%d%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class com.google.protobuf.RuntimeVersion.ProtobufRuntimeVersionException (com.google.protobuf.RuntimeVersion$ProtobufRuntimeVersionException)
.class public final Lcom/google/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;
.super Ljava/lang/RuntimeException;
.source "RuntimeVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/RuntimeVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtobufRuntimeVersionException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 145
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.protobuf.RuntimeVersion.RuntimeDomain (com.google.protobuf.RuntimeVersion$RuntimeDomain)
.class public final enum Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;
.super Ljava/lang/Enum;
.source "RuntimeVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/RuntimeVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RuntimeDomain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

.field public static final enum GOOGLE_INTERNAL:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

.field public static final enum PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;


# direct methods
.method private static synthetic $values()[Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;
    .registers 2

    .line 20
    sget-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->GOOGLE_INTERNAL:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    sget-object v1, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    filled-new-array {v0, v1}, [Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 21
    new-instance v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-string v1, "GOOGLE_INTERNAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->GOOGLE_INTERNAL:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    .line 22
    new-instance v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-string v1, "PUBLIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    .line 20
    invoke-static {}, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->$values()[Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->$VALUES:[Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

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

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 20
    const-class v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;
    .registers 1

    .line 20
    sget-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->$VALUES:[Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    invoke-virtual {v0}, [Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    return-object v0
.end method
