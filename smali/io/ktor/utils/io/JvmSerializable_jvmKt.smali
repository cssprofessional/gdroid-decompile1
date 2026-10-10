###### Class io.ktor.utils.io.JvmSerializable_jvmKt (io.ktor.utils.io.JvmSerializable_jvmKt)
.class public final Lio/ktor/utils/io/JvmSerializable_jvmKt;
.super Ljava/lang/Object;
.source "JvmSerializable.jvm.kt"


# direct methods
.method public static final JvmSerializerReplacement(Lio/ktor/utils/io/JvmSerializer;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/utils/io/JvmSerializer<",
            "TT;>;TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lio/ktor/utils/io/DefaultJvmSerializerReplacement;

    invoke-direct {v0, p0, p1}, Lio/ktor/utils/io/DefaultJvmSerializerReplacement;-><init>(Lio/ktor/utils/io/JvmSerializer;Ljava/lang/Object;)V

    return-object v0
.end method
