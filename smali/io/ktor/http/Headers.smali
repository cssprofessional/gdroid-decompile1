###### Class io.ktor.http.Headers (io.ktor.http.Headers)
.class public interface abstract Lio/ktor/http/Headers;
.super Ljava/lang/Object;
.source "Headers.kt"

# interfaces
.implements Lio/ktor/util/StringValues;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/Headers$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/http/Headers$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    sget-object v0, Lio/ktor/http/Headers$Companion;->$$INSTANCE:Lio/ktor/http/Headers$Companion;

    sput-object v0, Lio/ktor/http/Headers;->Companion:Lio/ktor/http/Headers$Companion;

    return-void
.end method

###### Class io.ktor.http.Headers.Companion (io.ktor.http.Headers$Companion)
.class public final Lio/ktor/http/Headers$Companion;
.super Ljava/lang/Object;
.source "Headers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/Headers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lio/ktor/http/Headers$Companion;

.field public static final Empty:Lio/ktor/http/Headers;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/ktor/http/Headers$Companion;

    invoke-direct {v0}, Lio/ktor/http/Headers$Companion;-><init>()V

    sput-object v0, Lio/ktor/http/Headers$Companion;->$$INSTANCE:Lio/ktor/http/Headers$Companion;

    .line 21
    sget-object v0, Lio/ktor/http/EmptyHeaders;->INSTANCE:Lio/ktor/http/EmptyHeaders;

    sput-object v0, Lio/ktor/http/Headers$Companion;->Empty:Lio/ktor/http/Headers;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEmpty()Lio/ktor/http/Headers;
    .registers 1

    .line 21
    sget-object p0, Lio/ktor/http/Headers$Companion;->Empty:Lio/ktor/http/Headers;

    return-object p0
.end method
