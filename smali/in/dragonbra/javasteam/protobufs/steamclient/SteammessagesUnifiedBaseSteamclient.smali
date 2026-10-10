###### Class in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUnifiedBaseSteamclient (in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUnifiedBaseSteamclient)
.class public final Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;
.super Ljava/lang/Object;
.source "SteammessagesUnifiedBaseSteamclient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;,
        Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;
    }
.end annotation


# static fields
.field public static final DESCRIPTION_FIELD_NUMBER:I = 0xc350

.field public static final ENUM_DESCRIPTION_FIELD_NUMBER:I = 0xc350

.field public static final ENUM_VALUE_DESCRIPTION_FIELD_NUMBER:I = 0xc350

.field public static final FORCE_EMIT_MESSAGE_FIELD_NUMBER:I = 0xc36a

.field public static final FORCE_EMIT_SERVICE_FIELD_NUMBER:I = 0xc36a

.field public static final MESSAGE_DESCRIPTION_FIELD_NUMBER:I = 0xc738

.field public static final METHOD_DESCRIPTION_FIELD_NUMBER:I = 0xc350

.field public static final SERVICE_DESCRIPTION_FIELD_NUMBER:I = 0xc350

.field public static final SERVICE_EXECUTION_SITE_FIELD_NUMBER:I = 0xc358

.field public static final SERVICE_TYPE_FIELD_NUMBER:I = 0xc369

.field public static final description:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/google/protobuf/DescriptorProtos$FieldOptions;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field public static final enumDescription:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/google/protobuf/DescriptorProtos$EnumOptions;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final enumValueDescription:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final forceEmitMessage:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/google/protobuf/DescriptorProtos$MessageOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final forceEmitService:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/google/protobuf/DescriptorProtos$ServiceOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final internal_static_NoResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_NoResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field public static final messageDescription:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/google/protobuf/DescriptorProtos$MessageOptions;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final methodDescription:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final serviceDescription:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/google/protobuf/DescriptorProtos$ServiceOptions;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final serviceExecutionSite:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/google/protobuf/DescriptorProtos$ServiceOptions;",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;",
            ">;"
        }
    .end annotation
.end field

