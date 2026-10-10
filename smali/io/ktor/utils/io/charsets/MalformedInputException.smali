###### Class io.ktor.utils.io.charsets.MalformedInputException (io.ktor.utils.io.charsets.MalformedInputException)
.class public Lio/ktor/utils/io/charsets/MalformedInputException;
.super Ljava/nio/charset/MalformedInputException;
.source "CharsetJVM.kt"


# instance fields
.field public final _message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, v0}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    .line 97
    iput-object p1, p0, Lio/ktor/utils/io/charsets/MalformedInputException;->_message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 1

    .line 100
    iget-object p0, p0, Lio/ktor/utils/io/charsets/MalformedInputException;->_message:Ljava/lang/String;

    return-object p0
.end method
