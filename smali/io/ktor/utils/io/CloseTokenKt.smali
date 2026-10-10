###### Class io.ktor.utils.io.CloseTokenKt (io.ktor.utils.io.CloseTokenKt)
.class public final Lio/ktor/utils/io/CloseTokenKt;
.super Ljava/lang/Object;
.source "CloseToken.kt"


# static fields
.field public static final CLOSED:Lio/ktor/utils/io/CloseToken;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 11
    new-instance v0, Lio/ktor/utils/io/CloseToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/utils/io/CloseToken;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lio/ktor/utils/io/CloseTokenKt;->CLOSED:Lio/ktor/utils/io/CloseToken;

    return-void
.end method

.method public static final getCLOSED()Lio/ktor/utils/io/CloseToken;
    .registers 1

    .line 11
    sget-object v0, Lio/ktor/utils/io/CloseTokenKt;->CLOSED:Lio/ktor/utils/io/CloseToken;

    return-object v0
.end method
