###### Class io.ktor.utils.io.charsets.TooLongLineException (io.ktor.utils.io.charsets.TooLongLineException)
.class public final Lio/ktor/utils/io/charsets/TooLongLineException;
.super Lio/ktor/utils/io/charsets/MalformedInputException;
.source "Encoding.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0, p1}, Lio/ktor/utils/io/charsets/MalformedInputException;-><init>(Ljava/lang/String;)V

    return-void
.end method
