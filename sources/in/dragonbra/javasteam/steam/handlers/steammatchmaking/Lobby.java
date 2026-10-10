package in.dragonbra.javasteam.steam.handlers.steammatchmaking;

import com.google.protobuf.ByteString;
import in.dragonbra.javasteam.enums.ELobbyType;
import in.dragonbra.javasteam.types.KeyValue;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Lobby.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Lobby {
    public static final Companion Companion = new Companion(null);
    private final Float distance;
    private final int lobbyFlags;
    private final ELobbyType lobbyType;
    private final int maxMembers;
    private final List<Member> members;
    private final Map<String, String> metadata;
    private final int numMembers;
    private final SteamID ownerSteamID;
    private final SteamID steamID;
    private final Long weight;

    public Lobby(SteamID steamID, ELobbyType lobbyType, int i, SteamID steamID2, Map<String, String> metadata, int i2, int i3, List<Member> members, Float f, Long l) {
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        Intrinsics.checkNotNullParameter(lobbyType, "lobbyType");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(members, "members");
        this.steamID = steamID;
        this.lobbyType = lobbyType;
        this.lobbyFlags = i;
        this.ownerSteamID = steamID2;
        this.metadata = metadata;
        this.maxMembers = i2;
        this.numMembers = i3;
        this.members = members;
        this.distance = f;
        this.weight = l;
    }

    public final SteamID getSteamID() {
        return this.steamID;
    }

    public final ELobbyType getLobbyType() {
        return this.lobbyType;
    }

    public final int getLobbyFlags() {
        return this.lobbyFlags;
    }

    public final SteamID getOwnerSteamID() {
        return this.ownerSteamID;
    }

    public /* synthetic */ Lobby(SteamID steamID, ELobbyType eLobbyType, int i, SteamID steamID2, Map map, int i2, int i3, List list, Float f, Long l, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(steamID, eLobbyType, i, steamID2, (i4 & 16) != 0 ? MapsKt__MapsKt.emptyMap() : map, i2, i3, (i4 & 128) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list, f, l);
    }

    public final Map<String, String> getMetadata() {
        return this.metadata;
    }

    public final int getMaxMembers() {
        return this.maxMembers;
    }

    public final int getNumMembers() {
        return this.numMembers;
    }

    public final List<Member> getMembers() {
        return this.members;
    }

    public final Float getDistance() {
        return this.distance;
    }

    public final Long getWeight() {
        return this.weight;
    }

    /* JADX INFO: compiled from: Lobby.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ByteString toByteString$javasteam(byte[] bArr) {
            Intrinsics.checkNotNullParameter(bArr, "<this>");
            ByteString byteStringCopyFrom = ByteString.copyFrom(bArr);
            Intrinsics.checkNotNullExpressionValue(byteStringCopyFrom, "copyFrom(...)");
            return byteStringCopyFrom;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final byte[] encodeMetadata$javasteam(Map<String, String> map) throws IllegalAccessException, IOException, InvocationTargetException {
            KeyValue keyValue = new KeyValue("", null, 2, 0 == true ? 1 : 0);
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    keyValue.set(entry.getKey(), new KeyValue(null, entry.getValue()));
                }
            }
            MemoryStream memoryStream = new MemoryStream();
            try {
                OutputStream outputStreamAsOutputStream = memoryStream.asOutputStream();
                Intrinsics.checkNotNullExpressionValue(outputStreamAsOutputStream, "asOutputStream(...)");
                keyValue.saveToStream(outputStreamAsOutputStream, true);
                byte[] byteArray = memoryStream.toByteArray();
                CloseableKt.closeFinally(memoryStream, null);
                Intrinsics.checkNotNullExpressionValue(byteArray, "use(...)");
                return byteArray;
            } finally {
            }
        }

        public final Map<String, String> decodeMetadata$javasteam(ByteString byteString) {
            return decodeMetadata$javasteam(byteString != null ? byteString.toByteArray() : null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Map<String, String> decodeMetadata$javasteam(byte[] bArr) throws IllegalAccessException, IOException, InvocationTargetException {
            if (bArr == null || bArr.length == 0) {
                return MapsKt__MapsKt.emptyMap();
            }
            KeyValue keyValue = new KeyValue(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            MemoryStream memoryStream = new MemoryStream(bArr);
            try {
                if (!keyValue.tryReadAsBinary(memoryStream)) {
                    throw new NumberFormatException("Lobby metadata is of an unexpected format");
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(memoryStream, null);
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (KeyValue keyValue2 : keyValue.getChildren()) {
                    if (keyValue2.getName() == null || keyValue2.getValue() == null) {
                        return linkedHashMap;
                    }
                    String name = keyValue2.getName();
                    Intrinsics.checkNotNull(name);
                    String value = keyValue2.getValue();
                    Intrinsics.checkNotNull(value);
                    linkedHashMap.put(name, value);
                }
                return MapsKt__MapsKt.toMap(linkedHashMap);
            } finally {
            }
        }
    }
}
