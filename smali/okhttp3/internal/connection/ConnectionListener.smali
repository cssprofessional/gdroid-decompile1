###### Class okhttp3.internal.connection.ConnectionListener (okhttp3.internal.connection.ConnectionListener)
.class public abstract Lokhttp3/internal/connection/ConnectionListener;
.super Ljava/lang/Object;
.source "ConnectionListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/ConnectionListener$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/internal/connection/ConnectionListener$Companion;

.field public static final NONE:Lokhttp3/internal/connection/ConnectionListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokhttp3/internal/connection/ConnectionListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/ConnectionListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/connection/ConnectionListener;->Companion:Lokhttp3/internal/connection/ConnectionListener$Companion;

    .line 84
    new-instance v0, Lokhttp3/internal/connection/ConnectionListener$Companion$NONE$1;

    invoke-direct {v0}, Lokhttp3/internal/connection/ConnectionListener$Companion$NONE$1;-><init>()V

    sput-object v0, Lokhttp3/internal/connection/ConnectionListener;->NONE:Lokhttp3/internal/connection/ConnectionListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getNONE$cp()Lokhttp3/internal/connection/ConnectionListener;
    .registers 1

    .line 30
    sget-object v0, Lokhttp3/internal/connection/ConnectionListener;->NONE:Lokhttp3/internal/connection/ConnectionListener;

    return-object v0
.end method


# virtual methods
.method public connectEnd(Lokhttp3/Connection;Lokhttp3/Route;Lokhttp3/Call;)V
    .registers 4

    .line 0
    const-string p0, "connection"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "route"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "call"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public connectFailed(Lokhttp3/Route;Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 4

    .line 0
    const-string p0, "route"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "call"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "failure"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public connectStart(Lokhttp3/Route;Lokhttp3/Call;)V
    .registers 3

    .line 0
    const-string p0, "route"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "call"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public connectionAcquired(Lokhttp3/Connection;Lokhttp3/Call;)V
    .registers 3

    .line 0
    const-string p0, "connection"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "call"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public connectionClosed(Lokhttp3/Connection;)V
    .registers 2

    .line 0
    const-string p0, "connection"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public connectionReleased(Lokhttp3/Connection;Lokhttp3/Call;)V
    .registers 3

    .line 0
    const-string p0, "connection"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "call"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public noNewExchanges(Lokhttp3/Connection;)V
    .registers 2

    .line 0
    const-string p0, "connection"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

###### Class okhttp3.internal.connection.ConnectionListener.Companion (okhttp3.internal.connection.ConnectionListener$Companion)
.class public final Lokhttp3/internal/connection/ConnectionListener$Companion;
.super Ljava/lang/Object;
.source "ConnectionListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/connection/ConnectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lokhttp3/internal/connection/ConnectionListener$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNONE()Lokhttp3/internal/connection/ConnectionListener;
    .registers 1

    .line 84
    invoke-static {}, Lokhttp3/internal/connection/ConnectionListener;->access$getNONE$cp()Lokhttp3/internal/connection/ConnectionListener;

    move-result-object p0

    return-object p0
.end method

###### Class okhttp3.internal.connection.ConnectionListener$Companion$NONE$1 (okhttp3.internal.connection.ConnectionListener$Companion$NONE$1)
.class public final Lokhttp3/internal/connection/ConnectionListener$Companion$NONE$1;
.super Lokhttp3/internal/connection/ConnectionListener;
.source "ConnectionListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/connection/ConnectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Lokhttp3/internal/connection/ConnectionListener;-><init>()V

    return-void
.end method
