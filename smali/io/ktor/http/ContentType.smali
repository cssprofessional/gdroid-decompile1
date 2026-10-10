###### Class io.ktor.http.ContentType (io.ktor.http.ContentType)
.class public final Lio/ktor/http/ContentType;
.super Lio/ktor/http/HeaderValueWithParameters;
.source "ContentTypes.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/ContentType$Application;,
        Lio/ktor/http/ContentType$Companion;,
        Lio/ktor/http/ContentType$MultiPart;,
        Lio/ktor/http/ContentType$Text;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentTypes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentTypes.kt\nio/ktor/http/ContentType\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,438:1\n1#2:439\n1761#3,3:440\n1761#3,3:443\n*S KotlinDebug\n*F\n+ 1 ContentTypes.kt\nio/ktor/http/ContentType\n*L\n49#1:440,3\n89#1:443,3\n*E\n"
.end annotation


# static fields
.field public static final Any:Lio/ktor/http/ContentType;

.field public static final Companion:Lio/ktor/http/ContentType$Companion;


# instance fields
.field public final contentSubtype:Ljava/lang/String;

.field public final contentType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lio/ktor/http/ContentType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/http/ContentType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType;->Companion:Lio/ktor/http/ContentType$Companion;

    .line 172
    new-instance v0, Lio/ktor/http/ContentType;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "*"

    const-string v4, "*"

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType;->Any:Lio/ktor/http/ContentType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/ktor/http/HeaderValueParam;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p3, p4}, Lio/ktor/http/HeaderValueWithParameters;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 18
    iput-object p1, p0, Lio/ktor/http/ContentType;->contentType:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lio/ktor/http/ContentType;->contentSubtype:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/ktor/http/HeaderValueParam;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentSubtype"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-direct {p0, p1, p2, v0, p3}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_8

    .line 27
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 24
    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getAny$cp()Lio/ktor/http/ContentType;
    .registers 1

    .line 17
    sget-object v0, Lio/ktor/http/ContentType;->Any:Lio/ktor/http/ContentType;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 117
    instance-of v0, p1, Lio/ktor/http/ContentType;

    if-eqz v0, :cond_2a

    .line 118
    iget-object v0, p0, Lio/ktor/http/ContentType;->contentType:Ljava/lang/String;

    check-cast p1, Lio/ktor/http/ContentType;

    iget-object v1, p1, Lio/ktor/http/ContentType;->contentType:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 119
    iget-object v0, p0, Lio/ktor/http/ContentType;->contentSubtype:Ljava/lang/String;

    iget-object v1, p1, Lio/ktor/http/ContentType;->contentSubtype:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 120
    invoke-virtual {p0}, Lio/ktor/http/HeaderValueWithParameters;->getParameters()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lio/ktor/http/HeaderValueWithParameters;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    return v2
.end method

.method public final getContentType()Ljava/lang/String;
    .registers 1

    .line 18
    iget-object p0, p0, Lio/ktor/http/ContentType;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public final hasParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 46
    invoke-virtual {p0}, Lio/ktor/http/HeaderValueWithParameters;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    const/4 v2, 0x1

    if-eq v0, v2, :cond_41

    .line 49
    invoke-virtual {p0}, Lio/ktor/http/HeaderValueWithParameters;->getParameters()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 1761
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_60

    .line 1762
    :cond_1b
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/http/HeaderValueParam;

    .line 49
    invoke-virtual {v0}, Lio/ktor/http/HeaderValueParam;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v0}, Lio/ktor/http/HeaderValueParam;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    :goto_3f
    move v1, v2

    goto :goto_60

    .line 48
    :cond_41
    invoke-virtual {p0}, Lio/ktor/http/HeaderValueWithParameters;->getParameters()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/ktor/http/HeaderValueParam;

    invoke-virtual {p0}, Lio/ktor/http/HeaderValueParam;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_60

    invoke-virtual {p0}, Lio/ktor/http/HeaderValueParam;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_60

    goto :goto_3f

    :cond_60
    :goto_60
    return v1
.end method

.method public hashCode()I
    .registers 6

    .line 123
    iget-object v0, p0, Lio/ktor/http/ContentType;->contentType:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "toLowerCase(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v3, v0, 0x1f

    .line 124
    iget-object v4, p0, Lio/ktor/http/ContentType;->contentSubtype:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 125
    invoke-virtual {p0}, Lio/ktor/http/HeaderValueWithParameters;->getParameters()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method

