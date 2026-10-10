package io.ktor.network.selector;

import java.io.IOException;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.spi.SelectorProvider;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.KotlinNothingValueException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: compiled from: SelectorManagerSupport.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class SelectorManagerSupport implements SelectorManager {
    public int cancelled;
    public int pending;
    public final SelectorProvider provider;

    public abstract void publishInterest(Selectable selectable);

    public SelectorManagerSupport() {
        SelectorProvider selectorProviderProvider = SelectorProvider.provider();
        Intrinsics.checkNotNullExpressionValue(selectorProviderProvider, "provider(...)");
        this.provider = selectorProviderProvider;
    }

    @Override // io.ktor.network.selector.SelectorManager
    public final SelectorProvider getProvider() {
        return this.provider;
    }

    public final int getPending() {
        return this.pending;
    }

    public final int getCancelled() {
        return this.cancelled;
    }

    public final void setCancelled(int i) {
        this.cancelled = i;
    }

    @Override // io.ktor.network.selector.SelectorManager
    public final Object select(Selectable selectable, SelectInterest selectInterest, Continuation<? super Unit> continuation) throws IOException {
        int interestedOps = selectable.getInterestedOps();
        int flag = selectInterest.getFlag();
        if (selectable.isClosed()) {
            SelectorManagerSupportKt.selectableIsClosed();
            throw new KotlinNothingValueException();
        }
        if ((interestedOps & flag) == 0) {
            SelectorManagerSupportKt.selectableIsInvalid(interestedOps, flag);
            throw new KotlinNothingValueException();
        }
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: io.ktor.network.selector.SelectorManagerSupport$select$2$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }
        });
        selectable.getSuspensions().addSuspension(selectInterest, cancellableContinuationImpl);
        if (!cancellableContinuationImpl.isCancelled()) {
            publishInterest(selectable);
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
    }

    public final void handleSelectedKeys(Set<SelectionKey> selectedKeys, Set<? extends SelectionKey> keys) {
        Intrinsics.checkNotNullParameter(selectedKeys, "selectedKeys");
        Intrinsics.checkNotNullParameter(keys, "keys");
        int size = selectedKeys.size();
        this.pending = keys.size() - size;
        this.cancelled = 0;
        if (size <= 0) {
            return;
        }
        Iterator<SelectionKey> it = selectedKeys.iterator();
        while (it.hasNext()) {
            handleSelectedKey(it.next());
            it.remove();
        }
    }

    public final void handleSelectedKey(SelectionKey key) {
        CancellableContinuation<Unit> cancellableContinuationRemoveSuspension;
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            int i = key.readyOps();
            int iInterestOps = key.interestOps();
            Selectable subject = getSubject(key);
            if (subject == null) {
                key.cancel();
                this.cancelled++;
                return;
            }
            InterestSuspensionsMap suspensions = subject.getSuspensions();
            int[] flags = SelectInterest.Companion.getFlags();
            int length = flags.length;
            for (int i2 = 0; i2 < length; i2++) {
                if ((flags[i2] & i) != 0 && (cancellableContinuationRemoveSuspension = suspensions.removeSuspension(i2)) != null) {
                    Result.Companion companion = Result.Companion;
                    cancellableContinuationRemoveSuspension.resumeWith(Result.m8149constructorimpl(Unit.INSTANCE));
                }
            }
            int i3 = (~i) & iInterestOps;
            if (i3 != iInterestOps) {
                key.interestOps(i3);
            }
            if (i3 != 0) {
                this.pending++;
            }
        } catch (Throwable th) {
            key.cancel();
            this.cancelled++;
            Selectable subject2 = getSubject(key);
            if (subject2 != null) {
                cancelAllSuspensions(subject2, th);
                setSubject(key, null);
            }
        }
    }

    public final void applyInterest(Selector selector, Selectable selectable) {
        Intrinsics.checkNotNullParameter(selector, "selector");
        Intrinsics.checkNotNullParameter(selectable, "selectable");
        try {
            SelectableChannel channel = selectable.getChannel();
            SelectionKey selectionKeyKeyFor = channel.keyFor(selector);
            int interestedOps = selectable.getInterestedOps();
            if (selectionKeyKeyFor == null) {
                if (interestedOps != 0) {
                    channel.register(selector, interestedOps, selectable);
                }
            } else if (selectionKeyKeyFor.interestOps() != interestedOps) {
                selectionKeyKeyFor.interestOps(interestedOps);
            }
            if (interestedOps != 0) {
                this.pending++;
            }
        } catch (Throwable th) {
            SelectionKey selectionKeyKeyFor2 = selectable.getChannel().keyFor(selector);
            if (selectionKeyKeyFor2 != null) {
                selectionKeyKeyFor2.cancel();
            }
            cancelAllSuspensions(selectable, th);
        }
    }

    public final void cancelAllSuspensions(Selectable attachment, Throwable cause) {
        Intrinsics.checkNotNullParameter(attachment, "attachment");
        Intrinsics.checkNotNullParameter(cause, "cause");
        InterestSuspensionsMap suspensions = attachment.getSuspensions();
        for (SelectInterest selectInterest : SelectInterest.Companion.getAllInterests()) {
            CancellableContinuation<Unit> cancellableContinuationRemoveSuspension = suspensions.removeSuspension(selectInterest);
            if (cancellableContinuationRemoveSuspension != null) {
                Result.Companion companion = Result.Companion;
                cancellableContinuationRemoveSuspension.resumeWith(Result.m8149constructorimpl(ResultKt.createFailure(cause)));
            }
        }
    }

    public final void cancelAllSuspensions(Selector selector, Throwable th) {
        Intrinsics.checkNotNullParameter(selector, "selector");
        if (th == null) {
            th = new ClosedSelectorCancellationException();
        }
        Set<SelectionKey> setKeys = selector.keys();
        Intrinsics.checkNotNullExpressionValue(setKeys, "keys(...)");
        for (SelectionKey selectionKey : setKeys) {
            try {
                if (selectionKey.isValid()) {
                    selectionKey.interestOps(0);
                }
            } catch (CancelledKeyException unused) {
            }
            Object objAttachment = selectionKey.attachment();
            Selectable selectable = objAttachment instanceof Selectable ? (Selectable) objAttachment : null;
            if (selectable != null) {
                cancelAllSuspensions(selectable, th);
            }
            selectionKey.cancel();
        }
    }

    public final Selectable getSubject(SelectionKey selectionKey) {
        Object objAttachment = selectionKey.attachment();
        if (objAttachment instanceof Selectable) {
            return (Selectable) objAttachment;
        }
        return null;
    }

    public final void setSubject(SelectionKey selectionKey, Selectable selectable) {
        selectionKey.attach(selectable);
    }

    /* JADX INFO: compiled from: SelectorManagerSupport.kt */
    public static final class ClosedSelectorCancellationException extends CancellationException {
        public ClosedSelectorCancellationException() {
            super("Closed selector");
        }
    }
}
