###### Class in.dragonbra.javasteam.generated.ChallengeData (in.dragonbra.javasteam.generated.ChallengeData)
.class public Lin/dragonbra/javasteam/generated/ChallengeData;
.super Ljava/lang/Object;
.source "ChallengeData.java"

# interfaces
.implements Lin/dragonbra/javasteam/base/ISteamSerializable;


# static fields
.field public static final CHALLENGE_MASK:I = -0x5bd920d5


# instance fields
.field private challengeValue:I

.field private serverLoad:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lin/dragonbra/javasteam/generated/ChallengeData;->challengeValue:I

    .line 17
    iput v0, p0, Lin/dragonbra/javasteam/generated/ChallengeData;->serverLoad:I

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

    .line 45
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 46
    :try_start_5
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/ChallengeData;->challengeValue:I

    .line 47
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/generated/ChallengeData;->serverLoad:I
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    .line 48
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_15
    move-exception p0

    .line 45
    :try_start_16
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1e
    throw p0
.end method

.method public getChallengeValue()I
    .registers 1

    .line 20
    iget p0, p0, Lin/dragonbra/javasteam/generated/ChallengeData;->challengeValue:I

    return p0
.end method

.method public getServerLoad()I
    .registers 1

    .line 28
    iget p0, p0, Lin/dragonbra/javasteam/generated/ChallengeData;->serverLoad:I

    return p0
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    .line 38
    :try_start_5
    iget p1, p0, Lin/dragonbra/javasteam/generated/ChallengeData;->challengeValue:I

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 39
    iget p0, p0, Lin/dragonbra/javasteam/generated/ChallengeData;->serverLoad:I

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    .line 40
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_13
    move-exception p0

    .line 37
    :try_start_14
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1c
    throw p0
.end method

.method public setChallengeValue(I)V
    .registers 2

    .line 24
    iput p1, p0, Lin/dragonbra/javasteam/generated/ChallengeData;->challengeValue:I

    return-void
.end method

.method public setServerLoad(I)V
    .registers 2

    .line 32
    iput p1, p0, Lin/dragonbra/javasteam/generated/ChallengeData;->serverLoad:I

    return-void
.end method
