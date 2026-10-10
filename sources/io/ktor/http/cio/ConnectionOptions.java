package io.ktor.http.cio;

import io.ktor.http.cio.ConnectionOptions;
import io.ktor.http.cio.internals.AsciiCharTree;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConnectionOptions.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ConnectionOptions {
    public static final ConnectionOptions Close;
    public static final Companion Companion = new Companion(null);
    public static final ConnectionOptions KeepAlive;
    public static final ConnectionOptions Upgrade;
    public static final AsciiCharTree<Pair<String, ConnectionOptions>> knownTypes;
    public final boolean close;
    public final List<String> extraOptions;
    public final boolean keepAlive;
    public final boolean upgrade;

    public ConnectionOptions() {
        this(false, false, false, null, 15, null);
    }

    public ConnectionOptions(boolean z, boolean z2, boolean z3, List<String> extraOptions) {
        Intrinsics.checkNotNullParameter(extraOptions, "extraOptions");
        this.close = z;
        this.keepAlive = z2;
        this.upgrade = z3;
        this.extraOptions = extraOptions;
    }

    public final boolean getClose() {
        return this.close;
    }

    public final boolean getKeepAlive() {
        return this.keepAlive;
    }

    public final boolean getUpgrade() {
        return this.upgrade;
    }

    public /* synthetic */ ConnectionOptions(boolean z, boolean z2, boolean z3, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? false : z3, (i & 8) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list);
    }

    /* JADX INFO: compiled from: ConnectionOptions.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final boolean parse$lambda$0(char c, int i) {
            return false;
        }

        public static final boolean parseSlow$lambda$0(char c, int i) {
            return false;
        }

        public Companion() {
        }

        public final ConnectionOptions getClose() {
            return ConnectionOptions.Close;
        }

        public final ConnectionOptions getKeepAlive() {
            return ConnectionOptions.KeepAlive;
        }

        public final ConnectionOptions parse(CharSequence charSequence) {
            if (charSequence == null) {
                return null;
            }
            List listSearch$default = AsciiCharTree.search$default(ConnectionOptions.knownTypes, charSequence, 0, 0, true, new Function2() { // from class: io.ktor.http.cio.ConnectionOptions$Companion$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return Boolean.valueOf(ConnectionOptions.Companion.parse$lambda$0(((Character) obj).charValue(), ((Integer) obj2).intValue()));
                }
            }, 6, null);
            return listSearch$default.size() == 1 ? (ConnectionOptions) ((Pair) listSearch$default.get(0)).getSecond() : parseSlow(charSequence);
        }

        public final ConnectionOptions parseSlow(CharSequence charSequence) {
            int i;
            int i2;
            int length = charSequence.length();
            ConnectionOptions keepAlive = null;
            ArrayList arrayList = null;
            int i3 = 0;
            int i4 = 0;
            while (i3 < length) {
                while (true) {
                    char cCharAt = charSequence.charAt(i3);
                    if (cCharAt != ' ' && cCharAt != ',') {
                        i = i3;
                        i2 = i;
                        break;
                    }
                    i3++;
                    if (i3 >= length) {
                        i = i3;
                        i2 = i4;
                        break;
                    }
                }
                while (i < length) {
                    char cCharAt2 = charSequence.charAt(i);
                    if (cCharAt2 == ' ' || cCharAt2 == ',') {
                        break;
                    }
                    i++;
                }
                Pair pair = (Pair) CollectionsKt___CollectionsKt.singleOrNull(ConnectionOptions.knownTypes.search(charSequence, i2, i, true, new Function2() { // from class: io.ktor.http.cio.ConnectionOptions$Companion$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return Boolean.valueOf(ConnectionOptions.Companion.parseSlow$lambda$0(((Character) obj).charValue(), ((Integer) obj2).intValue()));
                    }
                }));
                if (pair == null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(charSequence.subSequence(i2, i).toString());
                } else if (keepAlive == null) {
                    keepAlive = (ConnectionOptions) pair.getSecond();
                } else {
                    boolean z = true;
                    boolean z2 = keepAlive.getClose() || ((ConnectionOptions) pair.getSecond()).getClose();
                    boolean z3 = keepAlive.getKeepAlive() || ((ConnectionOptions) pair.getSecond()).getKeepAlive();
                    if (!keepAlive.getUpgrade() && !((ConnectionOptions) pair.getSecond()).getUpgrade()) {
                        z = false;
                    }
                    keepAlive = new ConnectionOptions(z2, z3, z, CollectionsKt__CollectionsKt.emptyList());
                }
                i3 = i;
                i4 = i2;
            }
            if (keepAlive == null) {
                keepAlive = getKeepAlive();
            }
            return arrayList == null ? keepAlive : new ConnectionOptions(keepAlive.getClose(), keepAlive.getKeepAlive(), keepAlive.getUpgrade(), arrayList);
        }
    }

    static {
        DefaultConstructorMarker defaultConstructorMarker = null;
        boolean z = false;
        List list = null;
        ConnectionOptions connectionOptions = new ConnectionOptions(true, z, false, list, 14, defaultConstructorMarker);
        Close = connectionOptions;
        ConnectionOptions connectionOptions2 = new ConnectionOptions(false, true, false, null, 13, null);
        KeepAlive = connectionOptions2;
        ConnectionOptions connectionOptions3 = new ConnectionOptions(false, z, true, list, 11, defaultConstructorMarker);
        Upgrade = connectionOptions3;
        knownTypes = AsciiCharTree.Companion.build(CollectionsKt__CollectionsKt.listOf((Object[]) new Pair[]{TuplesKt.to("close", connectionOptions), TuplesKt.to("keep-alive", connectionOptions2), TuplesKt.to("upgrade", connectionOptions3)}), new Function1() { // from class: io.ktor.http.cio.ConnectionOptions$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(ConnectionOptions.knownTypes$lambda$0((Pair) obj));
            }
        }, new Function2() { // from class: io.ktor.http.cio.ConnectionOptions$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Character.valueOf(ConnectionOptions.knownTypes$lambda$1((Pair) obj, ((Integer) obj2).intValue()));
            }
        });
    }

    public static final int knownTypes$lambda$0(Pair it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return ((String) it.getFirst()).length();
    }

    public static final char knownTypes$lambda$1(Pair t, int i) {
        Intrinsics.checkNotNullParameter(t, "t");
        return ((String) t.getFirst()).charAt(i);
    }

    public String toString() {
        if (this.extraOptions.isEmpty()) {
            boolean z = this.close;
            return (!z || this.keepAlive || this.upgrade) ? (z || !this.keepAlive || this.upgrade) ? (!z && this.keepAlive && this.upgrade) ? "keep-alive, Upgrade" : buildToString() : "keep-alive" : "close";
        }
        return buildToString();
    }

    public final String buildToString() throws IOException {
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList(this.extraOptions.size() + 3);
        if (this.close) {
            arrayList.add("close");
        }
        if (this.keepAlive) {
            arrayList.add("keep-alive");
        }
        if (this.upgrade) {
            arrayList.add("Upgrade");
        }
        if (!this.extraOptions.isEmpty()) {
            arrayList.addAll(this.extraOptions);
        }
        CollectionsKt___CollectionsKt.joinTo(arrayList, sb, (124 & 2) != 0 ? ", " : null, (124 & 4) != 0 ? "" : null, (124 & 8) == 0 ? null : "", (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : null);
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ConnectionOptions.class != obj.getClass()) {
            return false;
        }
        ConnectionOptions connectionOptions = (ConnectionOptions) obj;
        return this.close == connectionOptions.close && this.keepAlive == connectionOptions.keepAlive && this.upgrade == connectionOptions.upgrade && Intrinsics.areEqual(this.extraOptions, connectionOptions.extraOptions);
    }

    public int hashCode() {
        return (((((Boolean.hashCode(this.close) * 31) + Boolean.hashCode(this.keepAlive)) * 31) + Boolean.hashCode(this.upgrade)) * 31) + this.extraOptions.hashCode();
    }
}
