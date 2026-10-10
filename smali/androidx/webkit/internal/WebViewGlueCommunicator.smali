###### Class androidx.webkit.internal.WebViewGlueCommunicator (androidx.webkit.internal.WebViewGlueCommunicator)
.class public Landroidx/webkit/internal/WebViewGlueCommunicator;
.super Ljava/lang/Object;
.source "WebViewGlueCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/internal/WebViewGlueCommunicator$LAZY_FACTORY_HOLDER;
    }
.end annotation


# direct methods
.method public static createGlueProviderFactory()Landroidx/webkit/internal/WebViewProviderFactory;
    .registers 3

    .line 77
    :try_start_0
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->fetchGlueProviderFactoryImpl()Ljava/lang/reflect/InvocationHandler;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_4} :catch_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_12

    .line 88
    new-instance v1, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;

    const-class v2, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-static {v2, v0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-direct {v1, v0}, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;-><init>(Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;)V

    return-object v1

    .line 86
    :catch_12
    new-instance v0, Landroidx/webkit/internal/IncompatibleApkWebViewProviderFactory;

    invoke-direct {v0}, Landroidx/webkit/internal/IncompatibleApkWebViewProviderFactory;-><init>()V

    return-object v0

    :catch_18
    move-exception v0

    .line 82
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fetchGlueProviderFactoryImpl()Ljava/lang/reflect/InvocationHandler;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 66
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->getWebViewClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 65
    const-string v1, "org.chromium.support_lib_glue.SupportLibReflectionUtil"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 67
    const-string v1, "createWebViewProviderFactory"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 69
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/InvocationHandler;

    return-object v0
.end method

.method public static getFactory()Landroidx/webkit/internal/WebViewProviderFactory;
    .registers 1

    .line 45
    sget-object v0, Landroidx/webkit/internal/WebViewGlueCommunicator$LAZY_FACTORY_HOLDER;->INSTANCE:Landroidx/webkit/internal/WebViewProviderFactory;

    return-object v0
.end method

.method public static getWebViewClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    .line 98
    invoke-static {}, Landroidx/webkit/internal/ApiHelperForP;->getWebViewClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.webkit.internal.WebViewGlueCommunicator.LAZY_FACTORY_HOLDER (androidx.webkit.internal.WebViewGlueCommunicator$LAZY_FACTORY_HOLDER)
.class public Landroidx/webkit/internal/WebViewGlueCommunicator$LAZY_FACTORY_HOLDER;
.super Ljava/lang/Object;
.source "WebViewGlueCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/internal/WebViewGlueCommunicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LAZY_FACTORY_HOLDER"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/webkit/internal/WebViewProviderFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->createGlueProviderFactory()Landroidx/webkit/internal/WebViewProviderFactory;

    move-result-object v0

    sput-object v0, Landroidx/webkit/internal/WebViewGlueCommunicator$LAZY_FACTORY_HOLDER;->INSTANCE:Landroidx/webkit/internal/WebViewProviderFactory;

    return-void
.end method
