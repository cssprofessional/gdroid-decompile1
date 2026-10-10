###### Class org.apache.commons.lang3.function.Suppliers (org.apache.commons.lang3.function.Suppliers)
.class public Lorg/apache/commons/lang3/function/Suppliers;
.super Ljava/lang/Object;
.source "Suppliers.java"


# static fields
.field public static NUL:Ljava/util/function/Supplier;


# direct methods
.method public static synthetic $r8$lambda$N5CcQmQcl2PfwtLuu3FP8vSacIQ()Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-static {}, Lorg/apache/commons/lang3/function/Suppliers;->lambda$static$0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lorg/apache/commons/lang3/function/Suppliers$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/Suppliers$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/Suppliers;->NUL:Ljava/util/function/Supplier;

    return-void
.end method

.method public static get(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 46
    :cond_4
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_8
    return-object p0
.end method

.method public static synthetic lambda$static$0()Ljava/lang/Object;
    .registers 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static nul()Ljava/util/function/Supplier;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 61
    sget-object v0, Lorg/apache/commons/lang3/function/Suppliers;->NUL:Ljava/util/function/Supplier;

    return-object v0
.end method

###### Class org.apache.commons.lang3.function.Suppliers$$ExternalSyntheticLambda0 (org.apache.commons.lang3.function.Suppliers$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/apache/commons/lang3/function/Suppliers$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-static {}, Lorg/apache/commons/lang3/function/Suppliers;->$r8$lambda$N5CcQmQcl2PfwtLuu3FP8vSacIQ()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
