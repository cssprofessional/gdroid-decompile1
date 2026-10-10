package io.ktor.network.tls;

import java.util.Iterator;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: TLSHandshakeType.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ServerKeyExchangeType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ServerKeyExchangeType[] $VALUES;
    public static final Companion Companion;
    private static final ServerKeyExchangeType[] byCode;
    private final int code;
    public static final ServerKeyExchangeType ExplicitPrime = new ServerKeyExchangeType("ExplicitPrime", 0, 1);
    public static final ServerKeyExchangeType ExplicitChar = new ServerKeyExchangeType("ExplicitChar", 1, 2);
    public static final ServerKeyExchangeType NamedCurve = new ServerKeyExchangeType("NamedCurve", 2, 3);

    private static final /* synthetic */ ServerKeyExchangeType[] $values() {
        return new ServerKeyExchangeType[]{ExplicitPrime, ExplicitChar, NamedCurve};
    }

    public static EnumEntries<ServerKeyExchangeType> getEntries() {
        return $ENTRIES;
    }

    public static ServerKeyExchangeType valueOf(String str) {
        return (ServerKeyExchangeType) Enum.valueOf(ServerKeyExchangeType.class, str);
    }

    public static ServerKeyExchangeType[] values() {
        return (ServerKeyExchangeType[]) $VALUES.clone();
    }

    private ServerKeyExchangeType(String str, int i, int i2) {
        this.code = i2;
    }

    public final int getCode() {
        return this.code;
    }

    static {
        ServerKeyExchangeType next;
        ServerKeyExchangeType[] serverKeyExchangeTypeArr$values = $values();
        $VALUES = serverKeyExchangeTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(serverKeyExchangeTypeArr$values);
        Companion = new Companion(null);
        ServerKeyExchangeType[] serverKeyExchangeTypeArr = new ServerKeyExchangeType[256];
        for (int i = 0; i < 256; i++) {
            Iterator<ServerKeyExchangeType> it = getEntries().iterator();
            while (true) {
                if (it.hasNext()) {
                    next = it.next();
                    if (next.code == i) {
                        break;
                    }
                } else {
                    next = null;
                    break;
                }
            }
            serverKeyExchangeTypeArr[i] = next;
        }
        byCode = serverKeyExchangeTypeArr;
    }

    /* JADX INFO: compiled from: TLSHandshakeType.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final ServerKeyExchangeType byCode(int i) {
            ServerKeyExchangeType serverKeyExchangeType = (i < 0 || i >= 256) ? null : ServerKeyExchangeType.byCode[i];
            if (serverKeyExchangeType != null) {
                return serverKeyExchangeType;
            }
            throw new IllegalArgumentException("Invalid TLS ServerKeyExchange type code: " + i);
        }
    }
}
