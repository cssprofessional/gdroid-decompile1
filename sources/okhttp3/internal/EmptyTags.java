package okhttp3.internal;

/* JADX INFO: compiled from: Tags.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class EmptyTags extends Tags {
    public static final EmptyTags INSTANCE = new EmptyTags();

    public EmptyTags() {
        super(null);
    }

    public String toString() {
        return "{}";
    }
}
