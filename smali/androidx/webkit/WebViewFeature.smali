###### Class androidx.webkit.WebViewFeature (androidx.webkit.WebViewFeature)
.class public Landroidx/webkit/WebViewFeature;
.super Ljava/lang/Object;
.source "WebViewFeature.java"


# direct methods
.method public static isFeatureSupported(Ljava/lang/String;)Z
    .registers 1

    .line 634
    invoke-static {p0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
