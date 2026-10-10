###### Class org.apache.commons.lang3.SystemProperties (org.apache.commons.lang3.SystemProperties)
.class public final Lorg/apache/commons/lang3/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# direct methods
.method public static synthetic $r8$lambda$imUwMo_749rjNqLX2sqw06--FAA(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lorg/apache/commons/lang3/SystemProperties;->lambda$getProperty$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAwtToolkit()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1598
    const-string v0, "awt.toolkit"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileEncoding()Ljava/lang/String;
    .registers 1

    .line 1671
    const-string v0, "file.encoding"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileSeparator()Ljava/lang/String;
    .registers 1

    .line 1683
    const-string v0, "file.separator"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaAwtFonts()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1978
    const-string v0, "java.awt.fonts"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaAwtGraphicsenv()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1993
    const-string v0, "java.awt.graphicsenv"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaAwtHeadless()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2009
    const-string v0, "java.awt.headless"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaAwtPrinterjob()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2025
    const-string v0, "java.awt.printerjob"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaClassPath()Ljava/lang/String;
    .registers 1

    .line 2039
    const-string v0, "java.class.path"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaClassVersion()Ljava/lang/String;
    .registers 1

    .line 2051
    const-string v0, "java.class.version"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaCompiler()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2067
    const-string v0, "java.compiler"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaEndorsedDirs()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2095
    const-string v0, "java.endorsed.dirs"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaExtDirs()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2111
    const-string v0, "java.ext.dirs"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaHome()Ljava/lang/String;
    .registers 1

    .line 2123
    const-string v0, "java.home"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaIoTmpdir()Ljava/lang/String;
    .registers 1

    .line 2135
    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaLibraryPath()Ljava/lang/String;
    .registers 1

    .line 2147
    const-string v0, "java.library.path"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaRuntimeName()Ljava/lang/String;
    .registers 1

    .line 2395
    const-string v0, "java.runtime.name"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaRuntimeVersion()Ljava/lang/String;
    .registers 1

    .line 2407
    const-string v0, "java.runtime.version"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaSpecificationName()Ljava/lang/String;
    .registers 1

    .line 2458
    const-string v0, "java.specification.name"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaSpecificationVendor()Ljava/lang/String;
    .registers 1

    .line 2470
    const-string v0, "java.specification.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaSpecificationVersion()Ljava/lang/String;
    .registers 1

    .line 2482
    const-string v0, "java.specification.version"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaSpecificationVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2496
    const-string v0, "java.specification.version"

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getJavaUtilPrefsPreferencesFactory()Ljava/lang/String;
    .registers 1

    .line 2638
    const-string v0, "java.util.prefs.PreferencesFactory"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVendor()Ljava/lang/String;
    .registers 1

    .line 2663
    const-string v0, "java.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVendorUrl()Ljava/lang/String;
    .registers 1

    .line 2675
    const-string v0, "java.vendor.url"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVersion()Ljava/lang/String;
    .registers 1

    .line 2700
    const-string v0, "java.version"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVmInfo()Ljava/lang/String;
    .registers 1

    .line 2725
    const-string v0, "java.vm.info"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVmName()Ljava/lang/String;
    .registers 1

    .line 2737
    const-string v0, "java.vm.name"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVmSpecificationName()Ljava/lang/String;
    .registers 1

    .line 2749
    const-string v0, "java.vm.specification.name"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVmSpecificationVendor()Ljava/lang/String;
    .registers 1

    .line 2761
    const-string v0, "java.vm.specification.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVmSpecificationVersion()Ljava/lang/String;
    .registers 1

    .line 2773
    const-string v0, "java.vm.specification.version"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVmVendor()Ljava/lang/String;
    .registers 1

    .line 2785
    const-string v0, "java.vm.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVmVersion()Ljava/lang/String;
    .registers 1

    .line 2797
    const-string v0, "java.vm.version"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLineSeparator()Ljava/lang/String;
    .registers 1

    .line 3680
    const-string v0, "line.separator"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOsArch()Ljava/lang/String;
    .registers 1

    .line 3816
    const-string v0, "os.arch"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOsName()Ljava/lang/String;
    .registers 1

    .line 3828
    const-string v0, "os.name"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .registers 1

    .line 3840
    const-string v0, "os.version"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathSeparator()Ljava/lang/String;
    .registers 1

    .line 3868
    const-string v0, "path.separator"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 3881
    invoke-static {}, Lorg/apache/commons/lang3/function/Suppliers;->nul()Ljava/util/function/Supplier;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 3895
    new-instance v0, Lorg/apache/commons/lang3/SystemProperties$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/SystemProperties$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3910
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3911
    invoke-static {p1}, Lorg/apache/commons/lang3/function/Suppliers;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 3913
    :cond_d
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->getIfEmpty(Ljava/lang/CharSequence;Ljava/util/function/Supplier;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_17} :catch_18

    return-object p0

    .line 3919
    :catch_18
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getUserDir()Ljava/lang/String;
    .registers 1

    .line 4113
    const-string v0, "user.dir"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserHome()Ljava/lang/String;
    .registers 1

    .line 4138
    const-string v0, "user.home"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserLanguage()Ljava/lang/String;
    .registers 1

    .line 4150
    const-string v0, "user.language"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserName()Ljava/lang/String;
    .registers 1

    .line 4162
    const-string v0, "user.name"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserTimezone()Ljava/lang/String;
    .registers 1

    .line 4214
    const-string v0, "user.timezone"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$getProperty$0(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

###### Class org.apache.commons.lang3.SystemProperties$$ExternalSyntheticLambda0 (org.apache.commons.lang3.SystemProperties$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/apache/commons/lang3/SystemProperties$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/SystemProperties$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/apache/commons/lang3/SystemProperties$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/lang3/SystemProperties;->$r8$lambda$imUwMo_749rjNqLX2sqw06--FAA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
