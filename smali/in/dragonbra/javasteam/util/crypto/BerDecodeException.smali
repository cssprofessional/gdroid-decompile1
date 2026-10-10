###### Class in.dragonbra.javasteam.util.crypto.BerDecodeException (in.dragonbra.javasteam.util.crypto.BerDecodeException)
.class public final Lin/dragonbra/javasteam/util/crypto/BerDecodeException;
.super Ljava/lang/Exception;
.source "BerDecodeException.java"


# instance fields
.field private final _position:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;->_position:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;->_position:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 24
    iput p2, p0, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;->_position:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Exception;)V
    .registers 4

    .line 28
    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    iput p2, p0, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;->_position:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;->_position:I

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 3

    .line 38
    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;->_position:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, " (Position %d)%s"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get_position()I
    .registers 1

    .line 33
    iget p0, p0, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;->_position:I

    return p0
.end method
