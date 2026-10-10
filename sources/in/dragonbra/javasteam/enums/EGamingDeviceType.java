package in.dragonbra.javasteam.enums;

import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;
import org.tukaani.xz.LZMA2Options;

/* JADX INFO: loaded from: classes.dex */
public enum EGamingDeviceType {
    Unknown(0),
    StandardPC(1),
    ConsoleLegacy(256),
    PS3(LZMA2Options.NICE_LEN_MAX),
    Steambox(288),
    Tesla(DilithiumEngine.DilithiumPolyT1PackedBytes),
    Handheld_Legacy(512),
    Phone(528),
    Console(540),
    SteamOSGeneric(541),
    SteamDeck(544),
    LegionGoS(545),
    Fremont(546),
    VR(768),
    SteamFrame(769);

    private final int code;

    EGamingDeviceType(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EGamingDeviceType from(int i) {
        for (EGamingDeviceType eGamingDeviceType : values()) {
            if (eGamingDeviceType.code == i) {
                return eGamingDeviceType;
            }
        }
        return null;
    }
}
