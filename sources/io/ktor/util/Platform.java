package io.ktor.util;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: PlatformUtils.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class Platform {
    public /* synthetic */ Platform(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: PlatformUtils.kt */
    public static final class Jvm extends Platform {
        public static final Jvm INSTANCE = new Jvm();

        public boolean equals(Object obj) {
            return this == obj || (obj instanceof Jvm);
        }

        public int hashCode() {
            return 1051825272;
        }

        public String toString() {
            return "Jvm";
        }

        public Jvm() {
            super(null);
        }
    }

    public Platform() {
    }

    /* JADX INFO: compiled from: PlatformUtils.kt */
    public static final class Native extends Platform {
        public static final Native INSTANCE = new Native();

        public boolean equals(Object obj) {
            return this == obj || (obj instanceof Native);
        }

        public int hashCode() {
            return -1059277600;
        }

        public String toString() {
            return "Native";
        }

        public Native() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: PlatformUtils.kt */
    public static final class Js extends Platform {
        public final JsPlatform jsPlatform;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Js) && this.jsPlatform == ((Js) obj).jsPlatform;
        }

        public int hashCode() {
            return this.jsPlatform.hashCode();
        }

        public String toString() {
            return "Js(jsPlatform=" + this.jsPlatform + ')';
        }

        public final JsPlatform getJsPlatform() {
            return this.jsPlatform;
        }
    }

    /* JADX INFO: compiled from: PlatformUtils.kt */
    public static final class WasmJs extends Platform {
        public final JsPlatform jsPlatform;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof WasmJs) && this.jsPlatform == ((WasmJs) obj).jsPlatform;
        }

        public int hashCode() {
            return this.jsPlatform.hashCode();
        }

        public String toString() {
            return "WasmJs(jsPlatform=" + this.jsPlatform + ')';
        }

        public final JsPlatform getJsPlatform() {
            return this.jsPlatform;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: PlatformUtils.kt */
    public static final class JsPlatform {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ JsPlatform[] $VALUES;
        public static final JsPlatform Browser = new JsPlatform("Browser", 0);
        public static final JsPlatform Node = new JsPlatform("Node", 1);

        private static final /* synthetic */ JsPlatform[] $values() {
            return new JsPlatform[]{Browser, Node};
        }

        public static EnumEntries<JsPlatform> getEntries() {
            return $ENTRIES;
        }

        public static JsPlatform valueOf(String str) {
            return (JsPlatform) Enum.valueOf(JsPlatform.class, str);
        }

        public static JsPlatform[] values() {
            return (JsPlatform[]) $VALUES.clone();
        }

        static {
            JsPlatform[] jsPlatformArr$values = $values();
            $VALUES = jsPlatformArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(jsPlatformArr$values);
        }

        private JsPlatform(String str, int i) {
        }
    }
}
