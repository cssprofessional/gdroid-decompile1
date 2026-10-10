###### Class in.dragonbra.javasteam.protobufs.steamclient.EnumsProductinfo (in.dragonbra.javasteam.protobufs.steamclient.EnumsProductinfo)
.class public final Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo;
.super Ljava/lang/Object;
.source "EnumsProductinfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 12
    sget-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    const/16 v2, 0x1f

    const/4 v3, 0x1

    .line 12
    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "\nDin/dragonbra/javasteam/protobufs/steamclient/enums_productinfo.proto*\u00a2\u0002\n\u0014EContentDescriptorID\u0012.\n*k_EContentDescriptor_NudityOrSexualContent\u0010\u0001\u0012/\n+k_EContentDescriptor_FrequentViolenceOrGore\u0010\u0002\u0012/\n+k_EContentDescriptor_AdultOnlySexualContent\u0010\u0003\u00120\n,k_EContentDescriptor_GratuitousSexualContent\u0010\u0004\u0012)\n%k_EContentDescriptor_AnyMatureContent\u0010\u0005\u0012\u001b\n\u0017k_EContentDescriptorMAX\u0010\u0006B0\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 191
    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 192
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 195
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->resolveAllFeaturesImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .registers 1

    .line 173
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .registers 1

    .line 26
    invoke-static {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 1

    .line 0
    return-void
.end method

###### Class in.dragonbra.javasteam.protobufs.steamclient.EnumsProductinfo.EContentDescriptorID (in.dragonbra.javasteam.protobufs.steamclient.EnumsProductinfo$EContentDescriptorID)
.class public final enum Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;
.super Ljava/lang/Enum;
.source "EnumsProductinfo.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EContentDescriptorID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

.field private static final VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum k_EContentDescriptorMAX:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

.field public static final k_EContentDescriptorMAX_VALUE:I = 0x6

.field public static final enum k_EContentDescriptor_AdultOnlySexualContent:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

.field public static final k_EContentDescriptor_AdultOnlySexualContent_VALUE:I = 0x3

.field public static final enum k_EContentDescriptor_AnyMatureContent:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

.field public static final k_EContentDescriptor_AnyMatureContent_VALUE:I = 0x5

.field public static final enum k_EContentDescriptor_FrequentViolenceOrGore:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

.field public static final k_EContentDescriptor_FrequentViolenceOrGore_VALUE:I = 0x2

.field public static final enum k_EContentDescriptor_GratuitousSexualContent:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

.field public static final k_EContentDescriptor_GratuitousSexualContent_VALUE:I = 0x4

.field public static final enum k_EContentDescriptor_NudityOrSexualContent:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

.field public static final k_EContentDescriptor_NudityOrSexualContent_VALUE:I = 0x1


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;
    .registers 6

    .line 32
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->k_EContentDescriptor_NudityOrSexualContent:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->k_EContentDescriptor_FrequentViolenceOrGore:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    sget-object v2, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->k_EContentDescriptor_AdultOnlySexualContent:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    sget-object v3, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->k_EContentDescriptor_GratuitousSexualContent:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    sget-object v4, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->k_EContentDescriptor_AnyMatureContent:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    sget-object v5, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->k_EContentDescriptorMAX:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    filled-new-array/range {v0 .. v5}, [Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 37
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    const-string v1, "k_EContentDescriptor_NudityOrSexualContent"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->k_EContentDescriptor_NudityOrSexualContent:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    .line 41
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    const-string v1, "k_EContentDescriptor_FrequentViolenceOrGore"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->k_EContentDescriptor_FrequentViolenceOrGore:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    .line 45
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    const-string v1, "k_EContentDescriptor_AdultOnlySexualContent"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->k_EContentDescriptor_AdultOnlySexualContent:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    .line 49
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    const-string v1, "k_EContentDescriptor_GratuitousSexualContent"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->k_EContentDescriptor_GratuitousSexualContent:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    .line 53
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    const-string v1, "k_EContentDescriptor_AnyMatureContent"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->k_EContentDescriptor_AnyMatureContent:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    .line 57
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    const-string v1, "k_EContentDescriptorMAX"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->k_EContentDescriptorMAX:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    .line 32
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->$values()[Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    .line 61
    sget-object v1, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    .line 67
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x4

    const/16 v3, 0x1f

    const/4 v4, 0x1

    .line 61
    const-string v5, ""

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID$1;

    invoke-direct {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID$1;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 150
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->values()[Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 164
    iput p3, p0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->value:I

    return-void
.end method

.method public static forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;
    .registers 1

    packed-switch p0, :pswitch_data_18

    const/4 p0, 0x0

    return-object p0

    .line 120
    :pswitch_5
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->k_EContentDescriptorMAX:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    return-object p0

    .line 119
    :pswitch_8
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->k_EContentDescriptor_AnyMatureContent:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    return-object p0

    .line 118
    :pswitch_b
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->k_EContentDescriptor_GratuitousSexualContent:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    return-object p0

    .line 117
    :pswitch_e
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->k_EContentDescriptor_AdultOnlySexualContent:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    return-object p0

    .line 116
    :pswitch_11
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->k_EContentDescriptor_FrequentViolenceOrGore:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    return-object p0

    .line 115
    :pswitch_14
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->k_EContentDescriptor_NudityOrSexualContent:Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 147
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;",
            ">;"
        }
    .end annotation

    .line 127
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    invoke-static {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;
    .registers 3

    .line 154
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 158
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 155
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 32
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;
    .registers 1

    .line 32
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 1

    .line 143
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final getNumber()I
    .registers 1

    .line 96
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->value:I

    return p0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .registers 2

    .line 139
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.protobufs.steamclient.EnumsProductinfo.EContentDescriptorID.AnonymousClass1 (in.dragonbra.javasteam.protobufs.steamclient.EnumsProductinfo$EContentDescriptorID$1)
.class public Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID$1;
.super Ljava/lang/Object;
.source "EnumsProductinfo.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 131
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID$1;->findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    move-result-object p0

    return-object p0
.end method

.method public findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;
    .registers 2

    .line 133
    invoke-static {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/EnumsProductinfo$EContentDescriptorID;

    move-result-object p0

    return-object p0
.end method
