package com.gmodvr.flat;

import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class CustomContentName {
    public static final String DISABLED_MARKER = ".sourceandroid-disabled";
    public static final String DISABLED_PREFIX = ".sourceandroid-disabled-";

    private CustomContentName() {
    }

    public static Parsed parse(String str) {
        boolean z;
        String strSubstring;
        if (str != null && !str.isEmpty()) {
            if (str.startsWith(".")) {
                z = false;
                if (str.startsWith(DISABLED_PREFIX)) {
                    strSubstring = str.substring(24);
                } else if (str.startsWith(".sourcevr-disabled-")) {
                    strSubstring = str.substring(19);
                }
            } else {
                z = true;
                strSubstring = str;
            }
            if (!strSubstring.isEmpty() && !strSubstring.startsWith(".")) {
                return new Parsed(str, strSubstring, z);
            }
        }
        return null;
    }

    public static String physicalName(String str, boolean z) {
        if (str == null || str.isEmpty() || str.startsWith(".")) {
            throw new IllegalArgumentException("invalid custom-content name");
        }
        if (z) {
            return str;
        }
        return DISABLED_PREFIX + str;
    }

    public static final class Parsed {
        public final String canonicalName;
        public final boolean enabled;
        public final String physicalName;

        private Parsed(String str, String str2, boolean z) {
            this.physicalName = str;
            this.canonicalName = str2;
            this.enabled = z;
        }

        public String identityKey() {
            return this.canonicalName.toLowerCase(Locale.ROOT);
        }

        public String oppositePhysicalName() {
            return CustomContentName.physicalName(this.canonicalName, !this.enabled);
        }
    }
}
