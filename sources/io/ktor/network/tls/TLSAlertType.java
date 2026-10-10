package io.ktor.network.tls;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import java.util.Iterator;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: TLSAlert.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TLSAlertType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TLSAlertType[] $VALUES;
    public static final Companion Companion;
    private static final TLSAlertType[] byCode;
    private final int code;
    public static final TLSAlertType DecryptionFailed_RESERVED = new TLSAlertType("DecryptionFailed_RESERVED", 0, 21);
    public static final TLSAlertType CloseNotify = new TLSAlertType("CloseNotify", 1, 0);
    public static final TLSAlertType UnexpectedMessage = new TLSAlertType("UnexpectedMessage", 2, 10);
    public static final TLSAlertType BadRecordMac = new TLSAlertType("BadRecordMac", 3, 20);
    public static final TLSAlertType RecordOverflow = new TLSAlertType("RecordOverflow", 4, 22);
    public static final TLSAlertType DecompressionFailure = new TLSAlertType("DecompressionFailure", 5, 30);
    public static final TLSAlertType HandshakeFailure = new TLSAlertType("HandshakeFailure", 6, 40);
    public static final TLSAlertType NoCertificate_RESERVED = new TLSAlertType("NoCertificate_RESERVED", 7, 41);
    public static final TLSAlertType BadCertificate = new TLSAlertType("BadCertificate", 8, 42);
    public static final TLSAlertType UnsupportedCertificate = new TLSAlertType("UnsupportedCertificate", 9, 43);
    public static final TLSAlertType CertificateRevoked = new TLSAlertType("CertificateRevoked", 10, 44);
    public static final TLSAlertType CertificateExpired = new TLSAlertType("CertificateExpired", 11, 45);
    public static final TLSAlertType CertificateUnknown = new TLSAlertType("CertificateUnknown", 12, 46);
    public static final TLSAlertType IllegalParameter = new TLSAlertType("IllegalParameter", 13, 47);
    public static final TLSAlertType UnknownCa = new TLSAlertType("UnknownCa", 14, 48);
    public static final TLSAlertType AccessDenied = new TLSAlertType("AccessDenied", 15, 49);
    public static final TLSAlertType DecodeError = new TLSAlertType("DecodeError", 16, 50);
    public static final TLSAlertType DecryptError = new TLSAlertType("DecryptError", 17, 51);
    public static final TLSAlertType ExportRestriction_RESERVED = new TLSAlertType("ExportRestriction_RESERVED", 18, 60);
    public static final TLSAlertType ProtocolVersion = new TLSAlertType("ProtocolVersion", 19, 70);
    public static final TLSAlertType InsufficientSecurity = new TLSAlertType("InsufficientSecurity", 20, 71);
    public static final TLSAlertType InternalError = new TLSAlertType("InternalError", 21, 80);
    public static final TLSAlertType UserCanceled = new TLSAlertType("UserCanceled", 22, 90);
    public static final TLSAlertType NoRenegotiation = new TLSAlertType("NoRenegotiation", 23, 100);
    public static final TLSAlertType UnsupportedExtension = new TLSAlertType("UnsupportedExtension", 24, SteammessagesClientserverLogin.CMsgClientLogon.IS_TESLA_DEPRECATED_FIELD_NUMBER);

    private static final /* synthetic */ TLSAlertType[] $values() {
        return new TLSAlertType[]{DecryptionFailed_RESERVED, CloseNotify, UnexpectedMessage, BadRecordMac, RecordOverflow, DecompressionFailure, HandshakeFailure, NoCertificate_RESERVED, BadCertificate, UnsupportedCertificate, CertificateRevoked, CertificateExpired, CertificateUnknown, IllegalParameter, UnknownCa, AccessDenied, DecodeError, DecryptError, ExportRestriction_RESERVED, ProtocolVersion, InsufficientSecurity, InternalError, UserCanceled, NoRenegotiation, UnsupportedExtension};
    }

    public static EnumEntries<TLSAlertType> getEntries() {
        return $ENTRIES;
    }

    public static TLSAlertType valueOf(String str) {
        return (TLSAlertType) Enum.valueOf(TLSAlertType.class, str);
    }

    public static TLSAlertType[] values() {
        return (TLSAlertType[]) $VALUES.clone();
    }

    private TLSAlertType(String str, int i, int i2) {
        this.code = i2;
    }

    public final int getCode() {
        return this.code;
    }

    static {
        TLSAlertType next;
        TLSAlertType[] tLSAlertTypeArr$values = $values();
        $VALUES = tLSAlertTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(tLSAlertTypeArr$values);
        Companion = new Companion(null);
        TLSAlertType[] tLSAlertTypeArr = new TLSAlertType[256];
        for (int i = 0; i < 256; i++) {
            Iterator<TLSAlertType> it = getEntries().iterator();
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
            tLSAlertTypeArr[i] = next;
        }
        byCode = tLSAlertTypeArr;
    }

    /* JADX INFO: compiled from: TLSAlert.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final TLSAlertType byCode(int i) {
            TLSAlertType tLSAlertType = (i < 0 || i >= 256) ? null : TLSAlertType.byCode[i];
            if (tLSAlertType != null) {
                return tLSAlertType;
            }
            throw new IllegalArgumentException("Invalid TLS record type code: " + i);
        }
    }
}
