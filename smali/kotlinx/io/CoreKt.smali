###### Class kotlinx.io.CoreKt (kotlinx.io.CoreKt)
.class public final Lkotlinx/io/CoreKt;
.super Ljava/lang/Object;
.source "Core.kt"


# direct methods
.method public static final buffered(Lkotlinx/io/RawSource;)Lkotlinx/io/Source;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lkotlinx/io/RealSource;

    invoke-direct {v0, p0}, Lkotlinx/io/RealSource;-><init>(Lkotlinx/io/RawSource;)V

    return-object v0
.end method
