###### Class in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos (in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos)
.class public final Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;
.super Ljava/lang/Object;
.source "BasicServerListProtos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;,
        Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerOrBuilder;,
        Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;,
        Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerListOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_BasicServerList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_BasicServerList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_BasicServer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_BasicServer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetinternal_static_BasicServerList_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->internal_static_BasicServerList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetinternal_static_BasicServerList_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 1

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->internal_static_BasicServerList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetinternal_static_BasicServer_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->internal_static_BasicServer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetinternal_static_BasicServer_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 1

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->internal_static_BasicServer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 12
    sget-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v1, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    const/16 v2, 0x1f

    const/4 v3, 0x1

    .line 12
    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 1559
    const-string v0, "\nHin/dragonbra/javasteam/protobufs/steam/discovery/basic_server_list.proto\"0\n\u000fBasicServerList\u0012\u001d\n\u0007servers\u0018\u0001 \u0003(\u000b2\u000c.BasicServer\">\n\u000bBasicServer\u0012\u000f\n\u0007address\u0018\u0001 \u0002(\t\u0012\u000c\n\u0004port\u0018\u0002 \u0002(\u0005\u0012\u0010\n\u0008protocol\u0018\u0003 \u0002(\u0005BK\n0in.dragonbra.javasteam.protobufs.steam.discoveryB\u0015BasicServerListProtosH\u0001"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1568
    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1569
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1573
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->internal_static_BasicServerList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1574
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Servers"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->internal_static_BasicServerList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 1579
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->internal_static_BasicServer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1580
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Port"

    const-string v3, "Protocol"

    const-string v4, "Address"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->internal_static_BasicServer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 1584
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

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

    .line 1554
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .registers 1

    .line 26
    invoke-static {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 1

    .line 0
    return-void
.end method

###### Class in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServer (in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos$BasicServer)
.class public final Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
.super Lcom/google/protobuf/GeneratedMessage;
.source "BasicServerListProtos.java"

# interfaces
.implements Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BasicServer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PORT_FIELD_NUMBER:I = 0x2

.field public static final PROTOCOL_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private volatile address_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private port_:I

.field private protocol_:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetaddress_(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->address_:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetbitField0_(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;)I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputaddress_(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;Ljava/lang/Object;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->address_:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;I)V
    .registers 2

    .line 0
    iput p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputport_(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;I)V
    .registers 2

    .line 0
    iput p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->port_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputprotocol_(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;I)V
    .registers 2

    .line 0
    iput p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->protocol_:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 832
    sget-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v1, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    .line 838
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    const/16 v2, 0x1f

    const/4 v3, 0x1

    .line 832
    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 1496
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    invoke-direct {v0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->DEFAULT_INSTANCE:Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    .line 1504
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$1;

    invoke-direct {v0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$1;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 844
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 863
    const-string v0, ""

    iput-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->address_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 912
    iput v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->port_:I

    .line 931
    iput v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->protocol_:I

    const/4 v1, -0x1

    .line 949
    iput-byte v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->memoizedIsInitialized:B

    .line 845
    iput-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->address_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 842
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 863
    const-string p1, ""

    iput-object p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->address_:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 912
    iput p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->port_:I

    .line 931
    iput p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->protocol_:I

    const/4 p1, -0x1

    .line 949
    iput-byte p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method public static getDefaultInstance()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
    .registers 1

    .line 1500
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->DEFAULT_INSTANCE:Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 850
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->-$$Nest$sfgetinternal_static_BasicServer_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;
    .registers 1

    .line 1137
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->DEFAULT_INSTANCE:Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->toBuilder()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;
    .registers 2

    .line 1140
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->DEFAULT_INSTANCE:Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->toBuilder()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->mergeFrom(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1109
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->PARSER:Lcom/google/protobuf/Parser;

    .line 1110
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1117
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->PARSER:Lcom/google/protobuf/Parser;

    .line 1118
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1076
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1082
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1123
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->PARSER:Lcom/google/protobuf/Parser;

    .line 1124
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1130
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->PARSER:Lcom/google/protobuf/Parser;

    .line 1131
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1096
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->PARSER:Lcom/google/protobuf/Parser;

    .line 1097
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1103
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->PARSER:Lcom/google/protobuf/Parser;

    .line 1104
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1065
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1071
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    return-object p0
.end method

.method public static parseFrom([B)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1086
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1092
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;",
            ">;"
        }
    .end annotation

    .line 1526
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1014
    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    if-nez v1, :cond_d

    .line 1015
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1017
    :cond_d
    check-cast p1, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    .line 1019
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->hasAddress()Z

    move-result v1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->hasAddress()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 1020
    :cond_1b
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->hasAddress()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1021
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1022
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 1024
    :cond_30
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->hasPort()Z

    move-result v1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->hasPort()Z

    move-result v2

    if-eq v1, v2, :cond_3b

    return v3

    .line 1025
    :cond_3b
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->hasPort()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1026
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->getPort()I

    move-result v1

    .line 1027
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->getPort()I

    move-result v2

    if-eq v1, v2, :cond_4c

    return v3

    .line 1029
    :cond_4c
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->hasProtocol()Z

    move-result v1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->hasProtocol()Z

    move-result v2

    if-eq v1, v2, :cond_57

    return v3

    .line 1030
    :cond_57
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->hasProtocol()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1031
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->getProtocol()I

    move-result v1

    .line 1032
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->getProtocol()I

    move-result v2

    if-eq v1, v2, :cond_68

    return v3

    .line 1034
    :cond_68
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_77

    return v3

    :cond_77
    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 3

    .line 879
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->address_:Ljava/lang/Object;

    .line 880
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 881
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 883
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 885
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 886
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 887
    iput-object v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->address_:Ljava/lang/Object;

    :cond_17
    return-object v1
.end method

.method public getAddressBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 899
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->address_:Ljava/lang/Object;

    .line 900
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 901
    check-cast v0, Ljava/lang/String;

    .line 902
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 904
    iput-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->address_:Ljava/lang/Object;

    return-object v0

    .line 907
    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 826
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->getDefaultInstanceForType()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 826
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->getDefaultInstanceForType()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
    .registers 1

    .line 1536
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->DEFAULT_INSTANCE:Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    return-object p0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;",
            ">;"
        }
    .end annotation

    .line 1531
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getPort()I
    .registers 1

    .line 927
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->port_:I

    return p0
.end method

.method public getProtocol()I
    .registers 1

    .line 946
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->protocol_:I

    return p0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 989
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 993
    :cond_6
    iget v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    .line 994
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->address_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessage;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 996
    :goto_14
    iget v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_21

    .line 997
    iget v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->port_:I

    .line 998
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1000
    :cond_21
    iget v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2f

    const/4 v1, 0x3

    .line 1001
    iget v2, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->protocol_:I

    .line 1002
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1004
    :cond_2f
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1005
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public hasAddress()Z
    .registers 2

    .line 871
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasPort()Z
    .registers 1

    .line 919
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public hasProtocol()Z
    .registers 1

    .line 938
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 1040
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 1044
    :cond_5
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 1045
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1047
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1049
    :cond_25
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->hasPort()Z

    move-result v0

    if-eqz v0, :cond_36

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 1051
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->getPort()I

    move-result v0

    add-int/2addr v1, v0

    .line 1053
    :cond_36
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->hasProtocol()Z

    move-result v0

    if-eqz v0, :cond_47

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 1055
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->getProtocol()I

    move-result v0

    add-int/2addr v1, v0

    :cond_47
    mul-int/lit8 v1, v1, 0x1d

    .line 1057
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1058
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 856
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->-$$Nest$sfgetinternal_static_BasicServer_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    const-class v1, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    .line 857
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 4

    .line 952
    iget-byte v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    .line 956
    :cond_a
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->hasAddress()Z

    move-result v0

    if-nez v0, :cond_13

    .line 957
    iput-byte v2, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->memoizedIsInitialized:B

    return v2

    .line 960
    :cond_13
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->hasPort()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 961
    iput-byte v2, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->memoizedIsInitialized:B

    return v2

    .line 964
    :cond_1c
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->hasProtocol()Z

    move-result v0

    if-nez v0, :cond_25

    .line 965
    iput-byte v2, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->memoizedIsInitialized:B

    return v2

    .line 968
    :cond_25
    iput-byte v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 826
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->newBuilderForType()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 826
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 826
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->newBuilderForType()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;
    .registers 1

    .line 1135
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->newBuilder()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;
    .registers 3

    .line 1151
    new-instance p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos-IA;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 826
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->toBuilder()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 826
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->toBuilder()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;
    .registers 3

    .line 1144
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->DEFAULT_INSTANCE:Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 1145
    new-instance p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    invoke-direct {p0, v1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;-><init>(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos-IA;)V

    goto :goto_14

    :cond_b
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;-><init>(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos-IA;)V

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->mergeFrom(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object p0

    :goto_14
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 975
    iget v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    .line 976
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->address_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessage;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 978
    :cond_b
    iget v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    .line 979
    iget v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->port_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 981
    :cond_16
    iget v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_22

    const/4 v0, 0x3

    .line 982
    iget v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->protocol_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 984
    :cond_22
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServer.AnonymousClass1 (in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos$BasicServer$1)
.class public Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$1;
.super Lcom/google/protobuf/AbstractParser;
.source "BasicServerListProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractParser<",
        "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1504
    invoke-direct {p0}, Lcom/google/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1510
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->newBuilder()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object p0

    .line 1512
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;
    :try_end_7
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_7} :catch_29
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_4 .. :try_end_7} :catch_1b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_c

    .line 1521
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->buildPartial()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object p0

    return-object p0

    :catch_c
    move-exception p1

    .line 1518
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1519
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->buildPartial()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_1b
    move-exception p1

    .line 1516
    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->buildPartial()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_29
    move-exception p1

    .line 1514
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->buildPartial()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

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
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1504
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServer.Builder (in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos$BasicServer$Builder)
.class public final Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "BasicServerListProtos.java"

# interfaces
.implements Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;",
        ">;",
        "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerOrBuilder;"
    }
.end annotation


# instance fields
.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private port_:I

.field private protocol_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1175
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1330
    const-string v0, ""

    iput-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->address_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V
    .registers 2

    .line 1181
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    .line 1330
    const-string p1, ""

    iput-object p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->address_:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;-><init>()V

    return-void
.end method

.method private buildPartial0(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;)V
    .registers 5

    .line 1223
    iget v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_d

    .line 1226
    iget-object v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->address_:Ljava/lang/Object;

    invoke-static {p1, v1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->-$$Nest$fputaddress_(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_19

    .line 1230
    iget v2, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->port_:I

    invoke-static {p1, v2}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->-$$Nest$fputport_(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;I)V

    or-int/lit8 v1, v1, 0x2

    :cond_19
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_24

    .line 1234
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->protocol_:I

    invoke-static {p1, p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->-$$Nest$fputprotocol_(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;I)V

    or-int/lit8 v1, v1, 0x4

    .line 1237
    :cond_24
    invoke-static {p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->-$$Nest$fgetbitField0_(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;)I

    move-result p0

    or-int/2addr p0, v1

    invoke-static {p1, p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->-$$Nest$fputbitField0_(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;I)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1163
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->-$$Nest$sfgetinternal_static_BasicServer_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 1

    .line 1157
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->build()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 1157
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->build()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object p0

    return-object p0
.end method

.method public build()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
    .registers 2

    .line 1207
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->buildPartial()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object p0

    .line 1208
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 1209
    :cond_b
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 1

    .line 1157
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->buildPartial()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 1157
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->buildPartial()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
    .registers 3

    .line 1216
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos-IA;)V

    .line 1217
    iget v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    if-eqz v1, :cond_d

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->buildPartial0(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;)V

    .line 1218
    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 1157
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->clear()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 1

    .line 1157
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->clear()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 1157
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->clear()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 1157
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->clear()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;
    .registers 3

    .line 1186
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 1187
    iput v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    .line 1188
    const-string v1, ""

    iput-object v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->address_:Ljava/lang/Object;

    .line 1189
    iput v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->port_:I

    .line 1190
    iput v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->protocol_:I

    return-object p0
.end method

.method public clearAddress()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;
    .registers 2

    .line 1391
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->getDefaultInstance()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->address_:Ljava/lang/Object;

    .line 1392
    iget v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    .line 1393
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPort()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;
    .registers 2

    .line 1444
    iget v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 1445
    iput v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->port_:I

    .line 1446
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearProtocol()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;
    .registers 2

    .line 1484
    iget v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 1485
    iput v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->protocol_:I

    .line 1486
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 3

    .line 1343
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->address_:Ljava/lang/Object;

    .line 1344
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_15

    .line 1345
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1347
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1348
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1349
    iput-object v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->address_:Ljava/lang/Object;

    :cond_14
    return-object v1

    .line 1353
    :cond_15
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAddressBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 1362
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->address_:Ljava/lang/Object;

    .line 1363
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1364
    check-cast v0, Ljava/lang/String;

    .line 1365
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1367
    iput-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->address_:Ljava/lang/Object;

    return-object v0

    .line 1370
    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 1157
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->getDefaultInstanceForType()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 1157
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->getDefaultInstanceForType()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
    .registers 1

    .line 1202
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->getDefaultInstance()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1197
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->-$$Nest$sfgetinternal_static_BasicServer_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getPort()I
    .registers 1

    .line 1425
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->port_:I

    return p0
.end method

.method public getProtocol()I
    .registers 1

    .line 1465
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->protocol_:I

    return p0
.end method

.method public hasAddress()Z
    .registers 2

    .line 1336
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasPort()Z
    .registers 1

    .line 1417
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public hasProtocol()Z
    .registers 1

    .line 1457
    iget p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 1169
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->-$$Nest$sfgetinternal_static_BasicServer_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    const-class v1, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    .line 1170
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 1270
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->hasAddress()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1273
    :cond_8
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->hasPort()Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    .line 1276
    :cond_f
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->hasProtocol()Z

    move-result p0

    if-nez p0, :cond_16

    return v1

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1157
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1157
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1157
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1157
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1157
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1157
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1288
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_54

    .line 1293
    :try_start_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1f

    const/16 v3, 0xa

    if-eq v1, v3, :cond_3f

    const/16 v3, 0x10

    if-eq v1, v3, :cond_32

    const/16 v3, 0x18

    if-eq v1, v3, :cond_25

    .line 1314
    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/GeneratedMessage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1f
    move v0, v2

    goto :goto_4

    :catchall_21
    move-exception p1

    goto :goto_50

    :catch_23
    move-exception p1

    goto :goto_4b

    .line 1309
    :cond_25
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->protocol_:I

    .line 1310
    iget v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    goto :goto_4

    .line 1304
    :cond_32
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->port_:I

    .line 1305
    iget v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    goto :goto_4

    .line 1299
    :cond_3f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->address_:Ljava/lang/Object;

    .line 1300
    iget v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I
    :try_end_4a
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6 .. :try_end_4a} :catch_23
    .catchall {:try_start_6 .. :try_end_4a} :catchall_21

    goto :goto_4

    .line 1322
    :goto_4b
    :try_start_4b
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_21

    .line 1324
    :goto_50
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 1325
    throw p1

    .line 1324
    :cond_54
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;
    .registers 3

    .line 1242
    instance-of v0, p1, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    if-eqz v0, :cond_b

    .line 1243
    check-cast p1, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->mergeFrom(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    move-result-object p0

    return-object p0

    .line 1245
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;
    .registers 3

    .line 1251
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->getDefaultInstance()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 1252
    :cond_7
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1253
    invoke-static {p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->-$$Nest$fgetaddress_(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->address_:Ljava/lang/Object;

    .line 1254
    iget v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    .line 1255
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 1257
    :cond_1c
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->hasPort()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1258
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->getPort()I

    move-result v0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->setPort(I)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    .line 1260
    :cond_29
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->hasProtocol()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1261
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->getProtocol()I

    move-result v0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->setProtocol(I)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    .line 1263
    :cond_36
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1264
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setAddress(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;
    .registers 2

    .line 1380
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1381
    iput-object p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->address_:Ljava/lang/Object;

    .line 1382
    iget p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    .line 1383
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setAddressBytes(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;
    .registers 2

    .line 1403
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1404
    iput-object p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->address_:Ljava/lang/Object;

    .line 1405
    iget p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    .line 1406
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setPort(I)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;
    .registers 2

    .line 1434
    iput p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->port_:I

    .line 1435
    iget p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    .line 1436
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setProtocol(I)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;
    .registers 2

    .line 1474
    iput p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->protocol_:I

    .line 1475
    iget p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->bitField0_:I

    .line 1476
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

###### Class in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerList (in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos$BasicServerList)
.class public final Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;
.super Lcom/google/protobuf/GeneratedMessage;
.source "BasicServerListProtos.java"

# interfaces
.implements Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BasicServerList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVERS_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private servers_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetservers_(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->servers_:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputservers_(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;Ljava/util/List;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->servers_:Ljava/util/List;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 66
    sget-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v1, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    .line 72
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    const/16 v2, 0x1f

    const/4 v3, 0x1

    .line 66
    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 735
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    invoke-direct {v0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->DEFAULT_INSTANCE:Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    .line 743
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$1;

    invoke-direct {v0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$1;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 136
    iput-byte v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->memoizedIsInitialized:B

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->servers_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 p1, -0x1

    .line 136
    iput-byte p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method public static synthetic access$000()Z
    .registers 1

    .line 60
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;
    .registers 1

    .line 739
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->DEFAULT_INSTANCE:Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 84
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->-$$Nest$sfgetinternal_static_BasicServerList_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;
    .registers 1

    .line 284
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->DEFAULT_INSTANCE:Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->toBuilder()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;
    .registers 2

    .line 287
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->DEFAULT_INSTANCE:Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->toBuilder()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->mergeFrom(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->PARSER:Lcom/google/protobuf/Parser;

    .line 257
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->PARSER:Lcom/google/protobuf/Parser;

    .line 265
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 223
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 229
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->PARSER:Lcom/google/protobuf/Parser;

    .line 271
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->PARSER:Lcom/google/protobuf/Parser;

    .line 278
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->PARSER:Lcom/google/protobuf/Parser;

    .line 244
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->PARSER:Lcom/google/protobuf/Parser;

    .line 251
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 212
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 218
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    return-object p0
.end method

.method public static parseFrom([B)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 233
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 239
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;",
            ">;"
        }
    .end annotation

    .line 765
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 182
    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    if-nez v1, :cond_d

    .line 183
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 185
    :cond_d
    check-cast p1, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    .line 187
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->getServersList()Ljava/util/List;

    move-result-object v1

    .line 188
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->getServersList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 189
    :cond_1f
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    return v2

    :cond_2e
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 60
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->getDefaultInstanceForType()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 60
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->getDefaultInstanceForType()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;
    .registers 1

    .line 775
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->DEFAULT_INSTANCE:Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    return-object p0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;",
            ">;"
        }
    .end annotation

    .line 770
    sget-object p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 164
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    .line 168
    :goto_8
    iget-object v2, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->servers_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 169
    iget-object v2, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->servers_:Ljava/util/List;

    .line 170
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 172
    :cond_21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 173
    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v1
.end method

.method public getServers(I)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
    .registers 2

    .line 125
    iget-object p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->servers_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    return-object p0
.end method

.method public getServersCount()I
    .registers 1

    .line 118
    iget-object p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->servers_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getServersList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->servers_:Ljava/util/List;

    return-object p0
.end method

.method public getServersOrBuilder(I)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerOrBuilder;
    .registers 2

    .line 133
    iget-object p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->servers_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerOrBuilder;

    return-object p0
.end method

.method public getServersOrBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerOrBuilder;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->servers_:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .line 195
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 199
    :cond_5
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 200
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->getServersCount()I

    move-result v0

    if-lez v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 202
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->getServersList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_25
    mul-int/lit8 v1, v1, 0x1d

    .line 204
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 205
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 90
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->-$$Nest$sfgetinternal_static_BasicServerList_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    const-class v1, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    .line 91
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 5

    .line 139
    iget-byte v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    move v0, v2

    .line 143
    :goto_b
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->getServersCount()I

    move-result v3

    if-ge v0, v3, :cond_21

    .line 144
    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->getServers(I)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object v3

    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 145
    iput-byte v2, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->memoizedIsInitialized:B

    return v2

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 149
    :cond_21
    iput-byte v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 60
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->newBuilderForType()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 60
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->newBuilderForType()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;
    .registers 1

    .line 282
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->newBuilder()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;
    .registers 3

    .line 298
    new-instance p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos-IA;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 60
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->toBuilder()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 60
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->toBuilder()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;
    .registers 3

    .line 291
    sget-object v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->DEFAULT_INSTANCE:Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 292
    new-instance p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    invoke-direct {p0, v1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;-><init>(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos-IA;)V

    goto :goto_14

    :cond_b
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;-><init>(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos-IA;)V

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->mergeFrom(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    move-result-object p0

    :goto_14
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 156
    :goto_1
    iget-object v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->servers_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 157
    iget-object v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->servers_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    :cond_18
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerList.AnonymousClass1 (in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos$BasicServerList$1)
.class public Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$1;
.super Lcom/google/protobuf/AbstractParser;
.source "BasicServerListProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractParser<",
        "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 743
    invoke-direct {p0}, Lcom/google/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 749
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->newBuilder()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    move-result-object p0

    .line 751
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;
    :try_end_7
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_7} :catch_29
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_4 .. :try_end_7} :catch_1b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_c

    .line 760
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->buildPartial()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    move-result-object p0

    return-object p0

    :catch_c
    move-exception p1

    .line 757
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 758
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->buildPartial()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_1b
    move-exception p1

    .line 755
    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->buildPartial()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_29
    move-exception p1

    .line 753
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->buildPartial()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

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
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 743
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerList.Builder (in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos$BasicServerList$Builder)
.class public final Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "BasicServerListProtos.java"

# interfaces
.implements Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;",
        ">;",
        "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerListOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;",
            "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;",
            "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private servers_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 322
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 490
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V
    .registers 2

    .line 328
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    .line 490
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;-><init>()V

    return-void
.end method

.method private buildPartial0(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;)V
    .registers 2

    .line 0
    return-void
.end method

.method private buildPartialRepeatedFields(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;)V
    .registers 3

    .line 375
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1e

    .line 376
    iget v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    .line 377
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    .line 378
    iget v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->bitField0_:I

    .line 380
    :cond_18
    iget-object p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    invoke-static {p1, p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->-$$Nest$fputservers_(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;Ljava/util/List;)V

    goto :goto_25

    .line 382
    :cond_1e
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->-$$Nest$fputservers_(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;Ljava/util/List;)V

    :goto_25
    return-void
.end method

.method private ensureServersIsMutable()V
    .registers 3

    .line 492
    iget v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    .line 494
    iget v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 310
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->-$$Nest$sfgetinternal_static_BasicServerList_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private internalGetServersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;",
            "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;",
            "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerOrBuilder;",
            ">;"
        }
    .end annotation

    .line 717
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_20

    .line 718
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    iget v2, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    .line 722
    :goto_10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/AbstractMessage$BuilderParent;

    move-result-object v2

    .line 723
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    .line 724
    iput-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    .line 726
    :cond_20
    iget-object p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method


# virtual methods
.method public addAllServers(Ljava/lang/Iterable;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;",
            ">;)",
            "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;"
        }
    .end annotation

    .line 628
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_10

    .line 629
    invoke-direct {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->ensureServersIsMutable()V

    .line 630
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 632
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_13

    .line 634
    :cond_10
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_13
    return-object p0
.end method

.method public addServers(ILin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;
    .registers 4

    .line 614
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_14

    .line 615
    invoke-direct {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->ensureServersIsMutable()V

    .line 616
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->build()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 617
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1b

    .line 619
    :cond_14
    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->build()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_1b
    return-object p0
.end method

.method public addServers(ILin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;
    .registers 4

    .line 583
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_13

    .line 585
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 587
    invoke-direct {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->ensureServersIsMutable()V

    .line 588
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 589
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_16

    .line 591
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_16
    return-object p0
.end method

.method public addServers(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;
    .registers 3

    .line 600
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_14

    .line 601
    invoke-direct {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->ensureServersIsMutable()V

    .line 602
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->build()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1b

    .line 605
    :cond_14
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->build()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_1b
    return-object p0
.end method

.method public addServers(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;
    .registers 3

    .line 566
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_13

    .line 568
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 570
    invoke-direct {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->ensureServersIsMutable()V

    .line 571
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_16

    .line 574
    :cond_13
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_16
    return-object p0
.end method

.method public addServersBuilder()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;
    .registers 2

    .line 696
    invoke-direct {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->internalGetServersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object p0

    .line 697
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->getDefaultInstance()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object v0

    .line 696
    invoke-virtual {p0, v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    return-object p0
.end method

.method public addServersBuilder(I)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;
    .registers 3

    .line 704
    invoke-direct {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->internalGetServersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object p0

    .line 705
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->getDefaultInstance()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object v0

    .line 704
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 1

    .line 304
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->build()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 304
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->build()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    move-result-object p0

    return-object p0
.end method

.method public build()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;
    .registers 2

    .line 358
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->buildPartial()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    move-result-object p0

    .line 359
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 360
    :cond_b
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 1

    .line 304
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->buildPartial()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 304
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->buildPartial()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;
    .registers 3

    .line 367
    new-instance v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos-IA;)V

    .line 368
    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->buildPartialRepeatedFields(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;)V

    .line 369
    iget v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->bitField0_:I

    if-eqz v1, :cond_10

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->buildPartial0(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;)V

    .line 370
    :cond_10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 304
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->clear()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 1

    .line 304
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->clear()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 304
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->clear()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 304
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->clear()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;
    .registers 3

    .line 333
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 334
    iput v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->bitField0_:I

    .line 335
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_11

    .line 336
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    goto :goto_17

    :cond_11
    const/4 v1, 0x0

    .line 338
    iput-object v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    .line 339
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    .line 341
    :goto_17
    iget v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearServers()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;
    .registers 2

    .line 642
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_14

    .line 643
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    .line 644
    iget v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->bitField0_:I

    .line 645
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_17

    .line 647
    :cond_14
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_17
    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 304
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->getDefaultInstanceForType()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 304
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->getDefaultInstanceForType()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;
    .registers 1

    .line 353
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->getDefaultInstance()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 348
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->-$$Nest$sfgetinternal_static_BasicServerList_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getServers(I)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
    .registers 3

    .line 525
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_d

    .line 526
    iget-object p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    return-object p0

    .line 528
    :cond_d
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    return-object p0
.end method

.method public getServersBuilder(I)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;
    .registers 2

    .line 669
    invoke-direct {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->internalGetServersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;

    return-object p0
.end method

.method public getServersBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;",
            ">;"
        }
    .end annotation

    .line 712
    invoke-direct {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->internalGetServersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getServersCount()I
    .registers 2

    .line 515
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_b

    .line 516
    iget-object p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    .line 518
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result p0

    return p0
.end method

.method public getServersList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;",
            ">;"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_b

    .line 506
    iget-object p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 508
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getServersOrBuilder(I)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerOrBuilder;
    .registers 3

    .line 676
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_d

    .line 677
    iget-object p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerOrBuilder;

    return-object p0

    .line 678
    :cond_d
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerOrBuilder;

    return-object p0
.end method

.method public getServersOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerOrBuilder;",
            ">;"
        }
    .end annotation

    .line 686
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_9

    .line 687
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 689
    :cond_9
    iget-object p0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 316
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;->-$$Nest$sfgetinternal_static_BasicServerList_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    const-class v1, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    .line 317
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 435
    :goto_2
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->getServersCount()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 436
    invoke-virtual {p0, v1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->getServers(I)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object v2

    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_13

    return v0

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 304
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 304
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_41

    .line 454
    :try_start_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    const/16 v3, 0xa

    if-eq v1, v3, :cond_1d

    .line 473
    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/GeneratedMessage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_17
    move v0, v2

    goto :goto_4

    :catchall_19
    move-exception p1

    goto :goto_3d

    :catch_1b
    move-exception p1

    goto :goto_38

    .line 462
    :cond_1d
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;->parser()Lcom/google/protobuf/Parser;

    move-result-object v1

    .line 461
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    .line 464
    iget-object v2, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_34

    .line 465
    invoke-direct {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->ensureServersIsMutable()V

    .line 466
    iget-object v2, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 468
    :cond_34
    invoke-virtual {v2, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;
    :try_end_37
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6 .. :try_end_37} :catch_1b
    .catchall {:try_start_6 .. :try_end_37} :catchall_19

    goto :goto_4

    .line 481
    :goto_38
    :try_start_38
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_19

    .line 483
    :goto_3d
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 484
    throw p1

    .line 483
    :cond_41
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;
    .registers 3

    .line 392
    instance-of v0, p1, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    if-eqz v0, :cond_b

    .line 393
    check-cast p1, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->mergeFrom(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;

    move-result-object p0

    return-object p0

    .line 395
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;
    .registers 4

    .line 401
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->getDefaultInstance()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 402
    :cond_7
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_3a

    .line 403
    invoke-static {p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->-$$Nest$fgetservers_(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 404
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 405
    invoke-static {p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->-$$Nest$fgetservers_(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    .line 406
    iget v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->bitField0_:I

    goto :goto_36

    .line 408
    :cond_2a
    invoke-direct {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->ensureServersIsMutable()V

    .line 409
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    invoke-static {p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->-$$Nest$fgetservers_(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 411
    :goto_36
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_76

    .line 414
    :cond_3a
    invoke-static {p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->-$$Nest$fgetservers_(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 415
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 416
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    const/4 v0, 0x0

    .line 417
    iput-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 418
    invoke-static {p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->-$$Nest$fgetservers_(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    .line 419
    iget v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->bitField0_:I

    .line 421
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->access$000()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 422
    invoke-direct {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->internalGetServersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_6a
    iput-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_76

    .line 424
    :cond_6d
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;->-$$Nest$fgetservers_(Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 428
    :cond_76
    :goto_76
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 429
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public removeServers(I)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;
    .registers 3

    .line 655
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_10

    .line 656
    invoke-direct {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->ensureServersIsMutable()V

    .line 657
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 658
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_13

    .line 660
    :cond_10
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    :goto_13
    return-object p0
.end method

.method public setServers(ILin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;
    .registers 4

    .line 553
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_14

    .line 554
    invoke-direct {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->ensureServersIsMutable()V

    .line 555
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->build()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 556
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1b

    .line 558
    :cond_14
    invoke-virtual {p2}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer$Builder;->build()Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_1b
    return-object p0
.end method

.method public setServers(ILin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;
    .registers 4

    .line 536
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->serversBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_13

    .line 538
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 540
    invoke-direct {p0}, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->ensureServersIsMutable()V

    .line 541
    iget-object v0, p0, Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerList$Builder;->servers_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 542
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_16

    .line 544
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    :goto_16
    return-object p0
.end method

###### Class in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerListOrBuilder (in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos$BasicServerListOrBuilder)
.class public interface abstract Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerListOrBuilder;
.super Ljava/lang/Object;
.source "BasicServerListProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BasicServerListOrBuilder"
.end annotation


# virtual methods
.method public abstract getServers(I)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;
.end method

.method public abstract getServersCount()I
.end method

.method public abstract getServersList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServersOrBuilder(I)Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerOrBuilder;
.end method

.method public abstract getServersOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerOrBuilder;",
            ">;"
        }
    .end annotation
.end method

###### Class in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos.BasicServerOrBuilder (in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos$BasicServerOrBuilder)
.class public interface abstract Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos$BasicServerOrBuilder;
.super Ljava/lang/Object;
.source "BasicServerListProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/protobufs/steam/discovery/BasicServerListProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BasicServerOrBuilder"
.end annotation


# virtual methods
.method public abstract getAddress()Ljava/lang/String;
.end method

.method public abstract getAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPort()I
.end method

.method public abstract getProtocol()I
.end method

.method public abstract hasAddress()Z
.end method

.method public abstract hasPort()Z
.end method

.method public abstract hasProtocol()Z
.end method
