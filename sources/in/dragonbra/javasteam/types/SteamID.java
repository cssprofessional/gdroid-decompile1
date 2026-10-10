package in.dragonbra.javasteam.types;

import in.dragonbra.javasteam.enums.EAccountType;
import in.dragonbra.javasteam.enums.EUniverse;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import in.dragonbra.javasteam.util.CollectionUtils;
import in.dragonbra.javasteam.util.Strings;
import in.dragonbra.javasteam.util.compat.ObjectsCompat;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* JADX INFO: compiled from: SteamID.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamID {
    public static final long ACCOUNT_ID_MASK = 4294967295L;
    public static final long ACCOUNT_INSTANCE_MASK = 1048575;
    public static final long ALL_INSTANCES = 0;
    public static final long CONSOLE_INSTANCE = 2;
    public static final long DESKTOP_INSTANCE = 1;
    public static final char UNKNOWN_ACCOUNT_TYPE_CHAR = 'i';
    public static final long WEB_INSTANCE = 4;
    private final BitVector64 steamID;
    public static final Companion Companion = new Companion(null);
    private static final Pattern STEAM2_REGEX = Pattern.compile("STEAM_([0-4]):([0-1]):(\\d+)", 2);
    private static final Pattern STEAM3_REGEX = Pattern.compile("\\[([AGMPCgcLTIUai]):([0-4]):(\\d+)(:(\\d+))?]");
    private static final Pattern STEAM3_FALLBACK_REGEX = Pattern.compile("\\[([AGMPCgcLTIUai]):([0-4]):(\\d+)(\\((\\d+)\\))?]");
    private static final Map<EAccountType, Character> ACCOUNT_TYPE_CHARS = MapsKt__MapsKt.mapOf(TuplesKt.to(EAccountType.AnonGameServer, 'A'), TuplesKt.to(EAccountType.GameServer, 'G'), TuplesKt.to(EAccountType.Multiseat, 'M'), TuplesKt.to(EAccountType.Pending, 'P'), TuplesKt.to(EAccountType.ContentServer, 'C'), TuplesKt.to(EAccountType.Clan, 'g'), TuplesKt.to(EAccountType.Chat, 'T'), TuplesKt.to(EAccountType.Invalid, 'I'), TuplesKt.to(EAccountType.Individual, Character.valueOf(Matrix.MATRIX_TYPE_RANDOM_UT)), TuplesKt.to(EAccountType.AnonUser, 'a'));

    /* JADX INFO: compiled from: SteamID.kt */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EAccountType.values().length];
            try {
                iArr[EAccountType.Invalid.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EAccountType.Individual.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EAccountType.AnonGameServer.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[EAccountType.Multiseat.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SteamID(String steamId) {
        this(steamId, (EUniverse) null, 2, (DefaultConstructorMarker) (0 == true ? 1 : 0));
        Intrinsics.checkNotNullParameter(steamId, "steamId");
    }

    public final String render() {
        return render$default(this, false, 1, null);
    }

    /* JADX INFO: compiled from: SteamID.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public SteamID() {
        this(0L);
    }

    public SteamID(long j) {
        this.steamID = new BitVector64(j);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SteamID(long j, EUniverse eUniverse, EAccountType eAccountType) {
        this();
        Intrinsics.checkNotNullParameter(eUniverse, "eUniverse");
        set(j, eUniverse, eAccountType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SteamID(long j, long j2, EUniverse eUniverse, EAccountType eAccountType) {
        this();
        Intrinsics.checkNotNullParameter(eUniverse, "eUniverse");
        instancedSet(j, j2, eUniverse, eAccountType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SteamID(String steamId, EUniverse eUniverse) {
        this();
        Intrinsics.checkNotNullParameter(steamId, "steamId");
        Intrinsics.checkNotNullParameter(eUniverse, "eUniverse");
        setFromString(steamId, eUniverse);
    }

    public /* synthetic */ SteamID(String str, EUniverse eUniverse, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? EUniverse.Public : eUniverse);
    }

    public final void set(long j, EUniverse eUniverse, EAccountType eAccountType) {
        Intrinsics.checkNotNullParameter(eUniverse, "eUniverse");
        setAccountID(j);
        setAccountUniverse(eUniverse);
        setAccountType(eAccountType);
        setAccountInstance((eAccountType == EAccountType.Clan || eAccountType == EAccountType.GameServer) ? 0L : 1L);
    }

    public final void instancedSet(long j, long j2, EUniverse eUniverse, EAccountType eAccountType) {
        Intrinsics.checkNotNullParameter(eUniverse, "eUniverse");
        setAccountID(j);
        setAccountUniverse(eUniverse);
        setAccountType(eAccountType);
        setAccountInstance(j2);
    }

    public final boolean setFromString(String str, EUniverse eUniverse) {
        Intrinsics.checkNotNullParameter(eUniverse, "eUniverse");
        if (Strings.isNullOrEmpty(str)) {
            return false;
        }
        Pattern pattern = STEAM2_REGEX;
        Intrinsics.checkNotNull(str);
        Matcher matcher = pattern.matcher(str);
        if (!matcher.matches()) {
            return false;
        }
        String strGroup = matcher.group(3);
        Intrinsics.checkNotNullExpressionValue(strGroup, "group(...)");
        Long longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(strGroup);
        if (longOrNull != null) {
            long jLongValue = longOrNull.longValue();
            String strGroup2 = matcher.group(2);
            Intrinsics.checkNotNullExpressionValue(strGroup2, "group(...)");
            Long longOrNull2 = StringsKt__StringNumberConversionsKt.toLongOrNull(strGroup2);
            if (longOrNull2 != null) {
                long jLongValue2 = longOrNull2.longValue();
                setAccountUniverse(eUniverse);
                setAccountInstance(1L);
                setAccountType(EAccountType.Individual);
                setAccountID(jLongValue2 | (jLongValue << 1));
                return true;
            }
        }
        return false;
    }

    public final boolean setFromSteam3String(String str) {
        Integer intOrNull;
        Integer intOrNull2;
        long code;
        if (Strings.isNullOrEmpty(str)) {
            return false;
        }
        Pattern pattern = STEAM3_REGEX;
        Intrinsics.checkNotNull(str);
        Matcher matcher = pattern.matcher(str);
        Intrinsics.checkNotNullExpressionValue(matcher, "matcher(...)");
        if (!matcher.matches()) {
            matcher = STEAM3_FALLBACK_REGEX.matcher(str);
            Intrinsics.checkNotNullExpressionValue(matcher, "matcher(...)");
            if (!matcher.matches()) {
                return false;
            }
        }
        String strGroup = matcher.group(3);
        if (strGroup != null && (intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(strGroup)) != null) {
            int iIntValue = intOrNull.intValue();
            String strGroup2 = matcher.group(2);
            if (strGroup2 != null && (intOrNull2 = StringsKt__StringNumberConversionsKt.toIntOrNull(strGroup2)) != null) {
                int iIntValue2 = intOrNull2.intValue();
                String strGroup3 = matcher.group(1);
                if (strGroup3.length() != 1) {
                    return false;
                }
                char cCharAt = strGroup3.charAt(0);
                String strGroup4 = matcher.group(5);
                if (Strings.isNullOrEmpty(strGroup4)) {
                    code = (cCharAt == 'L' || cCharAt == 'T' || cCharAt == 'c' || cCharAt == 'g') ? 0L : 1L;
                } else {
                    Intrinsics.checkNotNull(strGroup4);
                    code = Long.parseLong(strGroup4);
                }
                if (cCharAt == 'L') {
                    code |= ChatInstanceFlags.LOBBY.getCode();
                    setAccountType(EAccountType.Chat);
                } else if (cCharAt == 'c') {
                    code |= ChatInstanceFlags.CLAN.getCode();
                    setAccountType(EAccountType.Chat);
                } else if (cCharAt == 'i') {
                    setAccountType(EAccountType.Invalid);
                } else {
                    setAccountType((EAccountType) CollectionUtils.getKeyByValue(ACCOUNT_TYPE_CHARS, Character.valueOf(cCharAt)));
                }
                EUniverse eUniverseFrom = EUniverse.from(iIntValue2);
                Intrinsics.checkNotNullExpressionValue(eUniverseFrom, "from(...)");
                setAccountUniverse(eUniverseFrom);
                setAccountInstance(code);
                setAccountID(iIntValue);
                return true;
            }
        }
        return false;
    }

    public final void setFromUInt64String(String stringSteamId) {
        Intrinsics.checkNotNullParameter(stringSteamId, "stringSteamId");
        setFromUInt64(Long.parseLong(stringSteamId));
    }

    public final void setFromUInt64(long j) {
        this.steamID.setData(j);
    }

    public final long convertToUInt64() {
        return this.steamID.getData();
    }

    public final long getStaticAccountKey() {
        long jCode = ((long) getAccountUniverse().code()) << 56;
        EAccountType accountType = getAccountType();
        Intrinsics.checkNotNull(accountType);
        return jCode + (((long) accountType.code()) << 52) + getAccountID();
    }

    public final boolean isBlankAnonAccount() {
        return getAccountID() == 0 && isAnonAccount() && getAccountInstance() == 0;
    }

    public final boolean isGameServerAccount() {
        return getAccountType() == EAccountType.GameServer || getAccountType() == EAccountType.AnonGameServer;
    }

    public final boolean isPersistentGameServerAccount() {
        return getAccountType() == EAccountType.GameServer;
    }

    public final boolean isAnonGameServerAccount() {
        return getAccountType() == EAccountType.AnonGameServer;
    }

    public final boolean isContentServerAccount() {
        return getAccountType() == EAccountType.ContentServer;
    }

    public final boolean isClanAccount() {
        return getAccountType() == EAccountType.Clan;
    }

    public final boolean isChatAccount() {
        return getAccountType() == EAccountType.Chat;
    }

    public final boolean isLobby() {
        return getAccountType() == EAccountType.Chat && (getAccountInstance() & ChatInstanceFlags.LOBBY.getCode()) > 0;
    }

    public final boolean isIndividualAccount() {
        return getAccountType() == EAccountType.Individual || getAccountType() == EAccountType.ConsoleUser;
    }

    public final boolean isAnonAccount() {
        return getAccountType() == EAccountType.AnonUser || getAccountType() == EAccountType.AnonGameServer;
    }

    public final boolean isAnonUserAccount() {
        return getAccountType() == EAccountType.AnonUser;
    }

    public final boolean isConsoleUserAccount() {
        return getAccountType() == EAccountType.ConsoleUser;
    }

    public final boolean isValid() {
        EAccountType accountType = getAccountType();
        Intrinsics.checkNotNull(accountType);
        if (accountType.compareTo(EAccountType.Invalid) > 0) {
            EAccountType accountType2 = getAccountType();
            Intrinsics.checkNotNull(accountType2);
            if (accountType2.compareTo(EAccountType.AnonUser) <= 0 && getAccountUniverse().compareTo(EUniverse.Invalid) > 0 && getAccountUniverse().compareTo(EUniverse.Dev) <= 0) {
                if (getAccountType() == EAccountType.Individual && (getAccountID() == 0 || getAccountInstance() > 4)) {
                    return false;
                }
                if (getAccountType() != EAccountType.Clan || (getAccountID() != 0 && getAccountInstance() == 0)) {
                    return (getAccountType() == EAccountType.GameServer && getAccountID() == 0) ? false : true;
                }
                return false;
            }
        }
        return false;
    }

    public final long getAccountID() {
        return this.steamID.getMask(0, ACCOUNT_ID_MASK);
    }

    public final void setAccountID(long j) {
        this.steamID.setMask(0, ACCOUNT_ID_MASK, j);
    }

    public final long getAccountInstance() {
        return this.steamID.getMask(32, ACCOUNT_INSTANCE_MASK);
    }

    public final void setAccountInstance(long j) {
        this.steamID.setMask(32, ACCOUNT_INSTANCE_MASK, j);
    }

    public final EAccountType getAccountType() {
        EAccountType eAccountTypeFrom = EAccountType.from((int) this.steamID.getMask(52, 15L));
        return eAccountTypeFrom == null ? EAccountType.Invalid : eAccountTypeFrom;
    }

    public final void setAccountType(EAccountType eAccountType) {
        this.steamID.setMask(52, 15L, eAccountType != null ? eAccountType.code() : SteammessagesClientserverLogin.CMsgClientLogon.EMBEDDED_CLIENT_SECRET_FIELD_NUMBER);
    }

    public final EUniverse getAccountUniverse() {
        EUniverse eUniverseFrom = EUniverse.from((int) this.steamID.getMask(56, 255L));
        return eUniverseFrom == null ? EUniverse.Invalid : eUniverseFrom;
    }

    public final void setAccountUniverse(EUniverse accountUniverse) {
        Intrinsics.checkNotNullParameter(accountUniverse, "accountUniverse");
        this.steamID.setMask(56, 255L, accountUniverse.code());
    }

    public static /* synthetic */ String render$default(SteamID steamID, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return steamID.render(z);
    }

    public final String render(boolean z) {
        return z ? renderSteam3() : renderSteam2();
    }

    public final SteamID toChatID() {
        if (!isClanAccount()) {
            throw new IllegalStateException("Only Clan IDs can be converted to Chat IDs.");
        }
        SteamID steamID = new SteamID(convertToUInt64());
        steamID.setAccountInstance(ChatInstanceFlags.CLAN.getCode());
        steamID.setAccountType(EAccountType.Chat);
        return steamID;
    }

    public final SteamID tryGetClanID() {
        if (!isChatAccount() || getAccountInstance() != ChatInstanceFlags.CLAN.getCode()) {
            return null;
        }
        SteamID steamID = new SteamID(convertToUInt64());
        steamID.setAccountInstance(0L);
        steamID.setAccountType(EAccountType.Clan);
        return steamID;
    }

    private final String renderSteam2() {
        String strValueOf;
        EAccountType accountType = getAccountType();
        int i = accountType == null ? -1 : WhenMappings.$EnumSwitchMapping$0[accountType.ordinal()];
        if (i == 1 || i == 2) {
            if (getAccountUniverse().code() <= EUniverse.Public.code()) {
                strValueOf = "0";
            } else {
                strValueOf = String.valueOf(getAccountUniverse().code());
            }
            return "STEAM_" + strValueOf + ":" + (getAccountID() & 1) + ":" + (getAccountID() >> 1);
        }
        return String.valueOf(this.steamID.getData());
    }

    private final String renderSteam3() {
        Character ch = ACCOUNT_TYPE_CHARS.get(getAccountType());
        char cCharValue = ch != null ? ch.charValue() : UNKNOWN_ACCOUNT_TYPE_CHAR;
        if (getAccountType() == EAccountType.Chat) {
            if (ChatInstanceFlags.CLAN.hasFlag(getAccountInstance())) {
                cCharValue = 'c';
            } else if (ChatInstanceFlags.LOBBY.hasFlag(getAccountInstance())) {
                cCharValue = Matrix.MATRIX_TYPE_RANDOM_LT;
            }
        }
        EAccountType accountType = getAccountType();
        int i = accountType == null ? -1 : WhenMappings.$EnumSwitchMapping$0[accountType.ordinal()];
        if (i == 2 ? getAccountInstance() != 1 : !(i != 3 && i != 4)) {
            return "[" + cCharValue + ":" + getAccountUniverse().ordinal() + ":" + getAccountID() + ":" + getAccountInstance() + "]";
        }
        return "[" + cCharValue + ":" + getAccountUniverse().ordinal() + ":" + getAccountID() + "]";
    }

    public String toString() {
        return render$default(this, false, 1, null);
    }

    public boolean equals(Object obj) {
        if (obj instanceof SteamID) {
            return ObjectsCompat.equals(Long.valueOf(this.steamID.getData()), Long.valueOf(((SteamID) obj).steamID.getData()));
        }
        return false;
    }

    public int hashCode() {
        return Long.hashCode(this.steamID.getData());
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: SteamID.kt */
    public static final class ChatInstanceFlags {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ChatInstanceFlags[] $VALUES;
        public static final Companion Companion;
        private final long code;
        public static final ChatInstanceFlags CLAN = new ChatInstanceFlags("CLAN", 0, 524288);
        public static final ChatInstanceFlags LOBBY = new ChatInstanceFlags("LOBBY", 1, 262144);
        public static final ChatInstanceFlags MMS_LOBBY = new ChatInstanceFlags("MMS_LOBBY", 2, 131072);

        private static final /* synthetic */ ChatInstanceFlags[] $values() {
            return new ChatInstanceFlags[]{CLAN, LOBBY, MMS_LOBBY};
        }

        public static final ChatInstanceFlags from(long j) {
            return Companion.from(j);
        }

        public static EnumEntries<ChatInstanceFlags> getEntries() {
            return $ENTRIES;
        }

        public static ChatInstanceFlags valueOf(String str) {
            return (ChatInstanceFlags) Enum.valueOf(ChatInstanceFlags.class, str);
        }

        public static ChatInstanceFlags[] values() {
            return (ChatInstanceFlags[]) $VALUES.clone();
        }

        private ChatInstanceFlags(String str, int i, long j) {
            this.code = j;
        }

        public final long getCode() {
            return this.code;
        }

        static {
            ChatInstanceFlags[] chatInstanceFlagsArr$values = $values();
            $VALUES = chatInstanceFlagsArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(chatInstanceFlagsArr$values);
            Companion = new Companion(null);
        }

        public final boolean hasFlag(long j) {
            return (j & this.code) != 0;
        }

        /* JADX INFO: compiled from: SteamID.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final ChatInstanceFlags from(long j) {
                ChatInstanceFlags next;
                Iterator<ChatInstanceFlags> it = ChatInstanceFlags.getEntries().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    if (next.getCode() == j) {
                        break;
                    }
                }
                return next;
            }
        }
    }
}
