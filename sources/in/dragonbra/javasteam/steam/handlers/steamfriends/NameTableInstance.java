package in.dragonbra.javasteam.steam.handlers.steamfriends;

import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver;
import in.dragonbra.javasteam.types.SteamID;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NameTableInstance.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class NameTableInstance {
    private List<NameInstance> names;
    private final EResult result;
    private final SteamID steamID;

    public NameTableInstance(SteammessagesClientserver.CMsgClientAMGetPersonaNameHistoryResponse.NameTableInstance instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        EResult eResultFrom = EResult.from(instance.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        this.steamID = new SteamID(instance.getSteamid());
        List<SteammessagesClientserver.CMsgClientAMGetPersonaNameHistoryResponse.NameTableInstance.NameInstance> namesList = instance.getNamesList();
        Intrinsics.checkNotNullExpressionValue(namesList, "getNamesList(...)");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(namesList, 10));
        for (SteammessagesClientserver.CMsgClientAMGetPersonaNameHistoryResponse.NameTableInstance.NameInstance nameInstance : namesList) {
            Intrinsics.checkNotNull(nameInstance);
            arrayList.add(new NameInstance(nameInstance));
        }
        this.names = arrayList;
    }

    public final EResult getResult() {
        return this.result;
    }

    public final SteamID getSteamID() {
        return this.steamID;
    }

    public final List<NameInstance> getNames() {
        return this.names;
    }

    public final void setNames(List<NameInstance> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.names = list;
    }
}
