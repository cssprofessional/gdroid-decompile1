package io.ktor.network.selector;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.reflect.KCallable;
import kotlinx.coroutines.CancellableContinuation;

/* JADX INFO: compiled from: InterestSuspensionsMap.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class InterestSuspensionsMap {
    public static final Companion Companion = new Companion(null);
    public static final AtomicReferenceFieldUpdater<InterestSuspensionsMap, CancellableContinuation<Unit>>[] updaters;
    private volatile CancellableContinuation<? super Unit> acceptHandlerReference;
    private volatile CancellableContinuation<? super Unit> connectHandlerReference;
    private volatile CancellableContinuation<? super Unit> readHandlerReference;
    private volatile CancellableContinuation<? super Unit> writeHandlerReference;

    /* JADX INFO: compiled from: InterestSuspensionsMap.kt */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SelectInterest.values().length];
            try {
                iArr[SelectInterest.READ.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SelectInterest.WRITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SelectInterest.ACCEPT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SelectInterest.CONNECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final void addSuspension(SelectInterest interest, CancellableContinuation<? super Unit> continuation) {
        Intrinsics.checkNotNullParameter(interest, "interest");
        Intrinsics.checkNotNullParameter(continuation, "continuation");
        if (InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0.m(Companion.updater(interest), this, null, continuation)) {
            return;
        }
        throw new IllegalStateException(("Handler for " + interest.name() + " is already registered").toString());
    }

    public final CancellableContinuation<Unit> removeSuspension(SelectInterest interest) {
        Intrinsics.checkNotNullParameter(interest, "interest");
        return (CancellableContinuation) Companion.updater(interest).getAndSet(this, null);
    }

    public final CancellableContinuation<Unit> removeSuspension(int i) {
        return updaters[i].getAndSet(this, null);
    }

    public String toString() {
        return "R " + this.readHandlerReference + " W " + this.writeHandlerReference + " C " + this.connectHandlerReference + " A " + this.acceptHandlerReference;
    }

    /* JADX INFO: compiled from: InterestSuspensionsMap.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final AtomicReferenceFieldUpdater<InterestSuspensionsMap, CancellableContinuation<Unit>> updater(SelectInterest selectInterest) {
            return InterestSuspensionsMap.updaters[selectInterest.ordinal()];
        }
    }

    static {
        KCallable kCallable;
        SelectInterest[] allInterests = SelectInterest.Companion.getAllInterests();
        ArrayList arrayList = new ArrayList(allInterests.length);
        for (SelectInterest selectInterest : allInterests) {
            int i = WhenMappings.$EnumSwitchMapping$0[selectInterest.ordinal()];
            if (i == 1) {
                kCallable = new MutablePropertyReference1Impl() { // from class: io.ktor.network.selector.InterestSuspensionsMap$Companion$updaters$1$property$1
                    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KProperty1
                    public Object get(Object obj) {
                        return ((InterestSuspensionsMap) obj).readHandlerReference;
                    }
                };
            } else if (i == 2) {
                kCallable = new MutablePropertyReference1Impl() { // from class: io.ktor.network.selector.InterestSuspensionsMap$Companion$updaters$1$property$2
                    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KProperty1
                    public Object get(Object obj) {
                        return ((InterestSuspensionsMap) obj).writeHandlerReference;
                    }
                };
            } else if (i == 3) {
                kCallable = new MutablePropertyReference1Impl() { // from class: io.ktor.network.selector.InterestSuspensionsMap$Companion$updaters$1$property$3
                    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KProperty1
                    public Object get(Object obj) {
                        return ((InterestSuspensionsMap) obj).acceptHandlerReference;
                    }
                };
            } else {
                if (i != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                kCallable = new MutablePropertyReference1Impl() { // from class: io.ktor.network.selector.InterestSuspensionsMap$Companion$updaters$1$property$4
                    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KProperty1
                    public Object get(Object obj) {
                        return ((InterestSuspensionsMap) obj).connectHandlerReference;
                    }
                };
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdaterNewUpdater = AtomicReferenceFieldUpdater.newUpdater(InterestSuspensionsMap.class, CancellableContinuation.class, kCallable.getName());
            Intrinsics.checkNotNull(atomicReferenceFieldUpdaterNewUpdater, "null cannot be cast to non-null type java.util.concurrent.atomic.AtomicReferenceFieldUpdater<io.ktor.network.selector.InterestSuspensionsMap, kotlinx.coroutines.CancellableContinuation<kotlin.Unit>?>");
            arrayList.add(atomicReferenceFieldUpdaterNewUpdater);
        }
        updaters = (AtomicReferenceFieldUpdater[]) arrayList.toArray(new AtomicReferenceFieldUpdater[0]);
    }
}
