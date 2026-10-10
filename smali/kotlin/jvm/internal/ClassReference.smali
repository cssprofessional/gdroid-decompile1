###### Class kotlin.jvm.internal.ClassReference (kotlin.jvm.internal.ClassReference)
.class public final Lkotlin/jvm/internal/ClassReference;
.super Ljava/lang/Object;
.source "ClassReference.kt"

# interfaces
.implements Lkotlin/reflect/KClass;
.implements Lkotlin/jvm/internal/ClassBasedDeclarationContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/jvm/internal/ClassReference$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/reflect/KClass<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClassReference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassReference.kt\nkotlin/jvm/internal/ClassReference\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,290:1\n1573#2:291\n1604#2,4:292\n*S KotlinDebug\n*F\n+ 1 ClassReference.kt\nkotlin/jvm/internal/ClassReference\n*L\n107#1:291\n107#1:292,4\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lkotlin/jvm/internal/ClassReference$Companion;

.field public static final FUNCTION_CLASSES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lkotlin/Function<",
            "*>;>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final jClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 25

    new-instance v0, Lkotlin/jvm/internal/ClassReference$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/ClassReference$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/jvm/internal/ClassReference;->Companion:Lkotlin/jvm/internal/ClassReference$Companion;

    .line 106
    const-class v23, Lkotlin/jvm/functions/Function21;

    const-class v24, Lkotlin/jvm/functions/Function22;

    const-class v2, Lkotlin/jvm/functions/Function0;

    const-class v3, Lkotlin/jvm/functions/Function1;

    const-class v4, Lkotlin/jvm/functions/Function2;

    const-class v5, Lkotlin/jvm/functions/Function3;

    const-class v6, Lkotlin/jvm/functions/Function4;

    const-class v7, Lkotlin/jvm/functions/Function5;

    const-class v8, Lkotlin/jvm/functions/Function6;

    const-class v9, Lkotlin/jvm/functions/Function7;

    const-class v10, Lkotlin/jvm/functions/Function8;

    const-class v11, Lkotlin/jvm/functions/Function9;

    const-class v12, Lkotlin/jvm/functions/Function10;

    const-class v13, Lkotlin/jvm/functions/Function11;

    const-class v14, Lkotlin/jvm/functions/Function12;

    const-class v15, Lkotlin/jvm/functions/Function13;

    const-class v16, Lkotlin/jvm/functions/Function14;

    const-class v17, Lkotlin/jvm/functions/Function15;

    const-class v18, Lkotlin/jvm/functions/Function16;

    const-class v19, Lkotlin/jvm/functions/Function17;

    const-class v20, Lkotlin/jvm/functions/Function18;

    const-class v21, Lkotlin/jvm/functions/Function19;

    const-class v22, Lkotlin/jvm/functions/Function20;

    filled-new-array/range {v2 .. v24}, [Ljava/lang/Class;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1573
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1605
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_5f

    .line 1606
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_5f
    check-cast v3, Ljava/lang/Class;

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 1606
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_4e

    .line 107
    :cond_6e
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lkotlin/jvm/internal/ClassReference;->FUNCTION_CLASSES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "jClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/ClassReference;->jClass:Ljava/lang/Class;

    return-void
.end method

.method public static final synthetic access$getFUNCTION_CLASSES$cp()Ljava/util/Map;
    .registers 1

    .line 10
    sget-object v0, Lkotlin/jvm/internal/ClassReference;->FUNCTION_CLASSES:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 91
    instance-of v0, p1, Lkotlin/jvm/internal/ClassReference;

    if-eqz v0, :cond_16

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p0

    check-cast p1, Lkotlin/reflect/KClass;

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public getJClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 10
    iget-object p0, p0, Lkotlin/jvm/internal/ClassReference;->jClass:Ljava/lang/Class;

    return-object p0
.end method

.method public getSimpleName()Ljava/lang/String;
    .registers 2

    .line 12
    sget-object v0, Lkotlin/jvm/internal/ClassReference;->Companion:Lkotlin/jvm/internal/ClassReference$Companion;

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getJClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ClassReference$Companion;->getClassSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 94
    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .registers 3

    .line 34
    sget-object v0, Lkotlin/jvm/internal/ClassReference;->Companion:Lkotlin/jvm/internal/ClassReference$Companion;

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getJClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lkotlin/jvm/internal/ClassReference$Companion;->isInstance(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getJClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (Kotlin reflection is not available)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class kotlin.jvm.internal.ClassReference.Companion (kotlin.jvm.internal.ClassReference$Companion)
.class public final Lkotlin/jvm/internal/ClassReference$Companion;
.super Ljava/lang/Object;
.source "ClassReference.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/jvm/internal/ClassReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClassReference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassReference.kt\nkotlin/jvm/internal/ClassReference$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,290:1\n1#2:291\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lkotlin/jvm/internal/ClassReference$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClassSimpleName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "jClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    goto/16 :goto_ae

    .line 252
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 253
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 254
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x2

    const/16 v3, 0x24

    if-eqz v0, :cond_40

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1, v2, v1}, Lkotlin/text/StringsKt__StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3e

    goto :goto_40

    :cond_3e
    move-object v1, v0

    goto :goto_ae

    .line 255
    :cond_40
    :goto_40
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object p1

    if-eqz p1, :cond_61

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1, v2, v1}, Lkotlin/text/StringsKt__StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_ae

    .line 256
    :cond_61
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, v3, v1, v2, v1}, Lkotlin/text/StringsKt__StringsKt;->substringAfter$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_ae

    .line 258
    :cond_69
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const-string v2, "getName(...)"

    if-eqz v0, :cond_9d

    .line 259
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const-string v3, "Array"

    if-eqz v0, :cond_99

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/ClassReference$Companion;->simpleNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_99

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_99
    if-nez v1, :cond_ae

    move-object v1, v3

    goto :goto_ae

    .line 265
    :cond_9d
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/ClassReference$Companion;->simpleNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_ae

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :cond_ae
    :goto_ae
    return-object v1
