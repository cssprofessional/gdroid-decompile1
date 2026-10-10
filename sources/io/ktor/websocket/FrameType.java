package io.ktor.websocket;

import java.util.Iterator;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: FrameType.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FrameType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FrameType[] $VALUES;
    public static final Companion Companion;
    private static final FrameType[] byOpcodeArray;
    private static final int maxOpcode;
    private final boolean controlFrame;
    private final int opcode;
    public static final FrameType TEXT = new FrameType("TEXT", 0, false, 1);
    public static final FrameType BINARY = new FrameType("BINARY", 1, false, 2);
    public static final FrameType CLOSE = new FrameType("CLOSE", 2, true, 8);
    public static final FrameType PING = new FrameType("PING", 3, true, 9);
    public static final FrameType PONG = new FrameType("PONG", 4, true, 10);

    private static final /* synthetic */ FrameType[] $values() {
        return new FrameType[]{TEXT, BINARY, CLOSE, PING, PONG};
    }

    public static EnumEntries<FrameType> getEntries() {
        return $ENTRIES;
    }

    public static FrameType valueOf(String str) {
        return (FrameType) Enum.valueOf(FrameType.class, str);
    }

    public static FrameType[] values() {
        return (FrameType[]) $VALUES.clone();
    }

    private FrameType(String str, int i, boolean z, int i2) {
        this.controlFrame = z;
        this.opcode = i2;
    }

    public final boolean getControlFrame() {
        return this.controlFrame;
    }

    public final int getOpcode() {
        return this.opcode;
    }

    static {
        FrameType next;
        FrameType[] frameTypeArr$values = $values();
        $VALUES = frameTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(frameTypeArr$values);
        Companion = new Companion(null);
        Iterator<FrameType> it = getEntries().iterator();
        if (it.hasNext()) {
            next = it.next();
            if (it.hasNext()) {
                int i = next.opcode;
                do {
                    FrameType next2 = it.next();
                    int i2 = next2.opcode;
                    if (i < i2) {
                        next = next2;
                        i = i2;
                    }
                } while (it.hasNext());
            }
        } else {
            next = null;
        }
        Intrinsics.checkNotNull(next);
        int i3 = next.opcode;
        maxOpcode = i3;
        int i4 = i3 + 1;
        FrameType[] frameTypeArr = new FrameType[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            Iterator<FrameType> it2 = getEntries().iterator();
            FrameType frameType = null;
            boolean z = false;
            while (true) {
                if (!it2.hasNext()) {
                    if (!z) {
                        break;
                    }
                } else {
                    FrameType next3 = it2.next();
                    if (next3.opcode == i5) {
                        if (z) {
                            break;
                        }
                        z = true;
                        frameType = next3;
                    }
                }
            }
            frameType = null;
            frameTypeArr[i5] = frameType;
        }
        byOpcodeArray = frameTypeArr;
    }

    /* JADX INFO: compiled from: FrameType.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final FrameType get(int i) {
            if (i < 0 || i > FrameType.maxOpcode) {
                return null;
            }
            return FrameType.byOpcodeArray[i];
        }
    }
}
