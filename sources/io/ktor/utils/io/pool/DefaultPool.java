package io.ktor.utils.io.pool;

import in.dragonbra.javasteam.types.SteamID;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultPool.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class DefaultPool<T> implements ObjectPool<T> {
    public static final /* synthetic */ AtomicLongFieldUpdater top$FU = AtomicLongFieldUpdater.newUpdater(DefaultPool.class, "top");
    public final int capacity;
    public final AtomicReferenceArray<T> instances;
    public final int maxIndex;
    public final int[] next;
    public final int shift;
    private volatile /* synthetic */ long top;

    public T clearInstance(T instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        return instance;
    }

    public void disposeInstance(T instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
    }

    public abstract T produceInstance();

    public void validateInstance(T instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
    }

    public DefaultPool(int i) {
        this.capacity = i;
        if (i <= 0) {
            throw new IllegalArgumentException(("capacity should be positive but it is " + i).toString());
        }
        if (i > 536870911) {
            throw new IllegalArgumentException(("capacity should be less or equal to 536870911 but it is " + i).toString());
        }
        this.top = 0L;
        int iHighestOneBit = Integer.highestOneBit((i * 4) - 1) * 2;
        this.maxIndex = iHighestOneBit;
        this.shift = Integer.numberOfLeadingZeros(iHighestOneBit) + 1;
        this.instances = new AtomicReferenceArray<>(iHighestOneBit + 1);
        this.next = new int[iHighestOneBit + 1];
    }

    @Override // io.ktor.utils.io.pool.ObjectPool, java.lang.AutoCloseable
    public /* bridge */ void close() {
        super.close();
    }

    @Override // io.ktor.utils.io.pool.ObjectPool
    public final T borrow() {
        T tClearInstance;
        T tTryPop = tryPop();
        return (tTryPop == null || (tClearInstance = clearInstance(tTryPop)) == null) ? produceInstance() : tClearInstance;
    }

    @Override // io.ktor.utils.io.pool.ObjectPool
    public final void recycle(T instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        validateInstance(instance);
        if (tryPush(instance)) {
            return;
        }
        disposeInstance(instance);
    }

    @Override // io.ktor.utils.io.pool.ObjectPool
    public final void dispose() {
        while (true) {
            T tTryPop = tryPop();
            if (tTryPop == null) {
                return;
            } else {
                disposeInstance(tTryPop);
            }
        }
    }

    public final boolean tryPush(T t) {
        int iIdentityHashCode = ((System.identityHashCode(t) * (-1640531527)) >>> this.shift) + 1;
        for (int i = 0; i < 8; i++) {
            if (DefaultPool$$ExternalSyntheticBackportWithForwarding0.m(this.instances, iIdentityHashCode, null, t)) {
                pushTop(iIdentityHashCode);
                return true;
            }
            iIdentityHashCode--;
            if (iIdentityHashCode == 0) {
                iIdentityHashCode = this.maxIndex;
            }
        }
        return false;
    }

    public final T tryPop() {
        int iPopTop = popTop();
        if (iPopTop == 0) {
            return null;
        }
        return this.instances.getAndSet(iPopTop, null);
    }

    public final void pushTop(int i) {
        long j;
        long j2;
        if (i <= 0) {
            throw new IllegalArgumentException("index should be positive");
        }
        do {
            j = this.top;
            j2 = ((j >> 32) & SteamID.ACCOUNT_ID_MASK) + 1;
            this.next[i] = (int) (SteamID.ACCOUNT_ID_MASK & j);
        } while (!top$FU.compareAndSet(this, j, (j2 << 32) | ((long) i)));
    }

    public final int popTop() {
        long j;
        long j2;
        int i;
        do {
            j = this.top;
            if (j == 0) {
                return 0;
            }
            j2 = ((j >> 32) & SteamID.ACCOUNT_ID_MASK) + 1;
            i = (int) (SteamID.ACCOUNT_ID_MASK & j);
            if (i == 0) {
                return 0;
            }
        } while (!top$FU.compareAndSet(this, j, (j2 << 32) | ((long) this.next[i])));
        return i;
    }
}
