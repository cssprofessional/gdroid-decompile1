package in.dragonbra.javasteam.util.event;

import in.dragonbra.javasteam.util.event.EventArgs;

/* JADX INFO: loaded from: classes2.dex */
public interface EventHandler<T extends EventArgs> {
    void handleEvent(Object obj, T t);
}
