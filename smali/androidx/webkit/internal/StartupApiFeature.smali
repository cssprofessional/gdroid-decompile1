###### Class androidx.webkit.internal.StartupApiFeature (androidx.webkit.internal.StartupApiFeature)
.class public abstract Landroidx/webkit/internal/StartupApiFeature;
.super Ljava/lang/Object;
.source "StartupApiFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/internal/StartupApiFeature$NoFramework;,
        Landroidx/webkit/internal/StartupApiFeature$P;
    }
.end annotation


# static fields
.field public static final sValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/webkit/internal/StartupApiFeature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mInternalFeatureValue:Ljava/lang/String;

.field public final mPublicFeatureValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroidx/webkit/internal/StartupApiFeature;->sValues:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroidx/webkit/internal/StartupApiFeature;->mPublicFeatureValue:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Landroidx/webkit/internal/StartupApiFeature;->mInternalFeatureValue:Ljava/lang/String;

    .line 71
    sget-object p1, Landroidx/webkit/internal/StartupApiFeature;->sValues:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class androidx.webkit.internal.StartupApiFeature.NoFramework (androidx.webkit.internal.StartupApiFeature$NoFramework)
.class public Landroidx/webkit/internal/StartupApiFeature$NoFramework;
.super Landroidx/webkit/internal/StartupApiFeature;
.source "StartupApiFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/internal/StartupApiFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoFramework"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 184
    invoke-direct {p0, p1, p2}, Landroidx/webkit/internal/StartupApiFeature;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class androidx.webkit.internal.StartupApiFeature.P (androidx.webkit.internal.StartupApiFeature$P)
.class public Landroidx/webkit/internal/StartupApiFeature$P;
.super Landroidx/webkit/internal/StartupApiFeature;
.source "StartupApiFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/internal/StartupApiFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "P"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 170
    invoke-direct {p0, p1, p2}, Landroidx/webkit/internal/StartupApiFeature;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
