###### Class in.dragonbra.javasteam.steam.handlers.steamworkshop.callback.UserActionPublishedFilesCallback (in.dragonbra.javasteam.steam.handlers.steamworkshop.callback.UserActionPublishedFilesCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamworkshop/callback/UserActionPublishedFilesCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "UserActionPublishedFilesCallback.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamworkshop/callback/UserActionPublishedFilesCallback$File;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserActionPublishedFilesCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserActionPublishedFilesCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamworkshop/callback/UserActionPublishedFilesCallback\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n1563#2:65\n1634#2,3:66\n*S KotlinDebug\n*F\n+ 1 UserActionPublishedFilesCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamworkshop/callback/UserActionPublishedFilesCallback\n*L\n43#1:65\n43#1:66,3\n*E\n"
.end annotation


# instance fields
.field private final files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamworkshop/callback/UserActionPublishedFilesCallback$File;",
            ">;"
        }
    .end annotation
.end field

.field private final result:Lin/dragonbra/javasteam/enums/EResult;

.field private final totalResults:I


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 6

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 33
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 34
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUcm$CMsgClientUCMEnumeratePublishedFilesByUserActionResponse;

    .line 33
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 37
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUcm$CMsgClientUCMEnumeratePublishedFilesByUserActionResponse$Builder;

    .line 39
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 41
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUcm$CMsgClientUCMEnumeratePublishedFilesByUserActionResponse$Builder;->getEresult()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/callback/UserActionPublishedFilesCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 43
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUcm$CMsgClientUCMEnumeratePublishedFilesByUserActionResponse$Builder;->getPublishedFilesList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getPublishedFilesList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1635
    check-cast v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUcm$CMsgClientUCMEnumeratePublishedFilesByUserActionResponse$PublishedFileId;

    .line 43
    new-instance v3, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/callback/UserActionPublishedFilesCallback$File;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v3, v2}, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/callback/UserActionPublishedFilesCallback$File;-><init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUcm$CMsgClientUCMEnumeratePublishedFilesByUserActionResponse$PublishedFileId;)V

    .line 1635
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 43
    :cond_5b
    iput-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/callback/UserActionPublishedFilesCallback;->files:Ljava/util/List;

    .line 45
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUcm$CMsgClientUCMEnumeratePublishedFilesByUserActionResponse$Builder;->getTotalResults()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/callback/UserActionPublishedFilesCallback;->totalResults:I

    return-void
.end method


# virtual methods
.method public final getFiles()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamworkshop/callback/UserActionPublishedFilesCallback$File;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/callback/UserActionPublishedFilesCallback;->files:Ljava/util/List;

    return-object p0
.end method

.method public final getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 20
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/callback/UserActionPublishedFilesCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method

.method public final getTotalResults()I
    .registers 1

    .line 30
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/callback/UserActionPublishedFilesCallback;->totalResults:I

    return p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamworkshop.callback.UserActionPublishedFilesCallback.File (in.dragonbra.javasteam.steam.handlers.steamworkshop.callback.UserActionPublishedFilesCallback$File)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamworkshop/callback/UserActionPublishedFilesCallback$File;
.super Ljava/lang/Object;
.source "UserActionPublishedFilesCallback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamworkshop/callback/UserActionPublishedFilesCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "File"
.end annotation


# instance fields
.field private final fileID:J

.field private final timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUcm$CMsgClientUCMEnumeratePublishedFilesByUserActionResponse$PublishedFileId;)V
    .registers 7

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUcm$CMsgClientUCMEnumeratePublishedFilesByUserActionResponse$PublishedFileId;->getPublishedFileId()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/callback/UserActionPublishedFilesCallback$File;->fileID:J

    .line 61
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUcm$CMsgClientUCMEnumeratePublishedFilesByUserActionResponse$PublishedFileId;->getRtimeTimeStamp()I

    move-result p1

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/callback/UserActionPublishedFilesCallback$File;->timestamp:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final getFileID()J
    .registers 3

    .line 56
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/callback/UserActionPublishedFilesCallback$File;->fileID:J

    return-wide v0
.end method

.method public final getTimestamp()Ljava/util/Date;
    .registers 1

    .line 61
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamworkshop/callback/UserActionPublishedFilesCallback$File;->timestamp:Ljava/util/Date;

    return-object p0
.end method
