package in.dragonbra.javasteam.util.event;

import in.dragonbra.javasteam.util.event.EventArgs;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class Event<T extends EventArgs> {
    protected final HashSet<EventHandler<T>> handlers = new HashSet<>();

    public void addEventHandler(EventHandler<T> eventHandler) {
        synchronized (this.handlers) {
            this.handlers.add(eventHandler);
        }
    }

    public void removeEventHandler(EventHandler<T> eventHandler) {
        synchronized (this.handlers) {
            this.handlers.remove(eventHandler);
        }
    }

    public void handleEvent(Object obj, T t) {
        synchronized (this.handlers) {
            try {
                Iterator<EventHandler<T>> it = this.handlers.iterator();
                while (it.hasNext()) {
                    it.next().handleEvent(obj, t);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
