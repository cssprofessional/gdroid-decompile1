###### Class kotlinx.io.bytestring.ByteStringKt (kotlinx.io.bytestring.ByteStringKt)
.class public final Lkotlinx/io/bytestring/ByteStringKt;
.super Ljava/lang/Object;
.source "ByteString.kt"


# direct methods
.method public static final varargs ByteString([B)Lkotlinx/io/bytestring/ByteString;
    .registers 2

    const-string v0, "bytes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    array-length v0, p0

    if-nez v0, :cond_f

    .line 36
    sget-object p0, Lkotlinx/io/bytestring/ByteString;->Companion:Lkotlinx/io/bytestring/ByteString$Companion;

    invoke-virtual {p0}, Lkotlinx/io/bytestring/ByteString$Companion;->getEMPTY$kotlinx_io_bytestring()Lkotlinx/io/bytestring/ByteString;

    move-result-object p0

    goto :goto_15

    .line 38
    :cond_f
    sget-object v0, Lkotlinx/io/bytestring/ByteString;->Companion:Lkotlinx/io/bytestring/ByteString$Companion;

    invoke-virtual {v0, p0}, Lkotlinx/io/bytestring/ByteString$Companion;->wrap$kotlinx_io_bytestring([B)Lkotlinx/io/bytestring/ByteString;

    move-result-object p0

    :goto_15
    return-object p0
.end method

.method public static final decodeToString(Lkotlinx/io/bytestring/ByteString;)Ljava/lang/String;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Lkotlinx/io/bytestring/ByteString;->getBackingArrayReference()[B

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->decodeToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final isEmpty(Lkotlinx/io/bytestring/ByteString;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0}, Lkotlinx/io/bytestring/ByteString;->getSize()I

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method
