###### Class io.ktor.client.plugins.HttpPlainTextConfig (io.ktor.client.plugins.HttpPlainTextConfig)
.class public final Lio/ktor/client/plugins/HttpPlainTextConfig;
.super Ljava/lang/Object;
.source "HttpPlainText.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpPlainText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpPlainText.kt\nio/ktor/client/plugins/HttpPlainTextConfig\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,179:1\n1#2:180\n*E\n"
.end annotation


# instance fields
.field public final charsetQuality:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final charsets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field public responseCharsetFallback:Ljava/nio/charset/Charset;

.field public sendCharset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/ktor/client/plugins/HttpPlainTextConfig;->charsets:Ljava/util/Set;

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/ktor/client/plugins/HttpPlainTextConfig;->charsetQuality:Ljava/util/Map;

    .line 64
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lio/ktor/client/plugins/HttpPlainTextConfig;->responseCharsetFallback:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public final getCharsetQuality$ktor_client_core()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object p0, p0, Lio/ktor/client/plugins/HttpPlainTextConfig;->charsetQuality:Ljava/util/Map;

    return-object p0
.end method

.method public final getCharsets$ktor_client_core()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object p0, p0, Lio/ktor/client/plugins/HttpPlainTextConfig;->charsets:Ljava/util/Set;

    return-object p0
.end method

.method public final getResponseCharsetFallback()Ljava/nio/charset/Charset;
    .registers 1

    .line 64
    iget-object p0, p0, Lio/ktor/client/plugins/HttpPlainTextConfig;->responseCharsetFallback:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public final getSendCharset()Ljava/nio/charset/Charset;
    .registers 1

    .line 56
    iget-object p0, p0, Lio/ktor/client/plugins/HttpPlainTextConfig;->sendCharset:Ljava/nio/charset/Charset;

    return-object p0
.end method
