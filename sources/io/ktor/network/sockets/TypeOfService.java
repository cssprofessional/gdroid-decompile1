package io.ktor.network.sockets;

import kotlin.UByte;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: TypeOfService.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TypeOfService {
    public static final Companion Companion = new Companion(null);
    public static final byte UNDEFINED = m8113constructorimpl((byte) 0);
    public static final byte IPTOS_LOWCOST = m8113constructorimpl((byte) 2);
    public static final byte IPTOS_RELIABILITY = m8113constructorimpl((byte) 4);
    public static final byte IPTOS_THROUGHPUT = m8113constructorimpl((byte) 8);
    public static final byte IPTOS_LOWDELAY = m8113constructorimpl((byte) 16);

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static byte m8113constructorimpl(byte b) {
        return b;
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m8114equalsimpl0(byte b, byte b2) {
        return UByte.m8156equalsimpl0(b, b2);
    }

    /* JADX INFO: compiled from: TypeOfService.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        /* JADX INFO: renamed from: getUNDEFINED-zieKYfw, reason: not valid java name */
        public final byte m8115getUNDEFINEDzieKYfw() {
            return TypeOfService.UNDEFINED;
        }
    }
}