.method public final match(Lio/ktor/http/ContentType;)Z
    .registers 8

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p1, Lio/ktor/http/ContentType;->contentType:Ljava/lang/String;

    const-string v1, "*"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1c

    iget-object v0, p1, Lio/ktor/http/ContentType;->contentType:Ljava/lang/String;

    iget-object v4, p0, Lio/ktor/http/ContentType;->contentType:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1c

    return v2

    .line 80
    :cond_1c
    iget-object v0, p1, Lio/ktor/http/ContentType;->contentSubtype:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p1, Lio/ktor/http/ContentType;->contentSubtype:Ljava/lang/String;

    iget-object v4, p0, Lio/ktor/http/ContentType;->contentSubtype:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2f

    return v2

    .line 84
    :cond_2f
    invoke-virtual {p1}, Lio/ktor/http/HeaderValueWithParameters;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/http/HeaderValueParam;

    invoke-virtual {v0}, Lio/ktor/http/HeaderValueParam;->component1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lio/ktor/http/HeaderValueParam;->component2()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 88
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    :goto_57
    move v0, v3

    goto :goto_93

    .line 89
    :cond_59
    invoke-virtual {p0}, Lio/ktor/http/HeaderValueWithParameters;->getParameters()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_67

    .line 1761
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_67

    :cond_65
    move v0, v2

    goto :goto_93

    .line 1762
    :cond_67
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/ktor/http/HeaderValueParam;

    .line 89
    invoke-virtual {v5}, Lio/ktor/http/HeaderValueParam;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6b

    goto :goto_57

    .line 94
    :cond_82
    invoke-virtual {p0, v4}, Lio/ktor/http/HeaderValueWithParameters;->parameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    if-eqz v4, :cond_65

    goto :goto_57

    .line 97
    :cond_8f
    invoke-static {v4, v0, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    :goto_93
    if-nez v0, :cond_37

    return v2

    :cond_96
    return v3
.end method

.method public final withParameter(Ljava/lang/String;Ljava/lang/String;)Lio/ktor/http/ContentType;
    .registers 8

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p1, p2}, Lio/ktor/http/ContentType;->hasParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-object p0

    .line 43
    :cond_11
    new-instance v0, Lio/ktor/http/ContentType;

    iget-object v1, p0, Lio/ktor/http/ContentType;->contentType:Ljava/lang/String;

    iget-object v2, p0, Lio/ktor/http/ContentType;->contentSubtype:Ljava/lang/String;

    invoke-virtual {p0}, Lio/ktor/http/HeaderValueWithParameters;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lio/ktor/http/HeaderValueWithParameters;->getParameters()Ljava/util/List;

    move-result-object p0

    new-instance v4, Lio/ktor/http/HeaderValueParam;

    invoke-direct {v4, p1, p2}, Lio/ktor/http/HeaderValueParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

###### Class io.ktor.http.ContentType.Application (io.ktor.http.ContentType$Application)
.class public final Lio/ktor/http/ContentType$Application;
.super Ljava/lang/Object;
.source "ContentTypes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/ContentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# static fields
.field public static final Any:Lio/ktor/http/ContentType;

.field public static final Atom:Lio/ktor/http/ContentType;

.field public static final Cbor:Lio/ktor/http/ContentType;

.field public static final Docx:Lio/ktor/http/ContentType;

.field public static final FormUrlEncoded:Lio/ktor/http/ContentType;

.field public static final GZip:Lio/ktor/http/ContentType;

.field public static final HalJson:Lio/ktor/http/ContentType;

.field public static final INSTANCE:Lio/ktor/http/ContentType$Application;

.field public static final JavaScript:Lio/ktor/http/ContentType;

.field public static final Json:Lio/ktor/http/ContentType;

.field public static final OctetStream:Lio/ktor/http/ContentType;

.field public static final Pdf:Lio/ktor/http/ContentType;

.field public static final Pptx:Lio/ktor/http/ContentType;

.field public static final ProblemJson:Lio/ktor/http/ContentType;

.field public static final ProblemXml:Lio/ktor/http/ContentType;

.field public static final ProtoBuf:Lio/ktor/http/ContentType;

.field public static final Rss:Lio/ktor/http/ContentType;

