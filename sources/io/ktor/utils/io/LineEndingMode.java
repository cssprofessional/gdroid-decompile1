package io.ktor.utils.io;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: LineEndingMode.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class LineEndingMode {
    public static final int Any;
    public static final int CR;
    public static final int CRLF;
    public static final Companion Companion = new Companion(null);
    public static final int LF;
    public static final List<LineEndingMode> values;
    public final int mode;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ LineEndingMode m8137boximpl(int i) {
        return new LineEndingMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m8138constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: contains-lTjpP64, reason: not valid java name */
    public static final boolean m8139containslTjpP64(int i, int i2) {
        return (i2 | i) == i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m8140equalsimpl(int i, Object obj) {
        return (obj instanceof LineEndingMode) && i == ((LineEndingMode) obj).m8145unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m8141equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m8142hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    public boolean equals(Object obj) {
        return m8140equalsimpl(this.mode, obj);
    }

    public int hashCode() {
        return m8142hashCodeimpl(this.mode);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m8145unboximpl() {
        return this.mode;
    }

    public /* synthetic */ LineEndingMode(int i) {
        this.mode = i;
    }

    /* JADX INFO: renamed from: plus-1Ter-O4, reason: not valid java name */
    public static final int m8143plus1TerO4(int i, int i2) {
        return m8138constructorimpl(i | i2);
    }

    public String toString() {
        return m8144toStringimpl(this.mode);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m8144toStringimpl(int i) {
        if (m8141equalsimpl0(i, CR)) {
            return "CR";
        }
        if (m8141equalsimpl0(i, LF)) {
            return "LF";
        }
        if (m8141equalsimpl0(i, CRLF)) {
            return "CRLF";
        }
        List<LineEndingMode> list = values;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (m8139containslTjpP64(i, ((LineEndingMode) obj).m8145unboximpl())) {
                arrayList.add(obj);
            }
        }
        return arrayList.toString();
    }

    /* JADX INFO: compiled from: LineEndingMode.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        /* JADX INFO: renamed from: getCR-f0jXZW8, reason: not valid java name */
        public final int m8146getCRf0jXZW8() {
            return LineEndingMode.CR;
        }

        /* JADX INFO: renamed from: getLF-f0jXZW8, reason: not valid java name */
        public final int m8148getLFf0jXZW8() {
            return LineEndingMode.LF;
        }

        /* JADX INFO: renamed from: getCRLF-f0jXZW8, reason: not valid java name */
        public final int m8147getCRLFf0jXZW8() {
            return LineEndingMode.CRLF;
        }
    }

    static {
        int iM8138constructorimpl = m8138constructorimpl(1);
        CR = iM8138constructorimpl;
        int iM8138constructorimpl2 = m8138constructorimpl(2);
        LF = iM8138constructorimpl2;
        int iM8138constructorimpl3 = m8138constructorimpl(4);
        CRLF = iM8138constructorimpl3;
        Any = m8138constructorimpl(7);
        values = CollectionsKt__CollectionsKt.listOf((Object[]) new LineEndingMode[]{m8137boximpl(iM8138constructorimpl), m8137boximpl(iM8138constructorimpl2), m8137boximpl(iM8138constructorimpl3)});
    }
}
