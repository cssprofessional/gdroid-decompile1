package com.gmodvr.flat;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class ExitReasons {
    static final String GAME_SUFFIX = ":game";
    static final long MARKER_AFTER_MS = 10000;
    static final long MARKER_BEFORE_MS = 120000;
    static final int REASON_ANR = 6;
    static final int REASON_CRASH = 4;
    static final int REASON_CRASH_NATIVE = 5;
    static final int REASON_DEPENDENCY_DIED = 12;
    static final int REASON_EXCESSIVE_RESOURCE_USAGE = 9;
    static final int REASON_EXIT_SELF = 1;
    static final int REASON_FREEZER = 14;
    static final int REASON_INITIALIZATION_FAILURE = 7;
    static final int REASON_LOW_MEMORY = 3;
    static final int REASON_OTHER = 13;
    static final int REASON_PACKAGE_STATE_CHANGE = 15;
    static final int REASON_PACKAGE_UPDATED = 16;
    static final int REASON_PERMISSION_CHANGE = 8;
    static final int REASON_SIGNALED = 2;
    static final int REASON_UNKNOWN = 0;
    static final int REASON_USER_REQUESTED = 10;
    static final int REASON_USER_STOPPED = 11;

    public static final class Record {
        final String description;
        final int importance;
        final int pid;
        final String processName;
        final long pssKb;
        final int reason;
        final long rssKb;
        final int status;
        final long timestamp;

        public Record(long j, int i, String str, int i2, int i3, int i4, long j2, long j3, String str2) {
            this.timestamp = j;
            this.pid = i;
            this.processName = str;
            this.reason = i2;
            this.status = i3;
            this.importance = i4;
            this.pssKb = j2;
            this.rssKb = j3;
            this.description = str2;
        }
    }

    private ExitReasons() {
    }

    public static boolean isGameProcess(String str, String str2) {
        if (str != null) {
            if (str.equals(str2 + GAME_SUFFIX)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isLauncherProcess(String str, String str2) {
        return str != null && str.equals(str2);
    }

    public static boolean cleanExit(Record record, Map<Integer, Long> map) {
        Long l = map.get(Integer.valueOf(record.pid));
        return l != null && l.longValue() >= record.timestamp - MARKER_BEFORE_MS && l.longValue() <= record.timestamp + MARKER_AFTER_MS;
    }

    public static boolean abnormal(Record record, String str, boolean z) {
        boolean zIsGameProcess = isGameProcess(record.processName, str);
        boolean zIsLauncherProcess = isLauncherProcess(record.processName, str);
        if (!zIsGameProcess && !zIsLauncherProcess) {
            return false;
        }
        int i = record.reason;
        if (i != 0) {
            if (i != 9 && i != 12) {
                if (i != 13) {
                    switch (i) {
                        case 2:
                            if (zIsGameProcess && !z) {
                                break;
                            }
                            break;
                    }
                    return false;
                }
            }
            return zIsGameProcess;
        }
        return zIsGameProcess && record.status != 0;
    }

    public static String reasonName(int i) {
        switch (i) {
            case 0:
                return "UNKNOWN";
            case 1:
                return "EXIT_SELF";
            case 2:
                return "SIGNALED";
            case 3:
                return "LOW_MEMORY";
            case 4:
                return "CRASH";
            case 5:
                return "CRASH_NATIVE";
            case 6:
                return "ANR";
            case 7:
                return "INITIALIZATION_FAILURE";
            case 8:
                return "PERMISSION_CHANGE";
            case 9:
                return "EXCESSIVE_RESOURCE_USAGE";
            case 10:
                return "USER_REQUESTED";
            case 11:
                return "USER_STOPPED";
            case 12:
                return "DEPENDENCY_DIED";
            case 13:
                return "OTHER";
            case 14:
                return "FREEZER";
            case 15:
                return "PACKAGE_STATE_CHANGE";
            case 16:
                return "PACKAGE_UPDATED";
            default:
                return "REASON_" + i;
        }
    }

    public static String signalName(int i) {
        switch (i) {
            case 3:
                return "SIGQUIT";
            case 4:
                return "SIGILL";
            case 5:
                return "SIGTRAP";
            case 6:
                return "SIGABRT";
            case 7:
                return "SIGBUS";
            case 8:
                return "SIGFPE";
            case 9:
                return "SIGKILL";
            case 10:
            case 12:
            case 14:
            default:
                return "signal " + i;
            case 11:
                return "SIGSEGV";
            case 13:
                return "SIGPIPE";
            case 15:
                return "SIGTERM";
        }
    }

    public static String importanceName(int i) {
        if (i == 100) {
            return "FOREGROUND";
        }
        if (i == 125) {
            return "FOREGROUND_SERVICE";
        }
        if (i == 200) {
            return "VISIBLE";
        }
        if (i == 230) {
            return "PERCEPTIBLE";
        }
        if (i == 300) {
            return "SERVICE";
        }
        if (i == 325) {
            return "TOP_SLEEPING";
        }
        if (i == 350) {
            return "CANT_SAVE_STATE";
        }
        if (i == 400) {
            return "CACHED";
        }
        if (i == 1000) {
            return "GONE";
        }
        return Integer.toString(i);
    }

    public static String time(long j) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS Z", Locale.ROOT).format(new Date(j));
    }

    public static String format(Record record) {
        StringBuilder sb = new StringBuilder();
        sb.append("reason: ");
        sb.append(reasonName(record.reason));
        sb.append(" (");
        sb.append(record.reason);
        sb.append(")\n");
        sb.append("status: ");
        sb.append(record.status);
        int i = record.reason;
        if (i == 2 || i == 5) {
            sb.append(" (");
            sb.append(signalName(record.status));
            sb.append(')');
        }
        sb.append('\n');
        sb.append("description: ");
        String str = record.description;
        if (str == null) {
            str = "";
        }
        sb.append(str);
        sb.append('\n');
        sb.append("importance: ");
        sb.append(importanceName(record.importance));
        sb.append(" (");
        sb.append(record.importance);
        sb.append(")\n");
        sb.append("pss: ");
        sb.append(record.pssKb);
        sb.append(" KB, rss: ");
        sb.append(record.rssKb);
        sb.append(" KB\n");
        sb.append("timestamp: ");
        sb.append(time(record.timestamp));
        sb.append(" (");
        sb.append(record.timestamp);
        sb.append(")\n");
        sb.append("pid: ");
        sb.append(record.pid);
        sb.append('\n');
        sb.append("process: ");
        sb.append(record.processName);
        sb.append('\n');
        return sb.toString();
    }
}
