package in.dragonbra.javasteam.steam.handlers.steamnotifications;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Notification.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Notification {
    private final int count;
    private final int type;

    public Notification(SteammessagesClientserver2.CMsgClientUserNotifications.Notification notification) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        this.count = notification.getCount();
        this.type = notification.getUserNotificationType();
    }

    public final int getCount() {
        return this.count;
    }

    public final int getType() {
        return this.type;
    }
}
