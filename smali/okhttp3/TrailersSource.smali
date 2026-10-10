###### Class okhttp3.TrailersSource (okhttp3.TrailersSource)
.class public interface abstract Lokhttp3/TrailersSource;
.super Ljava/lang/Object;
.source "TrailersSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/TrailersSource$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/TrailersSource$Companion;

.field public static final EMPTY:Lokhttp3/TrailersSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lokhttp3/TrailersSource$Companion;->$$INSTANCE:Lokhttp3/TrailersSource$Companion;

    sput-object v0, Lokhttp3/TrailersSource;->Companion:Lokhttp3/TrailersSource$Companion;

    .line 40
    new-instance v0, Lokhttp3/TrailersSource$Companion$EMPTY$1;

    invoke-direct {v0}, Lokhttp3/TrailersSource$Companion$EMPTY$1;-><init>()V

    sput-object v0, Lokhttp3/TrailersSource;->EMPTY:Lokhttp3/TrailersSource;

    return-void
.end method

###### Class okhttp3.TrailersSource.Companion (okhttp3.TrailersSource$Companion)
.class public final Lokhttp3/TrailersSource$Companion;
.super Ljava/lang/Object;
.source "TrailersSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/TrailersSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lokhttp3/TrailersSource$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lokhttp3/TrailersSource$Companion;

    invoke-direct {v0}, Lokhttp3/TrailersSource$Companion;-><init>()V

    sput-object v0, Lokhttp3/TrailersSource$Companion;->$$INSTANCE:Lokhttp3/TrailersSource$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class okhttp3.TrailersSource$Companion$EMPTY$1 (okhttp3.TrailersSource$Companion$EMPTY$1)
.class public final Lokhttp3/TrailersSource$Companion$EMPTY$1;
.super Ljava/lang/Object;
.source "TrailersSource.kt"

# interfaces
.implements Lokhttp3/TrailersSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/TrailersSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
