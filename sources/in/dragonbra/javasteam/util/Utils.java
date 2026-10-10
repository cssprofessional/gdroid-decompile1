package in.dragonbra.javasteam.util;

import in.dragonbra.javasteam.enums.EOSType;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.zip.CRC32;
import org.apache.commons.lang3.SystemUtils;

/* JADX INFO: loaded from: classes2.dex */
public class Utils {
    private static final Map<String, EOSType> GENERIC_LINUX_OS_MAP;
    private static final String JAVA_RUNTIME = getSystemProperty("java.runtime.name");
    private static final Map<String, EOSType> LINUX_OS_MAP;
    private static final Map<Boolean, EOSType> OSX_OS_MAP;
    private static final Map<Boolean, EOSType> WIN_OS_MAP;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        WIN_OS_MAP = linkedHashMap;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        OSX_OS_MAP = linkedHashMap2;
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        LINUX_OS_MAP = linkedHashMap3;
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        GENERIC_LINUX_OS_MAP = linkedHashMap4;
        linkedHashMap.put(Boolean.valueOf(SystemUtils.IS_OS_WINDOWS_95), EOSType.Win95);
        linkedHashMap.put(Boolean.valueOf(SystemUtils.IS_OS_WINDOWS_98), EOSType.Win98);
        linkedHashMap.put(Boolean.valueOf(SystemUtils.IS_OS_WINDOWS_ME), EOSType.WinME);
        linkedHashMap.put(Boolean.valueOf(SystemUtils.IS_OS_WINDOWS_NT), EOSType.WinNT);
        linkedHashMap.put(Boolean.valueOf(SystemUtils.IS_OS_WINDOWS_2000), EOSType.Win2000);
        linkedHashMap.put(Boolean.valueOf(SystemUtils.IS_OS_WINDOWS_XP), EOSType.WinXP);
        linkedHashMap.put(Boolean.valueOf(SystemUtils.IS_OS_WINDOWS_VISTA), EOSType.WinVista);
        linkedHashMap.put(Boolean.valueOf(SystemUtils.IS_OS_WINDOWS_7), EOSType.Windows7);
        linkedHashMap.put(Boolean.valueOf(SystemUtils.IS_OS_WINDOWS_8), EOSType.Windows8);
        linkedHashMap.put(Boolean.valueOf(SystemUtils.IS_OS_WINDOWS_10), EOSType.Windows10);
        linkedHashMap.put(Boolean.valueOf(SystemUtils.IS_OS_WINDOWS_11), EOSType.Win11);
        linkedHashMap.put(Boolean.valueOf(SystemUtils.IS_OS_WINDOWS_2003), EOSType.Win2003);
        linkedHashMap.put(Boolean.valueOf(SystemUtils.IS_OS_WINDOWS_2008), EOSType.Win2008);
        linkedHashMap.put(Boolean.valueOf(SystemUtils.IS_OS_WINDOWS_2012), EOSType.Win2012);
        linkedHashMap.put(Boolean.valueOf(checkOS("Windows Server 2016", "10.0")), EOSType.Win2016);
        linkedHashMap.put(Boolean.valueOf(checkOS("Windows Server 2019", "10.0")), EOSType.Win2019);
        linkedHashMap.put(Boolean.valueOf(checkOS("Windows Server 2022", "10.0")), EOSType.Win2022);
        linkedHashMap2.put(Boolean.valueOf(SystemUtils.IS_OS_MAC_OSX_TIGER), EOSType.MacOS104);
        linkedHashMap2.put(Boolean.valueOf(SystemUtils.IS_OS_MAC_OSX_LEOPARD), EOSType.MacOS105);
        linkedHashMap2.put(Boolean.valueOf(SystemUtils.IS_OS_MAC_OSX_SNOW_LEOPARD), EOSType.MacOS106);
        linkedHashMap2.put(Boolean.valueOf(SystemUtils.IS_OS_MAC_OSX_LION), EOSType.MacOS107);
        linkedHashMap2.put(Boolean.valueOf(SystemUtils.IS_OS_MAC_OSX_MOUNTAIN_LION), EOSType.MacOS108);
        linkedHashMap2.put(Boolean.valueOf(SystemUtils.IS_OS_MAC_OSX_MAVERICKS), EOSType.MacOS109);
        linkedHashMap2.put(Boolean.valueOf(SystemUtils.IS_OS_MAC_OSX_YOSEMITE), EOSType.MacOS1010);
        linkedHashMap2.put(Boolean.valueOf(SystemUtils.IS_OS_MAC_OSX_EL_CAPITAN), EOSType.MacOS1011);
        linkedHashMap2.put(Boolean.valueOf(SystemUtils.IS_OS_MAC_OSX_SIERRA), EOSType.MacOS1012);
        linkedHashMap2.put(Boolean.valueOf(SystemUtils.IS_OS_MAC_OSX_HIGH_SIERRA), EOSType.Macos1013);
        linkedHashMap2.put(Boolean.valueOf(SystemUtils.IS_OS_MAC_OSX_MOJAVE), EOSType.Macos1014);
        linkedHashMap2.put(Boolean.valueOf(SystemUtils.IS_OS_MAC_OSX_CATALINA), EOSType.Macos1015);
        linkedHashMap2.put(Boolean.valueOf(SystemUtils.IS_OS_MAC_OSX_BIG_SUR), EOSType.MacOS11);
        linkedHashMap2.put(Boolean.valueOf(SystemUtils.IS_OS_MAC_OSX_MONTEREY), EOSType.MacOS12);
        linkedHashMap2.put(Boolean.valueOf(SystemUtils.IS_OS_MAC_OSX_VENTURA), EOSType.MacOS13);
        linkedHashMap2.put(Boolean.valueOf(SystemUtils.IS_OS_MAC_OSX_SONOMA), EOSType.MacOS14);
        linkedHashMap2.put(Boolean.valueOf(checkOS("Mac OS X", "15")), EOSType.MacOS15);
        linkedHashMap3.put("2.2", EOSType.Linux22);
        linkedHashMap3.put("2.4", EOSType.Linux24);
        linkedHashMap3.put("2.6", EOSType.Linux26);
        linkedHashMap3.put("3.2", EOSType.Linux32);
        linkedHashMap3.put("3.5", EOSType.Linux35);
        linkedHashMap3.put("3.6", EOSType.Linux36);
        linkedHashMap3.put("3.10", EOSType.Linux310);
        linkedHashMap3.put("3.16", EOSType.Linux316);
        linkedHashMap3.put("3.18", EOSType.Linux318);
        linkedHashMap3.put("4.1", EOSType.Linux41);
        linkedHashMap3.put("4.4", EOSType.Linux44);
        linkedHashMap3.put("4.9", EOSType.Linux49);
        linkedHashMap3.put("4.14", EOSType.Linux414);
        linkedHashMap3.put("4.19", EOSType.Linux419);
        linkedHashMap3.put("5.4", EOSType.Linux54);
        linkedHashMap3.put("5.10", EOSType.Linux510);
        linkedHashMap4.put("3x", EOSType.Linux3x);
        linkedHashMap4.put("4x", EOSType.Linux4x);
        linkedHashMap4.put("5x", EOSType.Linux5x);
        linkedHashMap4.put("6x", EOSType.Linux6x);
        linkedHashMap4.put("7x", EOSType.Linux7x);
    }

    public static EOSType getOSType() {
        if (SystemUtils.IS_OS_WINDOWS) {
            for (Map.Entry<Boolean, EOSType> entry : WIN_OS_MAP.entrySet()) {
                if (entry.getKey().booleanValue()) {
                    return entry.getValue();
                }
            }
            return EOSType.WinUnknown;
        }
        if (SystemUtils.IS_OS_MAC) {
            for (Map.Entry<Boolean, EOSType> entry2 : OSX_OS_MAP.entrySet()) {
                if (entry2.getKey().booleanValue()) {
                    return entry2.getValue();
                }
            }
            return EOSType.MacOSUnknown;
        }
        String str = JAVA_RUNTIME;
        if (str != null && str.startsWith("Android")) {
            return EOSType.AndroidUnknown;
        }
        if (SystemUtils.IS_OS_LINUX) {
            String systemProperty = getSystemProperty("os.version");
            if (systemProperty == null) {
                return EOSType.LinuxUnknown;
            }
            String[] strArrSplit = systemProperty.split("\\.");
            if (strArrSplit.length < 2) {
                return EOSType.LinuxUnknown;
            }
            EOSType eOSType = LINUX_OS_MAP.get(strArrSplit[0] + "." + strArrSplit[1]);
            if (eOSType != null) {
                return eOSType;
            }
            String str2 = strArrSplit[0] + "x";
            for (Map.Entry<String, EOSType> entry3 : GENERIC_LINUX_OS_MAP.entrySet()) {
                if (entry3.getKey().equals(str2)) {
                    return entry3.getValue();
                }
            }
            return EOSType.LinuxUnknown;
        }
        return EOSType.Unknown;
    }

    private static boolean checkOS(String str, String str2) {
        return SystemUtils.OS_NAME.startsWith(str) && SystemUtils.OS_VERSION.startsWith(str2);
    }

    private static String getSystemProperty(String str) {
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }

    public static long crc32(String str) {
        return crc32(str.getBytes());
    }

    public static long crc32(byte[] bArr) {
        return crc32(bArr, 0, bArr.length);
    }

    public static long crc32(byte[] bArr, int i, int i2) {
        CRC32 crc32 = new CRC32();
        crc32.update(bArr, i, i2);
        return crc32.getValue();
    }
}