.field public static final Soap:Lio/ktor/http/ContentType;

.field public static final Wasm:Lio/ktor/http/ContentType;

.field public static final Xlsx:Lio/ktor/http/ContentType;

.field public static final Xml:Lio/ktor/http/ContentType;

.field public static final Xml_Dtd:Lio/ktor/http/ContentType;

.field public static final Yaml:Lio/ktor/http/ContentType;

.field public static final Zip:Lio/ktor/http/ContentType;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v0, Lio/ktor/http/ContentType$Application;

    invoke-direct {v0}, Lio/ktor/http/ContentType$Application;-><init>()V

    sput-object v0, Lio/ktor/http/ContentType$Application;->INSTANCE:Lio/ktor/http/ContentType$Application;

    .line 189
    new-instance v0, Lio/ktor/http/ContentType;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "application"

    const-string v3, "*"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Any:Lio/ktor/http/ContentType;

    .line 190
    new-instance v0, Lio/ktor/http/ContentType;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "application"

    const-string v9, "atom+xml"

    const/4 v10, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Atom:Lio/ktor/http/ContentType;

    .line 191
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "application"

    const-string v3, "cbor"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Cbor:Lio/ktor/http/ContentType;

    .line 192
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "application"

    const-string v9, "json"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Json:Lio/ktor/http/ContentType;

    .line 193
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "application"

    const-string v3, "hal+json"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->HalJson:Lio/ktor/http/ContentType;

    .line 194
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "application"

    const-string v9, "javascript"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->JavaScript:Lio/ktor/http/ContentType;

    .line 195
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "application"

    const-string v3, "octet-stream"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->OctetStream:Lio/ktor/http/ContentType;

    .line 196
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "application"

    const-string v9, "rss+xml"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Rss:Lio/ktor/http/ContentType;

    .line 197
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "application"

    const-string v3, "soap+xml"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Soap:Lio/ktor/http/ContentType;

    .line 198
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "application"

    const-string v9, "xml"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Xml:Lio/ktor/http/ContentType;

    .line 199
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "application"

    const-string v3, "xml-dtd"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Xml_Dtd:Lio/ktor/http/ContentType;

    .line 200
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "application"

    const-string v9, "yaml"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Yaml:Lio/ktor/http/ContentType;

    .line 201
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "application"

    const-string v3, "zip"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Zip:Lio/ktor/http/ContentType;

    .line 202
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "application"

    const-string v9, "gzip"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->GZip:Lio/ktor/http/ContentType;

    .line 203
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "application"

    const-string v3, "x-www-form-urlencoded"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->FormUrlEncoded:Lio/ktor/http/ContentType;

    .line 204
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "application"

    const-string v9, "pdf"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Pdf:Lio/ktor/http/ContentType;

    .line 205
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "application"

    const-string v3, "vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Xlsx:Lio/ktor/http/ContentType;

    .line 206
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "application"

    const-string v9, "vnd.openxmlformats-officedocument.wordprocessingml.document"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Docx:Lio/ktor/http/ContentType;

    .line 208
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "application"

    const-string v3, "vnd.openxmlformats-officedocument.presentationml.presentation"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Pptx:Lio/ktor/http/ContentType;

    .line 209
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "application"

    const-string v9, "protobuf"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->ProtoBuf:Lio/ktor/http/ContentType;

    .line 210
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "application"

    const-string v3, "wasm"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->Wasm:Lio/ktor/http/ContentType;

    .line 211
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "application"

    const-string v9, "problem+json"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->ProblemJson:Lio/ktor/http/ContentType;

    .line 212
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "application"

    const-string v3, "problem+xml"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Application;->ProblemXml:Lio/ktor/http/ContentType;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOctetStream()Lio/ktor/http/ContentType;
    .registers 1

    .line 195
    sget-object p0, Lio/ktor/http/ContentType$Application;->OctetStream:Lio/ktor/http/ContentType;

    return-object p0
.end method

