###### Class in.dragonbra.javasteam.util.HardwareUtils (in.dragonbra.javasteam.util.HardwareUtils)
.class public Lin/dragonbra/javasteam/util/HardwareUtils;
.super Ljava/lang/Object;
.source "HardwareUtils.java"


# static fields
.field private static MACHINE_NAME:Ljava/lang/String;

.field private static SERIAL_NUMBER:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAndroidDeviceName()Ljava/lang/String;
    .registers 3

    .line 238
    const-string v0, "ro.product.manufacturer"

    invoke-static {v0}, Lin/dragonbra/javasteam/util/HardwareUtils;->getAndroidSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    const-string v1, "ro.product.model"

    invoke-static {v1}, Lin/dragonbra/javasteam/util/HardwareUtils;->getAndroidSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2d

    if-nez v1, :cond_11

    goto :goto_2d

    .line 245
    :cond_11
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    return-object v1

    .line 248
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 242
    :cond_2d
    :goto_2d
    const-string v0, "Android Device"

    return-object v0
.end method

.method private static getAndroidSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 253
    :try_start_1
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 254
    const-string v2, "get"

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 255
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    return-object v0
.end method

.method private static getDeviceName()Ljava/lang/String;
    .registers 2

    .line 224
    invoke-static {}, Lorg/apache/commons/lang3/SystemUtils;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 228
    :try_start_a
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    const/4 v0, 0x0

    :cond_14
    :goto_14
    return-object v0
.end method

.method public static getMachineID()[B
    .registers 1

    .line 28
    sget-object v0, Lin/dragonbra/javasteam/util/HardwareUtils;->SERIAL_NUMBER:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 32
    :cond_9
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS:Z

    if-eqz v0, :cond_13

    .line 33
    invoke-static {}, Lin/dragonbra/javasteam/util/HardwareUtils;->getSerialNumberWin()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/util/HardwareUtils;->SERIAL_NUMBER:Ljava/lang/String;

    .line 35
    :cond_13
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_MAC:Z

    if-eqz v0, :cond_1d

    .line 36
    invoke-static {}, Lin/dragonbra/javasteam/util/HardwareUtils;->getSerialNumberMac()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/util/HardwareUtils;->SERIAL_NUMBER:Ljava/lang/String;

    .line 38
    :cond_1d
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_LINUX:Z

    if-eqz v0, :cond_27

    .line 39
    invoke-static {}, Lin/dragonbra/javasteam/util/HardwareUtils;->getSerialNumberUnix()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/util/HardwareUtils;->SERIAL_NUMBER:Ljava/lang/String;

    .line 43
    :cond_27
    sget-object v0, Lin/dragonbra/javasteam/util/HardwareUtils;->SERIAL_NUMBER:Ljava/lang/String;

    if-nez v0, :cond_2f

    .line 44
    const-string v0, "JavaSteam-SerialNumber"

    sput-object v0, Lin/dragonbra/javasteam/util/HardwareUtils;->SERIAL_NUMBER:Ljava/lang/String;

    .line 47
    :cond_2f
    sget-object v0, Lin/dragonbra/javasteam/util/HardwareUtils;->SERIAL_NUMBER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static getMachineName()Ljava/lang/String;
    .registers 1

    const/4 v0, 0x0

    .line 197
    invoke-static {v0}, Lin/dragonbra/javasteam/util/HardwareUtils;->getMachineName(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMachineName(Z)Ljava/lang/String;
    .registers 3

    .line 201
    sget-object v0, Lin/dragonbra/javasteam/util/HardwareUtils;->MACHINE_NAME:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 206
    :cond_5
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_ANDROID:Z

    if-eqz v0, :cond_10

    .line 207
    invoke-static {}, Lin/dragonbra/javasteam/util/HardwareUtils;->getAndroidDeviceName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/util/HardwareUtils;->MACHINE_NAME:Ljava/lang/String;

    goto :goto_16

    .line 209
    :cond_10
    invoke-static {}, Lin/dragonbra/javasteam/util/HardwareUtils;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/util/HardwareUtils;->MACHINE_NAME:Ljava/lang/String;

    .line 212
    :goto_16
    sget-object v0, Lin/dragonbra/javasteam/util/HardwareUtils;->MACHINE_NAME:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Unknown"

    if-eqz v0, :cond_22

    .line 213
    sput-object v1, Lin/dragonbra/javasteam/util/HardwareUtils;->MACHINE_NAME:Ljava/lang/String;

    :cond_22
    if-nez p0, :cond_30

    .line 216
    sget-object p0, Lin/dragonbra/javasteam/util/HardwareUtils;->MACHINE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2d

    goto :goto_30

    .line 219
    :cond_2d
    sget-object p0, Lin/dragonbra/javasteam/util/HardwareUtils;->MACHINE_NAME:Ljava/lang/String;

    return-object p0

    .line 217
    :cond_30
    :goto_30
    sget-object p0, Lin/dragonbra/javasteam/util/HardwareUtils;->MACHINE_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (JavaSteam)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSerialNumberMac()Ljava/lang/String;
    .registers 5

    .line 85
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x0

    .line 89
    :try_start_5
    const-string v2, "/usr/sbin/system_profiler"

    const-string v3, "SPHardwareDataType"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_52

    .line 94
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 97
    :try_start_15
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_18

    .line 102
    :catch_18
    const-string v2, "Serial Number"

    .line 103
    :try_start_1a
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_28} :catch_52

    .line 104
    :cond_28
    :try_start_28
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 106
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_41
    .catchall {:try_start_28 .. :try_end_41} :catchall_42

    goto :goto_45

    :catchall_42
    move-exception v0

    goto :goto_49

    :cond_44
    move-object v0, v1

    .line 110
    :goto_45
    :try_start_45
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_52

    return-object v0

    .line 103
    :goto_49
    :try_start_49
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception v2

    :try_start_4e
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_51
    throw v0
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_52} :catch_52

    :catch_52
    return-object v1
