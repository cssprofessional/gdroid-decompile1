package in.dragonbra.javasteam.steam.handlers.steamfriends.cache;

import in.dragonbra.javasteam.enums.EClanRelationship;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FriendCache.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Clan extends Account {
    private EClanRelationship relationship;

    /* JADX WARN: Multi-variable type inference failed */
    public Clan() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public Clan(EClanRelationship relationship) {
        Intrinsics.checkNotNullParameter(relationship, "relationship");
        this.relationship = relationship;
    }

    public /* synthetic */ Clan(EClanRelationship eClanRelationship, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? EClanRelationship.None : eClanRelationship);
    }

    public final EClanRelationship getRelationship() {
        return this.relationship;
    }

    public final void setRelationship(EClanRelationship eClanRelationship) {
        Intrinsics.checkNotNullParameter(eClanRelationship, "<set-?>");
        this.relationship = eClanRelationship;
    }
}
