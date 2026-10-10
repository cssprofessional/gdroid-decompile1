package in.dragonbra.javasteam.enums;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import java.util.EnumSet;
import java.util.Iterator;
import org.tukaani.xz.LZMA2Options;

/* JADX INFO: loaded from: classes.dex */
public enum EAccountFlags {
    NormalUser(0),
    PersonaNameSet(1),
    Unbannable(2),
    PasswordSet(4),
    Support(8),
    Admin(16),
    Supervisor(32),
    AppEditor(64),
    HWIDSet(128),
    PersonalQASet(256),
    VacBeta(512),
    Debug(1024),
    Disabled(2048),
    LimitedUser(4096),
    LimitedUserForce(Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE),
    EmailValidated(Enums.EProtoAppType.k_EAppTypeSeries_VALUE),
    ValveEmail(32768),
    OGGInviteOptOut(Enums.EProtoAppType.k_EAppTypeBeta_VALUE),
    ForcePasswordChange(131072),
    ForceEmailVerification(262144),
    LogonExtraSecurity(524288),
    LogonExtraSecurityDisabled(1048576),
    Steam2MigrationComplete(2097152),
    NeedLogs(4194304),
    Lockdown(LZMA2Options.DICT_SIZE_DEFAULT),
    MasterAppEditor(16777216),
    BannedFromWebAPI(33554432),
    PartnerMember(67108864),
    GlobalModerator(134217728),
    ParentalSettings(268435456),
    ThirdPartySupport(536870912),
    NeedsSSANextSteamLogon(Enums.EProtoAppType.k_EAppTypeShortcut_VALUE);

    private final int code;

    EAccountFlags(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EnumSet<EAccountFlags> from(int i) {
        EnumSet<EAccountFlags> enumSetNoneOf = EnumSet.noneOf(EAccountFlags.class);
        for (EAccountFlags eAccountFlags : values()) {
            int i2 = eAccountFlags.code;
            if ((i2 & i) == i2) {
                enumSetNoneOf.add(eAccountFlags);
            }
        }
        return enumSetNoneOf;
    }

    public static int code(EnumSet<EAccountFlags> enumSet) {
        Iterator<EAccountFlags> it = enumSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= it.next().code;
        }
        return i;
    }
}
