package org.apache.commons.lang3;

import java.util.function.Supplier;
import java.util.regex.Pattern;
import org.apache.commons.lang3.function.Suppliers;

/* JADX INFO: loaded from: classes3.dex */
public class StringUtils {
    public static final Pattern STRIP_ACCENTS_PATTERN = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");

    public static <T extends CharSequence> T getIfEmpty(T t, Supplier<T> supplier) {
        return isEmpty(t) ? (T) Suppliers.get(supplier) : t;
    }

    public static boolean isBlank(CharSequence charSequence) {
        int length = length(charSequence);
        if (length == 0) {
            return true;
        }
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static int length(CharSequence charSequence) {
        if (charSequence == null) {
            return 0;
        }
        return charSequence.length();
    }
}
