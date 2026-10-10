package com.gmodvr.flat;

import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes.dex */
final class PlayerName {
    static final String CONFIG = "android_player_name.cfg";
    static final String DEFAULT = "unnamed";
    static final String KEY = "gmod_player_name";
    private static final int MAX_UTF8_BYTES = 31;

    private PlayerName() {
    }

    public static String validate(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Enter a player name.");
        }
        int iCharCount = 0;
        while (iCharCount < str.length()) {
            int iCodePointAt = str.codePointAt(iCharCount);
            int type = Character.getType(iCodePointAt);
            if (iCodePointAt == 34 || Character.isISOControl(iCodePointAt) || type == 16 || type == 19) {
                throw new IllegalArgumentException("Remove double quotes and invisible or control characters.");
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            throw new IllegalArgumentException("Enter a player name.");
        }
        if (strTrim.getBytes(StandardCharsets.UTF_8).length <= 31) {
            return strTrim;
        }
        throw new IllegalArgumentException("Player name is too long. Shorten it to fit the game's limit.");
    }

    public static String config(String str) {
        if (str == null) {
            return "";
        }
        return "name \"" + validate(str) + "\"\n";
    }
}
