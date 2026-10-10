package io.ktor.websocket;

import io.ktor.utils.io.core.StringsKt;
import java.nio.ByteBuffer;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.io.Buffer;
import kotlinx.io.Source;
import kotlinx.io.SourcesKt;

/* JADX INFO: compiled from: Frame.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class Frame {
    public static final Companion Companion = new Companion(null);
    public static final byte[] Empty = new byte[0];
    public final ByteBuffer buffer;
    public final byte[] data;
    public final DisposableHandle disposableHandle;
    public final boolean fin;
    public final FrameType frameType;
    public final boolean rsv1;
    public final boolean rsv2;
    public final boolean rsv3;

    public /* synthetic */ Frame(boolean z, FrameType frameType, byte[] bArr, DisposableHandle disposableHandle, boolean z2, boolean z3, boolean z4, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, frameType, bArr, disposableHandle, z2, z3, z4);
    }

    /* JADX INFO: compiled from: Frame.kt */
    public static final class Close extends Frame {
        public Close(CloseReason reason) {
            Intrinsics.checkNotNullParameter(reason, "reason");
            Buffer buffer = new Buffer();
            buffer.writeShort(reason.getCode());
            StringsKt.writeText$default(buffer, reason.getMessage(), 0, 0, null, 14, null);
            this(buffer);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Close(byte[] data) {
            super(true, FrameType.CLOSE, data, NonDisposableHandle.INSTANCE, false, false, false, null);
            Intrinsics.checkNotNullParameter(data, "data");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Close(Source packet) {
            this(SourcesKt.readByteArray(packet));
            Intrinsics.checkNotNullParameter(packet, "packet");
        }

        public Close() {
            this(Frame.Empty);
        }
    }

    public Frame(boolean z, FrameType frameType, byte[] bArr, DisposableHandle disposableHandle, boolean z2, boolean z3, boolean z4) {
        this.fin = z;
        this.frameType = frameType;
        this.data = bArr;
        this.disposableHandle = disposableHandle;
        this.rsv1 = z2;
        this.rsv2 = z3;
        this.rsv3 = z4;
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        Intrinsics.checkNotNullExpressionValue(byteBufferWrap, "wrap(...)");
        this.buffer = byteBufferWrap;
    }

    public final boolean getFin() {
        return this.fin;
    }

    public final FrameType getFrameType() {
        return this.frameType;
    }

    public final byte[] getData() {
        return this.data;
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

    public final ByteBuffer getBuffer() {
        return this.buffer;
    }

    /* JADX INFO: compiled from: Frame.kt */
    public static final class Binary extends Frame {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Binary(boolean z, byte[] data, boolean z2, boolean z3, boolean z4) {
            super(z, FrameType.BINARY, data, NonDisposableHandle.INSTANCE, z2, z3, z4, null);
            Intrinsics.checkNotNullParameter(data, "data");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Binary(boolean z, byte[] data) {
            this(z, data, false, false, false);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: Frame.kt */
    public static final class Text extends Frame {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Text(boolean z, byte[] data, boolean z2, boolean z3, boolean z4) {
            super(z, FrameType.TEXT, data, NonDisposableHandle.INSTANCE, z2, z3, z4, null);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: Frame.kt */
    public static final class Pong extends Frame {
        public /* synthetic */ Pong(byte[] bArr, DisposableHandle disposableHandle, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(bArr, (i & 2) != 0 ? NonDisposableHandle.INSTANCE : disposableHandle);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Pong(byte[] data, DisposableHandle disposableHandle) {
            super(true, FrameType.PONG, data, disposableHandle, false, false, false, null);
            Intrinsics.checkNotNullParameter(data, "data");
            Intrinsics.checkNotNullParameter(disposableHandle, "disposableHandle");
        }
    }

    /* JADX INFO: compiled from: Frame.kt */
    public static final class Ping extends Frame {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ping(byte[] data) {
            super(true, FrameType.PING, data, NonDisposableHandle.INSTANCE, false, false, false, null);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    public String toString() {
        return "Frame " + this.frameType + " (fin=" + this.fin + ", buffer len = " + this.data.length + ')';
    }

    /* JADX INFO: compiled from: Frame.kt */
    public static final class Companion {

        /* JADX INFO: compiled from: Frame.kt */
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[FrameType.values().length];
                try {
                    iArr[FrameType.BINARY.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[FrameType.TEXT.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[FrameType.CLOSE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[FrameType.PING.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[FrameType.PONG.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final Frame byType(boolean z, FrameType frameType, byte[] data, boolean z2, boolean z3, boolean z4) {
            Intrinsics.checkNotNullParameter(frameType, "frameType");
            Intrinsics.checkNotNullParameter(data, "data");
            int i = WhenMappings.$EnumSwitchMapping$0[frameType.ordinal()];
            if (i == 1) {
                return new Binary(z, data, z2, z3, z4);
            }
            if (i == 2) {
                return new Text(z, data, z2, z3, z4);
            }
            if (i == 3) {
                return new Close(data);
            }
            if (i == 4) {
                return new Ping(data);
            }
            if (i != 5) {
                throw new NoWhenBranchMatchedException();
            }
            return new Pong(data, NonDisposableHandle.INSTANCE);
        }
    }
}