.field public static final serviceType:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/google/protobuf/DescriptorProtos$ServiceOptions;",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 12
    sget-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    const/16 v2, 0x1f

    const/4 v3, 0x1

    .line 12
    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 612
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/Message;)Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    move-result-object v2

    sput-object v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->messageDescription:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    .line 623
    const-class v3, Ljava/lang/Boolean;

    invoke-static {v3, v1}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/Message;)Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    move-result-object v4

    sput-object v4, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->forceEmitMessage:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    .line 634
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/Message;)Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    move-result-object v5

    sput-object v5, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->description:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    .line 645
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/Message;)Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    move-result-object v6

    sput-object v6, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->serviceDescription:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    .line 655
    const-class v7, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

    .line 656
    invoke-static {v7, v1}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/Message;)Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    move-result-object v7

    sput-object v7, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->serviceExecutionSite:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    .line 666
    const-class v8, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

    .line 667
    invoke-static {v8, v1}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/Message;)Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    move-result-object v8

    sput-object v8, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->serviceType:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    .line 678
    invoke-static {v3, v1}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/Message;)Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    move-result-object v3

    sput-object v3, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->forceEmitService:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    .line 689
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/Message;)Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    move-result-object v9

    sput-object v9, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->methodDescription:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    .line 700
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/Message;)Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    move-result-object v10

    sput-object v10, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->enumDescription:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    .line 711
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/Message;)Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->enumValueDescription:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    .line 727
    const-string v1, "\nYin/dragonbra/javasteam/protobufs/steamclient/steammessages_unified_base.steamclient.proto\u001a google/protobuf/descriptor.proto\"\u000c\n\nNoResponse*]\n\u0013EProtoExecutionSite\u0012 \n\u001ck_EProtoExecutionSiteUnknown\u0010\u0000\u0012$\n k_EProtoExecutionSiteSteamClient\u0010\u0002*e\n\u0011EProtoServiceType\u0012$\n k_EProtoServiceTypeSteamMessages\u0010\u0000\u0012*\n&k_EProtoServiceTypeVRGamepadUIMessages\u0010\u0001:>\n\u0013message_description\u0012\u001f.google.protobuf.MessageOptions\u0018\u00b8\u008e\u0003 \u0001(\t:D\n\u0012force_emit_message\u0012\u001f.google.protobuf.MessageOptions\u0018\u00ea\u0086\u0003 \u0001(\u0008:\u0005false:4\n\u000bdescription\u0012\u001d.google.protobuf.FieldOptions\u0018\u00d0\u0086\u0003 \u0001(\t:>\n\u0013service_description\u0012\u001f.google.protobuf.ServiceOptions\u0018\u00d0\u0086\u0003 \u0001(\t:u\n\u0016service_execution_site\u0012\u001f.google.protobuf.ServiceOptions\u0018\u00d8\u0086\u0003 \u0001(\u000e2\u0014.EProtoExecutionSite:\u001ck_EProtoExecutionSiteUnknown:m\n\u000cservice_type\u0012\u001f.google.protobuf.ServiceOptions\u0018\u00e9\u0086\u0003 \u0001(\u000e2\u0012.EProtoServiceType: k_EProtoServiceTypeSteamMessages:D\n\u0012force_emit_service\u0012\u001f.google.protobuf.ServiceOptions\u0018\u00ea\u0086\u0003 \u0001(\u0008:\u0005false:<\n\u0012method_description\u0012\u001e.google.protobuf.MethodOptions\u0018\u00d0\u0086\u0003 \u0001(\t:8\n\u0010enum_description\u0012\u001c.google.protobuf.EnumOptions\u0018\u00d0\u0086\u0003 \u0001(\t:C\n\u0016enum_value_description\u0012!.google.protobuf.EnumValueOptions\u0018\u00d0\u0086\u0003 \u0001(\tB3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 761
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v11

    filled-new-array {v11}, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v11

    .line 759
    invoke-static {v1, v11}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    sput-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 764
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v1

    const/4 v11, 0x0

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->internal_static_NoResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 765
    new-instance v12, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    new-array v13, v11, [Ljava/lang/String;

    invoke-direct {v12, v1, v13}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v12, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->internal_static_NoResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 769
    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getExtensions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->internalInit(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 770
    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getExtensions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v4, v1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->internalInit(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 771
    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getExtensions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v5, v1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->internalInit(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 772
    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getExtensions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v6, v1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->internalInit(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 773
    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getExtensions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v7, v1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->internalInit(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 774
    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getExtensions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v8, v1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->internalInit(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 775
    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getExtensions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3, v1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->internalInit(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 776
    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getExtensions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v9, v1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->internalInit(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 777
    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getExtensions()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v10, v1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->internalInit(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 778
    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getExtensions()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->internalInit(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 779
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->resolveAllFeaturesImmutable()V

    .line 780
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

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

    .line 722
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .registers 1

    .line 36
    invoke-static {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 2

    .line 22
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->messageDescription:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/ExtensionLite;)V

    .line 23
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->forceEmitMessage:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/ExtensionLite;)V

    .line 24
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->description:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/ExtensionLite;)V

    .line 25
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->serviceDescription:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/ExtensionLite;)V

    .line 26
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->serviceExecutionSite:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/ExtensionLite;)V

    .line 27
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->serviceType:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/ExtensionLite;)V

    .line 28
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->forceEmitService:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/ExtensionLite;)V

    .line 29
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->methodDescription:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/ExtensionLite;)V

    .line 30
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->enumDescription:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/ExtensionLite;)V

    .line 31
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->enumValueDescription:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/ExtensionLite;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUnifiedBaseSteamclient.EProtoExecutionSite (in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite)
.class public final enum Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;
.super Ljava/lang/Enum;
.source "SteammessagesUnifiedBaseSteamclient.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EProtoExecutionSite"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

.field private static final VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum k_EProtoExecutionSiteSteamClient:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

.field public static final k_EProtoExecutionSiteSteamClient_VALUE:I = 0x2

.field public static final enum k_EProtoExecutionSiteUnknown:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

.field public static final k_EProtoExecutionSiteUnknown_VALUE:I


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;
    .registers 2

    .line 42
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;->k_EProtoExecutionSiteUnknown:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;->k_EProtoExecutionSiteSteamClient:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

    filled-new-array {v0, v1}, [Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 47
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

    const-string v1, "k_EProtoExecutionSiteUnknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;->k_EProtoExecutionSiteUnknown:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

    .line 51
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-string v3, "k_EProtoExecutionSiteSteamClient"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;->k_EProtoExecutionSiteSteamClient:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

    .line 42
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;->$values()[Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

    .line 55
    sget-object v1, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x4

    const/16 v3, 0x1f

    const/4 v4, 0x1

    .line 55
    const-string v5, ""

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite$1;

    invoke-direct {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite$1;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 124
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;->values()[Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

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

    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 138
    iput p3, p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;->value:I

    return-void
.end method

.method public static forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;
    .registers 2

    if-eqz p0, :cond_a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_7

    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_7
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;->k_EProtoExecutionSiteSteamClient:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

    return-object p0

    .line 93
    :cond_a
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;->k_EProtoExecutionSiteUnknown:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 121
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;",
            ">;"
        }
    .end annotation

    .line 101
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    invoke-static {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;
    .registers 3

    .line 128
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 132
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 129
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 42
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;
    .registers 1

    .line 42
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 1

    .line 117
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final getNumber()I
    .registers 1

    .line 74
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;->value:I

    return p0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .registers 2

    .line 113
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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

###### Class in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUnifiedBaseSteamclient.EProtoExecutionSite.AnonymousClass1 (in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite$1)
.class public Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite$1;
.super Ljava/lang/Object;
.source "SteammessagesUnifiedBaseSteamclient.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 105
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

    .line 105
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite$1;->findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

    move-result-object p0

    return-object p0
.end method

.method public findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;
    .registers 2

    .line 107
    invoke-static {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoExecutionSite;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUnifiedBaseSteamclient.EProtoServiceType (in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUnifiedBaseSteamclient$EProtoServiceType)
.class public final enum Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;
.super Ljava/lang/Enum;
.source "SteammessagesUnifiedBaseSteamclient.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EProtoServiceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

.field private static final VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum k_EProtoServiceTypeSteamMessages:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

.field public static final k_EProtoServiceTypeSteamMessages_VALUE:I = 0x0

.field public static final enum k_EProtoServiceTypeVRGamepadUIMessages:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

.field public static final k_EProtoServiceTypeVRGamepadUIMessages_VALUE:I = 0x1


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;
    .registers 2

    .line 147
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;->k_EProtoServiceTypeSteamMessages:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

    sget-object v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;->k_EProtoServiceTypeVRGamepadUIMessages:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

    filled-new-array {v0, v1}, [Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 152
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

    const-string v1, "k_EProtoServiceTypeSteamMessages"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;->k_EProtoServiceTypeSteamMessages:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

    .line 156
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

    const-string v1, "k_EProtoServiceTypeVRGamepadUIMessages"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;->k_EProtoServiceTypeVRGamepadUIMessages:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

    .line 147
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;->$values()[Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

    .line 160
    sget-object v1, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

    .line 166
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x4

    const/16 v3, 0x1f

    const/4 v4, 0x1

    .line 160
    const-string v5, ""

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType$1;

    invoke-direct {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType$1;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 229
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;->values()[Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

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

    .line 242
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 243
    iput p3, p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;->value:I

    return-void
.end method

.method public static forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;
    .registers 2

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x0

    return-object p0

    .line 199
    :cond_7
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;->k_EProtoServiceTypeVRGamepadUIMessages:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

    return-object p0

    .line 198
    :cond_a
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;->k_EProtoServiceTypeSteamMessages:Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 226
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

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
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;",
            ">;"
        }
    .end annotation

    .line 206
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    invoke-static {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;
    .registers 3

    .line 233
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 237
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;->VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 234
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 147
    const-class v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;
    .registers 1

    .line 147
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;->$VALUES:[Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .registers 1

    .line 222
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final getNumber()I
    .registers 1

    .line 179
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;->value:I

    return p0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .registers 2

    .line 218
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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

###### Class in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUnifiedBaseSteamclient.EProtoServiceType.AnonymousClass1 (in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUnifiedBaseSteamclient$EProtoServiceType$1)
.class public Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType$1;
.super Ljava/lang/Object;
.source "SteammessagesUnifiedBaseSteamclient.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 210
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

    .line 210
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType$1;->findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

    move-result-object p0

    return-object p0
.end method

.method public findValueByNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;
    .registers 2

    .line 212
    invoke-static {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;->forNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesUnifiedBaseSteamclient$EProtoServiceType;

    move-result-object p0

    return-object p0
.end method