###### Class io.ktor.http.ContentType.Companion (io.ktor.http.ContentType$Companion)
.class public final Lio/ktor/http/ContentType$Companion;
.super Ljava/lang/Object;
.source "ContentTypes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/ContentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentTypes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentTypes.kt\nio/ktor/http/ContentType$Companion\n+ 2 HeaderValueWithParameters.kt\nio/ktor/http/HeaderValueWithParameters$Companion\n*L\n1#1,438:1\n70#2,2:439\n*S KotlinDebug\n*F\n+ 1 ContentTypes.kt\nio/ktor/http/ContentType$Companion\n*L\n138#1:439,2\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/http/ContentType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAny()Lio/ktor/http/ContentType;
    .registers 1

    .line 172
    invoke-static {}, Lio/ktor/http/ContentType;->access$getAny$cp()Lio/ktor/http/ContentType;

    move-result-object p0

    return-object p0
.end method

.method public final parse(Ljava/lang/String;)Lio/ktor/http/ContentType;
    .registers 9

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lio/ktor/http/ContentType$Companion;->getAny()Lio/ktor/http/ContentType;

    move-result-object p0

    return-object p0

    .line 138
    :cond_10
    sget-object p0, Lio/ktor/http/HeaderValueWithParameters;->Companion:Lio/ktor/http/HeaderValueWithParameters$Companion;

    .line 70
    invoke-static {p1}, Lio/ktor/http/HttpHeaderValueParserKt;->parseHeaderValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/ktor/http/HeaderValue;

    .line 71
    invoke-virtual {p0}, Lio/ktor/http/HeaderValue;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lio/ktor/http/HeaderValue;->getParams()Ljava/util/List;

    move-result-object p0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v1, 0x2f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    .line 139
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4f

    .line 142
    invoke-static {v6}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "*"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_49

    sget-object p0, Lio/ktor/http/ContentType;->Companion:Lio/ktor/http/ContentType$Companion;

    invoke-virtual {p0}, Lio/ktor/http/ContentType$Companion;->getAny()Lio/ktor/http/ContentType;

    move-result-object p0

    return-object p0

    .line 144
    :cond_49
    new-instance p0, Lio/ktor/http/BadContentTypeFormatException;

    invoke-direct {p0, p1}, Lio/ktor/http/BadContentTypeFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4f
    const/4 v1, 0x0

    .line 147
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "substring(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v4, :cond_a8

    add-int/lit8 v0, v0, 0x1

    .line 153
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x20

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 155
    invoke-static {v2, v3, v1, v4, v5}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a2

    invoke-static {v0, v3, v1, v4, v5}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a2

    .line 159
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_9c

    const/16 v3, 0x2f

    invoke-static {v0, v3, v1, v4, v5}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    .line 163
    new-instance p1, Lio/ktor/http/ContentType;

    invoke-direct {p1, v2, v0, p0}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p1

    .line 160
    :cond_9c
    new-instance p0, Lio/ktor/http/BadContentTypeFormatException;

    invoke-direct {p0, p1}, Lio/ktor/http/BadContentTypeFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 156
    :cond_a2
    new-instance p0, Lio/ktor/http/BadContentTypeFormatException;

    invoke-direct {p0, p1}, Lio/ktor/http/BadContentTypeFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 150
    :cond_a8
    new-instance p0, Lio/ktor/http/BadContentTypeFormatException;

    invoke-direct {p0, p1}, Lio/ktor/http/BadContentTypeFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class io.ktor.http.ContentType.MultiPart (io.ktor.http.ContentType$MultiPart)
.class public final Lio/ktor/http/ContentType$MultiPart;
.super Ljava/lang/Object;
.source "ContentTypes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/ContentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultiPart"
.end annotation


# static fields
.field public static final Alternative:Lio/ktor/http/ContentType;

.field public static final Any:Lio/ktor/http/ContentType;

.field public static final ByteRanges:Lio/ktor/http/ContentType;

.field public static final Encrypted:Lio/ktor/http/ContentType;

.field public static final FormData:Lio/ktor/http/ContentType;

.field public static final INSTANCE:Lio/ktor/http/ContentType$MultiPart;

.field public static final Mixed:Lio/ktor/http/ContentType;

.field public static final Related:Lio/ktor/http/ContentType;

