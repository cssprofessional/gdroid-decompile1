###### Class io.ktor.http.Parameters (io.ktor.http.Parameters)
.class public interface abstract Lio/ktor/http/Parameters;
.super Ljava/lang/Object;
.source "Parameters.kt"

# interfaces
.implements Lio/ktor/util/StringValues;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/Parameters$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/http/Parameters$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    sget-object v0, Lio/ktor/http/Parameters$Companion;->$$INSTANCE:Lio/ktor/http/Parameters$Companion;

    sput-object v0, Lio/ktor/http/Parameters;->Companion:Lio/ktor/http/Parameters$Companion;

    return-void
.end method

###### Class io.ktor.http.Parameters.Companion (io.ktor.http.Parameters$Companion)
.class public final Lio/ktor/http/Parameters$Companion;
.super Ljava/lang/Object;
.source "Parameters.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lio/ktor/http/Parameters$Companion;

.field public static final Empty:Lio/ktor/http/Parameters;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/ktor/http/Parameters$Companion;

    invoke-direct {v0}, Lio/ktor/http/Parameters$Companion;-><init>()V

    sput-object v0, Lio/ktor/http/Parameters$Companion;->$$INSTANCE:Lio/ktor/http/Parameters$Companion;

    .line 21
    sget-object v0, Lio/ktor/http/EmptyParameters;->INSTANCE:Lio/ktor/http/EmptyParameters;

    sput-object v0, Lio/ktor/http/Parameters$Companion;->Empty:Lio/ktor/http/Parameters;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEmpty()Lio/ktor/http/Parameters;
    .registers 1

    .line 21
    sget-object p0, Lio/ktor/http/Parameters$Companion;->Empty:Lio/ktor/http/Parameters;

    return-object p0
.end method
