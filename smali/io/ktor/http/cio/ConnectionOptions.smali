###### Class io.ktor.http.cio.ConnectionOptions (io.ktor.http.cio.ConnectionOptions)
.class public final Lio/ktor/http/cio/ConnectionOptions;
.super Ljava/lang/Object;
.source "ConnectionOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/cio/ConnectionOptions$Companion;
    }
.end annotation


# static fields
.field public static final Close:Lio/ktor/http/cio/ConnectionOptions;

.field public static final Companion:Lio/ktor/http/cio/ConnectionOptions$Companion;

.field public static final KeepAlive:Lio/ktor/http/cio/ConnectionOptions;

.field public static final Upgrade:Lio/ktor/http/cio/ConnectionOptions;

.field public static final knownTypes:Lio/ktor/http/cio/internals/AsciiCharTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/http/cio/internals/AsciiCharTree<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lio/ktor/http/cio/ConnectionOptions;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final close:Z

.field public final extraOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final keepAlive:Z

.field public final upgrade:Z


# direct methods
.method public static synthetic $r8$lambda$2iUVybCb9Od9Y5fL7BnZI3oWiE0(Lkotlin/Pair;I)C
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/http/cio/ConnectionOptions;->knownTypes$lambda$1(Lkotlin/Pair;I)C

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SQdSKG29630JDeesIV9cq5kjpFM(Lkotlin/Pair;)I
    .registers 1

    .line 0
    invoke-static {p0}, Lio/ktor/http/cio/ConnectionOptions;->knownTypes$lambda$0(Lkotlin/Pair;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lio/ktor/http/cio/ConnectionOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/http/cio/ConnectionOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/cio/ConnectionOptions;->Companion:Lio/ktor/http/cio/ConnectionOptions$Companion;

    .line 31
    new-instance v0, Lio/ktor/http/cio/ConnectionOptions;

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lio/ktor/http/cio/ConnectionOptions;-><init>(ZZZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/cio/ConnectionOptions;->Close:Lio/ktor/http/cio/ConnectionOptions;

    .line 38
    new-instance v1, Lio/ktor/http/cio/ConnectionOptions;

    const/16 v14, 0xd

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lio/ktor/http/cio/ConnectionOptions;-><init>(ZZZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lio/ktor/http/cio/ConnectionOptions;->KeepAlive:Lio/ktor/http/cio/ConnectionOptions;

    .line 45
    new-instance v9, Lio/ktor/http/cio/ConnectionOptions;

    const/16 v7, 0xb

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lio/ktor/http/cio/ConnectionOptions;-><init>(ZZZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v9, Lio/ktor/http/cio/ConnectionOptions;->Upgrade:Lio/ktor/http/cio/ConnectionOptions;

    .line 47
    sget-object v2, Lio/ktor/http/cio/internals/AsciiCharTree;->Companion:Lio/ktor/http/cio/internals/AsciiCharTree$Companion;

    .line 48
    const-string v3, "close"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const-string v3, "keep-alive"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const-string v3, "upgrade"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    filled-new-array {v0, v1, v3}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lio/ktor/http/cio/ConnectionOptions$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/ktor/http/cio/ConnectionOptions$$ExternalSyntheticLambda0;-><init>()V

    new-instance v3, Lio/ktor/http/cio/ConnectionOptions$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lio/ktor/http/cio/ConnectionOptions$$ExternalSyntheticLambda1;-><init>()V

    .line 47
    invoke-virtual {v2, v0, v1, v3}, Lio/ktor/http/cio/internals/AsciiCharTree$Companion;->build(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lio/ktor/http/cio/internals/AsciiCharTree;

    move-result-object v0

    sput-object v0, Lio/ktor/http/cio/ConnectionOptions;->knownTypes:Lio/ktor/http/cio/internals/AsciiCharTree;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .line 0
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/ktor/http/cio/ConnectionOptions;-><init>(ZZZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZLjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "extraOptions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lio/ktor/http/cio/ConnectionOptions;->close:Z

    .line 21
    iput-boolean p2, p0, Lio/ktor/http/cio/ConnectionOptions;->keepAlive:Z

    .line 22
    iput-boolean p3, p0, Lio/ktor/http/cio/ConnectionOptions;->upgrade:Z

    .line 23
    iput-object p4, p0, Lio/ktor/http/cio/ConnectionOptions;->extraOptions:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ZZZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move p1, v0

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_b

    move p2, v0

    :cond_b
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_10

    move p3, v0

    :cond_10
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    .line 23
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    .line 19
    :cond_18
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/http/cio/ConnectionOptions;-><init>(ZZZLjava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getClose$cp()Lio/ktor/http/cio/ConnectionOptions;
    .registers 1

    .line 19
    sget-object v0, Lio/ktor/http/cio/ConnectionOptions;->Close:Lio/ktor/http/cio/ConnectionOptions;

    return-object v0
.end method

.method public static final synthetic access$getKeepAlive$cp()Lio/ktor/http/cio/ConnectionOptions;
    .registers 1

    .line 19
    sget-object v0, Lio/ktor/http/cio/ConnectionOptions;->KeepAlive:Lio/ktor/http/cio/ConnectionOptions;

    return-object v0
.end method

.method public static final synthetic access$getKnownTypes$cp()Lio/ktor/http/cio/internals/AsciiCharTree;
    .registers 1

    .line 19
    sget-object v0, Lio/ktor/http/cio/ConnectionOptions;->knownTypes:Lio/ktor/http/cio/internals/AsciiCharTree;

    return-object v0
.end method

.method public static final knownTypes$lambda$0(Lkotlin/Pair;)I
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public static final knownTypes$lambda$1(Lkotlin/Pair;I)C
    .registers 3

    const-string v0, "t"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method


# virtual methods
.method public final buildToString()Ljava/lang/String;
    .registers 12

    .line 138
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/ktor/http/cio/ConnectionOptions;->extraOptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    iget-boolean v1, p0, Lio/ktor/http/cio/ConnectionOptions;->close:Z

    if-eqz v1, :cond_1b

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_1b
    iget-boolean v1, p0, Lio/ktor/http/cio/ConnectionOptions;->keepAlive:Z

    if-eqz v1, :cond_24

    const-string v1, "keep-alive"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_24
    iget-boolean v1, p0, Lio/ktor/http/cio/ConnectionOptions;->upgrade:Z

    if-eqz v1, :cond_2d

    const-string v1, "Upgrade"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_2d
    iget-object v1, p0, Lio/ktor/http/cio/ConnectionOptions;->extraOptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 145
    iget-object p0, p0, Lio/ktor/http/cio/ConnectionOptions;->extraOptions:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3a
    const/16 v8, 0x7e

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v10

    .line 148
    invoke-static/range {v0 .. v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    .line 138
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_33

    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/ktor/http/cio/ConnectionOptions;

    if-eq v3, v2, :cond_10

    goto :goto_33

    .line 155
    :cond_10
    check-cast p1, Lio/ktor/http/cio/ConnectionOptions;

    .line 157
    iget-boolean v2, p0, Lio/ktor/http/cio/ConnectionOptions;->close:Z

    iget-boolean v3, p1, Lio/ktor/http/cio/ConnectionOptions;->close:Z

    if-eq v2, v3, :cond_19

    return v1

    .line 158
    :cond_19
    iget-boolean v2, p0, Lio/ktor/http/cio/ConnectionOptions;->keepAlive:Z

    iget-boolean v3, p1, Lio/ktor/http/cio/ConnectionOptions;->keepAlive:Z

    if-eq v2, v3, :cond_20

    return v1

    .line 159
    :cond_20
    iget-boolean v2, p0, Lio/ktor/http/cio/ConnectionOptions;->upgrade:Z

    iget-boolean v3, p1, Lio/ktor/http/cio/ConnectionOptions;->upgrade:Z

    if-eq v2, v3, :cond_27

    return v1

    .line 160
    :cond_27
    iget-object p0, p0, Lio/ktor/http/cio/ConnectionOptions;->extraOptions:Ljava/util/List;

    iget-object p1, p1, Lio/ktor/http/cio/ConnectionOptions;->extraOptions:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    return v1

    :cond_32
    return v0

    :cond_33
    :goto_33
    return v1
.end method

.method public final getClose()Z
    .registers 1

    .line 20
    iget-boolean p0, p0, Lio/ktor/http/cio/ConnectionOptions;->close:Z

    return p0
.end method

.method public final getKeepAlive()Z
    .registers 1

    .line 21
    iget-boolean p0, p0, Lio/ktor/http/cio/ConnectionOptions;->keepAlive:Z

    return p0
.end method

.method public final getUpgrade()Z
    .registers 1

    .line 22
    iget-boolean p0, p0, Lio/ktor/http/cio/ConnectionOptions;->upgrade:Z

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 166
    iget-boolean v0, p0, Lio/ktor/http/cio/ConnectionOptions;->close:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 167
    iget-boolean v1, p0, Lio/ktor/http/cio/ConnectionOptions;->keepAlive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 168
    iget-boolean v1, p0, Lio/ktor/http/cio/ConnectionOptions;->upgrade:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 169
    iget-object p0, p0, Lio/ktor/http/cio/ConnectionOptions;->extraOptions:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 127
    iget-object v0, p0, Lio/ktor/http/cio/ConnectionOptions;->extraOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 129
    iget-boolean v0, p0, Lio/ktor/http/cio/ConnectionOptions;->close:Z

    if-eqz v0, :cond_17

    iget-boolean v1, p0, Lio/ktor/http/cio/ConnectionOptions;->keepAlive:Z

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lio/ktor/http/cio/ConnectionOptions;->upgrade:Z

    if-nez v1, :cond_17

    const-string p0, "close"

    goto :goto_3a

    :cond_17
    if-nez v0, :cond_24

    .line 130
    iget-boolean v1, p0, Lio/ktor/http/cio/ConnectionOptions;->keepAlive:Z

    if-eqz v1, :cond_24

    iget-boolean v1, p0, Lio/ktor/http/cio/ConnectionOptions;->upgrade:Z

    if-nez v1, :cond_24

    const-string p0, "keep-alive"

    goto :goto_3a

    :cond_24
    if-nez v0, :cond_31

    .line 131
    iget-boolean v0, p0, Lio/ktor/http/cio/ConnectionOptions;->keepAlive:Z

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lio/ktor/http/cio/ConnectionOptions;->upgrade:Z

    if-eqz v0, :cond_31

    const-string p0, "keep-alive, Upgrade"

    goto :goto_3a

    .line 132
    :cond_31
    invoke-virtual {p0}, Lio/ktor/http/cio/ConnectionOptions;->buildToString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3a

    .line 135
    :cond_36
    invoke-virtual {p0}, Lio/ktor/http/cio/ConnectionOptions;->buildToString()Ljava/lang/String;

    move-result-object p0

    :goto_3a
    return-object p0
.end method

###### Class io.ktor.http.cio.ConnectionOptions.Companion (io.ktor.http.cio.ConnectionOptions$Companion)
.class public final Lio/ktor/http/cio/ConnectionOptions$Companion;
.super Ljava/lang/Object;
.source "ConnectionOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/cio/ConnectionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$HMB-IPU9LUFuShG15vlKSY9ENgE(CI)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/http/cio/ConnectionOptions$Companion;->parse$lambda$0(CI)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$diI7oirZoyljW955RNWKg1TyW0A(CI)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/http/cio/ConnectionOptions$Companion;->parseSlow$lambda$0(CI)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/http/cio/ConnectionOptions$Companion;-><init>()V

    return-void
.end method

.method public static final parse$lambda$0(CI)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static final parseSlow$lambda$0(CI)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getClose()Lio/ktor/http/cio/ConnectionOptions;
    .registers 1

    .line 31
    invoke-static {}, Lio/ktor/http/cio/ConnectionOptions;->access$getClose$cp()Lio/ktor/http/cio/ConnectionOptions;

    move-result-object p0

    return-object p0
.end method

.method public final getKeepAlive()Lio/ktor/http/cio/ConnectionOptions;
    .registers 1

    .line 38
    invoke-static {}, Lio/ktor/http/cio/ConnectionOptions;->access$getKeepAlive$cp()Lio/ktor/http/cio/ConnectionOptions;

    move-result-object p0

    return-object p0
.end method

.method public final parse(Ljava/lang/CharSequence;)Lio/ktor/http/cio/ConnectionOptions;
    .registers 10

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_4
    invoke-static {}, Lio/ktor/http/cio/ConnectionOptions;->access$getKnownTypes$cp()Lio/ktor/http/cio/internals/AsciiCharTree;

    move-result-object v0

    new-instance v5, Lio/ktor/http/cio/ConnectionOptions$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lio/ktor/http/cio/ConnectionOptions$Companion$$ExternalSyntheticLambda0;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lio/ktor/http/cio/internals/AsciiCharTree;->search$default(Lio/ktor/http/cio/internals/AsciiCharTree;Ljava/lang/CharSequence;IIZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2c

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/ktor/http/cio/ConnectionOptions;

    return-object p0

    .line 62
    :cond_2c
    invoke-virtual {p0, p1}, Lio/ktor/http/cio/ConnectionOptions$Companion;->parseSlow(Ljava/lang/CharSequence;)Lio/ktor/http/cio/ConnectionOptions;

    move-result-object p0

    return-object p0
.end method

.method public final parseSlow(Ljava/lang/CharSequence;)Lio/ktor/http/cio/ConnectionOptions;
    .registers 14

    .line 68
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x0

    const/4 v0, 0x0

    move-object v8, v0

    move-object v9, v8

    move v0, v7

    move v1, v0

    :goto_a
    if-ge v0, v6, :cond_b3

    .line 74
    :cond_c
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    const/16 v4, 0x20

    if-eq v2, v4, :cond_1b

    if-eq v2, v3, :cond_1b

    move v10, v0

    move v11, v10

    goto :goto_21

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v6, :cond_c

    move v10, v0

    move v11, v1

    :goto_21
    if-ge v10, v6, :cond_2e

    .line 83
    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_2e

    if-eq v0, v3, :cond_2e

    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    .line 88
    :cond_2e
    invoke-static {}, Lio/ktor/http/cio/ConnectionOptions;->access$getKnownTypes$cp()Lio/ktor/http/cio/internals/AsciiCharTree;

    move-result-object v0

    .line 89
    new-instance v5, Lio/ktor/http/cio/ConnectionOptions$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lio/ktor/http/cio/ConnectionOptions$Companion$$ExternalSyntheticLambda1;-><init>()V

    const/4 v4, 0x1

    move-object v1, p1

    move v2, v11

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Lio/ktor/http/cio/internals/AsciiCharTree;->search(Ljava/lang/CharSequence;IIZLkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->singleOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-nez v0, :cond_5d

    if-nez v9, :cond_4f

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 97
    :cond_4f
    invoke-interface {p1, v11, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5a
    move v0, v10

    move v1, v11

    goto :goto_a

    :cond_5d
    if-nez v8, :cond_67

    .line 99
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lio/ktor/http/cio/ConnectionOptions;

    goto :goto_5a

    .line 101
    :cond_67
    new-instance v1, Lio/ktor/http/cio/ConnectionOptions;

    .line 102
    invoke-virtual {v8}, Lio/ktor/http/cio/ConnectionOptions;->getClose()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_7f

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/ktor/http/cio/ConnectionOptions;

    invoke-virtual {v2}, Lio/ktor/http/cio/ConnectionOptions;->getClose()Z

    move-result v2

    if-eqz v2, :cond_7d

    goto :goto_7f

    :cond_7d
    move v2, v7

    goto :goto_80

    :cond_7f
    :goto_7f
    move v2, v3

    .line 103
    :goto_80
    invoke-virtual {v8}, Lio/ktor/http/cio/ConnectionOptions;->getKeepAlive()Z

    move-result v4

    if-nez v4, :cond_95

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/ktor/http/cio/ConnectionOptions;

    invoke-virtual {v4}, Lio/ktor/http/cio/ConnectionOptions;->getKeepAlive()Z

    move-result v4

    if-eqz v4, :cond_93

    goto :goto_95

    :cond_93
    move v4, v7

    goto :goto_96

    :cond_95
    :goto_95
    move v4, v3

    .line 104
    :goto_96
    invoke-virtual {v8}, Lio/ktor/http/cio/ConnectionOptions;->getUpgrade()Z

    move-result v5

    if-nez v5, :cond_aa

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/http/cio/ConnectionOptions;

    invoke-virtual {v0}, Lio/ktor/http/cio/ConnectionOptions;->getUpgrade()Z

    move-result v0

    if-eqz v0, :cond_a9

    goto :goto_aa

    :cond_a9
    move v3, v7

    .line 105
    :cond_aa
    :goto_aa
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 101
    invoke-direct {v1, v2, v4, v3, v0}, Lio/ktor/http/cio/ConnectionOptions;-><init>(ZZZLjava/util/List;)V

    move-object v8, v1

    goto :goto_5a

    :cond_b3
    if-nez v8, :cond_b9

    .line 111
    invoke-virtual {p0}, Lio/ktor/http/cio/ConnectionOptions$Companion;->getKeepAlive()Lio/ktor/http/cio/ConnectionOptions;

    move-result-object v8

    :cond_b9
    if-nez v9, :cond_bc

    goto :goto_ce

    .line 116
    :cond_bc
    new-instance v0, Lio/ktor/http/cio/ConnectionOptions;

    .line 117
    invoke-virtual {v8}, Lio/ktor/http/cio/ConnectionOptions;->getClose()Z

    move-result v1

    .line 118
    invoke-virtual {v8}, Lio/ktor/http/cio/ConnectionOptions;->getKeepAlive()Z

    move-result v2

    .line 119
    invoke-virtual {v8}, Lio/ktor/http/cio/ConnectionOptions;->getUpgrade()Z

    move-result v3

    .line 116
    invoke-direct {v0, v1, v2, v3, v9}, Lio/ktor/http/cio/ConnectionOptions;-><init>(ZZZLjava/util/List;)V

    move-object v8, v0

    :goto_ce
    return-object v8
.end method

###### Class io.ktor.http.cio.ConnectionOptions$Companion$$ExternalSyntheticLambda0 (io.ktor.http.cio.ConnectionOptions$Companion$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/http/cio/ConnectionOptions$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lio/ktor/http/cio/ConnectionOptions$Companion;->$r8$lambda$HMB-IPU9LUFuShG15vlKSY9ENgE(CI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.cio.ConnectionOptions$Companion$$ExternalSyntheticLambda1 (io.ktor.http.cio.ConnectionOptions$Companion$$ExternalSyntheticLambda1)
.class public final synthetic Lio/ktor/http/cio/ConnectionOptions$Companion$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lio/ktor/http/cio/ConnectionOptions$Companion;->$r8$lambda$diI7oirZoyljW955RNWKg1TyW0A(CI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.cio.ConnectionOptions$$ExternalSyntheticLambda0 (io.ktor.http.cio.ConnectionOptions$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/http/cio/ConnectionOptions$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lkotlin/Pair;

    invoke-static {p1}, Lio/ktor/http/cio/ConnectionOptions;->$r8$lambda$SQdSKG29630JDeesIV9cq5kjpFM(Lkotlin/Pair;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.cio.ConnectionOptions$$ExternalSyntheticLambda1 (io.ktor.http.cio.ConnectionOptions$$ExternalSyntheticLambda1)
.class public final synthetic Lio/ktor/http/cio/ConnectionOptions$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlin/Pair;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lio/ktor/http/cio/ConnectionOptions;->$r8$lambda$2iUVybCb9Od9Y5fL7BnZI3oWiE0(Lkotlin/Pair;I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method
