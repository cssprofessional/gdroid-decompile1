package in.dragonbra.javasteam.steam.handlers.steamfriends;

import in.dragonbra.javasteam.enums.EChatPermission;
import in.dragonbra.javasteam.enums.EClanPermission;
import in.dragonbra.javasteam.types.KeyValue;
import in.dragonbra.javasteam.types.MessageObject;
import in.dragonbra.javasteam.types.SteamID;
import java.util.EnumSet;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ChatMemberInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ChatMemberInfo extends MessageObject {
    public ChatMemberInfo() {
        super(null, 1, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatMemberInfo(KeyValue keyValues) {
        super(keyValues);
        Intrinsics.checkNotNullParameter(keyValues, "keyValues");
    }

    public final EnumSet<EClanPermission> getDetails() {
        KeyValue keyValue = getKeyValues().get("Details");
        EnumSet enumSetOf = EnumSet.of(EClanPermission.Nobody);
        Intrinsics.checkNotNullExpressionValue(enumSetOf, "of(...)");
        return keyValue.asEnum(EClanPermission.class, enumSetOf);
    }

    public final EnumSet<EChatPermission> getPermissions() {
        KeyValue keyValue = getKeyValues().get("Permissions");
        EnumSet<EChatPermission> EveryoneDefault = EChatPermission.EveryoneDefault;
        Intrinsics.checkNotNullExpressionValue(EveryoneDefault, "EveryoneDefault");
        return keyValue.asEnum(EChatPermission.class, EveryoneDefault);
    }

    public final SteamID getSteamID() {
        return new SteamID(KeyValue.asLong$default(getKeyValues().get("SteamID"), 0L, 1, null));
    }
}
