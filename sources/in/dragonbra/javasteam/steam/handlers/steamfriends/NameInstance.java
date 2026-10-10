package in.dragonbra.javasteam.steam.handlers.steamfriends;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver;
import java.util.Date;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NameInstance.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class NameInstance {
    private final String name;
    private final Date nameSince;

    public NameInstance(SteammessagesClientserver.CMsgClientAMGetPersonaNameHistoryResponse.NameTableInstance.NameInstance instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        String name = instance.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        this.name = name;
        this.nameSince = new Date(((long) instance.getNameSince()) * 1000);
    }

    public final String getName() {
        return this.name;
    }

    public final Date getNameSince() {
        return this.nameSince;
    }
}