.end method

.method private static getSerialNumberUnix()Ljava/lang/String;
    .registers 1

    .line 118
    invoke-static {}, Lin/dragonbra/javasteam/util/HardwareUtils;->readDmidecode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 121
    invoke-static {}, Lin/dragonbra/javasteam/util/HardwareUtils;->readLshal()Ljava/lang/String;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method private static getSerialNumberWin()Ljava/lang/String;
    .registers 6

    .line 53
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x0

    .line 57
    :try_start_5
    const-string v2, "wmic"

    const-string v3, "bios"

    const-string v4, "get"

    const-string v5, "serialnumber"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_15} :catch_4f

    .line 62
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 65
    :try_start_19
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1c

    .line 69
    :catch_1c
    new-instance v2, Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 70
    :cond_25
    :try_start_25
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 71
    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v3, "SerialNumber"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 73
    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_40

    goto :goto_42

    :catchall_40
    move-exception v0

    goto :goto_46

    .line 77
    :cond_42
    :goto_42
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    return-object v1

    .line 69
    :goto_46
    :try_start_46
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_4e

    :catchall_4a
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4e
    throw v0

    :catch_4f
    return-object v1
.end method

.method private static read(Ljava/lang/String;)Ljava/io/BufferedReader;
    .registers 3

    .line 129
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 132
    :try_start_4
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_24

    .line 137
    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 140
    :try_start_12
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_15

    .line 144
    :catch_15
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v0

    :catch_24
    const/4 p0, 0x0

    return-object p0
.end method

.method private static readDmidecode()Ljava/lang/String;
    .registers 5

    .line 152
    const-string v0, "Serial Number:"

    const/4 v1, 0x0

    .line 154
    :try_start_3
    const-string v2, "dmidecode -t system"

    invoke-static {v2}, Lin/dragonbra/javasteam/util/HardwareUtils;->read(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v2

    if-nez v2, :cond_11

    if-eqz v2, :cond_10

    .line 165
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_10} :catch_39

    :cond_10
    return-object v1

    .line 159
    :cond_11
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 160
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 161
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_29

    goto :goto_2c

    :catchall_29
    move-exception v0

    goto :goto_30

    :cond_2b
    move-object v0, v1

    .line 165
    :goto_2c
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_39

    return-object v0

    .line 154
    :goto_30
    :try_start_30
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v2

    :try_start_35
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_38
    throw v0
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_39} :catch_39

    :catch_39
    return-object v1
.end method

.method private static readLshal()Ljava/lang/String;
    .registers 5

    .line 176
    const-string v0, "system.hardware.serial ="

    const/4 v1, 0x0

    .line 178
    :try_start_3
    const-string v2, "lshal"

    invoke-static {v2}, Lin/dragonbra/javasteam/util/HardwareUtils;->read(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v2

    if-nez v2, :cond_11

    if-eqz v2, :cond_10

    .line 189
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_10} :catch_41

    :cond_10
    return-object v1

    .line 182
    :cond_11
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 183
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 185
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aget-object v0, v0, v3

    const-string v3, "\\(string\\)|(\\\')"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_31

    goto :goto_34

    :catchall_31
    move-exception v0

    goto :goto_38

    :cond_33
    move-object v0, v1

    .line 189
    :goto_34
    :try_start_34
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_41

    return-object v0

    .line 178
    :goto_38
    :try_start_38
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v2

    :try_start_3d
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw v0
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_41} :catch_41

    :catch_41
    return-object v1
.end method