.field public static final Signed:Lio/ktor/http/ContentType;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v0, Lio/ktor/http/ContentType$MultiPart;

    invoke-direct {v0}, Lio/ktor/http/ContentType$MultiPart;-><init>()V

    sput-object v0, Lio/ktor/http/ContentType$MultiPart;->INSTANCE:Lio/ktor/http/ContentType$MultiPart;

    .line 305
    new-instance v0, Lio/ktor/http/ContentType;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "multipart"

    const-string v3, "*"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$MultiPart;->Any:Lio/ktor/http/ContentType;

    .line 306
    new-instance v0, Lio/ktor/http/ContentType;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "multipart"

    const-string v9, "mixed"

    const/4 v10, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$MultiPart;->Mixed:Lio/ktor/http/ContentType;

    .line 307
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "multipart"

    const-string v3, "alternative"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$MultiPart;->Alternative:Lio/ktor/http/ContentType;

    .line 308
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "multipart"

    const-string v9, "related"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$MultiPart;->Related:Lio/ktor/http/ContentType;

    .line 309
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "multipart"

    const-string v3, "form-data"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$MultiPart;->FormData:Lio/ktor/http/ContentType;

    .line 310
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "multipart"

    const-string v9, "signed"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$MultiPart;->Signed:Lio/ktor/http/ContentType;

    .line 311
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "multipart"

    const-string v3, "encrypted"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$MultiPart;->Encrypted:Lio/ktor/http/ContentType;

    .line 312
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "multipart"

    const-string v9, "byteranges"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$MultiPart;->ByteRanges:Lio/ktor/http/ContentType;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/CharSequence;)Z
    .registers 3

    const-string p0, "contentType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    const-string p0, "multipart/"

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lkotlin/text/StringsKt__StringsKt;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    return p0
.end method

.method public final getFormData()Lio/ktor/http/ContentType;
    .registers 1

    .line 309
    sget-object p0, Lio/ktor/http/ContentType$MultiPart;->FormData:Lio/ktor/http/ContentType;

    return-object p0
.end method

###### Class io.ktor.http.ContentType.Text (io.ktor.http.ContentType$Text)
.class public final Lio/ktor/http/ContentType$Text;
.super Ljava/lang/Object;
.source "ContentTypes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/ContentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Text"
.end annotation


# static fields
.field public static final Any:Lio/ktor/http/ContentType;

.field public static final CSS:Lio/ktor/http/ContentType;

.field public static final CSV:Lio/ktor/http/ContentType;

.field public static final EventStream:Lio/ktor/http/ContentType;

.field public static final Html:Lio/ktor/http/ContentType;

.field public static final INSTANCE:Lio/ktor/http/ContentType$Text;

.field public static final JavaScript:Lio/ktor/http/ContentType;

.field public static final Plain:Lio/ktor/http/ContentType;

.field public static final VCard:Lio/ktor/http/ContentType;

.field public static final Xml:Lio/ktor/http/ContentType;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v0, Lio/ktor/http/ContentType$Text;

    invoke-direct {v0}, Lio/ktor/http/ContentType$Text;-><init>()V

    sput-object v0, Lio/ktor/http/ContentType$Text;->INSTANCE:Lio/ktor/http/ContentType$Text;

    .line 331
    new-instance v0, Lio/ktor/http/ContentType;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "text"

    const-string v3, "*"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Text;->Any:Lio/ktor/http/ContentType;

    .line 332
    new-instance v0, Lio/ktor/http/ContentType;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "text"

    const-string v9, "plain"

    const/4 v10, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Text;->Plain:Lio/ktor/http/ContentType;

    .line 333
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "text"

    const-string v3, "css"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Text;->CSS:Lio/ktor/http/ContentType;

    .line 334
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "text"

    const-string v9, "csv"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Text;->CSV:Lio/ktor/http/ContentType;

    .line 335
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "text"

    const-string v3, "html"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Text;->Html:Lio/ktor/http/ContentType;

    .line 336
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "text"

    const-string v9, "javascript"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Text;->JavaScript:Lio/ktor/http/ContentType;

    .line 337
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "text"

    const-string v3, "vcard"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Text;->VCard:Lio/ktor/http/ContentType;

    .line 338
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v8, "text"

    const-string v9, "xml"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Text;->Xml:Lio/ktor/http/ContentType;

    .line 339
    new-instance v0, Lio/ktor/http/ContentType;

    const-string v2, "text"

    const-string v3, "event-stream"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/ContentType$Text;->EventStream:Lio/ktor/http/ContentType;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPlain()Lio/ktor/http/ContentType;
    .registers 1

    .line 332
    sget-object p0, Lio/ktor/http/ContentType$Text;->Plain:Lio/ktor/http/ContentType;

    return-object p0
.end method
