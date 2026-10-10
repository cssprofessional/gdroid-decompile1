package in.dragonbra.javasteam.steam.handlers.steamuser;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ChatMode.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ChatMode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ChatMode[] $VALUES;
    public static final ChatMode DEFAULT = new ChatMode("DEFAULT", 0, 0);
    public static final ChatMode NEW_STEAM_CHAT = new ChatMode("NEW_STEAM_CHAT", 1, 2);
    private final int mode;

    private static final /* synthetic */ ChatMode[] $values() {
        return new ChatMode[]{DEFAULT, NEW_STEAM_CHAT};
    }

    public static EnumEntries<ChatMode> getEntries() {
        return $ENTRIES;
    }

    public static ChatMode valueOf(String str) {
        return (ChatMode) Enum.valueOf(ChatMode.class, str);
    }

    public static ChatMode[] values() {
        return (ChatMode[]) $VALUES.clone();
    }

    private ChatMode(String str, int i, int i2) {
        this.mode = i2;
    }

    public final int getMode() {
        return this.mode;
    }

    static {
        ChatMode[] chatModeArr$values = $values();
        $VALUES = chatModeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(chatModeArr$values);
    }
}
