package org.apache.commons.lang3;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Strings {
    public static final Strings CI;
    public static final Strings CS;
    public final boolean ignoreCase;
    public final boolean nullIsLess;

    public abstract boolean contains(CharSequence charSequence, CharSequence charSequence2);

    public static final class CiStrings extends Strings {
        public CiStrings(boolean z) {
            super(true, z);
        }

        @Override // org.apache.commons.lang3.Strings
        public boolean contains(CharSequence charSequence, CharSequence charSequence2) {
            if (charSequence != null && charSequence2 != null) {
                int length = charSequence2.length();
                int length2 = charSequence.length() - length;
                for (int i = 0; i <= length2; i++) {
                    if (CharSequenceUtils.regionMatches(charSequence, true, i, charSequence2, 0, length)) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    public static final class CsStrings extends Strings {
        public CsStrings(boolean z) {
            super(false, z);
        }

        @Override // org.apache.commons.lang3.Strings
        public boolean contains(CharSequence charSequence, CharSequence charSequence2) {
            return CharSequenceUtils.indexOf(charSequence, charSequence2, 0) >= 0;
        }
    }

    static {
        boolean z = true;
        CI = new CiStrings(z);
        CS = new CsStrings(z);
    }

    public Strings(boolean z, boolean z2) {
        this.ignoreCase = z;
        this.nullIsLess = z2;
    }

    public boolean startsWith(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return charSequence == charSequence2;
        }
        int length = charSequence2.length();
        if (length > charSequence.length()) {
            return false;
        }
        return CharSequenceUtils.regionMatches(charSequence, this.ignoreCase, 0, charSequence2, 0, length);
    }
}
