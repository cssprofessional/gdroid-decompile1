package io.ktor.http.cio.internals;

import io.ktor.http.cio.internals.AsciiCharTree;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AsciiCharTree.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AsciiCharTree<T> {
    public static final Companion Companion = new Companion(null);
    public final Node<T> root;

    /* JADX INFO: compiled from: AsciiCharTree.kt */
    public static final class Node<T> {
        public final Node<T>[] array;
        public final char ch;
        public final List<Node<T>> children;
        public final List<T> exact;

        /* JADX WARN: Multi-variable type inference failed */
        public Node(char c, List<? extends T> exact, List<Node<T>> children) {
            Intrinsics.checkNotNullParameter(exact, "exact");
            Intrinsics.checkNotNullParameter(children, "children");
            this.ch = c;
            this.exact = exact;
            this.children = children;
            Node<T>[] nodeArr = new Node[256];
            for (int i = 0; i < 256; i++) {
                Iterator<T> it = this.children.iterator();
                Node<T> node = null;
                boolean z = false;
                Node<T> node2 = null;
                while (true) {
                    if (it.hasNext()) {
                        T next = it.next();
                        if (((Node) next).ch == i) {
                            if (z) {
                                break;
                            }
                            z = true;
                            node2 = next;
                        }
                    } else if (z) {
                        node = node2;
                    }
                }
                nodeArr[i] = node;
            }
            this.array = nodeArr;
        }

        public final List<T> getExact() {
            return this.exact;
        }

        public final Node<T>[] getArray() {
            return this.array;
        }
    }

    public AsciiCharTree(Node<T> root) {
        Intrinsics.checkNotNullParameter(root, "root");
        this.root = root;
    }

    public static /* synthetic */ List search$default(AsciiCharTree asciiCharTree, CharSequence charSequence, int i, int i2, boolean z, Function2 function2, int i3, Object obj) {
        int i4 = (i3 & 2) != 0 ? 0 : i;
        if ((i3 & 4) != 0) {
            i2 = charSequence.length();
        }
        return asciiCharTree.search(charSequence, i4, i2, (i3 & 8) != 0 ? false : z, function2);
    }

    public final List<T> search(CharSequence sequence, int i, int i2, boolean z, Function2<? super Character, ? super Integer, Boolean> stopPredicate) {
        Intrinsics.checkNotNullParameter(sequence, "sequence");
        Intrinsics.checkNotNullParameter(stopPredicate, "stopPredicate");
        if (sequence.length() == 0) {
            throw new IllegalArgumentException("Couldn't search in char tree for empty string");
        }
        Node<T> node = this.root;
        while (i < i2) {
            char cCharAt = sequence.charAt(i);
            if (stopPredicate.invoke(Character.valueOf(cCharAt), Integer.valueOf(cCharAt)).booleanValue()) {
                break;
            }
            Node<T> node2 = node.getArray()[cCharAt];
            if (node2 == null) {
                node = z ? node.getArray()[Character.toLowerCase(cCharAt)] : null;
                if (node == null) {
                    return CollectionsKt__CollectionsKt.emptyList();
                }
            } else {
                node = node2;
            }
            i++;
        }
        return node.getExact();
    }

    /* JADX INFO: compiled from: AsciiCharTree.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public static final int build$lambda$0(CharSequence it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return it.length();
        }

        public static final char build$lambda$1(CharSequence s, int i) {
            Intrinsics.checkNotNullParameter(s, "s");
            return s.charAt(i);
        }

        public final <T extends CharSequence> AsciiCharTree<T> build(List<? extends T> from) {
            Intrinsics.checkNotNullParameter(from, "from");
            return build(from, new Function1() { // from class: io.ktor.http.cio.internals.AsciiCharTree$Companion$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Integer.valueOf(AsciiCharTree.Companion.build$lambda$0((CharSequence) obj));
                }
            }, new Function2() { // from class: io.ktor.http.cio.internals.AsciiCharTree$Companion$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return Character.valueOf(AsciiCharTree.Companion.build$lambda$1((CharSequence) obj, ((Integer) obj2).intValue()));
                }
            });
        }

        public final <T> void build(List<Node<T>> list, List<? extends T> list2, int i, int i2, Function1<? super T, Integer> function1, Function2<? super T, ? super Integer, Character> function2) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : list2) {
                Character chInvoke = function2.invoke(obj, Integer.valueOf(i2));
                chInvoke.charValue();
                Object arrayList = linkedHashMap.get(chInvoke);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    linkedHashMap.put(chInvoke, arrayList);
                }
                ((List) arrayList).add(obj);
            }
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                char cCharValue = ((Character) entry.getKey()).charValue();
                List list3 = (List) entry.getValue();
                int i3 = i2 + 1;
                ArrayList arrayList2 = new ArrayList();
                Companion companion = AsciiCharTree.Companion;
                ArrayList arrayList3 = new ArrayList();
                for (T t : list3) {
                    if (function1.invoke(t).intValue() > i3) {
                        arrayList3.add(t);
                    }
                }
                companion.build(arrayList2, arrayList3, i, i3, function1, function2);
                arrayList2.trimToSize();
                ArrayList arrayList4 = new ArrayList();
                for (T t2 : list3) {
                    if (function1.invoke(t2).intValue() == i3) {
                        arrayList4.add(t2);
                    }
                }
                list.add(new Node<>(cCharValue, arrayList4, arrayList2));
            }
        }

        public final <T> AsciiCharTree<T> build(List<? extends T> from, Function1<? super T, Integer> length, Function2<? super T, ? super Integer, Character> charAt) {
            T t;
            Intrinsics.checkNotNullParameter(from, "from");
            Intrinsics.checkNotNullParameter(length, "length");
            Intrinsics.checkNotNullParameter(charAt, "charAt");
            Iterator<T> it = from.iterator();
            if (it.hasNext()) {
                T next = it.next();
                if (it.hasNext()) {
                    Integer numInvoke = length.invoke(next);
                    do {
                        T next2 = it.next();
                        Integer numInvoke2 = length.invoke(next2);
                        if (numInvoke.compareTo(numInvoke2) < 0) {
                            next = next2;
                            numInvoke = numInvoke2;
                        }
                    } while (it.hasNext());
                }
                t = next;
            } else {
                t = null;
            }
            if (t != null) {
                int iIntValue = length.invoke(t).intValue();
                if (from == null || !from.isEmpty()) {
                    Iterator<T> it2 = from.iterator();
                    while (it2.hasNext()) {
                        if (length.invoke(it2.next()).intValue() == 0) {
                            throw new IllegalArgumentException("There should be no empty entries");
                        }
                    }
                }
                ArrayList arrayList = new ArrayList();
                build(arrayList, from, iIntValue, 0, length, charAt);
                arrayList.trimToSize();
                return new AsciiCharTree<>(new Node((char) 0, CollectionsKt__CollectionsKt.emptyList(), arrayList));
            }
            throw new NoSuchElementException("Unable to build char tree from an empty list");
        }
    }
}
