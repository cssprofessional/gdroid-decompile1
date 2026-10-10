###### Class io.ktor.util.reflect.TypeInfo (io.ktor.util.reflect.TypeInfo)
.class public final Lio/ktor/util/reflect/TypeInfo;
.super Ljava/lang/Object;
.source "Type.kt"


# instance fields
.field public final kotlinType:Lkotlin/reflect/KType;

.field public final type:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lkotlin/reflect/KType;",
            ")V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lio/ktor/util/reflect/TypeInfo;->type:Lkotlin/reflect/KClass;

    .line 35
    iput-object p2, p0, Lio/ktor/util/reflect/TypeInfo;->kotlinType:Lkotlin/reflect/KType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 52
    :cond_4
    instance-of v0, p1, Lio/ktor/util/reflect/TypeInfo;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 54
    :cond_a
    iget-object v0, p0, Lio/ktor/util/reflect/TypeInfo;->kotlinType:Lkotlin/reflect/KType;

    if-nez v0, :cond_1f

    move-object v1, p1

    check-cast v1, Lio/ktor/util/reflect/TypeInfo;

    iget-object v2, v1, Lio/ktor/util/reflect/TypeInfo;->kotlinType:Lkotlin/reflect/KType;

    if-eqz v2, :cond_16

    goto :goto_1f

    .line 57
    :cond_16
    iget-object p0, p0, Lio/ktor/util/reflect/TypeInfo;->type:Lkotlin/reflect/KClass;

    iget-object p1, v1, Lio/ktor/util/reflect/TypeInfo;->type:Lkotlin/reflect/KClass;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_27

    .line 55
    :cond_1f
    :goto_1f
    check-cast p1, Lio/ktor/util/reflect/TypeInfo;

    iget-object p0, p1, Lio/ktor/util/reflect/TypeInfo;->kotlinType:Lkotlin/reflect/KType;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_27
    return p0
.end method

.method public final getType()Lkotlin/reflect/KClass;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KClass<",
            "*>;"
        }
    .end annotation

    .line 34
    iget-object p0, p0, Lio/ktor/util/reflect/TypeInfo;->type:Lkotlin/reflect/KClass;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .line 47
    iget-object v0, p0, Lio/ktor/util/reflect/TypeInfo;->kotlinType:Lkotlin/reflect/KType;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_f

    :cond_9
    iget-object p0, p0, Lio/ktor/util/reflect/TypeInfo;->type:Lkotlin/reflect/KClass;

    invoke-interface {p0}, Lkotlin/reflect/KClass;->hashCode()I

    move-result p0

    :goto_f
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypeInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/util/reflect/TypeInfo;->kotlinType:Lkotlin/reflect/KType;

    if-eqz v1, :cond_f

    goto :goto_11

    :cond_f
    iget-object v1, p0, Lio/ktor/util/reflect/TypeInfo;->type:Lkotlin/reflect/KClass;

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
