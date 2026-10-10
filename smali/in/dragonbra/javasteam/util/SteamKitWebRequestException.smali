###### Class in.dragonbra.javasteam.util.SteamKitWebRequestException (in.dragonbra.javasteam.util.SteamKitWebRequestException)
.class public final Lin/dragonbra/javasteam/util/SteamKitWebRequestException;
.super Ljava/lang/Exception;
.source "SteamKitWebRequestException.kt"


# instance fields
.field private headers:Lokhttp3/Headers;

.field private statusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lokhttp3/Response;)V
    .registers 4

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;->statusCode:I

    .line 31
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;->headers:Lokhttp3/Headers;

    return-void
.end method


# virtual methods
.method public final getHeaders()Lokhttp3/Headers;
    .registers 1

    .line 21
    iget-object p0, p0, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;->headers:Lokhttp3/Headers;

    return-object p0
.end method

.method public final getStatusCode()I
    .registers 1

    .line 16
    iget p0, p0, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;->statusCode:I

    return p0
.end method

.method public final setStatusCode(I)V
    .registers 2

    .line 16
    iput p1, p0, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;->statusCode:I

    return-void
.end method
