###### Class in.dragonbra.javasteam.generated.ConnectData (in.dragonbra.javasteam.generated.ConnectData)
.class public Lin/dragonbra/javasteam/generated/ConnectData;
.super Ljava/lang/Object;
.source "ConnectData.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializable;


# static fields
.field public static final CHALLENGE_MASK:I = -0x5bd920d5


# instance fields
.field private challengeValue:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lin/dragonbra/javasteam/generated/ConnectData;->challengeValue:I

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 35
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/ConnectData;->challengeValue:I
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    .line 36
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_f
    move-exception p0

    .line 34
    :try_start_10
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_18

    :catchall_14
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18
    throw p0
.end method

.method public getChallengeValue()I
    .registers 1

    .line 18
    iget p0, p0, Lin/dragonbra/javasteam/generated/ConnectData;->challengeValue:I

    return p0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 28
    :try_start_5
    iget p0, p0, Lin/dragonbra/javasteam/generated/ConnectData;->challengeValue:I

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    .line 29
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_e
    move-exception p0

    .line 27
    :try_start_f
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_17

    :catchall_13
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17
    throw p0
.end method

.method public setChallengeValue(I)V
    .registers 2

    .line 22
    iput p1, p0, Lin/dragonbra/javasteam/generated/ConnectData;->challengeValue:I

    return-void
.end method
