###### Class org.tukaani.xz.FinishableOutputStream (org.tukaani.xz.FinishableOutputStream)
.class public abstract Lorg/tukaani/xz/FinishableOutputStream;
.super Ljava/io/OutputStream;
.source "FinishableOutputStream.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method
