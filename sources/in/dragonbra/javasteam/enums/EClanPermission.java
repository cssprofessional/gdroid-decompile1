package in.dragonbra.javasteam.enums;

import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public enum EClanPermission {
    Nobody(0),
    Owner(1),
    Officer(2),
    OwnerAndOfficer(3),
    Member(4),
    Moderator(8),
    OGGGameOwner(16),
    NonMember(128);

    public static final EnumSet<EClanPermission> AllMembers;
    public static final EnumSet<EClanPermission> Anybody;
    public static final EnumSet<EClanPermission> MemberAllowed;
    public static final EnumSet<EClanPermission> ModeratorAllowed;
    public static final EnumSet<EClanPermission> OfficerAllowed;
    public static final EnumSet<EClanPermission> OwnerAllowed;
    public static final EnumSet<EClanPermission> OwnerOfficerModerator;
    private final int code;

    static {
        EClanPermission eClanPermission = Owner;
        EClanPermission eClanPermission2 = Officer;
        EClanPermission eClanPermission3 = Member;
        EClanPermission eClanPermission4 = Moderator;
        EClanPermission eClanPermission5 = NonMember;
        OwnerOfficerModerator = EnumSet.of(eClanPermission, eClanPermission2, eClanPermission4);
        AllMembers = EnumSet.of(eClanPermission, eClanPermission2, eClanPermission4, eClanPermission3);
        MemberAllowed = EnumSet.of(eClanPermission5, eClanPermission3);
        ModeratorAllowed = EnumSet.of(eClanPermission5, eClanPermission3, eClanPermission4);
        OfficerAllowed = EnumSet.of(eClanPermission5, eClanPermission3, eClanPermission4, eClanPermission2);
        OwnerAllowed = EnumSet.of(eClanPermission5, eClanPermission3, eClanPermission4, eClanPermission2, eClanPermission);
        Anybody = EnumSet.of(eClanPermission5, eClanPermission3, eClanPermission4, eClanPermission2, eClanPermission);
    }

    EClanPermission(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EnumSet<EClanPermission> from(int i) {
        EnumSet<EClanPermission> enumSetNoneOf = EnumSet.noneOf(EClanPermission.class);
        for (EClanPermission eClanPermission : values()) {
            int i2 = eClanPermission.code;
            if ((i2 & i) == i2) {
                enumSetNoneOf.add(eClanPermission);
            }
        }
        return enumSetNoneOf;
    }

    public static int code(EnumSet<EClanPermission> enumSet) {
        Iterator<EClanPermission> it = enumSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= it.next().code;
        }
        return i;
    }
}
