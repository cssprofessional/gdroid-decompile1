###### Class org.tukaani.xz.CloseIgnoringInputStream (org.tukaani.xz.CloseIgnoringInputStream)
.class public Lorg/tukaani/xz/CloseIgnoringInputStream;
.super Ljava/io/FilterInputStream;
.source "CloseIgnoringInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 0
    return-void
.end method
