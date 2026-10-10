###### Class in.dragonbra.javasteam.util.Utils (in.dragonbra.javasteam.util.Utils)
.class public Lin/dragonbra/javasteam/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final GENERIC_LINUX_OS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lin/dragonbra/javasteam/enums/EOSType;",
            ">;"
        }
    .end annotation
.end field

.field private static final JAVA_RUNTIME:Ljava/lang/String;

.field private static final LINUX_OS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lin/dragonbra/javasteam/enums/EOSType;",
            ">;"
        }
    .end annotation
.end field

.field private static final OSX_OS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "Lin/dragonbra/javasteam/enums/EOSType;",
            ">;"
        }
    .end annotation
.end field

.field private static final WIN_OS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "Lin/dragonbra/javasteam/enums/EOSType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 23
    const-string v0, "java.runtime.name"

    invoke-static {v0}, Lin/dragonbra/javasteam/util/Utils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/util/Utils;->JAVA_RUNTIME:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/util/Utils;->WIN_OS_MAP:Ljava/util/Map;

    .line 27
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lin/dragonbra/javasteam/util/Utils;->OSX_OS_MAP:Ljava/util/Map;

    .line 29
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v2, Lin/dragonbra/javasteam/util/Utils;->LINUX_OS_MAP:Ljava/util/Map;

    .line 31
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v3, Lin/dragonbra/javasteam/util/Utils;->GENERIC_LINUX_OS_MAP:Ljava/util/Map;

    .line 34
    sget-boolean v4, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS_95:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lin/dragonbra/javasteam/enums/EOSType;->Win95:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-boolean v4, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS_98:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lin/dragonbra/javasteam/enums/EOSType;->Win98:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-boolean v4, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS_ME:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lin/dragonbra/javasteam/enums/EOSType;->WinME:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-boolean v4, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS_NT:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lin/dragonbra/javasteam/enums/EOSType;->WinNT:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-boolean v4, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS_2000:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lin/dragonbra/javasteam/enums/EOSType;->Win2000:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-boolean v4, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS_XP:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lin/dragonbra/javasteam/enums/EOSType;->WinXP:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-boolean v4, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS_VISTA:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lin/dragonbra/javasteam/enums/EOSType;->WinVista:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-boolean v4, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS_7:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lin/dragonbra/javasteam/enums/EOSType;->Windows7:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-boolean v4, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS_8:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lin/dragonbra/javasteam/enums/EOSType;->Windows8:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-boolean v4, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS_10:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lin/dragonbra/javasteam/enums/EOSType;->Windows10:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-boolean v4, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS_11:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lin/dragonbra/javasteam/enums/EOSType;->Win11:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-boolean v4, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS_2003:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lin/dragonbra/javasteam/enums/EOSType;->Win2003:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-boolean v4, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS_2008:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lin/dragonbra/javasteam/enums/EOSType;->Win2008:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-boolean v4, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS_2012:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lin/dragonbra/javasteam/enums/EOSType;->Win2012:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v4, "Windows Server 2016"

    const-string v5, "10.0"

    invoke-static {v4, v5}, Lin/dragonbra/javasteam/util/Utils;->checkOS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v6, Lin/dragonbra/javasteam/enums/EOSType;->Win2016:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v4, "Windows Server 2019"

    invoke-static {v4, v5}, Lin/dragonbra/javasteam/util/Utils;->checkOS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v6, Lin/dragonbra/javasteam/enums/EOSType;->Win2019:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v4, "Windows Server 2022"

    invoke-static {v4, v5}, Lin/dragonbra/javasteam/util/Utils;->checkOS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lin/dragonbra/javasteam/enums/EOSType;->Win2022:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_MAC_OSX_TIGER:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Lin/dragonbra/javasteam/enums/EOSType;->MacOS104:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_MAC_OSX_LEOPARD:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Lin/dragonbra/javasteam/enums/EOSType;->MacOS105:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_MAC_OSX_SNOW_LEOPARD:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Lin/dragonbra/javasteam/enums/EOSType;->MacOS106:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_MAC_OSX_LION:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Lin/dragonbra/javasteam/enums/EOSType;->MacOS107:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_MAC_OSX_MOUNTAIN_LION:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Lin/dragonbra/javasteam/enums/EOSType;->MacOS108:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_MAC_OSX_MAVERICKS:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Lin/dragonbra/javasteam/enums/EOSType;->MacOS109:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_MAC_OSX_YOSEMITE:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Lin/dragonbra/javasteam/enums/EOSType;->MacOS1010:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_MAC_OSX_EL_CAPITAN:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Lin/dragonbra/javasteam/enums/EOSType;->MacOS1011:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_MAC_OSX_SIERRA:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Lin/dragonbra/javasteam/enums/EOSType;->MacOS1012:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_MAC_OSX_HIGH_SIERRA:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Lin/dragonbra/javasteam/enums/EOSType;->Macos1013:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_MAC_OSX_MOJAVE:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Lin/dragonbra/javasteam/enums/EOSType;->Macos1014:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_MAC_OSX_CATALINA:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Lin/dragonbra/javasteam/enums/EOSType;->Macos1015:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_MAC_OSX_BIG_SUR:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Lin/dragonbra/javasteam/enums/EOSType;->MacOS11:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_MAC_OSX_MONTEREY:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Lin/dragonbra/javasteam/enums/EOSType;->MacOS12:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_MAC_OSX_VENTURA:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Lin/dragonbra/javasteam/enums/EOSType;->MacOS13:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_MAC_OSX_SONOMA:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Lin/dragonbra/javasteam/enums/EOSType;->MacOS14:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, "Mac OS X"

    const-string v4, "15"

    invoke-static {v0, v4}, Lin/dragonbra/javasteam/util/Utils;->checkOS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Lin/dragonbra/javasteam/enums/EOSType;->MacOS15:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "2.2"

    sget-object v1, Lin/dragonbra/javasteam/enums/EOSType;->Linux22:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "2.4"

    sget-object v1, Lin/dragonbra/javasteam/enums/EOSType;->Linux24:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v0, "2.6"

    sget-object v1, Lin/dragonbra/javasteam/enums/EOSType;->Linux26:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "3.2"

    sget-object v1, Lin/dragonbra/javasteam/enums/EOSType;->Linux32:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v0, "3.5"

    sget-object v1, Lin/dragonbra/javasteam/enums/EOSType;->Linux35:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "3.6"

    sget-object v1, Lin/dragonbra/javasteam/enums/EOSType;->Linux36:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "3.10"

    sget-object v1, Lin/dragonbra/javasteam/enums/EOSType;->Linux310:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "3.16"

    sget-object v1, Lin/dragonbra/javasteam/enums/EOSType;->Linux316:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "3.18"

    sget-object v1, Lin/dragonbra/javasteam/enums/EOSType;->Linux318:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "4.1"

    sget-object v1, Lin/dragonbra/javasteam/enums/EOSType;->Linux41:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "4.4"

    sget-object v1, Lin/dragonbra/javasteam/enums/EOSType;->Linux44:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v0, "4.9"

    sget-object v1, Lin/dragonbra/javasteam/enums/EOSType;->Linux49:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "4.14"

    sget-object v1, Lin/dragonbra/javasteam/enums/EOSType;->Linux414:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "4.19"

    sget-object v1, Lin/dragonbra/javasteam/enums/EOSType;->Linux419:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "5.4"

    sget-object v1, Lin/dragonbra/javasteam/enums/EOSType;->Linux54:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "5.10"

    sget-object v1, Lin/dragonbra/javasteam/enums/EOSType;->Linux510:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v0, "3x"

    sget-object v1, Lin/dragonbra/javasteam/enums/EOSType;->Linux3x:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "4x"

    sget-object v1, Lin/dragonbra/javasteam/enums/EOSType;->Linux4x:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v0, "5x"

    sget-object v1, Lin/dragonbra/javasteam/enums/EOSType;->Linux5x:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, "6x"

    sget-object v1, Lin/dragonbra/javasteam/enums/EOSType;->Linux6x:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, "7x"

    sget-object v1, Lin/dragonbra/javasteam/enums/EOSType;->Linux7x:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOS(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 162
    sget-object v0, Lorg/apache/commons/lang3/SystemUtils;->OS_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    sget-object p0, Lorg/apache/commons/lang3/SystemUtils;->OS_VERSION:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static crc32(Ljava/lang/String;)J
    .registers 3

    .line 181
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lin/dragonbra/javasteam/util/Utils;->crc32([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static crc32([B)J
    .registers 3

    .line 191
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lin/dragonbra/javasteam/util/Utils;->crc32([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static crc32([BII)J
    .registers 4

    .line 203
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 204
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 205
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getOSType()Lin/dragonbra/javasteam/enums/EOSType;
    .registers 5

    .line 97
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS:Z

    if-eqz v0, :cond_30

    .line 98
    sget-object v0, Lin/dragonbra/javasteam/util/Utils;->WIN_OS_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 100
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/enums/EOSType;

    return-object v0

    .line 104
    :cond_2d
    sget-object v0, Lin/dragonbra/javasteam/enums/EOSType;->WinUnknown:Lin/dragonbra/javasteam/enums/EOSType;

    return-object v0

    .line 108
    :cond_30
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_MAC:Z

    if-eqz v0, :cond_60

    .line 109
    sget-object v0, Lin/dragonbra/javasteam/util/Utils;->OSX_OS_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 111
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/enums/EOSType;

    return-object v0

    .line 115
    :cond_5d
    sget-object v0, Lin/dragonbra/javasteam/enums/EOSType;->MacOSUnknown:Lin/dragonbra/javasteam/enums/EOSType;

    return-object v0

    .line 119
    :cond_60
    sget-object v0, Lin/dragonbra/javasteam/util/Utils;->JAVA_RUNTIME:Ljava/lang/String;

    if-eqz v0, :cond_6f

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 120
    sget-object v0, Lin/dragonbra/javasteam/enums/EOSType;->AndroidUnknown:Lin/dragonbra/javasteam/enums/EOSType;

    return-object v0

    .line 124
    :cond_6f
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_LINUX:Z

    if-eqz v0, :cond_ef

    .line 125
    const-string v0, "os.version"

    invoke-static {v0}, Lin/dragonbra/javasteam/util/Utils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7e

    .line 128
    sget-object v0, Lin/dragonbra/javasteam/enums/EOSType;->LinuxUnknown:Lin/dragonbra/javasteam/enums/EOSType;

    return-object v0

    .line 131
    :cond_7e
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 133
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_8b

    .line 134
    sget-object v0, Lin/dragonbra/javasteam/enums/EOSType;->LinuxUnknown:Lin/dragonbra/javasteam/enums/EOSType;

    return-object v0

    :cond_8b
    const/4 v1, 0x0

    .line 137
    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v3, v0, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    sget-object v3, Lin/dragonbra/javasteam/util/Utils;->LINUX_OS_MAP:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lin/dragonbra/javasteam/enums/EOSType;

    if-eqz v2, :cond_b0

    return-object v2

    .line 145
    :cond_b0
    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    sget-object v1, Lin/dragonbra/javasteam/util/Utils;->GENERIC_LINUX_OS_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_cd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ec

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 147
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 149
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/enums/EOSType;

    return-object v0

    .line 153
    :cond_ec
    sget-object v0, Lin/dragonbra/javasteam/enums/EOSType;->LinuxUnknown:Lin/dragonbra/javasteam/enums/EOSType;

    return-object v0

    .line 157
    :cond_ef
    sget-object v0, Lin/dragonbra/javasteam/enums/EOSType;->Unknown:Lin/dragonbra/javasteam/enums/EOSType;

    return-object v0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 167
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const/4 p0, 0x0

    return-object p0
.end method
