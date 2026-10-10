###### Class in.dragonbra.javasteam.util.compat.ByteArrayOutputStreamCompat (in.dragonbra.javasteam.util.compat.ByteArrayOutputStreamCompat)
.class public final Lin/dragonbra/javasteam/util/compat/ByteArrayOutputStreamCompat;
.super Ljava/lang/Object;
.source "ByteArrayOutputStreamCompat.kt"


# static fields
.field public static final INSTANCE:Lin/dragonbra/javasteam/util/compat/ByteArrayOutputStreamCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lin/dragonbra/javasteam/util/compat/ByteArrayOutputStreamCompat;

    invoke-direct {v0}, Lin/dragonbra/javasteam/util/compat/ByteArrayOutputStreamCompat;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/util/compat/ByteArrayOutputStreamCompat;->INSTANCE:Lin/dragonbra/javasteam/util/compat/ByteArrayOutputStreamCompat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final toString(Ljava/io/ByteArrayOutputStream;)Ljava/lang/String;
    .registers 3

    const-string v0, "byteArrayOutputStream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "UTF_8"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lin/dragonbra/javasteam/util/compat/ByteArrayOutputStreamCompat;->toString(Ljava/io/ByteArrayOutputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(Ljava/io/ByteArrayOutputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 5

    const-string v0, "byteArrayOutputStream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    .line 35
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    invoke-direct {v1, v0, v2, p0, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1
.end method
