###### Class org.tukaani.xz.check.None (org.tukaani.xz.check.None)
.class public Lorg/tukaani/xz/check/None;
.super Lorg/tukaani/xz/check/Check;
.source "None.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Lorg/tukaani/xz/check/Check;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lorg/tukaani/xz/check/Check;->size:I

    .line 10
    const-string v0, "None"

    iput-object v0, p0, Lorg/tukaani/xz/check/Check;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public finish()[B
    .registers 1

    const/4 p0, 0x0

    .line 18
    new-array p0, p0, [B

    return-object p0
.end method

.method public update([BII)V
    .registers 4

    .line 0
    return-void
.end method
