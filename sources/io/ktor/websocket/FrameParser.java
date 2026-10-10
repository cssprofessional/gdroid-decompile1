package io.ktor.websocket;

import in.dragonbra.javasteam.networking.steam3.UdpConnection$$ExternalSyntheticBackportWithForwarding0;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FrameParser.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FrameParser {
    public boolean fin;
    public int lastOpcode;
    public long length;
    public int lengthLength;
    public boolean mask;
    public Integer maskKey;
    public int opcode;
    public boolean rsv1;
    public boolean rsv2;
    public boolean rsv3;
    public final AtomicReference<State> state = new AtomicReference<>(State.HEADER0);

    /* JADX INFO: compiled from: FrameParser.kt */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[State.values().length];
            try {
                iArr[State.HEADER0.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[State.LENGTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[State.MASK_KEY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[State.BODY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final boolean getFin() {
        return this.fin;
    }

    public final boolean getRsv1() {
        return this.rsv1;
    }

    public final boolean getRsv2() {
        return this.rsv2;
    }

    public final boolean getRsv3() {
        return this.rsv3;
    }

    public final long getLength() {
        return this.length;
    }

    public final Integer getMaskKey() {
        return this.maskKey;
    }

    public final FrameType getFrameType() throws ProtocolViolationException {
        FrameType frameType = FrameType.Companion.get(this.opcode);
        if (frameType != null) {
            return frameType;
        }
        throw new ProtocolViolationException("Unsupported opcode " + Integer.toHexString(this.opcode));
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: FrameParser.kt */
    public static final class State {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ State[] $VALUES;
        public static final State HEADER0 = new State("HEADER0", 0);
        public static final State LENGTH = new State("LENGTH", 1);
        public static final State MASK_KEY = new State("MASK_KEY", 2);
        public static final State BODY = new State("BODY", 3);

        private static final /* synthetic */ State[] $values() {
            return new State[]{HEADER0, LENGTH, MASK_KEY, BODY};
        }

        public static EnumEntries<State> getEntries() {
            return $ENTRIES;
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }

        private State(String str, int i) {
        }

        static {
            State[] stateArr$values = $values();
            $VALUES = stateArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(stateArr$values);
        }
    }

    public final boolean getBodyReady() {
        return this.state.get() == State.BODY;
    }

    public final void bodyComplete() {
        if (!UdpConnection$$ExternalSyntheticBackportWithForwarding0.m(this.state, State.BODY, State.HEADER0)) {
            throw new IllegalStateException("It should be state BODY but it is " + this.state.get());
        }
        this.opcode = 0;
        this.length = 0L;
        this.lengthLength = 0;
        this.maskKey = null;
    }

    public final void frame(ByteBuffer bb) {
        Intrinsics.checkNotNullParameter(bb, "bb");
        if (!Intrinsics.areEqual(bb.order(), ByteOrder.BIG_ENDIAN)) {
            throw new IllegalArgumentException(("Buffer order should be BIG_ENDIAN but it is " + bb.order()).toString());
        }
        while (handleStep(bb)) {
        }
    }

    public final boolean handleStep(ByteBuffer byteBuffer) {
        State state = this.state.get();
        Intrinsics.checkNotNull(state);
        int i = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
        if (i == 1) {
            return parseHeader1(byteBuffer);
        }
        if (i == 2) {
            return parseLength(byteBuffer);
        }
        if (i == 3) {
            return parseMaskKey(byteBuffer);
        }
        if (i == 4) {
            return false;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final boolean parseHeader1(ByteBuffer byteBuffer) throws ProtocolViolationException {
        int i = 0;
        if (byteBuffer.remaining() < 2) {
            return false;
        }
        byte b = byteBuffer.get();
        byte b2 = byteBuffer.get();
        this.fin = (b & 128) != 0;
        this.rsv1 = (b & 64) != 0;
        this.rsv2 = (b & 32) != 0;
        this.rsv3 = (b & 16) != 0;
        int i2 = b & 15;
        this.opcode = i2;
        if (i2 == 0 && this.lastOpcode == 0) {
            throw new ProtocolViolationException("Can't continue finished frames");
        }
        if (i2 == 0) {
            this.opcode = this.lastOpcode;
        } else if (this.lastOpcode != 0 && !getFrameType().getControlFrame()) {
            throw new ProtocolViolationException("Can't start new data frame before finishing previous one");
        }
        if (!getFrameType().getControlFrame()) {
            this.lastOpcode = this.fin ? 0 : this.opcode;
        } else if (!this.fin) {
            throw new ProtocolViolationException("control frames can't be fragmented");
        }
        this.mask = (b2 & 128) != 0;
        int i3 = b2 & 127;
        if (getFrameType().getControlFrame() && i3 > 125) {
            throw new ProtocolViolationException("control frames can't be larger than 125 bytes");
        }
        if (i3 == 126) {
            i = 2;
        } else if (i3 == 127) {
            i = 8;
        }
        this.lengthLength = i;
        this.length = i == 0 ? i3 : 0L;
        if (i > 0) {
            this.state.set(State.LENGTH);
        } else if (this.mask) {
            this.state.set(State.MASK_KEY);
        } else {
            this.state.set(State.BODY);
        }
        return true;
    }

    public final boolean parseLength(ByteBuffer byteBuffer) {
        long j;
        int iRemaining = byteBuffer.remaining();
        int i = this.lengthLength;
        if (iRemaining < i) {
            return false;
        }
        if (i == 2) {
            j = ((long) byteBuffer.getShort()) & 65535;
        } else if (i == 8) {
            j = byteBuffer.getLong();
        } else {
            throw new IllegalStateException();
        }
        this.length = j;
        this.state.set(this.mask ? State.MASK_KEY : State.BODY);
        return true;
    }

    public final boolean parseMaskKey(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() < 4) {
            return false;
        }
        this.maskKey = Integer.valueOf(byteBuffer.getInt());
        this.state.set(State.BODY);
        return true;
    }
}
