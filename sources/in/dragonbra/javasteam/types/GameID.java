package in.dragonbra.javasteam.types;

import in.dragonbra.javasteam.util.Utils;
import in.dragonbra.javasteam.util.compat.ObjectsCompat;
import java.util.Iterator;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GameID.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class GameID {
    private final BitVector64 gameId;

    public GameID() {
        this(0L, 1, null);
    }

    public GameID(long j) {
        this.gameId = new BitVector64(j);
    }

    public /* synthetic */ GameID(long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j);
    }

    public GameID(int i) {
        this(i);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GameID(int i, String modPath) {
        this(0);
        Intrinsics.checkNotNullParameter(modPath, "modPath");
        setAppID(i);
        setAppType(GameType.GAME_MOD);
        setModID(Utils.crc32(modPath));
    }

    public GameID(String str, String str2) {
        this(0);
        StringBuilder sb = new StringBuilder();
        if (str != null) {
            sb.append(str);
        }
        if (str2 != null) {
            sb.append(str2);
        }
        setAppID(0);
        setAppType(GameType.SHORTCUT);
        setModID(Utils.crc32(sb.toString()));
    }

    public final void set(long j) {
        this.gameId.setData(j);
    }

    public final long toUInt64() {
        return this.gameId.getData();
    }

    public final int getAppID() {
        return (int) this.gameId.getMask(0, 16777215L);
    }

    public final void setAppID(int i) {
        this.gameId.setMask(0, 16777215L, i);
    }

    public final GameType getAppType() {
        return GameType.Companion.from((int) this.gameId.getMask(24, 255L));
    }

    public final void setAppType(GameType gameType) {
        BitVector64 bitVector64 = this.gameId;
        Intrinsics.checkNotNull(gameType);
        bitVector64.setMask(24, 255L, gameType.getCode());
    }

    public final long getModID() {
        return this.gameId.getMask(32, SteamID.ACCOUNT_ID_MASK);
    }

    public final void setModID(long j) {
        this.gameId.setMask(32, SteamID.ACCOUNT_ID_MASK, j);
        this.gameId.setMask(63, 255L, 1L);
    }

    public final boolean isMod() {
        return getAppType() == GameType.GAME_MOD;
    }

    public final boolean isShortcut() {
        return getAppType() == GameType.SHORTCUT;
    }

    public final boolean isP2PFile() {
        return getAppType() == GameType.P2P;
    }

    public final boolean isSteamApp() {
        return getAppType() == GameType.APP;
    }

    public final void setFromUInt64(long j) {
        this.gameId.setData(j);
    }

    public final long convertToUInt64() {
        return this.gameId.getData();
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof GameID)) {
            return ObjectsCompat.equals(Long.valueOf(this.gameId.getData()), Long.valueOf(((GameID) obj).gameId.getData()));
        }
        return false;
    }

    public int hashCode() {
        return Long.hashCode(this.gameId.getData());
    }

    public String toString() {
        return String.valueOf(toUInt64());
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: GameID.kt */
    public static final class GameType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ GameType[] $VALUES;
        public static final Companion Companion;
        private final int code;
        public static final GameType APP = new GameType("APP", 0, 0);
        public static final GameType GAME_MOD = new GameType("GAME_MOD", 1, 1);
        public static final GameType SHORTCUT = new GameType("SHORTCUT", 2, 2);
        public static final GameType P2P = new GameType("P2P", 3, 3);

        private static final /* synthetic */ GameType[] $values() {
            return new GameType[]{APP, GAME_MOD, SHORTCUT, P2P};
        }

        public static final GameType from(int i) {
            return Companion.from(i);
        }

        public static EnumEntries<GameType> getEntries() {
            return $ENTRIES;
        }

        public static GameType valueOf(String str) {
            return (GameType) Enum.valueOf(GameType.class, str);
        }

        public static GameType[] values() {
            return (GameType[]) $VALUES.clone();
        }

        private GameType(String str, int i, int i2) {
            this.code = i2;
        }

        public final int getCode() {
            return this.code;
        }

        static {
            GameType[] gameTypeArr$values = $values();
            $VALUES = gameTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(gameTypeArr$values);
            Companion = new Companion(null);
        }

        /* JADX INFO: compiled from: GameID.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final GameType from(int i) {
                GameType next;
                Iterator<GameType> it = GameType.getEntries().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    if (next.getCode() == i) {
                        break;
                    }
                }
                return next;
            }
        }
    }
}
