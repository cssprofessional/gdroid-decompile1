###### Class io.ktor.client.utils.EmptyContent (io.ktor.client.utils.EmptyContent)
.class public final Lio/ktor/client/utils/EmptyContent;
.super Lio/ktor/http/content/OutgoingContent$NoContent;
.source "Content.kt"


# static fields
.field public static final INSTANCE:Lio/ktor/client/utils/EmptyContent;

.field public static final contentLength:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/ktor/client/utils/EmptyContent;

    invoke-direct {v0}, Lio/ktor/client/utils/EmptyContent;-><init>()V

    sput-object v0, Lio/ktor/client/utils/EmptyContent;->INSTANCE:Lio/ktor/client/utils/EmptyContent;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lio/ktor/http/content/OutgoingContent$NoContent;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of p0, p1, Lio/ktor/client/utils/EmptyContent;

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    return v0
.end method

.method public getContentLength()Ljava/lang/Long;
    .registers 3

    .line 19
    sget-wide v0, Lio/ktor/client/utils/EmptyContent;->contentLength:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 0
    const p0, 0x567a5f12

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 0
    const-string p0, "EmptyContent"

    return-object p0
.end method
