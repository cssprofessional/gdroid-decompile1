###### Class androidx.webkit.internal.IncompatibleApkWebViewProviderFactory (androidx.webkit.internal.IncompatibleApkWebViewProviderFactory)
.class public Landroidx/webkit/internal/IncompatibleApkWebViewProviderFactory;
.super Ljava/lang/Object;
.source "IncompatibleApkWebViewProviderFactory.java"

# interfaces
.implements Landroidx/webkit/internal/WebViewProviderFactory;


# static fields
.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 38
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroidx/webkit/internal/IncompatibleApkWebViewProviderFactory;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createWebView(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;
    .registers 2

    .line 47
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This should never happen, if this method was called it means we\'re trying to reach into WebView APK code on an incompatible device. This most likely means the current method is being called too early, or is being called on start-up rather than lazily"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;
    .registers 2

    .line 59
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This should never happen, if this method was called it means we\'re trying to reach into WebView APK code on an incompatible device. This most likely means the current method is being called too early, or is being called on start-up rather than lazily"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWebViewFeatures()[Ljava/lang/String;
    .registers 1

    .line 65
    sget-object p0, Landroidx/webkit/internal/IncompatibleApkWebViewProviderFactory;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0
.end method
