###### Class com.sourcevrport.platform.GModServerDirectory (com.sourcevrport.platform.GModServerDirectory)
.class public final Lcom/sourcevrport/platform/GModServerDirectory;
.super Ljava/lang/Object;
.source "GModServerDirectory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sourcevrport/platform/GModServerDirectory$IdentityProvider;,
        Lcom/sourcevrport/platform/GModServerDirectory$Job;,
        Lcom/sourcevrport/platform/GModServerDirectory$DirectoryService;
    }
.end annotation


# static fields
.field private static final JOBS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sourcevrport/platform/GModServerDirectory$Job;",
            ">;"
        }
    .end annotation
.end field

.field private static final NEXT:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile identity:Lcom/sourcevrport/platform/GModServerDirectory$IdentityProvider;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetidentity()Lcom/sourcevrport/platform/GModServerDirectory$IdentityProvider;
    .registers 1

    .line 0
    sget-object v0, Lcom/sourcevrport/platform/GModServerDirectory;->identity:Lcom/sourcevrport/platform/GModServerDirectory$IdentityProvider;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sourcevrport/platform/GModServerDirectory;->NEXT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sourcevrport/platform/GModServerDirectory;->JOBS:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static address(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Server;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Server;)Ljava/lang/String;
    .registers 5

    .line 65
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Server;->toBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Server$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Server$Builder;->mergeFrom(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Server;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Server$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Server$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Server;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Server;->hasServerIp()Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Server;->getServerIp()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;->getV4()I

    move-result p1

    goto :goto_1f

    :cond_1b
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Server;->getDeprecatedServerIp()I

    move-result p1

    .line 67
    :goto_1f
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Server;->getQueryPort()I

    move-result p0

    if-eqz p1, :cond_64

    if-lez p0, :cond_64

    const v0, 0xffff

    if-le p0, v0, :cond_2d

    goto :goto_64

    .line 69
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_64
    :goto_64
    const/4 p0, 0x0

    return-object p0
.end method

.method public static cancel(I)V
    .registers 2

    .line 55
    sget-object v0, Lcom/sourcevrport/platform/GModServerDirectory;->JOBS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;

    if-eqz p0, :cond_11

    .line 56
    invoke-virtual {p0}, Lcom/sourcevrport/platform/GModServerDirectory$Job;->close()V

    :cond_11
    return-void
.end method

.method public static initialize(Lcom/sourcevrport/platform/GModServerDirectory$IdentityProvider;)V
    .registers 1

    .line 36
    sput-object p0, Lcom/sourcevrport/platform/GModServerDirectory;->identity:Lcom/sourcevrport/platform/GModServerDirectory$IdentityProvider;

    return-void
.end method

.method public static poll(I)[Ljava/lang/String;
    .registers 4

    .line 47
    sget-object v0, Lcom/sourcevrport/platform/GModServerDirectory;->JOBS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;

    if-nez p0, :cond_15

    .line 48
    const-string p0, "done"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 49
    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    :goto_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x100

    if-ge v1, v2, :cond_30

    iget-object v1, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->events:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_30
    const/4 p0, 0x0

    .line 52
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static response(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/UnknownFieldSet;->getField(I)Lcom/google/protobuf/UnknownFieldSet$Field;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSet$Field;->getLengthDelimitedList()Ljava/util/List;

    move-result-object p0

    .line 60
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_1f

    const/4 v0, 0x0

    .line 61
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/ByteString;

    invoke-static {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse;

    move-result-object p0

    return-object p0

    .line 60
    :cond_1f
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Steam returned an invalid directory reply"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shutdown()V
    .registers 2

    const/4 v0, 0x0

    .line 38
    sput-object v0, Lcom/sourcevrport/platform/GModServerDirectory;->identity:Lcom/sourcevrport/platform/GModServerDirectory$IdentityProvider;

    .line 39
    sget-object v0, Lcom/sourcevrport/platform/GModServerDirectory;->JOBS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/sourcevrport/platform/GModServerDirectory;->cancel(I)V

    goto :goto_d

    :cond_21
    return-void
.end method

.method public static start()I
    .registers 4

    .line 42
    sget-object v0, Lcom/sourcevrport/platform/GModServerDirectory;->JOBS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_c

    const/4 v0, 0x0

    return v0

    .line 43
    :cond_c
    sget-object v1, Lcom/sourcevrport/platform/GModServerDirectory;->NEXT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 44
    new-instance v2, Lcom/sourcevrport/platform/GModServerDirectory$Job;

    invoke-direct {v2}, Lcom/sourcevrport/platform/GModServerDirectory$Job;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/sourcevrport/platform/GModServerDirectory$Job;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return v1
.end method

###### Class com.sourcevrport.platform.GModServerDirectory.DirectoryService (com.sourcevrport.platform.GModServerDirectory$DirectoryService)
.class public final Lcom/sourcevrport/platform/GModServerDirectory$DirectoryService;
.super Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;
.source "GModServerDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sourcevrport/platform/GModServerDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirectoryService"
.end annotation


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;)V

    return-void
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .registers 1

    .line 73
    const-string p0, "GameServers"

    return-object p0
.end method

.method public handleNotificationMsg(Ljava/lang/String;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V
    .registers 3

    .line 0
    return-void
.end method

.method public handleResponseMsg(Ljava/lang/String;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V
    .registers 4

    .line 75
    const-string v0, "MasterServerQuery"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-class p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;->postResponseMsg(Ljava/lang/Class;Lin/dragonbra/javasteam/base/PacketClientMsgProtobuf;)V

    :cond_d
    return-void
.end method

###### Class com.sourcevrport.platform.GModServerDirectory.IdentityProvider (com.sourcevrport.platform.GModServerDirectory$IdentityProvider)
.class public interface abstract Lcom/sourcevrport/platform/GModServerDirectory$IdentityProvider;
.super Ljava/lang/Object;
.source "GModServerDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sourcevrport/platform/GModServerDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IdentityProvider"
.end annotation


# virtual methods
.method public abstract savedIdentity()Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

###### Class com.sourcevrport.platform.GModServerDirectory.Job (com.sourcevrport.platform.GModServerDirectory$Job)
.class final Lcom/sourcevrport/platform/GModServerDirectory$Job;
.super Ljava/lang/Object;
.source "GModServerDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sourcevrport/platform/GModServerDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Job"
.end annotation


# instance fields
.field final callbacks:Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;

.field final client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

.field volatile closed:Z

.field final connected:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final events:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final loggedOn:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/enums/EResult;",
            ">;"
        }
    .end annotation
.end field

.field final pump:Ljava/lang/Thread;

.field final subscriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field final worker:Ljava/lang/Thread;


# direct methods
.method public static synthetic $r8$lambda$3_BbZavc_j5PHt4js0sdXez-g0Q(Lcom/sourcevrport/platform/GModServerDirectory$Job;Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sourcevrport/platform/GModServerDirectory$Job;->lambda$new$1(Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mPSQ8Xx7Fk1-JDs7y8dbffGY4q0(Lcom/sourcevrport/platform/GModServerDirectory$Job;Lin/dragonbra/javasteam/steam/steamclient/callbacks/DisconnectedCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sourcevrport/platform/GModServerDirectory$Job;->lambda$new$2(Lin/dragonbra/javasteam/steam/steamclient/callbacks/DisconnectedCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mQa_gXzelVciTgVnvLqAec3nY-A(Lcom/sourcevrport/platform/GModServerDirectory$Job;Lin/dragonbra/javasteam/steam/steamclient/callbacks/ConnectedCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sourcevrport/platform/GModServerDirectory$Job;->lambda$new$0(Lin/dragonbra/javasteam/steam/steamclient/callbacks/ConnectedCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uCL-ArMNSYudX9Yh_384NZT0Huc(Lcom/sourcevrport/platform/GModServerDirectory$Job;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sourcevrport/platform/GModServerDirectory$Job;->lambda$new$3()V

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;-><init>()V

    iput-object v0, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    .line 81
    new-instance v1, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;

    invoke-direct {v1, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)V

    iput-object v1, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->callbacks:Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->events:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->subscriptions:Ljava/util/ArrayList;

    .line 84
    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v2, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->connected:Ljava/util/concurrent/CompletableFuture;

    .line 85
    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v2, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->loggedOn:Ljava/util/concurrent/CompletableFuture;

    .line 89
    new-instance v2, Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda0;-><init>(Lcom/sourcevrport/platform/GModServerDirectory$Job;)V

    const-class v3, Lin/dragonbra/javasteam/steam/steamclient/callbacks/ConnectedCallback;

    invoke-virtual {v1, v3, v2}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->subscribe(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;)Ljava/io/Closeable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v2, Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda1;-><init>(Lcom/sourcevrport/platform/GModServerDirectory$Job;)V

    const-class v3, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;

    invoke-virtual {v1, v3, v2}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->subscribe(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;)Ljava/io/Closeable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v2, Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda2;-><init>(Lcom/sourcevrport/platform/GModServerDirectory$Job;)V

    const-class v3, Lin/dragonbra/javasteam/steam/steamclient/callbacks/DisconnectedCallback;

    invoke-virtual {v1, v3, v2}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->subscribe(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;)Ljava/io/Closeable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda3;-><init>(Lcom/sourcevrport/platform/GModServerDirectory$Job;)V

    const-string v2, "GMod server directory callbacks"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->pump:Ljava/lang/Thread;

    .line 99
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda4;-><init>(Lcom/sourcevrport/platform/GModServerDirectory$Job;)V

    const-string v3, "GMod server directory"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->worker:Ljava/lang/Thread;

    const/4 p0, 0x1

    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Lin/dragonbra/javasteam/steam/steamclient/callbacks/ConnectedCallback;)V
    .registers 2

    .line 89
    iget-object p0, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->connected:Ljava/util/concurrent/CompletableFuture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$new$1(Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;)V
    .registers 2

    .line 90
    iget-object p0, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->loggedOn:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$new$2(Lin/dragonbra/javasteam/steam/steamclient/callbacks/DisconnectedCallback;)V
    .registers 3

    .line 92
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Steam server directory disconnected"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->connected:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    iget-object p0, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->loggedOn:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private synthetic lambda$new$3()V
    .registers 4

    .line 96
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->closed:Z

    if-nez v0, :cond_1a

    :try_start_4
    iget-object v0, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->callbacks:Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->runWaitCallbacks(J)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_0

    .line 97
    :catch_c
    iget-boolean v0, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->closed:Z

    if-nez v0, :cond_1a

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1a
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    monitor-enter p0

    .line 154
    :try_start_1
    iget-boolean v0, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_20

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 155
    :try_start_8
    iput-boolean v0, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->closed:Z

    .line 156
    iget-object v0, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/CMClient;->disconnect()V

    iget-object v0, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->pump:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 157
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->worker:Ljava/lang/Thread;

    if-eq v0, v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_22

    :catchall_20
    move-exception v0

    goto :goto_3a

    .line 158
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->subscriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_28
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_20

    :try_start_34
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_28
    .catchall {:try_start_34 .. :try_end_37} :catchall_20

    goto :goto_28

    .line 159
    :cond_38
    monitor-exit p0

    return-void

    :goto_3a
    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_20

    throw v0
.end method

.method public query()V
    .registers 12

    .line 103
    const-string v0, "done"

    const-string v1, "connecting"

    .line 105
    :try_start_4
    iget-boolean v2, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->closed:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6} :catch_4a
    .catchall {:try_start_4 .. :try_end_6} :catchall_47

    if-eqz v2, :cond_11

    .line 150
    :goto_8
    iget-object v1, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->events:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sourcevrport/platform/GModServerDirectory$Job;->close()V

    return-void

    .line 106
    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->pump:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    iget-object v2, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/CMClient;->connect()V

    iget-object v2, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->connected:Ljava/util/concurrent/CompletableFuture;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x19

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 107
    iget-boolean v2, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->closed:Z

    if-eqz v2, :cond_29

    goto :goto_8

    .line 108
    :cond_29
    const-string v1, "sign-in"

    .line 109
    invoke-static {}, Lcom/sourcevrport/platform/GModServerDirectory;->-$$Nest$sfgetidentity()Lcom/sourcevrport/platform/GModServerDirectory$IdentityProvider;

    move-result-object v2

    if-nez v2, :cond_33

    const/4 v2, 0x0

    goto :goto_37

    .line 110
    :cond_33
    invoke-interface {v2}, Lcom/sourcevrport/platform/GModServerDirectory$IdentityProvider;->savedIdentity()Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;

    move-result-object v2
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_37} :catch_4a
    .catchall {:try_start_11 .. :try_end_37} :catchall_47

    .line 111
    :goto_37
    const-class v6, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;

    if-nez v2, :cond_4d

    :try_start_3b
    iget-object v2, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-virtual {v2, v6}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getHandler(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    move-result-object v2

    check-cast v2, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;

    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;->logOnAnonymous()V

    goto :goto_58

    :catchall_47
    move-exception v1

    goto/16 :goto_1cd

    :catch_4a
    move-exception v2

    goto/16 :goto_187

    .line 112
    :cond_4d
    iget-object v7, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-virtual {v7, v6}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getHandler(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    move-result-object v6

    check-cast v6, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;

    invoke-virtual {v6, v2}, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;->logOn(Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;)V

    .line 113
    :goto_58
    iget-object v2, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->loggedOn:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    sget-object v6, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-ne v2, v6, :cond_17f

    .line 115
    iget-object v2, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    const-class v7, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    invoke-virtual {v2, v7}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getHandler(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    move-result-object v2

    check-cast v2, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;

    .line 116
    const-class v7, Lcom/sourcevrport/platform/GModServerDirectory$DirectoryService;

    invoke-virtual {v2, v7}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->createService(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/UnifiedService;

    .line 117
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;

    move-result-object v7

    const/16 v8, 0xfa0

    invoke-virtual {v7, v8}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;

    move-result-object v7

    const-string v9, "\\appid\\4000"

    .line 118
    invoke-virtual {v7, v9}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;->setFilterText(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;

    move-result-object v7

    const/16 v9, 0xff

    invoke-virtual {v7, v9}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;->setRegionCode(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;

    move-result-object v7

    const/16 v9, 0x4e20

    invoke-virtual {v7, v9}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;->setMaxServers(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery;

    move-result-object v7

    .line 124
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;

    move-result-object v8

    .line 125
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v9

    .line 126
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/google/protobuf/AbstractMessageLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->addLengthDelimited(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->build()Lcom/google/protobuf/UnknownFieldSet$Field;

    move-result-object v7

    const/4 v10, 0x2

    .line 125
    invoke-virtual {v9, v10, v7}, Lcom/google/protobuf/UnknownFieldSet$Builder;->addField(ILcom/google/protobuf/UnknownFieldSet$Field;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v7

    .line 126
    invoke-virtual {v7}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    .line 125
    invoke-virtual {v8, v7}, Lcom/google/protobuf/GeneratedMessage$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v7

    check-cast v7, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;

    .line 126
    invoke-virtual {v7}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery;

    move-result-object v7

    .line 127
    const-string v1, "requesting servers"

    .line 128
    const-class v8, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;

    const-string v9, "GameServers.MasterServerQuery#1"

    invoke-virtual {v2, v8, v9, v7}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/SteamUnifiedMessages;->sendMessage(Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->toFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;

    .line 130
    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v3

    sget-object v4, Lin/dragonbra/javasteam/enums/EResult;->AccessDenied:Lin/dragonbra/javasteam/enums/EResult;

    if-eq v3, v4, :cond_177

    .line 132
    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v3

    if-ne v3, v6, :cond_15c

    .line 133
    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v2

    check-cast v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;

    invoke-static {v2}, Lcom/sourcevrport/platform/GModServerDirectory;->response(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse;->getError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_154

    .line 135
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 136
    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse;->getServersList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_103
    :goto_103
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Server;

    .line 137
    iget-boolean v6, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->closed:Z

    if-eqz v6, :cond_115

    goto/16 :goto_8

    .line 138
    :cond_115
    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse;->getDefaultServerData()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Server;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sourcevrport/platform/GModServerDirectory;->address(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Server;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Server;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_120

    goto :goto_103

    .line 140
    :cond_120
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_103

    iget-object v6, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->events:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "address="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_103

    .line 142
    :cond_13d
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14a

    iget-object v2, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->events:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-string v3, "error=Steam returned no Garry\'s Mod servers"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_14a} :catch_4a
    .catchall {:try_start_3b .. :try_end_14a} :catchall_47

    .line 150
    :cond_14a
    :goto_14a
    iget-object v1, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->events:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sourcevrport/platform/GModServerDirectory$Job;->close()V

    goto/16 :goto_1cc

    .line 134
    :cond_154
    :try_start_154
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Steam refused the directory query"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_15c
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Steam directory query failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    :cond_177
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Sign in to Steam in the launcher and remember the session to browse Internet servers."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_17f
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Sign in to Steam again in the launcher to browse Internet servers."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_187} :catch_4a
    .catchall {:try_start_154 .. :try_end_187} :catchall_47

    .line 144
    :goto_187
    :try_start_187
    iget-boolean v3, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->closed:Z

    if-nez v3, :cond_14a

    .line 145
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GMod server directory failed while "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->events:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v4, v2, Ljava/io/IOException;

    if-eqz v4, :cond_1be

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1c0

    .line 147
    :cond_1be
    const-string v2, "Could not query the Steam server directory. Check the network and refresh."

    :goto_1c0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_1ca
    .catchall {:try_start_187 .. :try_end_1ca} :catchall_47

    goto/16 :goto_14a

    :goto_1cc
    return-void

    .line 150
    :goto_1cd
    iget-object v2, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job;->events:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sourcevrport/platform/GModServerDirectory$Job;->close()V

    .line 151
    throw v1
.end method

###### Class com.sourcevrport.platform.GModServerDirectory$Job$$ExternalSyntheticLambda0 (com.sourcevrport.platform.GModServerDirectory$Job$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lin/dragonbra/javasteam/util/compat/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sourcevrport/platform/GModServerDirectory$Job;


# direct methods
.method public synthetic constructor <init>(Lcom/sourcevrport/platform/GModServerDirectory$Job;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda0;->f$0:Lcom/sourcevrport/platform/GModServerDirectory$Job;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda0;->f$0:Lcom/sourcevrport/platform/GModServerDirectory$Job;

    check-cast p1, Lin/dragonbra/javasteam/steam/steamclient/callbacks/ConnectedCallback;

    invoke-static {p0, p1}, Lcom/sourcevrport/platform/GModServerDirectory$Job;->$r8$lambda$mQa_gXzelVciTgVnvLqAec3nY-A(Lcom/sourcevrport/platform/GModServerDirectory$Job;Lin/dragonbra/javasteam/steam/steamclient/callbacks/ConnectedCallback;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModServerDirectory$Job$$ExternalSyntheticLambda1 (com.sourcevrport.platform.GModServerDirectory$Job$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lin/dragonbra/javasteam/util/compat/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sourcevrport/platform/GModServerDirectory$Job;


# direct methods
.method public synthetic constructor <init>(Lcom/sourcevrport/platform/GModServerDirectory$Job;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda1;->f$0:Lcom/sourcevrport/platform/GModServerDirectory$Job;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda1;->f$0:Lcom/sourcevrport/platform/GModServerDirectory$Job;

    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;

    invoke-static {p0, p1}, Lcom/sourcevrport/platform/GModServerDirectory$Job;->$r8$lambda$3_BbZavc_j5PHt4js0sdXez-g0Q(Lcom/sourcevrport/platform/GModServerDirectory$Job;Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModServerDirectory$Job$$ExternalSyntheticLambda2 (com.sourcevrport.platform.GModServerDirectory$Job$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lin/dragonbra/javasteam/util/compat/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sourcevrport/platform/GModServerDirectory$Job;


# direct methods
.method public synthetic constructor <init>(Lcom/sourcevrport/platform/GModServerDirectory$Job;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda2;->f$0:Lcom/sourcevrport/platform/GModServerDirectory$Job;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda2;->f$0:Lcom/sourcevrport/platform/GModServerDirectory$Job;

    check-cast p1, Lin/dragonbra/javasteam/steam/steamclient/callbacks/DisconnectedCallback;

    invoke-static {p0, p1}, Lcom/sourcevrport/platform/GModServerDirectory$Job;->$r8$lambda$mPSQ8Xx7Fk1-JDs7y8dbffGY4q0(Lcom/sourcevrport/platform/GModServerDirectory$Job;Lin/dragonbra/javasteam/steam/steamclient/callbacks/DisconnectedCallback;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModServerDirectory$Job$$ExternalSyntheticLambda3 (com.sourcevrport.platform.GModServerDirectory$Job$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sourcevrport/platform/GModServerDirectory$Job;


# direct methods
.method public synthetic constructor <init>(Lcom/sourcevrport/platform/GModServerDirectory$Job;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda3;->f$0:Lcom/sourcevrport/platform/GModServerDirectory$Job;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda3;->f$0:Lcom/sourcevrport/platform/GModServerDirectory$Job;

    invoke-static {p0}, Lcom/sourcevrport/platform/GModServerDirectory$Job;->$r8$lambda$uCL-ArMNSYudX9Yh_384NZT0Huc(Lcom/sourcevrport/platform/GModServerDirectory$Job;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModServerDirectory$Job$$ExternalSyntheticLambda4 (com.sourcevrport.platform.GModServerDirectory$Job$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sourcevrport/platform/GModServerDirectory$Job;


# direct methods
.method public synthetic constructor <init>(Lcom/sourcevrport/platform/GModServerDirectory$Job;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda4;->f$0:Lcom/sourcevrport/platform/GModServerDirectory$Job;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sourcevrport/platform/GModServerDirectory$Job$$ExternalSyntheticLambda4;->f$0:Lcom/sourcevrport/platform/GModServerDirectory$Job;

    invoke-virtual {p0}, Lcom/sourcevrport/platform/GModServerDirectory$Job;->query()V

    return-void
.end method
