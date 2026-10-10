###### Class kotlinx.io.bytestring.unsafe.UnsafeByteStringOperations (kotlinx.io.bytestring.unsafe.UnsafeByteStringOperations)
.class public final Lkotlinx/io/bytestring/unsafe/UnsafeByteStringOperations;
.super Ljava/lang/Object;
.source "UnsafeByteStringOperations.kt"


# static fields
.field public static final INSTANCE:Lkotlinx/io/bytestring/unsafe/UnsafeByteStringOperations;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lkotlinx/io/bytestring/unsafe/UnsafeByteStringOperations;

    invoke-direct {v0}, Lkotlinx/io/bytestring/unsafe/UnsafeByteStringOperations;-><init>()V

    sput-object v0, Lkotlinx/io/bytestring/unsafe/UnsafeByteStringOperations;->INSTANCE:Lkotlinx/io/bytestring/unsafe/UnsafeByteStringOperations;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final wrapUnsafe([B)Lkotlinx/io/bytestring/ByteString;
    .registers 2

    const-string p0, "array"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object p0, Lkotlinx/io/bytestring/ByteString;->Companion:Lkotlinx/io/bytestring/ByteString$Companion;

    invoke-virtual {p0, p1}, Lkotlinx/io/bytestring/ByteString$Companion;->wrap$kotlinx_io_bytestring([B)Lkotlinx/io/bytestring/ByteString;

    move-result-object p0

    return-object p0
.end method
