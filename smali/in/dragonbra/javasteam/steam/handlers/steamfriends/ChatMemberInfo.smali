###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.ChatMemberInfo (in.dragonbra.javasteam.steam.handlers.steamfriends.ChatMemberInfo)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/ChatMemberInfo;
.super Lin/dragonbra/javasteam/types/MessageObject;
.source "ChatMemberInfo.kt"


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 19
    invoke-direct {p0, v0, v1, v0}, Lin/dragonbra/javasteam/types/MessageObject;-><init>(Lin/dragonbra/javasteam/types/KeyValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/types/KeyValue;)V
    .registers 3

    const-string v0, "keyValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/types/MessageObject;-><init>(Lin/dragonbra/javasteam/types/KeyValue;)V

    return-void
.end method


# virtual methods
.method public final getDetails()Ljava/util/EnumSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EClanPermission;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/MessageObject;->getKeyValues()Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    const-string v0, "Details"

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/enums/EClanPermission;->Nobody:Lin/dragonbra/javasteam/enums/EClanPermission;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const-string v1, "of(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lin/dragonbra/javasteam/enums/EClanPermission;

    invoke-virtual {p0, v1, v0}, Lin/dragonbra/javasteam/types/KeyValue;->asEnum(Ljava/lang/Class;Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public final getPermissions()Ljava/util/EnumSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EChatPermission;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/MessageObject;->getKeyValues()Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    const-string v0, "Permissions"

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/enums/EChatPermission;->EveryoneDefault:Ljava/util/EnumSet;

    const-string v1, "EveryoneDefault"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lin/dragonbra/javasteam/enums/EChatPermission;

    invoke-virtual {p0, v1, v0}, Lin/dragonbra/javasteam/types/KeyValue;->asEnum(Ljava/lang/Class;Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public final getSteamID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 6

    .line 44
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/MessageObject;->getKeyValues()Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    const-string v1, "SteamID"

    invoke-virtual {p0, v1}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static {p0, v3, v4, v1, v2}, Lin/dragonbra/javasteam/types/KeyValue;->asLong$default(Lin/dragonbra/javasteam/types/KeyValue;JILjava/lang/Object;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    return-object v0
.end method
