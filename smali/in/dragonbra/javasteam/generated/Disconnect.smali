###### Class in.dragonbra.javasteam.generated.Disconnect (in.dragonbra.javasteam.generated.Disconnect)
.class public Lin/dragonbra/javasteam/generated/Disconnect;
.super Ljava/lang/Object;
.source "Disconnect.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
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

    .line 22
    new-instance p0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 24
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    new-instance p0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 17
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method
