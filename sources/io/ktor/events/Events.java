package io.ktor.events;

import io.ktor.util.collections.CopyOnWriteHashMap;
import io.ktor.util.internal.LockFreeLinkedListHead;
import io.ktor.util.internal.LockFreeLinkedListNode;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.DisposableHandle;

/* JADX INFO: compiled from: Events.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Events {
    public final CopyOnWriteHashMap<EventDefinition<?>, LockFreeLinkedListHead> handlers = new CopyOnWriteHashMap<>();

    public final <T> void raise(EventDefinition<T> definition, T t) {
        Intrinsics.checkNotNullParameter(definition, "definition");
        LockFreeLinkedListHead lockFreeLinkedListHead = this.handlers.get(definition);
        Throwable th = null;
        if (lockFreeLinkedListHead != null) {
            Object next = lockFreeLinkedListHead.getNext();
            Intrinsics.checkNotNull(next, "null cannot be cast to non-null type io.ktor.util.internal.LockFreeLinkedListNode");
            for (LockFreeLinkedListNode nextNode = (LockFreeLinkedListNode) next; !Intrinsics.areEqual(nextNode, lockFreeLinkedListHead); nextNode = nextNode.getNextNode()) {
                if (nextNode instanceof HandlerRegistration) {
                    try {
                        Function1<?, Unit> handler = ((HandlerRegistration) nextNode).getHandler();
                        Intrinsics.checkNotNull(handler, "null cannot be cast to non-null type kotlin.Function1<T of io.ktor.events.Events.raise, kotlin.Unit>");
                        ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(handler, 1)).invoke(t);
                    } catch (Throwable th2) {
                        if (th != null) {
                            ExceptionsKt__ExceptionsKt.addSuppressed(th, th2);
                        } else {
                            th = th2;
                        }
                    }
                }
            }
        }
        if (th != null) {
            throw th;
        }
    }

    /* JADX INFO: compiled from: Events.kt */
    public static final class HandlerRegistration extends LockFreeLinkedListNode implements DisposableHandle {
        public final Function1<?, Unit> handler;

        public final Function1<?, Unit> getHandler() {
            return this.handler;
        }

        @Override // kotlinx.coroutines.DisposableHandle
        public void dispose() {
            remove();
        }
    }
}
