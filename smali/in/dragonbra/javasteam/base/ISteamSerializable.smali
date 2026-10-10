###### Class in.dragonbra.javasteam.base.ISteamSerializable (in.dragonbra.javasteam.base.ISteamSerializable)
.class public interface abstract Lin/dragonbra/javasteam/base/ISteamSerializable;
.super Ljava/lang/Object;
.source "ISteamSerializable.kt"


# virtual methods
.method public abstract deserialize(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract serialize(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
