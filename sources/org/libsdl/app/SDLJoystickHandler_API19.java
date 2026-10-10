package org.libsdl.app;

import android.view.InputDevice;
import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import org.bouncycastle.asn1.BERTags;
import org.tukaani.xz.LZMA2Options;

/* JADX INFO: compiled from: SDLControllerManager.java */
/* JADX INFO: loaded from: classes3.dex */
class SDLJoystickHandler_API19 extends SDLJoystickHandler_API16 {
    @Override // org.libsdl.app.SDLJoystickHandler_API16
    public int getProductId(InputDevice inputDevice) {
        return inputDevice.getProductId();
    }

    @Override // org.libsdl.app.SDLJoystickHandler_API16
    public int getVendorId(InputDevice inputDevice) {
        return inputDevice.getVendorId();
    }

    @Override // org.libsdl.app.SDLJoystickHandler_API16
    public int getButtonMask(InputDevice inputDevice) {
        int[] iArr = {96, 97, 99, 100, 4, SteammessagesClientserverLogin.CMsgClientLogon.IS_TESLA_DEPRECATED_FIELD_NUMBER, SteammessagesClientserverLogin.CMsgClientLogon.ACCESS_TOKEN_FIELD_NUMBER, SteammessagesClientserverLogin.CMsgClientLogon.DISABLE_PARTNER_AUTOGRANTS_FIELD_NUMBER, SteammessagesClientserverLogin.CMsgClientLogon.IS_STEAM_DECK_DEPRECATED_FIELD_NUMBER, SteammessagesClientserverLogin.CMsgClientLogon.SUPPORTS_RATE_LIMIT_RESPONSE_FIELD_NUMBER, SteammessagesClientserverLogin.CMsgClientLogon.WEB_LOGON_NONCE_FIELD_NUMBER, 19, 20, 21, 22, SteammessagesClientserverLogin.CMsgClientLogon.IS_CHROME_OS_FIELD_NUMBER, 23, SteammessagesClientserverLogin.CMsgClientLogon.PRIORITY_REASON_FIELD_NUMBER, SteammessagesClientserverLogin.CMsgClientLogon.EMBEDDED_CLIENT_SECRET_FIELD_NUMBER, 98, SteammessagesClientserverLogin.CMsgClientLogon.TWO_FACTOR_CODE_FIELD_NUMBER, 188, 189, 190, 191, BERTags.PRIVATE, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203};
        int[] iArr2 = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE, Enums.EProtoAppType.k_EAppTypeSeries_VALUE, 16, 1, 32768, Enums.EProtoAppType.k_EAppTypeBeta_VALUE, 131072, 262144, 1048576, 2097152, 4194304, LZMA2Options.DICT_SIZE_DEFAULT, 16777216, 33554432, 67108864, 134217728, 268435456, 536870912, Enums.EProtoAppType.k_EAppTypeShortcut_VALUE, Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE, -1, -1, -1, -1};
        boolean[] zArrHasKeys = inputDevice.hasKeys(iArr);
        int i = 0;
        for (int i2 = 0; i2 < 37; i2++) {
            if (zArrHasKeys[i2]) {
                i |= iArr2[i2];
            }
        }
        return i;
    }
}
