###### Class kotlinx.serialization.internal.NothingSerialDescriptor (kotlinx.serialization.internal.NothingSerialDescriptor)
.class public final Lkotlinx/serialization/internal/NothingSerialDescriptor;
.super Ljava/lang/Object;
.source "NothingSerialDescriptor.kt"

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/NothingSerialDescriptor;

.field public static final kind:Lkotlinx/serialization/descriptors/SerialKind;

.field public static final serialName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlinx/serialization/internal/NothingSerialDescriptor;

    invoke-direct {v0}, Lkotlinx/serialization/internal/NothingSerialDescriptor;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/NothingSerialDescriptor;->INSTANCE:Lkotlinx/serialization/internal/NothingSerialDescriptor;

    .line 15
    sget-object v0, Lkotlinx/serialization/descriptors/StructureKind$OBJECT;->INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$OBJECT;

    sput-object v0, Lkotlinx/serialization/internal/NothingSerialDescriptor;->kind:Lkotlinx/serialization/descriptors/SerialKind;

    .line 17
    const-string v0, "kotlin.Nothing"

    sput-object v0, Lkotlinx/serialization/internal/NothingSerialDescriptor;->serialName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public final error()Ljava/lang/Void;
    .registers 2

    .line 32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Descriptor for type `kotlin.Nothing` does not have elements"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 2

    .line 23
    invoke-virtual {p0}, Lkotlinx/serialization/internal/NothingSerialDescriptor;->error()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public getElementName(I)Ljava/lang/String;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lkotlinx/serialization/internal/NothingSerialDescriptor;->error()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public getElementsCount()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getKind()Lkotlinx/serialization/descriptors/SerialKind;
    .registers 1

    .line 15
    sget-object p0, Lkotlinx/serialization/internal/NothingSerialDescriptor;->kind:Lkotlinx/serialization/descriptors/SerialKind;

    return-object p0
.end method

.method public getSerialName()Ljava/lang/String;
    .registers 1

    .line 17
    sget-object p0, Lkotlinx/serialization/internal/NothingSerialDescriptor;->serialName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .line 30
    invoke-virtual {p0}, Lkotlinx/serialization/internal/NothingSerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/serialization/internal/NothingSerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/descriptors/SerialKind;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 25
    const-string p0, "NothingSerialDescriptor"

    return-object p0
.end method
