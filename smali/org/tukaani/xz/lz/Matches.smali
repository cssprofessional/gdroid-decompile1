###### Class org.tukaani.xz.lz.Matches (org.tukaani.xz.lz.Matches)
.class public final Lorg/tukaani/xz/lz/Matches;
.super Ljava/lang/Object;
.source "Matches.java"


# instance fields
.field public count:I

.field public final dist:[I

.field public final len:[I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 14
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/tukaani/xz/lz/Matches;->len:[I

    .line 15
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/tukaani/xz/lz/Matches;->dist:[I

    return-void
.end method
