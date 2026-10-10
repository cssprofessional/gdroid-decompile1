###### Class io.ktor.http.Url (io.ktor.http.Url)
.class public final Lio/ktor/http/Url;
.super Ljava/lang/Object;
.source "Url.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/Url$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUrl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Url.kt\nio/ktor/http/Url\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,300:1\n1#2:301\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lio/ktor/http/Url$Companion;


# instance fields
.field public final encodedFragment$delegate:Lkotlin/Lazy;

.field public final encodedPassword$delegate:Lkotlin/Lazy;

.field public final encodedPath$delegate:Lkotlin/Lazy;

.field public final encodedPathAndQuery$delegate:Lkotlin/Lazy;

.field public final encodedQuery$delegate:Lkotlin/Lazy;

.field public final encodedUser$delegate:Lkotlin/Lazy;

.field public final fragment:Ljava/lang/String;

.field public final host:Ljava/lang/String;

.field public final parameters:Lio/ktor/http/Parameters;

.field public final password:Ljava/lang/String;

.field public final pathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final protocol:Lio/ktor/http/URLProtocol;

.field public final protocolOrNull:Lio/ktor/http/URLProtocol;

.field public final rawSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final segments$delegate:Lkotlin/Lazy;

.field public final specifiedPort:I

.field public final trailingQuery:Z

.field public final urlString:Ljava/lang/String;

