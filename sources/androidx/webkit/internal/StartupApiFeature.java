package androidx.webkit.internal;

import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class StartupApiFeature {
    public static final Set<StartupApiFeature> sValues = new HashSet();
    public final String mInternalFeatureValue;
    public final String mPublicFeatureValue;

    public StartupApiFeature(String str, String str2) {
        this.mPublicFeatureValue = str;
        this.mInternalFeatureValue = str2;
        sValues.add(this);
    }

    public static class P extends StartupApiFeature {
        public P(String str, String str2) {
            super(str, str2);
        }
    }

    public static class NoFramework extends StartupApiFeature {
        public NoFramework(String str, String str2) {
            super(str, str2);
        }
    }
}