.end method

.method public final isInstance(Ljava/lang/Object;Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-string p0, "jClass"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lkotlin/jvm/internal/ClassReference;->access$getFUNCTION_CLASSES$cp()Ljava/util/Map;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.get, V of kotlin.collections.MapsKt__MapsKt.get>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 283
    invoke-static {p1, p0}, Lkotlin/jvm/internal/TypeIntrinsics;->isFunctionOfArity(Ljava/lang/Object;I)Z

    move-result p0

    return p0

    .line 285
    :cond_1f
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-eqz p0, :cond_2d

    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p2

    .line 286
    :cond_2d
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final simpleNameOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const-string v0, "Int"

    const-string v1, "Float"

    const-string v2, "Short"

    const-string v3, "Char"

    const-string v4, "Boolean"

    const-string v5, "Byte"

    const-string v6, "Long"

    const-string v7, "Double"

    const-string v8, "Companion"

    sparse-switch p0, :sswitch_data_364

    packed-switch p0, :pswitch_data_412

    packed-switch p0, :pswitch_data_42a

    packed-switch p0, :pswitch_data_434

    goto/16 :goto_361

    :pswitch_24
    const-string p0, "kotlin.jvm.functions.Function9"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto/16 :goto_361

    .line 223
    :cond_2e
    const-string v0, "Function9"

    goto/16 :goto_362

    .line 180
    :pswitch_32
    const-string p0, "kotlin.jvm.functions.Function8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    goto/16 :goto_361

    .line 222
    :cond_3c
    const-string v0, "Function8"

    goto/16 :goto_362

    .line 180
    :pswitch_40
    const-string p0, "kotlin.jvm.functions.Function7"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4a

    goto/16 :goto_361

    .line 221
    :cond_4a
    const-string v0, "Function7"

    goto/16 :goto_362

    .line 180
    :pswitch_4e
    const-string p0, "kotlin.jvm.functions.Function6"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_58

    goto/16 :goto_361

    .line 220
    :cond_58
    const-string v0, "Function6"

    goto/16 :goto_362

    .line 180
    :pswitch_5c
    const-string p0, "kotlin.jvm.functions.Function5"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_66

    goto/16 :goto_361

    .line 219
    :cond_66
    const-string v0, "Function5"

    goto/16 :goto_362

    .line 180
    :pswitch_6a
    const-string p0, "kotlin.jvm.functions.Function4"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_74

    goto/16 :goto_361

    .line 218
    :cond_74
    const-string v0, "Function4"

    goto/16 :goto_362

    .line 180
    :pswitch_78
    const-string p0, "kotlin.jvm.functions.Function3"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_82

    goto/16 :goto_361

    .line 217
    :cond_82
    const-string v0, "Function3"

    goto/16 :goto_362

    .line 180
    :pswitch_86
    const-string p0, "kotlin.jvm.functions.Function2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_90

    goto/16 :goto_361

    .line 216
    :cond_90
    const-string v0, "Function2"

    goto/16 :goto_362

    .line 180
    :pswitch_94
    const-string p0, "kotlin.jvm.functions.Function1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9e

    goto/16 :goto_361

    .line 215
    :cond_9e
    const-string v0, "Function1"

    goto/16 :goto_362

    .line 180
    :pswitch_a2
    const-string p0, "kotlin.jvm.functions.Function0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ac

    goto/16 :goto_361

    .line 214
    :cond_ac
    const-string v0, "Function0"

    goto/16 :goto_362

    .line 180
    :pswitch_b0
    const-string p0, "kotlin.jvm.functions.Function22"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ba

    goto/16 :goto_361

    .line 236
    :cond_ba
    const-string v0, "Function22"

    goto/16 :goto_362

    .line 180
    :pswitch_be
    const-string p0, "kotlin.jvm.functions.Function21"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c8

    goto/16 :goto_361

    .line 235
    :cond_c8
    const-string v0, "Function21"

    goto/16 :goto_362

    .line 180
    :pswitch_cc
    const-string p0, "kotlin.jvm.functions.Function20"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d6

    goto/16 :goto_361

    .line 234
    :cond_d6
    const-string v0, "Function20"

    goto/16 :goto_362

    .line 180
    :pswitch_da
    const-string p0, "kotlin.jvm.functions.Function19"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e4

    goto/16 :goto_361

    .line 233
    :cond_e4
    const-string v0, "Function19"

    goto/16 :goto_362

    .line 180
    :pswitch_e8
    const-string p0, "kotlin.jvm.functions.Function18"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f2

    goto/16 :goto_361

    .line 232
    :cond_f2
    const-string v0, "Function18"

    goto/16 :goto_362

    .line 180
    :pswitch_f6
    const-string p0, "kotlin.jvm.functions.Function17"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_100

    goto/16 :goto_361

    .line 231
    :cond_100
    const-string v0, "Function17"

    goto/16 :goto_362

    .line 180
    :pswitch_104
    const-string p0, "kotlin.jvm.functions.Function16"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10e

    goto/16 :goto_361

    .line 230
    :cond_10e
    const-string v0, "Function16"

    goto/16 :goto_362

    .line 180
    :pswitch_112
    const-string p0, "kotlin.jvm.functions.Function15"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11c

    goto/16 :goto_361

    .line 229
    :cond_11c
    const-string v0, "Function15"

    goto/16 :goto_362

    .line 180
    :pswitch_120
    const-string p0, "kotlin.jvm.functions.Function14"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12a

    goto/16 :goto_361

    .line 228
    :cond_12a
    const-string v0, "Function14"

    goto/16 :goto_362

    .line 180
    :pswitch_12e
    const-string p0, "kotlin.jvm.functions.Function13"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_138

    goto/16 :goto_361

    .line 227
    :cond_138
    const-string v0, "Function13"

    goto/16 :goto_362

    .line 180
    :pswitch_13c
    const-string p0, "kotlin.jvm.functions.Function12"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_146

    goto/16 :goto_361

    .line 226
    :cond_146
    const-string v0, "Function12"

    goto/16 :goto_362

    .line 180
    :pswitch_14a
    const-string p0, "kotlin.jvm.functions.Function11"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_154

    goto/16 :goto_361

    .line 225
    :cond_154
    const-string v0, "Function11"

    goto/16 :goto_362

    .line 180
    :pswitch_158
    const-string p0, "kotlin.jvm.functions.Function10"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_162

    goto/16 :goto_361

    .line 224
    :cond_162
    const-string v0, "Function10"

    goto/16 :goto_362

    .line 180
    :sswitch_166
    const-string p0, "kotlin.jvm.internal.IntCompanionObject"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_170

    goto/16 :goto_361

    :cond_170
    move-object v0, v8

    goto/16 :goto_362

    :sswitch_173
    const-string p0, "java.lang.Throwable"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17d

    goto/16 :goto_361

    .line 206
    :cond_17d
    const-string v0, "Throwable"

    goto/16 :goto_362

    .line 180
    :sswitch_181
    const-string p0, "kotlin.jvm.internal.BooleanCompanionObject"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_170

    goto/16 :goto_361

    :sswitch_18b
    const-string p0, "java.lang.Iterable"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_195

    goto/16 :goto_361

    .line 200
    :cond_195
    const-string v0, "Iterable"

    goto/16 :goto_362

    .line 180
    :sswitch_199
    const-string p0, "java.lang.String"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a3

    goto/16 :goto_361

    .line 205
    :cond_1a3
    const-string v0, "String"

    goto/16 :goto_362

    .line 180
    :sswitch_1a7
    const-string p0, "java.lang.Object"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b1

    goto/16 :goto_361

    .line 203
    :cond_1b1
    const-string v0, "Any"

    goto/16 :goto_362

    .line 180
    :sswitch_1b5
    const-string p0, "java.lang.Number"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1bf

    goto/16 :goto_361

    .line 202
    :cond_1bf
    const-string v0, "Number"

    goto/16 :goto_362

    .line 180
    :sswitch_1c3
    const-string p0, "java.lang.Double"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1cd

    goto/16 :goto_361

    :cond_1cd
    move-object v0, v7

    goto/16 :goto_362

    :sswitch_1d0
    const-string p0, "kotlin.jvm.internal.StringCompanionObject"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_170

    goto/16 :goto_361

    :sswitch_1da
    const-string p0, "java.util.ListIterator"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e4

    goto/16 :goto_361

    .line 209
    :cond_1e4
    const-string v0, "ListIterator"

    goto/16 :goto_362

    .line 180
    :sswitch_1e8
    const-string p0, "java.util.Iterator"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f2

    goto/16 :goto_361

    .line 208
    :cond_1f2
    const-string v0, "Iterator"

    goto/16 :goto_362

    .line 180
    :sswitch_1f6
    const-string p0, "kotlin.jvm.internal.FloatCompanionObject"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_170

    goto/16 :goto_361

    :sswitch_200
    const-string p0, "java.lang.Long"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20a

    goto/16 :goto_361

    :cond_20a
    move-object v0, v6

    goto/16 :goto_362

    :sswitch_20d
    const-string p0, "java.lang.Enum"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_217

    goto/16 :goto_361

    .line 197
    :cond_217
    const-string v0, "Enum"

    goto/16 :goto_362

    .line 180
    :sswitch_21b
    const-string p0, "java.lang.Byte"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_225

    goto/16 :goto_361

    :cond_225
    move-object v0, v5

    goto/16 :goto_362

    :sswitch_228
    const-string p0, "java.lang.Boolean"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_232

    goto/16 :goto_361

    :cond_232
    move-object v0, v4

    goto/16 :goto_362

    :sswitch_235
    const-string p0, "kotlin.jvm.internal.EnumCompanionObject"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_170

    goto/16 :goto_361

    :sswitch_23f
    const-string p0, "java.lang.Character"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_249

    goto/16 :goto_361

    :cond_249
    move-object v0, v3

    goto/16 :goto_362

    :sswitch_24c
    const-string p0, "short"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_256

    goto/16 :goto_361

    :cond_256
    move-object v0, v2

    goto/16 :goto_362

    :sswitch_259
    const-string p0, "float"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_263

    goto/16 :goto_361

    :cond_263
    move-object v0, v1

    goto/16 :goto_362

    :sswitch_266
    const-string p0, "kotlin.jvm.internal.ShortCompanionObject"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_170

    goto/16 :goto_361

    :sswitch_270
    const-string p0, "java.util.List"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27a

    goto/16 :goto_361

    .line 210
    :cond_27a
    const-string v0, "List"

    goto/16 :goto_362

    .line 180
    :sswitch_27e
    const-string p0, "boolean"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_232

    goto/16 :goto_361

    :sswitch_288
    const-string p0, "long"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20a

    goto/16 :goto_361

    :sswitch_292
    const-string p0, "char"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_249

    goto/16 :goto_361

    :sswitch_29c
    const-string p0, "byte"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_225

    goto/16 :goto_361

    :sswitch_2a6
    const-string p0, "int"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_362

    goto/16 :goto_361

    :sswitch_2b0
    const-string p0, "java.util.Map$Entry"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2ba

    goto/16 :goto_361

    .line 211
    :cond_2ba
    const-string v0, "Entry"

    goto/16 :goto_362

    .line 180
    :sswitch_2be
    const-string p0, "kotlin.jvm.internal.LongCompanionObject"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_170

    goto/16 :goto_361

    :sswitch_2c8
    const-string p0, "kotlin.jvm.internal.CharCompanionObject"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_170

    goto/16 :goto_361

    :sswitch_2d2
    const-string p0, "java.lang.Short"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_256

    goto/16 :goto_361

    :sswitch_2dc
    const-string p0, "java.lang.Float"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_263

    goto/16 :goto_361

    :sswitch_2e6
    const-string p0, "java.util.Collection"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f0

    goto/16 :goto_361

    .line 207
    :cond_2f0
    const-string v0, "Collection"

    goto/16 :goto_362

    .line 180
    :sswitch_2f4
    const-string p0, "java.lang.CharSequence"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2fe

    goto/16 :goto_361

    .line 193
    :cond_2fe
    const-string v0, "CharSequence"

    goto/16 :goto_362

    .line 180
    :sswitch_302
    const-string p0, "kotlin.jvm.internal.ByteCompanionObject"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_170

    goto :goto_361

    :sswitch_30b
    const-string p0, "double"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1cd

    goto :goto_361

    :sswitch_314
    const-string p0, "java.util.Set"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31d

    goto :goto_361

    .line 213
    :cond_31d
    const-string v0, "Set"

    goto :goto_362

    .line 180
    :sswitch_320
    const-string p0, "java.util.Map"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_329

    goto :goto_361

    .line 212
    :cond_329
    const-string v0, "Map"

    goto :goto_362

    .line 180
    :sswitch_32c
    const-string p0, "java.lang.Comparable"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_335

    goto :goto_361

    .line 195
    :cond_335
    const-string v0, "Comparable"

    goto :goto_362

    .line 180
    :sswitch_338
    const-string p0, "java.lang.annotation.Annotation"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_341

    goto :goto_361

    .line 189
    :cond_341
    const-string v0, "Annotation"

    goto :goto_362

    .line 180
    :sswitch_344
    const-string p0, "java.lang.Cloneable"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34d

    goto :goto_361

    .line 194
    :cond_34d
    const-string v0, "Cloneable"

    goto :goto_362

    .line 180
    :sswitch_350
    const-string p0, "java.lang.Integer"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_362

    goto :goto_361

    :sswitch_359
    const-string p0, "kotlin.jvm.internal.DoubleCompanionObject"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_170

    :goto_361
    const/4 v0, 0x0

    :cond_362
    :goto_362
    return-object v0

    nop

    :sswitch_data_364
    .sparse-switch
        -0x7ae0c43d -> :sswitch_359
        -0x7a988a96 -> :sswitch_350
        -0x793eea9d -> :sswitch_344
        -0x75fda146 -> :sswitch_338
        -0x5dab6ad2 -> :sswitch_32c
        -0x52743c64 -> :sswitch_320
        -0x5274255e -> :sswitch_314
        -0x4f08842f -> :sswitch_30b
        -0x46781814 -> :sswitch_302
        -0x3f507f75 -> :sswitch_2f4
        -0x2906f7a2 -> :sswitch_2e6
        -0x1f76ce78 -> :sswitch_2dc
        -0x1ec16c58 -> :sswitch_2d2
        -0xeb0f022 -> :sswitch_2c8
        -0xc5a9408 -> :sswitch_2be
        -0x9d7d2b6 -> :sswitch_2b0
        0x197ef -> :sswitch_2a6
        0x2e6108 -> :sswitch_29c
        0x2e9356 -> :sswitch_292
        0x32c67c -> :sswitch_288
        0x3db6c28 -> :sswitch_27e
        0x3ec5a5e -> :sswitch_270
        0x49a71c6 -> :sswitch_266
        0x5d0225c -> :sswitch_259
        0x685847c -> :sswitch_24c
        0x9415455 -> :sswitch_23f
        0xd7b22d3 -> :sswitch_235
        0x148d6054 -> :sswitch_228
        0x17c0bc5c -> :sswitch_21b
        0x17c1f055 -> :sswitch_20d
        0x17c521d0 -> :sswitch_200
        0x1cc457e6 -> :sswitch_1f6
        0x1dcad22e -> :sswitch_1e8
        0x226988ec -> :sswitch_1da
        0x23b44f83 -> :sswitch_1d0
        0x2d605225 -> :sswitch_1c3
        0x3ec1b19d -> :sswitch_1b5
        0x3f697993 -> :sswitch_1a7
        0x473e3665 -> :sswitch_199
        0x4c0855c6 -> :sswitch_18b
        0x52797ada -> :sswitch_181
        0x612cf26c -> :sswitch_173
        0x6fe35bb3 -> :sswitch_166
    .end sparse-switch

    :pswitch_data_412
    .packed-switch -0x6bf3d83c
        :pswitch_158
        :pswitch_14a
        :pswitch_13c
        :pswitch_12e
        :pswitch_120
        :pswitch_112
        :pswitch_104
        :pswitch_f6
        :pswitch_e8
        :pswitch_da
    .end packed-switch

    :pswitch_data_42a
    .packed-switch -0x6bf3d81d
        :pswitch_cc
        :pswitch_be
        :pswitch_b0
    .end packed-switch

    :pswitch_data_434
    .packed-switch 0x4c695eb
        :pswitch_a2
        :pswitch_94
        :pswitch_86
        :pswitch_78
        :pswitch_6a
        :pswitch_5c
        :pswitch_4e
        :pswitch_40
        :pswitch_32
        :pswitch_24
    .end packed-switch
.end method
