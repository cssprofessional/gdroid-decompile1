package io.ktor.util;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: Text.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CaseInsensitiveString {
    public final String content;
    public final int hash;

    public CaseInsensitiveString(String content) {
        Intrinsics.checkNotNullParameter(content, "content");
        this.content = content;
        int length = content.length();
        int lowerCase = 0;
        for (int i = 0; i < length; i++) {
            lowerCase = (lowerCase * 31) + Character.toLowerCase(content.charAt(i));
        }
        this.hash = lowerCase;
    }

    public final String getContent() {
        return this.content;
    }

    public boolean equals(Object obj) {
        String str;
        CaseInsensitiveString caseInsensitiveString = obj instanceof CaseInsensitiveString ? (CaseInsensitiveString) obj : null;
        return (caseInsensitiveString == null || (str = caseInsensitiveString.content) == null || !StringsKt__StringsJVMKt.equals(str, this.content, true)) ? false : true;
    }

    public int hashCode() {
        return this.hash;
    }

    public String toString() {
        return this.content;
    }
}
