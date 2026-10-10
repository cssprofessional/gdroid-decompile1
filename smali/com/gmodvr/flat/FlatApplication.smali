###### Class com.gmodvr.flat.FlatApplication (com.gmodvr.flat.FlatApplication)
.class public final Lcom/gmodvr/flat/FlatApplication;
.super Landroid/app/Application;
.source "FlatApplication.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 1

    .line 8
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 9
    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter;->install(Landroid/content/Context;)V

    return-void
.end method
