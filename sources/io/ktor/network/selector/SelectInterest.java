package io.ktor.network.selector;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SelectorManager.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SelectInterest {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SelectInterest[] $VALUES;
    private static final SelectInterest[] AllInterests;
    public static final Companion Companion;
    private static final int[] flags;
    private static final int size;
    private final int flag;
    public static final SelectInterest READ = new SelectInterest("READ", 0, 1);
    public static final SelectInterest WRITE = new SelectInterest("WRITE", 1, 4);
    public static final SelectInterest ACCEPT = new SelectInterest("ACCEPT", 2, 16);
    public static final SelectInterest CONNECT = new SelectInterest("CONNECT", 3, 8);

    private static final /* synthetic */ SelectInterest[] $values() {
        return new SelectInterest[]{READ, WRITE, ACCEPT, CONNECT};
    }

    public static EnumEntries<SelectInterest> getEntries() {
        return $ENTRIES;
    }

    public static SelectInterest valueOf(String str) {
        return (SelectInterest) Enum.valueOf(SelectInterest.class, str);
    }

    public static SelectInterest[] values() {
        return (SelectInterest[]) $VALUES.clone();
    }

    private SelectInterest(String str, int i, int i2) {
        this.flag = i2;
    }

    public final int getFlag() {
        return this.flag;
    }

    static {
        SelectInterest[] selectInterestArr$values = $values();
        $VALUES = selectInterestArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(selectInterestArr$values);
        Companion = new Companion(null);
        AllInterests = (SelectInterest[]) getEntries().toArray(new SelectInterest[0]);
        EnumEntries<SelectInterest> entries = getEntries();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(entries, 10));
        Iterator<SelectInterest> it = entries.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(it.next().flag));
        }
        flags = CollectionsKt___CollectionsKt.toIntArray(arrayList);
        size = getEntries().size();
    }

    /* JADX INFO: compiled from: SelectorManager.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final SelectInterest[] getAllInterests() {
            return SelectInterest.AllInterests;
        }

        public final int[] getFlags() {
            return SelectInterest.flags;
        }
    }
}
