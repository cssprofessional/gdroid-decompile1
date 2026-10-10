###### Class io.ktor.utils.io.DefaultJvmSerializerReplacement (io.ktor.utils.io.DefaultJvmSerializerReplacement)
.class public final Lio/ktor/utils/io/DefaultJvmSerializerReplacement;
.super Ljava/lang/Object;
.source "JvmSerializable.jvm.kt"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/DefaultJvmSerializerReplacement$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/utils/io/DefaultJvmSerializerReplacement$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public serializer:Lio/ktor/utils/io/JvmSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/JvmSerializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/ktor/utils/io/DefaultJvmSerializerReplacement$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/utils/io/DefaultJvmSerializerReplacement$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/utils/io/DefaultJvmSerializerReplacement;->Companion:Lio/ktor/utils/io/DefaultJvmSerializerReplacement$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0, v0}, Lio/ktor/utils/io/DefaultJvmSerializerReplacement;-><init>(Lio/ktor/utils/io/JvmSerializer;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/utils/io/JvmSerializer;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/JvmSerializer<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lio/ktor/utils/io/DefaultJvmSerializerReplacement;->serializer:Lio/ktor/utils/io/JvmSerializer;

    .line 24
    iput-object p2, p0, Lio/ktor/utils/io/DefaultJvmSerializerReplacement;->value:Ljava/lang/Object;

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .registers 1

    .line 40
    iget-object p0, p0, Lio/ktor/utils/io/DefaultJvmSerializerReplacement;->value:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 4

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type io.ktor.utils.io.JvmSerializer<T of io.ktor.utils.io.DefaultJvmSerializerReplacement>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/ktor/utils/io/JvmSerializer;

    iput-object v0, p0, Lio/ktor/utils/io/DefaultJvmSerializerReplacement;->serializer:Lio/ktor/utils/io/JvmSerializer;

    .line 36
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.ByteArray"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [B

    invoke-interface {v0, p1}, Lio/ktor/utils/io/JvmSerializer;->jvmDeserialize([B)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/utils/io/DefaultJvmSerializerReplacement;->value:Ljava/lang/Object;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lio/ktor/utils/io/DefaultJvmSerializerReplacement;->serializer:Lio/ktor/utils/io/JvmSerializer;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lio/ktor/utils/io/DefaultJvmSerializerReplacement;->serializer:Lio/ktor/utils/io/JvmSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/ktor/utils/io/DefaultJvmSerializerReplacement;->value:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Lio/ktor/utils/io/JvmSerializer;->jvmSerialize(Ljava/lang/Object;)[B

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

###### Class io.ktor.utils.io.DefaultJvmSerializerReplacement.Companion (io.ktor.utils.io.DefaultJvmSerializerReplacement$Companion)
.class public final Lio/ktor/utils/io/DefaultJvmSerializerReplacement$Companion;
.super Ljava/lang/Object;
.source "JvmSerializable.jvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/DefaultJvmSerializerReplacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/utils/io/DefaultJvmSerializerReplacement$Companion;-><init>()V

    return-void
.end method
