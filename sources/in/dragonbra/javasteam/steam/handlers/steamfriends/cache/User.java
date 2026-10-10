package in.dragonbra.javasteam.steam.handlers.steamfriends.cache;

import in.dragonbra.javasteam.enums.EFriendRelationship;
import in.dragonbra.javasteam.enums.EPersonaState;
import in.dragonbra.javasteam.enums.EPersonaStateFlag;
import in.dragonbra.javasteam.types.GameID;
import java.util.EnumSet;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FriendCache.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class User extends Account {
    private int gameAppID;
    private GameID gameID;
    private String gameName;
    private EPersonaState personaState;
    private EnumSet<EPersonaStateFlag> personaStateFlags;
    private EFriendRelationship relationship;

    public User() {
        this(null, null, null, 0, null, null, 63, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ User copy$default(User user, EFriendRelationship eFriendRelationship, EPersonaState ePersonaState, EnumSet enumSet, int i, GameID gameID, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            eFriendRelationship = user.relationship;
        }
        if ((i2 & 2) != 0) {
            ePersonaState = user.personaState;
        }
        EPersonaState ePersonaState2 = ePersonaState;
        if ((i2 & 4) != 0) {
            enumSet = user.personaStateFlags;
        }
        EnumSet enumSet2 = enumSet;
        if ((i2 & 8) != 0) {
            i = user.gameAppID;
        }
        int i3 = i;
        if ((i2 & 16) != 0) {
            gameID = user.gameID;
        }
        GameID gameID2 = gameID;
        if ((i2 & 32) != 0) {
            str = user.gameName;
        }
        return user.copy(eFriendRelationship, ePersonaState2, enumSet2, i3, gameID2, str);
    }

    public final EFriendRelationship component1() {
        return this.relationship;
    }

    public final EPersonaState component2() {
        return this.personaState;
    }

    public final EnumSet<EPersonaStateFlag> component3() {
        return this.personaStateFlags;
    }

    public final int component4() {
        return this.gameAppID;
    }

    public final GameID component5() {
        return this.gameID;
    }

    public final String component6() {
        return this.gameName;
    }

    public final User copy(EFriendRelationship eFriendRelationship, EPersonaState personaState, EnumSet<EPersonaStateFlag> enumSet, int i, GameID gameID, String str) {
        Intrinsics.checkNotNullParameter(personaState, "personaState");
        Intrinsics.checkNotNullParameter(gameID, "gameID");
        return new User(eFriendRelationship, personaState, enumSet, i, gameID, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof User)) {
            return false;
        }
        User user = (User) obj;
        return this.relationship == user.relationship && this.personaState == user.personaState && Intrinsics.areEqual(this.personaStateFlags, user.personaStateFlags) && this.gameAppID == user.gameAppID && Intrinsics.areEqual(this.gameID, user.gameID) && Intrinsics.areEqual(this.gameName, user.gameName);
    }

    public int hashCode() {
        EFriendRelationship eFriendRelationship = this.relationship;
        int iHashCode = (((eFriendRelationship == null ? 0 : eFriendRelationship.hashCode()) * 31) + this.personaState.hashCode()) * 31;
        EnumSet<EPersonaStateFlag> enumSet = this.personaStateFlags;
        int iHashCode2 = (((((iHashCode + (enumSet == null ? 0 : enumSet.hashCode())) * 31) + Integer.hashCode(this.gameAppID)) * 31) + this.gameID.hashCode()) * 31;
        String str = this.gameName;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "User(relationship=" + this.relationship + ", personaState=" + this.personaState + ", personaStateFlags=" + this.personaStateFlags + ", gameAppID=" + this.gameAppID + ", gameID=" + this.gameID + ", gameName=" + this.gameName + ")";
    }

    public User(EFriendRelationship eFriendRelationship, EPersonaState personaState, EnumSet<EPersonaStateFlag> enumSet, int i, GameID gameID, String str) {
        Intrinsics.checkNotNullParameter(personaState, "personaState");
        Intrinsics.checkNotNullParameter(gameID, "gameID");
        this.relationship = eFriendRelationship;
        this.personaState = personaState;
        this.personaStateFlags = enumSet;
        this.gameAppID = i;
        this.gameID = gameID;
        this.gameName = str;
    }

    public final EFriendRelationship getRelationship() {
        return this.relationship;
    }

    public final void setRelationship(EFriendRelationship eFriendRelationship) {
        this.relationship = eFriendRelationship;
    }

    public /* synthetic */ User(EFriendRelationship eFriendRelationship, EPersonaState ePersonaState, EnumSet enumSet, int i, GameID gameID, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : eFriendRelationship, (i2 & 2) != 0 ? EPersonaState.Offline : ePersonaState, (i2 & 4) != 0 ? null : enumSet, (i2 & 8) != 0 ? 0 : i, (i2 & 16) != 0 ? new GameID(0L, 1, null) : gameID, (i2 & 32) != 0 ? null : str);
    }

    public final EPersonaState getPersonaState() {
        return this.personaState;
    }

    public final void setPersonaState(EPersonaState ePersonaState) {
        Intrinsics.checkNotNullParameter(ePersonaState, "<set-?>");
        this.personaState = ePersonaState;
    }

    public final EnumSet<EPersonaStateFlag> getPersonaStateFlags() {
        return this.personaStateFlags;
    }

    public final void setPersonaStateFlags(EnumSet<EPersonaStateFlag> enumSet) {
        this.personaStateFlags = enumSet;
    }

    public final int getGameAppID() {
        return this.gameAppID;
    }

    public final void setGameAppID(int i) {
        this.gameAppID = i;
    }

    public final GameID getGameID() {
        return this.gameID;
    }

    public final void setGameID(GameID gameID) {
        Intrinsics.checkNotNullParameter(gameID, "<set-?>");
        this.gameID = gameID;
    }

    public final String getGameName() {
        return this.gameName;
    }

    public final void setGameName(String str) {
        this.gameName = str;
    }
}
