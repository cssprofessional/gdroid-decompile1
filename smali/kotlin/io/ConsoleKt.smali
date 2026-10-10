###### Class kotlin.io.ConsoleKt (kotlin.io.ConsoleKt)
.class public final Lkotlin/io/ConsoleKt;
.super Ljava/lang/Object;
.source "Console.kt"


# direct methods
.method public static final readLine()Ljava/lang/String;
    .registers 4

    .line 173
    sget-object v0, Lkotlin/io/LineReader;->INSTANCE:Lkotlin/io/LineReader;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    const-string v2, "in"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    const-string v3, "defaultCharset(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lkotlin/io/LineReader;->readLine(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final readln()Ljava/lang/String;
    .registers 2

    .line 152
    invoke-static {}, Lkotlin/io/ConsoleKt;->readlnOrNull()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Lkotlin/io/ReadAfterEOFException;

    const-string v1, "EOF has already been reached"

    invoke-direct {v0, v1}, Lkotlin/io/ReadAfterEOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final readlnOrNull()Ljava/lang/String;
    .registers 1

    .line 163
    invoke-static {}, Lkotlin/io/ConsoleKt;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
