###### Class io.ktor.utils.io.ByteChannel$readBuffer$1 (io.ktor.utils.io.ByteChannel$readBuffer$1)
.class public final synthetic Lio/ktor/utils/io/ByteChannel$readBuffer$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "ByteChannel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/ByteChannel;->getReadBuffer()Lkotlinx/io/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lio/ktor/utils/io/ClosedReadChannelException;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/utils/io/ByteChannel$readBuffer$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/ktor/utils/io/ByteChannel$readBuffer$1;

    invoke-direct {v0}, Lio/ktor/utils/io/ByteChannel$readBuffer$1;-><init>()V

    sput-object v0, Lio/ktor/utils/io/ByteChannel$readBuffer$1;->INSTANCE:Lio/ktor/utils/io/ByteChannel$readBuffer$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 0
    const-string v4, "<init>(Ljava/lang/Throwable;)V"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-class v2, Lio/ktor/utils/io/ClosedReadChannelException;

    const-string v3, "<init>"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Throwable;)Lio/ktor/utils/io/ClosedReadChannelException;
    .registers 2

    .line 45
    new-instance p0, Lio/ktor/utils/io/ClosedReadChannelException;

    invoke-direct {p0, p1}, Lio/ktor/utils/io/ClosedReadChannelException;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 45
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/ByteChannel$readBuffer$1;->invoke(Ljava/lang/Throwable;)Lio/ktor/utils/io/ClosedReadChannelException;

    move-result-object p0

    return-object p0
.end method
