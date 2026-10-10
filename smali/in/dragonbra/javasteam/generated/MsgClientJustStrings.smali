###### Class in.dragonbra.javasteam.generated.MsgClientJustStrings (in.dragonbra.javasteam.generated.MsgClientJustStrings)
.class public Lin/dragonbra/javasteam/generated/MsgClientJustStrings;
.super Ljava/lang/Object;
.source "MsgClientJustStrings.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializableMessage;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/InputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    new-instance p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 30
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getEMsg()Lin/dragonbra/javasteam/enums/EMsg;
    .registers 1

    .line 16
    sget-object p0, Lin/dragonbra/javasteam/enums/EMsg;->Invalid:Lin/dragonbra/javasteam/enums/EMsg;

    return-object p0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    new-instance p0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 23
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method
