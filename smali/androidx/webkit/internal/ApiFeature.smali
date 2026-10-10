###### Class androidx.webkit.internal.ApiFeature (androidx.webkit.internal.ApiFeature)
.class public abstract Landroidx/webkit/internal/ApiFeature;
.super Ljava/lang/Object;
.source "ApiFeature.java"

# interfaces
.implements Landroidx/webkit/internal/ConditionallySupportedFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/internal/ApiFeature$LAZY_HOLDER;,
        Landroidx/webkit/internal/ApiFeature$T;,
        Landroidx/webkit/internal/ApiFeature$Q;,
        Landroidx/webkit/internal/ApiFeature$P;,
        Landroidx/webkit/internal/ApiFeature$O_MR1;,
        Landroidx/webkit/internal/ApiFeature$O;,
        Landroidx/webkit/internal/ApiFeature$N;,
        Landroidx/webkit/internal/ApiFeature$M;,
        Landroidx/webkit/internal/ApiFeature$NoFramework;
    }
.end annotation


# static fields
.field public static final sValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/webkit/internal/ApiFeature;",
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

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroidx/webkit/internal/ApiFeature;->sValues:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroidx/webkit/internal/ApiFeature;->mPublicFeatureValue:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Landroidx/webkit/internal/ApiFeature;->mInternalFeatureValue:Ljava/lang/String;

    .line 58
    sget-object p1, Landroidx/webkit/internal/ApiFeature;->sValues:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static values()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/webkit/internal/ApiFeature;",
            ">;"
        }
    .end annotation

    .line 95
    sget-object v0, Landroidx/webkit/internal/ApiFeature;->sValues:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPublicFeatureName()Ljava/lang/String;
    .registers 1

    .line 64
    iget-object p0, p0, Landroidx/webkit/internal/ApiFeature;->mPublicFeatureValue:Ljava/lang/String;

    return-object p0
.end method

.method public isSupported()Z
    .registers 2

    .line 69
    invoke-virtual {p0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByFramework()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public abstract isSupportedByFramework()Z
.end method

.method public isSupportedByWebView()Z
    .registers 2

    .line 86
    sget-object v0, Landroidx/webkit/internal/ApiFeature$LAZY_HOLDER;->WEBVIEW_APK_FEATURES:Ljava/util/Set;

    iget-object p0, p0, Landroidx/webkit/internal/ApiFeature;->mInternalFeatureValue:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->containsFeature(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

###### Class androidx.webkit.internal.ApiFeature.LAZY_HOLDER (androidx.webkit.internal.ApiFeature$LAZY_HOLDER)
.class public Landroidx/webkit/internal/ApiFeature$LAZY_HOLDER;
.super Ljava/lang/Object;
.source "ApiFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/internal/ApiFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LAZY_HOLDER"
.end annotation


# static fields
.field public static final WEBVIEW_APK_FEATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 106
    new-instance v0, Ljava/util/HashSet;

    .line 107
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->getFactory()Landroidx/webkit/internal/WebViewProviderFactory;

    move-result-object v1

    invoke-interface {v1}, Landroidx/webkit/internal/WebViewProviderFactory;->getWebViewFeatures()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroidx/webkit/internal/ApiFeature$LAZY_HOLDER;->WEBVIEW_APK_FEATURES:Ljava/util/Set;

    return-void
.end method

###### Class androidx.webkit.internal.ApiFeature.M (androidx.webkit.internal.ApiFeature$M)
.class public Landroidx/webkit/internal/ApiFeature$M;
.super Landroidx/webkit/internal/ApiFeature;
.source "ApiFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/internal/ApiFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "M"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 133
    invoke-direct {p0, p1, p2}, Landroidx/webkit/internal/ApiFeature;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final isSupportedByFramework()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

###### Class androidx.webkit.internal.ApiFeature.N (androidx.webkit.internal.ApiFeature$N)
.class public Landroidx/webkit/internal/ApiFeature$N;
.super Landroidx/webkit/internal/ApiFeature;
.source "ApiFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/internal/ApiFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "N"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 148
    invoke-direct {p0, p1, p2}, Landroidx/webkit/internal/ApiFeature;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final isSupportedByFramework()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

###### Class androidx.webkit.internal.ApiFeature.NoFramework (androidx.webkit.internal.ApiFeature$NoFramework)
.class public Landroidx/webkit/internal/ApiFeature$NoFramework;
.super Landroidx/webkit/internal/ApiFeature;
.source "ApiFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/internal/ApiFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoFramework"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 118
    invoke-direct {p0, p1, p2}, Landroidx/webkit/internal/ApiFeature;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final isSupportedByFramework()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

###### Class androidx.webkit.internal.ApiFeature.O (androidx.webkit.internal.ApiFeature$O)
.class public Landroidx/webkit/internal/ApiFeature$O;
.super Landroidx/webkit/internal/ApiFeature;
.source "ApiFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/internal/ApiFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "O"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 163
    invoke-direct {p0, p1, p2}, Landroidx/webkit/internal/ApiFeature;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final isSupportedByFramework()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

###### Class androidx.webkit.internal.ApiFeature.O_MR1 (androidx.webkit.internal.ApiFeature$O_MR1)
.class public Landroidx/webkit/internal/ApiFeature$O_MR1;
.super Landroidx/webkit/internal/ApiFeature;
.source "ApiFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/internal/ApiFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "O_MR1"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 178
    invoke-direct {p0, p1, p2}, Landroidx/webkit/internal/ApiFeature;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final isSupportedByFramework()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

###### Class androidx.webkit.internal.ApiFeature.P (androidx.webkit.internal.ApiFeature$P)
.class public Landroidx/webkit/internal/ApiFeature$P;
.super Landroidx/webkit/internal/ApiFeature;
.source "ApiFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/internal/ApiFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "P"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 193
    invoke-direct {p0, p1, p2}, Landroidx/webkit/internal/ApiFeature;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final isSupportedByFramework()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

###### Class androidx.webkit.internal.ApiFeature.Q (androidx.webkit.internal.ApiFeature$Q)
.class public Landroidx/webkit/internal/ApiFeature$Q;
.super Landroidx/webkit/internal/ApiFeature;
.source "ApiFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/internal/ApiFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Q"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 208
    invoke-direct {p0, p1, p2}, Landroidx/webkit/internal/ApiFeature;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final isSupportedByFramework()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

###### Class androidx.webkit.internal.ApiFeature.T (androidx.webkit.internal.ApiFeature$T)
.class public Landroidx/webkit/internal/ApiFeature$T;
.super Landroidx/webkit/internal/ApiFeature;
.source "ApiFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/internal/ApiFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 222
    invoke-direct {p0, p1, p2}, Landroidx/webkit/internal/ApiFeature;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final isSupportedByFramework()Z
    .registers 2

    .line 227
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
