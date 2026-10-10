package in.dragonbra.javasteam.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.UnknownHostException;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.SystemUtils;

/* JADX INFO: loaded from: classes2.dex */
public class HardwareUtils {
    private static String MACHINE_NAME;
    private static String SERIAL_NUMBER;

    public static byte[] getMachineID() {
        String str = SERIAL_NUMBER;
        if (str != null) {
            return str.getBytes();
        }
        if (SystemUtils.IS_OS_WINDOWS) {
            SERIAL_NUMBER = getSerialNumberWin();
        }
        if (SystemUtils.IS_OS_MAC) {
            SERIAL_NUMBER = getSerialNumberMac();
        }
        if (SystemUtils.IS_OS_LINUX) {
            SERIAL_NUMBER = getSerialNumberUnix();
        }
        if (SERIAL_NUMBER == null) {
            SERIAL_NUMBER = "JavaSteam-SerialNumber";
        }
        return SERIAL_NUMBER.getBytes();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0037, code lost:
    
        r1 = r2.next().trim();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String getSerialNumberWin() {
        /*
            java.lang.Runtime r0 = java.lang.Runtime.getRuntime()
            r1 = 0
            java.lang.String r2 = "wmic"
            java.lang.String r3 = "bios"
            java.lang.String r4 = "get"
            java.lang.String r5 = "serialnumber"
            java.lang.String[] r2 = new java.lang.String[]{r2, r3, r4, r5}     // Catch: java.io.IOException -> L4f
            java.lang.Process r0 = r0.exec(r2)     // Catch: java.io.IOException -> L4f
            java.io.OutputStream r2 = r0.getOutputStream()
            r2.close()     // Catch: java.io.IOException -> L1c
        L1c:
            java.util.Scanner r2 = new java.util.Scanner
            java.io.InputStream r0 = r0.getInputStream()
            r2.<init>(r0)
        L25:
            boolean r0 = r2.hasNext()     // Catch: java.lang.Throwable -> L40
            if (r0 == 0) goto L42
            java.lang.String r0 = r2.next()     // Catch: java.lang.Throwable -> L40
            java.lang.String r3 = "SerialNumber"
            boolean r0 = r3.equals(r0)     // Catch: java.lang.Throwable -> L40
            if (r0 == 0) goto L25
            java.lang.String r0 = r2.next()     // Catch: java.lang.Throwable -> L40
            java.lang.String r1 = r0.trim()     // Catch: java.lang.Throwable -> L40
            goto L42
        L40:
            r0 = move-exception
            goto L46
        L42:
            r2.close()
            return r1
        L46:
            r2.close()     // Catch: java.lang.Throwable -> L4a
            goto L4e
        L4a:
            r1 = move-exception
            r0.addSuppressed(r1)
        L4e:
            throw r0
        L4f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: in.dragonbra.javasteam.util.HardwareUtils.getSerialNumberWin():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
    
        r0 = r0.split(":")[1].trim();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String getSerialNumberMac() {
        /*
            java.lang.Runtime r0 = java.lang.Runtime.getRuntime()
            r1 = 0
            java.lang.String r2 = "/usr/sbin/system_profiler"
            java.lang.String r3 = "SPHardwareDataType"
            java.lang.String[] r2 = new java.lang.String[]{r2, r3}     // Catch: java.io.IOException -> L52
            java.lang.Process r0 = r0.exec(r2)     // Catch: java.io.IOException -> L52
            java.io.OutputStream r2 = r0.getOutputStream()
            r2.close()     // Catch: java.io.IOException -> L18
        L18:
            java.lang.String r2 = "Serial Number"
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.io.IOException -> L52
            java.io.InputStreamReader r4 = new java.io.InputStreamReader     // Catch: java.io.IOException -> L52
            java.io.InputStream r0 = r0.getInputStream()     // Catch: java.io.IOException -> L52
            r4.<init>(r0)     // Catch: java.io.IOException -> L52
            r3.<init>(r4)     // Catch: java.io.IOException -> L52
        L28:
            java.lang.String r0 = r3.readLine()     // Catch: java.lang.Throwable -> L42
            if (r0 == 0) goto L44
            boolean r4 = r0.contains(r2)     // Catch: java.lang.Throwable -> L42
            if (r4 == 0) goto L28
            java.lang.String r2 = ":"
            java.lang.String[] r0 = r0.split(r2)     // Catch: java.lang.Throwable -> L42
            r2 = 1
            r0 = r0[r2]     // Catch: java.lang.Throwable -> L42
            java.lang.String r0 = r0.trim()     // Catch: java.lang.Throwable -> L42
            goto L45
        L42:
            r0 = move-exception
            goto L49
        L44:
            r0 = r1
        L45:
            r3.close()     // Catch: java.io.IOException -> L52
            return r0
        L49:
            r3.close()     // Catch: java.lang.Throwable -> L4d
            goto L51
        L4d:
            r2 = move-exception
            r0.addSuppressed(r2)     // Catch: java.io.IOException -> L52
        L51:
            throw r0     // Catch: java.io.IOException -> L52
        L52:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: in.dragonbra.javasteam.util.HardwareUtils.getSerialNumberMac():java.lang.String");
    }

    private static String getSerialNumberUnix() {
        String dmidecode = readDmidecode();
        return dmidecode == null ? readLshal() : dmidecode;
    }

    private static BufferedReader read(String str) {
        try {
            Process processExec = Runtime.getRuntime().exec(str.split(" "));
            try {
                processExec.getOutputStream().close();
            } catch (IOException unused) {
            }
            return new BufferedReader(new InputStreamReader(processExec.getInputStream()));
        } catch (IOException unused2) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
    
        r0 = r3.split("Serial Number:")[1].trim();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String readDmidecode() {
        /*
            java.lang.String r0 = "Serial Number:"
            r1 = 0
            java.lang.String r2 = "dmidecode -t system"
            java.io.BufferedReader r2 = read(r2)     // Catch: java.io.IOException -> L39
            if (r2 != 0) goto L11
            if (r2 == 0) goto L10
            r2.close()     // Catch: java.io.IOException -> L39
        L10:
            return r1
        L11:
            java.lang.String r3 = r2.readLine()     // Catch: java.lang.Throwable -> L29
            if (r3 == 0) goto L2b
            boolean r4 = r3.contains(r0)     // Catch: java.lang.Throwable -> L29
            if (r4 == 0) goto L11
            java.lang.String[] r0 = r3.split(r0)     // Catch: java.lang.Throwable -> L29
            r3 = 1
            r0 = r0[r3]     // Catch: java.lang.Throwable -> L29
            java.lang.String r0 = r0.trim()     // Catch: java.lang.Throwable -> L29
            goto L2c
        L29:
            r0 = move-exception
            goto L30
        L2b:
            r0 = r1
        L2c:
            r2.close()     // Catch: java.io.IOException -> L39
            return r0
        L30:
            r2.close()     // Catch: java.lang.Throwable -> L34
            goto L38
        L34:
            r2 = move-exception
            r0.addSuppressed(r2)     // Catch: java.io.IOException -> L39
        L38:
            throw r0     // Catch: java.io.IOException -> L39
        L39:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: in.dragonbra.javasteam.util.HardwareUtils.readDmidecode():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
    
        r0 = r3.split("system.hardware.serial =")[1].replaceAll("\\(string\\)|(\\')", "").trim();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String readLshal() {
        /*
            java.lang.String r0 = "system.hardware.serial ="
            r1 = 0
            java.lang.String r2 = "lshal"
            java.io.BufferedReader r2 = read(r2)     // Catch: java.io.IOException -> L41
            if (r2 != 0) goto L11
            if (r2 == 0) goto L10
            r2.close()     // Catch: java.io.IOException -> L41
        L10:
            return r1
        L11:
            java.lang.String r3 = r2.readLine()     // Catch: java.lang.Throwable -> L31
            if (r3 == 0) goto L33
            boolean r4 = r3.contains(r0)     // Catch: java.lang.Throwable -> L31
            if (r4 == 0) goto L11
            java.lang.String[] r0 = r3.split(r0)     // Catch: java.lang.Throwable -> L31
            r3 = 1
            r0 = r0[r3]     // Catch: java.lang.Throwable -> L31
            java.lang.String r3 = "\\(string\\)|(\\')"
            java.lang.String r4 = ""
            java.lang.String r0 = r0.replaceAll(r3, r4)     // Catch: java.lang.Throwable -> L31
            java.lang.String r0 = r0.trim()     // Catch: java.lang.Throwable -> L31
            goto L34
        L31:
            r0 = move-exception
            goto L38
        L33:
            r0 = r1
        L34:
            r2.close()     // Catch: java.io.IOException -> L41
            return r0
        L38:
            r2.close()     // Catch: java.lang.Throwable -> L3c
            goto L40
        L3c:
            r2 = move-exception
            r0.addSuppressed(r2)     // Catch: java.io.IOException -> L41
        L40:
            throw r0     // Catch: java.io.IOException -> L41
        L41:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: in.dragonbra.javasteam.util.HardwareUtils.readLshal():java.lang.String");
    }

    public static String getMachineName() {
        return getMachineName(false);
    }

    public static String getMachineName(boolean z) {
        String str = MACHINE_NAME;
        if (str != null) {
            return str;
        }
        if (SystemUtils.IS_OS_ANDROID) {
            MACHINE_NAME = getAndroidDeviceName();
        } else {
            MACHINE_NAME = getDeviceName();
        }
        if (StringUtils.isBlank(MACHINE_NAME)) {
            MACHINE_NAME = "Unknown";
        }
        if (z || MACHINE_NAME.contains("Unknown")) {
            return MACHINE_NAME + " (JavaSteam)";
        }
        return MACHINE_NAME;
    }

    private static String getDeviceName() {
        String hostName = SystemUtils.getHostName();
        if (!StringUtils.isBlank(hostName)) {
            return hostName;
        }
        try {
            return InetAddress.getLocalHost().getHostName();
        } catch (UnknownHostException unused) {
            return null;
        }
    }

    private static String getAndroidDeviceName() {
        String androidSystemProperty = getAndroidSystemProperty("ro.product.manufacturer");
        String androidSystemProperty2 = getAndroidSystemProperty("ro.product.model");
        if (androidSystemProperty == null || androidSystemProperty2 == null) {
            return "Android Device";
        }
        if (androidSystemProperty2.startsWith(androidSystemProperty)) {
            return androidSystemProperty2;
        }
        return androidSystemProperty + " " + androidSystemProperty2;
    }

    private static String getAndroidSystemProperty(String str) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
        } catch (Exception unused) {
            return null;
        }
    }
}