.field public final user:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$-689AdvJc66I9H7NTfy8ZWsASXg(Lio/ktor/http/Url;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/ktor/http/Url;->encodedQuery_delegate$lambda$0(Lio/ktor/http/Url;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6gdb1cqtmF65zTB6-kxjmcFqNiY(Ljava/util/List;Lio/ktor/http/Url;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/http/Url;->encodedPath_delegate$lambda$0(Ljava/util/List;Lio/ktor/http/Url;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7LbWtH9Ew2vPzfwb3k5dmpeRKgw(Lio/ktor/http/Url;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/ktor/http/Url;->encodedPathAndQuery_delegate$lambda$0(Lio/ktor/http/Url;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GCi-3L0WxZZTCwGQN6dJb7vbDk8(Ljava/util/List;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/ktor/http/Url;->segments_delegate$lambda$0(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LY5nvWzE4WDRG0V7Dq1ad_X8ur8(Lio/ktor/http/Url;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/ktor/http/Url;->encodedFragment_delegate$lambda$0(Lio/ktor/http/Url;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$evPI2rZsz36W_0AZ5X5BsZlNxNg(Lio/ktor/http/Url;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/ktor/http/Url;->encodedUser_delegate$lambda$0(Lio/ktor/http/Url;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hkE0qwm78xILDxHX9RYk38SXrlE(Lio/ktor/http/Url;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/ktor/http/Url;->encodedPassword_delegate$lambda$0(Lio/ktor/http/Url;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/ktor/http/Url$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/http/Url$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/Url;->Companion:Lio/ktor/http/Url$Companion;

    return-void
.end method

.method public constructor <init>(Lio/ktor/http/URLProtocol;Ljava/lang/String;ILjava/util/List;Lio/ktor/http/Parameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/URLProtocol;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/ktor/http/Parameters;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "host"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathSegments"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlString"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lio/ktor/http/Url;->host:Ljava/lang/String;

    .line 35
    iput p3, p0, Lio/ktor/http/Url;->specifiedPort:I

    .line 37
    iput-object p5, p0, Lio/ktor/http/Url;->parameters:Lio/ktor/http/Parameters;

    .line 38
    iput-object p6, p0, Lio/ktor/http/Url;->fragment:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lio/ktor/http/Url;->user:Ljava/lang/String;

    .line 40
    iput-object p8, p0, Lio/ktor/http/Url;->password:Ljava/lang/String;

    .line 41
    iput-boolean p9, p0, Lio/ktor/http/Url;->trailingQuery:Z

    .line 42
    iput-object p10, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    if-ltz p3, :cond_90

    const/high16 p2, 0x10000

    if-ge p3, p2, :cond_90

    .line 99
    iput-object p4, p0, Lio/ktor/http/Url;->pathSegments:Ljava/util/List;

    .line 135
    iput-object p4, p0, Lio/ktor/http/Url;->rawSegments:Ljava/util/List;

    .line 155
    new-instance p2, Lio/ktor/http/Url$$ExternalSyntheticLambda0;

    invoke-direct {p2, p4}, Lio/ktor/http/Url$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lio/ktor/http/Url;->segments$delegate:Lkotlin/Lazy;

    .line 162
    iput-object p1, p0, Lio/ktor/http/Url;->protocolOrNull:Lio/ktor/http/URLProtocol;

    if-nez p1, :cond_4b

    .line 163
    sget-object p1, Lio/ktor/http/URLProtocol;->Companion:Lio/ktor/http/URLProtocol$Companion;

    invoke-virtual {p1}, Lio/ktor/http/URLProtocol$Companion;->getHTTP()Lio/ktor/http/URLProtocol;

    move-result-object p1

    :cond_4b
    iput-object p1, p0, Lio/ktor/http/Url;->protocol:Lio/ktor/http/URLProtocol;

    .line 167
    new-instance p1, Lio/ktor/http/Url$$ExternalSyntheticLambda1;

    invoke-direct {p1, p4, p0}, Lio/ktor/http/Url$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;Lio/ktor/http/Url;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/http/Url;->encodedPath$delegate:Lkotlin/Lazy;

    .line 182
    new-instance p1, Lio/ktor/http/Url$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lio/ktor/http/Url$$ExternalSyntheticLambda2;-><init>(Lio/ktor/http/Url;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/http/Url;->encodedQuery$delegate:Lkotlin/Lazy;

    .line 192
    new-instance p1, Lio/ktor/http/Url$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lio/ktor/http/Url$$ExternalSyntheticLambda3;-><init>(Lio/ktor/http/Url;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/http/Url;->encodedPathAndQuery$delegate:Lkotlin/Lazy;

    .line 204
    new-instance p1, Lio/ktor/http/Url$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lio/ktor/http/Url$$ExternalSyntheticLambda4;-><init>(Lio/ktor/http/Url;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/http/Url;->encodedUser$delegate:Lkotlin/Lazy;

    .line 212
    new-instance p1, Lio/ktor/http/Url$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lio/ktor/http/Url$$ExternalSyntheticLambda5;-><init>(Lio/ktor/http/Url;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/http/Url;->encodedPassword$delegate:Lkotlin/Lazy;

    .line 220
    new-instance p1, Lio/ktor/http/Url$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lio/ktor/http/Url$$ExternalSyntheticLambda6;-><init>(Lio/ktor/http/Url;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/http/Url;->encodedFragment$delegate:Lkotlin/Lazy;

    return-void

    .line 46
    :cond_90
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Port must be between 0 and 65535, or 0 if not set. Provided: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final encodedFragment_delegate$lambda$0(Lio/ktor/http/Url;)Ljava/lang/String;
    .registers 7

    .line 221
    iget-object v0, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v1, 0x23

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_13

    .line 222
    const-string p0, ""

    return-object p0

    .line 224
    :cond_13
    iget-object p0, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "substring(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final encodedPassword_delegate$lambda$0(Lio/ktor/http/Url;)Ljava/lang/String;
    .registers 8

    .line 213
    iget-object v0, p0, Lio/ktor/http/Url;->password:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 214
    :cond_6
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_f

    const-string p0, ""

    return-object p0

    .line 215
    :cond_f
    iget-object v0, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    iget-object v1, p0, Lio/ktor/http/Url;->protocol:Lio/ktor/http/URLProtocol;

    invoke-virtual {v1}, Lio/ktor/http/URLProtocol;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v1, 0x3a

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 216
    iget-object v1, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v2, 0x40

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    .line 217
    iget-object p0, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "substring(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final encodedPathAndQuery_delegate$lambda$0(Lio/ktor/http/Url;)Ljava/lang/String;
    .registers 13

    .line 193
    iget-object v0, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    iget-object v1, p0, Lio/ktor/http/Url;->protocol:Lio/ktor/http/URLProtocol;

    invoke-virtual {v1}, Lio/ktor/http/URLProtocol;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v1, 0x2f

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    .line 195
    const-string p0, ""

    return-object p0

    .line 197
    :cond_1d
    iget-object v6, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/16 v7, 0x23

    const/4 v9, 0x0

    move v8, v0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v2

    .line 198
    const-string v3, "substring(...)"

    if-ne v2, v1, :cond_37

    .line 199
    iget-object p0, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 201
    :cond_37
    iget-object p0, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final encodedPath_delegate$lambda$0(Ljava/util/List;Lio/ktor/http/Url;)Ljava/lang/String;
    .registers 15

    .line 168
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const-string v0, ""

    if-eqz p0, :cond_9

    return-object v0

    .line 171
    :cond_9
    iget-object v1, p1, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    iget-object p0, p1, Lio/ktor/http/Url;->protocol:Lio/ktor/http/URLProtocol;

    invoke-virtual {p0}, Lio/ktor/http/URLProtocol;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 v3, p0, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v2, 0x2f

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_24

    return-object v0

    .line 175
    :cond_24
    iget-object v7, p1, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v8, v0, [C

    fill-array-data v8, :array_4c

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    move v9, p0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt__StringsKt;->indexOfAny$default(Ljava/lang/CharSequence;[CIZILjava/lang/Object;)I

    move-result v0

    .line 176
    const-string v2, "substring(...)"

    if-ne v0, v1, :cond_42

    .line 177
    iget-object p1, p1, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 179
    :cond_42
    iget-object p1, p1, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :array_4c
    .array-data 2
        0x3fs
        0x23s
    .end array-data
.end method

.method public static final encodedQuery_delegate$lambda$0(Lio/ktor/http/Url;)Ljava/lang/String;
    .registers 8

    .line 183
    iget-object v0, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v1, 0x3f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_13

    .line 184
    const-string p0, ""

    return-object p0

    .line 186
    :cond_13
    iget-object v1, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v2, 0x23

    const/4 v4, 0x0

    move v3, v0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    .line 187
    const-string v3, "substring(...)"

    if-ne v1, v2, :cond_2e

    iget-object p0, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 189
    :cond_2e
    iget-object p0, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final encodedUser_delegate$lambda$0(Lio/ktor/http/Url;)Ljava/lang/String;
    .registers 8

    .line 205
    iget-object v0, p0, Lio/ktor/http/Url;->user:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 206
    :cond_6
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_f

    const-string p0, ""

    return-object p0

    .line 207
    :cond_f
    iget-object v0, p0, Lio/ktor/http/Url;->protocol:Lio/ktor/http/URLProtocol;

    invoke-virtual {v0}, Lio/ktor/http/URLProtocol;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 208
    iget-object v1, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [C

    fill-array-data v2, :array_38

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v3, v0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsKt;->indexOfAny$default(Ljava/lang/CharSequence;[CIZILjava/lang/Object;)I

    move-result v1

    .line 209
    iget-object p0, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "substring(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    nop

    :array_38
    .array-data 2
        0x3as
        0x40s
    .end array-data
.end method

.method public static final segments_delegate$lambda$0(Ljava/util/List;)Ljava/util/List;
    .registers 4

    .line 156
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 157
    :cond_b
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_20

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_20

    move v0, v1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 158
    :goto_21
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_32

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    goto :goto_37

    :cond_32
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    .line 159
    :goto_37
    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 2

    .line 242
    sget-object v0, Lio/ktor/http/UrlJvmSerializer;->INSTANCE:Lio/ktor/http/UrlJvmSerializer;

    invoke-static {v0, p0}, Lio/ktor/utils/io/JvmSerializable_jvmKt;->JvmSerializerReplacement(Lio/ktor/utils/io/JvmSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p1, :cond_1a

    .line 231
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/ktor/http/Url;

    if-eq v1, v0, :cond_f

    goto :goto_1a

    .line 233
    :cond_f
    check-cast p1, Lio/ktor/http/Url;

    .line 235
    iget-object p0, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    iget-object p1, p1, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final getEncodedFragment()Ljava/lang/String;
    .registers 1

    .line 220
    iget-object p0, p0, Lio/ktor/http/Url;->encodedFragment$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getEncodedPassword()Ljava/lang/String;
    .registers 1

    .line 212
    iget-object p0, p0, Lio/ktor/http/Url;->encodedPassword$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getEncodedPath()Ljava/lang/String;
    .registers 1

    .line 167
    iget-object p0, p0, Lio/ktor/http/Url;->encodedPath$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getEncodedQuery()Ljava/lang/String;
    .registers 1

    .line 182
    iget-object p0, p0, Lio/ktor/http/Url;->encodedQuery$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getEncodedUser()Ljava/lang/String;
    .registers 1

    .line 204
    iget-object p0, p0, Lio/ktor/http/Url;->encodedUser$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getHost()Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lio/ktor/http/Url;->host:Ljava/lang/String;

    return-object p0
.end method

.method public final getPort()I
    .registers 3

    .line 165
    iget v0, p0, Lio/ktor/http/Url;->specifiedPort:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-nez v1, :cond_d

    const/4 v0, 0x0

    :cond_d
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1a

    :cond_14
    iget-object p0, p0, Lio/ktor/http/Url;->protocol:Lio/ktor/http/URLProtocol;

    invoke-virtual {p0}, Lio/ktor/http/URLProtocol;->getDefaultPort()I

    move-result p0

    :goto_1a
    return p0
.end method

.method public final getProtocol()Lio/ktor/http/URLProtocol;
    .registers 1

    .line 163
    iget-object p0, p0, Lio/ktor/http/Url;->protocol:Lio/ktor/http/URLProtocol;

    return-object p0
.end method

.method public final getProtocolOrNull()Lio/ktor/http/URLProtocol;
    .registers 1

    .line 162
    iget-object p0, p0, Lio/ktor/http/Url;->protocolOrNull:Lio/ktor/http/URLProtocol;

    return-object p0
.end method

.method public final getRawSegments()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object p0, p0, Lio/ktor/http/Url;->rawSegments:Ljava/util/List;

    return-object p0
.end method

.method public final getSpecifiedPort()I
    .registers 1

    .line 35
    iget p0, p0, Lio/ktor/http/Url;->specifiedPort:I

    return p0
.end method

.method public final getTrailingQuery()Z
    .registers 1

    .line 41
    iget-boolean p0, p0, Lio/ktor/http/Url;->trailingQuery:Z

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 239
    iget-object p0, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 227
    iget-object p0, p0, Lio/ktor/http/Url;->urlString:Ljava/lang/String;

    return-object p0
.end method

###### Class io.ktor.http.Url.Companion (io.ktor.http.Url$Companion)
.class public final Lio/ktor/http/Url$Companion;
.super Ljava/lang/Object;
.source "Url.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/Url;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/http/Url$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lio/ktor/http/Url;",
            ">;"
        }
    .end annotation

    .line 244
    sget-object p0, Lio/ktor/http/UrlSerializer;->INSTANCE:Lio/ktor/http/UrlSerializer;

    return-object p0
.end method

###### Class io.ktor.http.Url$$ExternalSyntheticLambda0 (io.ktor.http.Url$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/http/Url$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/Url$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/http/Url$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    invoke-static {p0}, Lio/ktor/http/Url;->$r8$lambda$GCi-3L0WxZZTCwGQN6dJb7vbDk8(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.Url$$ExternalSyntheticLambda1 (io.ktor.http.Url$$ExternalSyntheticLambda1)
.class public final synthetic Lio/ktor/http/Url$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lio/ktor/http/Url;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lio/ktor/http/Url;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/Url$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iput-object p2, p0, Lio/ktor/http/Url$$ExternalSyntheticLambda1;->f$1:Lio/ktor/http/Url;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/ktor/http/Url$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iget-object p0, p0, Lio/ktor/http/Url$$ExternalSyntheticLambda1;->f$1:Lio/ktor/http/Url;

    invoke-static {v0, p0}, Lio/ktor/http/Url;->$r8$lambda$6gdb1cqtmF65zTB6-kxjmcFqNiY(Ljava/util/List;Lio/ktor/http/Url;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.Url$$ExternalSyntheticLambda2 (io.ktor.http.Url$$ExternalSyntheticLambda2)
.class public final synthetic Lio/ktor/http/Url$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lio/ktor/http/Url;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/http/Url;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/Url$$ExternalSyntheticLambda2;->f$0:Lio/ktor/http/Url;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/http/Url$$ExternalSyntheticLambda2;->f$0:Lio/ktor/http/Url;

    invoke-static {p0}, Lio/ktor/http/Url;->$r8$lambda$-689AdvJc66I9H7NTfy8ZWsASXg(Lio/ktor/http/Url;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.Url$$ExternalSyntheticLambda3 (io.ktor.http.Url$$ExternalSyntheticLambda3)
.class public final synthetic Lio/ktor/http/Url$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lio/ktor/http/Url;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/http/Url;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/Url$$ExternalSyntheticLambda3;->f$0:Lio/ktor/http/Url;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/http/Url$$ExternalSyntheticLambda3;->f$0:Lio/ktor/http/Url;

    invoke-static {p0}, Lio/ktor/http/Url;->$r8$lambda$7LbWtH9Ew2vPzfwb3k5dmpeRKgw(Lio/ktor/http/Url;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.Url$$ExternalSyntheticLambda4 (io.ktor.http.Url$$ExternalSyntheticLambda4)
.class public final synthetic Lio/ktor/http/Url$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lio/ktor/http/Url;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/http/Url;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/Url$$ExternalSyntheticLambda4;->f$0:Lio/ktor/http/Url;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/http/Url$$ExternalSyntheticLambda4;->f$0:Lio/ktor/http/Url;

    invoke-static {p0}, Lio/ktor/http/Url;->$r8$lambda$evPI2rZsz36W_0AZ5X5BsZlNxNg(Lio/ktor/http/Url;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.Url$$ExternalSyntheticLambda5 (io.ktor.http.Url$$ExternalSyntheticLambda5)
.class public final synthetic Lio/ktor/http/Url$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lio/ktor/http/Url;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/http/Url;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/Url$$ExternalSyntheticLambda5;->f$0:Lio/ktor/http/Url;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/http/Url$$ExternalSyntheticLambda5;->f$0:Lio/ktor/http/Url;

    invoke-static {p0}, Lio/ktor/http/Url;->$r8$lambda$hkE0qwm78xILDxHX9RYk38SXrlE(Lio/ktor/http/Url;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.Url$$ExternalSyntheticLambda6 (io.ktor.http.Url$$ExternalSyntheticLambda6)
.class public final synthetic Lio/ktor/http/Url$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lio/ktor/http/Url;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/http/Url;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/Url$$ExternalSyntheticLambda6;->f$0:Lio/ktor/http/Url;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/http/Url$$ExternalSyntheticLambda6;->f$0:Lio/ktor/http/Url;

    invoke-static {p0}, Lio/ktor/http/Url;->$r8$lambda$LY5nvWzE4WDRG0V7Dq1ad_X8ur8(Lio/ktor/http/Url;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
