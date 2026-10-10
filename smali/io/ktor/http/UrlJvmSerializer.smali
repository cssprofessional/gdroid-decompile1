###### Class io.ktor.http.UrlJvmSerializer (io.ktor.http.UrlJvmSerializer)
.class public final Lio/ktor/http/UrlJvmSerializer;
.super Ljava/lang/Object;
.source "Url.kt"

# interfaces
.implements Lio/ktor/utils/io/JvmSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/utils/io/JvmSerializer<",
        "Lio/ktor/http/Url;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/http/UrlJvmSerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/ktor/http/UrlJvmSerializer;

    invoke-direct {v0}, Lio/ktor/http/UrlJvmSerializer;-><init>()V

    sput-object v0, Lio/ktor/http/UrlJvmSerializer;->INSTANCE:Lio/ktor/http/UrlJvmSerializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public jvmDeserialize([B)Lio/ktor/http/Url;
    .registers 2

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->decodeToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/ktor/http/URLUtilsKt;->Url(Ljava/lang/String;)Lio/ktor/http/Url;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic jvmDeserialize([B)Ljava/lang/Object;
    .registers 2

    .line 293
    invoke-virtual {p0, p1}, Lio/ktor/http/UrlJvmSerializer;->jvmDeserialize([B)Lio/ktor/http/Url;

    move-result-object p0

    return-object p0
.end method

.method public jvmSerialize(Lio/ktor/http/Url;)[B
    .registers 2

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Lio/ktor/http/Url;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic jvmSerialize(Ljava/lang/Object;)[B
    .registers 2

    .line 293
    check-cast p1, Lio/ktor/http/Url;

    invoke-virtual {p0, p1}, Lio/ktor/http/UrlJvmSerializer;->jvmSerialize(Lio/ktor/http/Url;)[B

    move-result-object p0

    return-object p0
.end method
