package in.dragonbra.javasteam.steam.handlers.steammatchmaking;

import in.dragonbra.javasteam.types.SteamID;
import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Member.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Member {
    private final Map<String, String> metadata;
    private final String personaName;
    private final SteamID steamID;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Member copy$default(Member member, SteamID steamID, String str, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            steamID = member.steamID;
        }
        if ((i & 2) != 0) {
            str = member.personaName;
        }
        if ((i & 4) != 0) {
            map = member.metadata;
        }
        return member.copy(steamID, str, map);
    }

    public final SteamID component1() {
        return this.steamID;
    }

    public final String component2() {
        return this.personaName;
    }

    public final Map<String, String> component3() {
        return this.metadata;
    }

    public final Member copy(SteamID steamID, String personaName, Map<String, String> metadata) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        Intrinsics.checkNotNullParameter(personaName, "personaName");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        return new Member(steamID, personaName, metadata);
    }

    public String toString() {
        return "Member(steamID=" + this.steamID + ", personaName=" + this.personaName + ", metadata=" + this.metadata + ")";
    }

    public Member(SteamID steamID, String personaName, Map<String, String> metadata) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        Intrinsics.checkNotNullParameter(personaName, "personaName");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        this.steamID = steamID;
        this.personaName = personaName;
        this.metadata = metadata;
    }

    public final SteamID getSteamID() {
        return this.steamID;
    }

    public final String getPersonaName() {
        return this.personaName;
    }

    public /* synthetic */ Member(SteamID steamID, String str, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(steamID, str, (i & 4) != 0 ? MapsKt__MapsKt.emptyMap() : map);
    }

    public final Map<String, String> getMetadata() {
        return this.metadata;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Member) {
            return Intrinsics.areEqual(this.steamID, ((Member) obj).steamID);
        }
        return false;
    }

    public int hashCode() {
        return this.steamID.hashCode();
    }
}
