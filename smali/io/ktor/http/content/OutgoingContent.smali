###### Class io.ktor.http.content.OutgoingContent (io.ktor.http.content.OutgoingContent)
.class public abstract Lio/ktor/http/content/OutgoingContent;
.super Ljava/lang/Object;
.source "OutgoingContent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/content/OutgoingContent$ByteArrayContent;,
        Lio/ktor/http/content/OutgoingContent$ContentWrapper;,
        Lio/ktor/http/content/OutgoingContent$NoContent;,
        Lio/ktor/http/content/OutgoingContent$ReadChannelContent;,
        Lio/ktor/http/content/OutgoingContent$WriteChannelContent;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutgoingContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutgoingContent.kt\nio/ktor/http/content/OutgoingContent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,221:1\n1#2:222\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/http/content/OutgoingContent;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentLength()Ljava/lang/Long;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContentType()Lio/ktor/http/ContentType;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHeaders()Lio/ktor/http/Headers;
    .registers 1

    .line 56
    sget-object p0, Lio/ktor/http/Headers;->Companion:Lio/ktor/http/Headers$Companion;

    invoke-virtual {p0}, Lio/ktor/http/Headers$Companion;->getEmpty()Lio/ktor/http/Headers;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.content.OutgoingContent.ByteArrayContent (io.ktor.http.content.OutgoingContent$ByteArrayContent)
.class public abstract Lio/ktor/http/content/OutgoingContent$ByteArrayContent;
.super Lio/ktor/http/content/OutgoingContent;
.source "OutgoingContent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/content/OutgoingContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ByteArrayContent"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, v0}, Lio/ktor/http/content/OutgoingContent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public abstract bytes()[B
.end method

###### Class io.ktor.http.content.OutgoingContent.ContentWrapper (io.ktor.http.content.OutgoingContent$ContentWrapper)
.class public abstract Lio/ktor/http/content/OutgoingContent$ContentWrapper;
.super Lio/ktor/http/content/OutgoingContent;
.source "OutgoingContent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/content/OutgoingContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ContentWrapper"
.end annotation


# instance fields
.field public final delegate:Lio/ktor/http/content/OutgoingContent;


# virtual methods
.method public final delegate()Lio/ktor/http/content/OutgoingContent;
    .registers 1

    .line 199
    iget-object p0, p0, Lio/ktor/http/content/OutgoingContent$ContentWrapper;->delegate:Lio/ktor/http/content/OutgoingContent;

    return-object p0
.end method

.method public getContentLength()Ljava/lang/Long;
    .registers 1

    .line 190
    iget-object p0, p0, Lio/ktor/http/content/OutgoingContent$ContentWrapper;->delegate:Lio/ktor/http/content/OutgoingContent;

    invoke-virtual {p0}, Lio/ktor/http/content/OutgoingContent;->getContentLength()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getContentType()Lio/ktor/http/ContentType;
    .registers 1

    .line 188
    iget-object p0, p0, Lio/ktor/http/content/OutgoingContent$ContentWrapper;->delegate:Lio/ktor/http/content/OutgoingContent;

    invoke-virtual {p0}, Lio/ktor/http/content/OutgoingContent;->getContentType()Lio/ktor/http/ContentType;

    move-result-object p0

    return-object p0
.end method

.method public getHeaders()Lio/ktor/http/Headers;
    .registers 1

    .line 194
    iget-object p0, p0, Lio/ktor/http/content/OutgoingContent$ContentWrapper;->delegate:Lio/ktor/http/content/OutgoingContent;

    invoke-virtual {p0}, Lio/ktor/http/content/OutgoingContent;->getHeaders()Lio/ktor/http/Headers;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.content.OutgoingContent.NoContent (io.ktor.http.content.OutgoingContent$NoContent)
.class public abstract Lio/ktor/http/content/OutgoingContent$NoContent;
.super Lio/ktor/http/content/OutgoingContent;
.source "OutgoingContent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/content/OutgoingContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NoContent"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, v0}, Lio/ktor/http/content/OutgoingContent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

###### Class io.ktor.http.content.OutgoingContent.ReadChannelContent (io.ktor.http.content.OutgoingContent$ReadChannelContent)
.class public abstract Lio/ktor/http/content/OutgoingContent$ReadChannelContent;
.super Lio/ktor/http/content/OutgoingContent;
.source "OutgoingContent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/content/OutgoingContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ReadChannelContent"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, v0}, Lio/ktor/http/content/OutgoingContent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public abstract readFrom()Lio/ktor/utils/io/ByteReadChannel;
.end method

###### Class io.ktor.http.content.OutgoingContent.WriteChannelContent (io.ktor.http.content.OutgoingContent$WriteChannelContent)
.class public abstract Lio/ktor/http/content/OutgoingContent$WriteChannelContent;
.super Lio/ktor/http/content/OutgoingContent;
.source "OutgoingContent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/content/OutgoingContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WriteChannelContent"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, v0}, Lio/ktor/http/content/OutgoingContent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public abstract writeTo(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
