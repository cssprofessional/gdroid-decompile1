package com.gmodvr.flat;

import in.dragonbra.javasteam.types.KeyValue;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
final class SteamCatalog {
    public static int appId(GameContentProfile gameContentProfile) {
        if (gameContentProfile == GameContentProfile.GARRYSMOD) {
            return 4000;
        }
        if (gameContentProfile == GameContentProfile.PORTAL) {
            return 400;
        }
        return gameContentProfile == GameContentProfile.PORTAL2 ? 620 : 220;
    }

    public static boolean workshopApp(GameContentProfile gameContentProfile, int i) {
        String str = gameContentProfile.id;
        str.hashCode();
        switch (str) {
            case "portal":
                if (i != 400) {
                    break;
                }
                break;
            case "portal2":
                if (i != 620) {
                    break;
                }
                break;
            case "ep1":
                if (i != 220 && i != 380 && i != 2177750 && i != 658920) {
                    break;
                }
                break;
            case "ep2":
                if (i != 220 && i != 420 && i != 2177760 && i != 658920) {
                    break;
                }
                break;
            case "hl2":
                if (i != 220 && i != 658920) {
                    break;
                }
                break;
            case "lostcoast":
                if (i != 220 && i != 340 && i != 658920) {
                    break;
                }
                break;
            case "garrysmod":
                if (i != 4000) {
                    break;
                }
                break;
        }
        return false;
    }

    public static boolean depotMatches(KeyValue keyValue, String str) {
        KeyValue keyValue2 = keyValue.get("config");
        String strValue = value(keyValue2.get("oslist"));
        String strValue2 = value(keyValue2.get("osarch"));
        String strValue3 = value(keyValue2.get("language"));
        return value(keyValue.get("dlcappid")).isEmpty() && (strValue.isEmpty() || Arrays.asList(strValue.split(",")).contains("windows")) && ((strValue2.isEmpty() || strValue2.equals("32")) && ((strValue3.isEmpty() || strValue3.equals(str) || strValue3.equals("english")) && !"1".equals(value(keyValue2.get("lowviolence")))));
    }

    public static boolean proxyWanted(GameContentProfile gameContentProfile, KeyValue keyValue) {
        String strValue = value(keyValue.get("depotfromapp"));
        strValue.hashCode();
        switch (strValue) {
            case "340":
                return gameContentProfile.dependsOn(ContentComponent.LOSTCOAST);
            case "380":
                return gameContentProfile.dependsOn(ContentComponent.EPISODIC);
            case "420":
                return gameContentProfile.dependsOn(ContentComponent.EP2);
            default:
                return true;
        }
    }

    public static String value(KeyValue keyValue) {
        return keyValue.getValue() == null ? "" : keyValue.getValue();
    }

    public static boolean providedByHalfLife2(File file, String str) {
        if (file == null) {
            return false;
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        if (lowerCase.startsWith("sourceengine/") && lowerCase.indexOf(47, 13) < 0) {
            for (String str2 : GameFolder.GMOD_HL2_PACKS) {
                if (lowerCase.matches("sourceengine/" + str2 + "_(dir|[0-9]{3})\\.vpk")) {
                    return "hl2".equals(GameFolder.hl2PackFolder(file, str2));
                }
            }
        }
        return false;
    }

    public static String gamePath(Collection<ContentComponent> collection, String str) throws IOException {
        String strRelative = SteamFiles.relative(str);
        int iIndexOf = strRelative.indexOf(47);
        if (iIndexOf < 0) {
            return null;
        }
        String strSubstring = strRelative.substring(0, iIndexOf);
        ContentComponent contentComponent = null;
        for (ContentComponent contentComponent2 : collection) {
            if (contentComponent2.importDirName.equalsIgnoreCase(strSubstring)) {
                contentComponent = contentComponent2;
            }
        }
        if (contentComponent == null) {
            return null;
        }
        String str2 = contentComponent.dirName + strRelative.substring(iIndexOf);
        String lowerCase = str2.toLowerCase(Locale.ROOT);
        if (lowerCase.contains("/bin/") || lowerCase.endsWith(".exe") || lowerCase.endsWith(".dll") || lowerCase.endsWith(".so") || lowerCase.endsWith(".dylib") || lowerCase.contains("/save/") || lowerCase.contains("/custom/") || lowerCase.contains("/download/")) {
            return null;
        }
        return str2;
    }
}
