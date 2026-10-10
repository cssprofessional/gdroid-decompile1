###### Class in.dragonbra.javasteam.networking.steam3.IConnectionFactory (in.dragonbra.javasteam.networking.steam3.IConnectionFactory)
.class public interface abstract Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;
.super Ljava/lang/Object;
.source "IConnectionFactory.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final DEFAULT:Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;


# direct methods
.method public static synthetic $r8$lambda$C9Xvc-7XZFUYSqWqT0RskMOFoeM(Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Ljava/util/EnumSet;)Lin/dragonbra/javasteam/networking/steam3/Connection;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;->lambda$thenResolve$1(Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Ljava/util/EnumSet;)Lin/dragonbra/javasteam/networking/steam3/Connection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hQzB-3elc7Bc02hgZTogA5Qso88(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Ljava/util/EnumSet;)Lin/dragonbra/javasteam/networking/steam3/Connection;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;->lambda$static$0(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Ljava/util/EnumSet;)Lin/dragonbra/javasteam/networking/steam3/Connection;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;->DEFAULT:Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;

    return-void
.end method

.method private static synthetic lambda$static$0(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Ljava/util/EnumSet;)Lin/dragonbra/javasteam/networking/steam3/Connection;
    .registers 3

    .line 13
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->WEB_SOCKET:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 14
    new-instance p0, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;

    invoke-direct {p0}, Lin/dragonbra/javasteam/networking/steam3/WebSocketConnection;-><init>()V

    return-object p0

    .line 16
    :cond_e
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->TCP:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 17
    new-instance p1, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;

    new-instance v0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;

    invoke-direct {v0}, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;-><init>()V

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->getUniverse()Lin/dragonbra/javasteam/enums/EUniverse;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;-><init>(Lin/dragonbra/javasteam/networking/steam3/Connection;Lin/dragonbra/javasteam/enums/EUniverse;)V

    return-object p1

    .line 19
    :cond_25
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->UDP:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 20
    new-instance p1, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;

    new-instance v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-direct {v0}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;-><init>()V

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->getUniverse()Lin/dragonbra/javasteam/enums/EUniverse;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lin/dragonbra/javasteam/networking/steam3/EnvelopeEncryptedConnection;-><init>(Lin/dragonbra/javasteam/networking/steam3/Connection;Lin/dragonbra/javasteam/enums/EUniverse;)V

    return-object p1

    :cond_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$thenResolve$1(Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Ljava/util/EnumSet;)Lin/dragonbra/javasteam/networking/steam3/Connection;
    .registers 4

    .line 36
    invoke-interface {p0, p2, p3}, Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;->createConnection(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Ljava/util/EnumSet;)Lin/dragonbra/javasteam/networking/steam3/Connection;

    move-result-object p0

    if-nez p0, :cond_a

    .line 38
    invoke-interface {p1, p2, p3}, Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;->createConnection(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Ljava/util/EnumSet;)Lin/dragonbra/javasteam/networking/steam3/Connection;

    move-result-object p0

    :cond_a
    return-object p0
.end method


# virtual methods
.method public abstract createConnection(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Ljava/util/EnumSet;)Lin/dragonbra/javasteam/networking/steam3/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;",
            ">;)",
            "Lin/dragonbra/javasteam/networking/steam3/Connection;"
        }
    .end annotation
.end method

.method public thenResolve(Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;)Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;
    .registers 3

    .line 34
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory$$ExternalSyntheticLambda0;-><init>(Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;)V

    return-object v0
.end method

###### Class in.dragonbra.javasteam.networking.steam3.IConnectionFactory$$ExternalSyntheticLambda0 (in.dragonbra.javasteam.networking.steam3.IConnectionFactory$$ExternalSyntheticLambda0)
.class public final synthetic Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;


# instance fields
.field public final synthetic f$0:Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;

.field public final synthetic f$1:Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;


# direct methods
.method public synthetic constructor <init>(Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory$$ExternalSyntheticLambda0;->f$0:Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;

    iput-object p2, p0, Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory$$ExternalSyntheticLambda0;->f$1:Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;

    return-void
.end method


# virtual methods
.method public final createConnection(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Ljava/util/EnumSet;)Lin/dragonbra/javasteam/networking/steam3/Connection;
    .registers 4

    .line 0
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory$$ExternalSyntheticLambda0;->f$0:Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;

    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory$$ExternalSyntheticLambda0;->f$1:Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;

    invoke-static {v0, p0, p1, p2}, Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;->$r8$lambda$C9Xvc-7XZFUYSqWqT0RskMOFoeM(Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Ljava/util/EnumSet;)Lin/dragonbra/javasteam/networking/steam3/Connection;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.networking.steam3.IConnectionFactory$$ExternalSyntheticLambda1 (in.dragonbra.javasteam.networking.steam3.IConnectionFactory$$ExternalSyntheticLambda1)
.class public final synthetic Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createConnection(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Ljava/util/EnumSet;)Lin/dragonbra/javasteam/networking/steam3/Connection;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;->$r8$lambda$hQzB-3elc7Bc02hgZTogA5Qso88(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;Ljava/util/EnumSet;)Lin/dragonbra/javasteam/networking/steam3/Connection;

    move-result-object p0

    return-object p0
.end method
