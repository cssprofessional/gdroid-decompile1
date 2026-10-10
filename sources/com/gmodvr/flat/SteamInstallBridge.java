package com.gmodvr.flat;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SteamInstallBridge {
    private static final String PREFS = "steam_content_handoff";

    private SteamInstallBridge() {
    }

    private static SharedPreferences journal(Context context) {
        return context.getSharedPreferences(PREFS, 0);
    }

    public static boolean pending(Context context) {
        return journal(context).contains("token");
    }

    public static String owner(Context context) {
        return journal(context).getString("profile", "");
    }

    public static boolean isDepotInstalled(File file, String str) {
        ContentComponent contentComponent;
        if (file == null) {
            return false;
        }
        File file2 = new File(file, str);
        if (!file2.isDirectory()) {
            return false;
        }
        if (ContentComponent.PLATFORM_DIR.equalsIgnoreCase(str)) {
            return new File(file2, "platform_misc_dir.vpk").isFile();
        }
        if (ContentComponent.SOURCEENGINE_DIR.equalsIgnoreCase(str)) {
            if (!new File(file2, "content_hl2_dir.vpk").isFile() || !new File(file2, "content_cstrike_dir.vpk").isFile()) {
                return false;
            }
            Iterator<String> it = GameFolder.GMOD_HL2_PACKS.iterator();
            while (it.hasNext()) {
                if (GameFolder.hl2PackFolder(file, it.next()) == null) {
                    return false;
                }
            }
            return true;
        }
        for (GameContentProfile gameContentProfile : GameContentProfile.all()) {
            if (gameContentProfile.gameDir.equalsIgnoreCase(str)) {
                return new File(file2, "gameinfo.txt").isFile() || !((contentComponent = gameContentProfile.primary) == null || contentComponent.coreVpkRelPath == null || !new File(file, gameContentProfile.primary.coreVpkRelPath).isFile());
            }
        }
        return true;
    }

    public static List<ContentComponent> stagedDepots(GameContentProfile gameContentProfile, File file, List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (ContentComponent contentComponent : gameContentProfile.depots) {
            if (contentComponent != gameContentProfile.primary && isDepotInstalled(file, contentComponent.dirName)) {
                list.add(contentComponent.dirName);
            } else {
                arrayList.add(contentComponent);
            }
        }
        return arrayList;
    }

    public static void install(Context context, File file, String str, String str2) throws Exception {
        File file2;
        SharedPreferences sharedPreferencesJournal = journal(context);
        if (pending(context) && (!str2.equals(sharedPreferencesJournal.getString("token", "")) || !str.equals(owner(context)))) {
            throw new IOException("Another Steam installation needs recovery");
        }
        GameContentProfile gameContentProfileRequire = GameContentProfile.require(str);
        if (!file.isDirectory()) {
            throw new IOException("Steam download payload directory is missing; retry the download");
        }
        if (Storage.usesSharedContent(context)) {
            file2 = Storage.sharedRoot();
            String strInstallFolder = GameFolder.installFolder(gameContentProfileRequire);
            if (strInstallFolder != null) {
                file2 = new File(file2, strInstallFolder);
            }
        } else {
            file2 = new File(Storage.root(context), "content");
        }
        Storage.mkdir(file2);
        GameMedia.protectExistingContent(file2);
        sharedPreferencesJournal.edit().putString("token", str2).putString("profile", str).apply();
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file3 : fileArrListFiles) {
                if (file3.isDirectory()) {
                    GameMedia.hide(file3);
                    File file4 = new File(file2, file3.getName());
                    if (file4.exists()) {
                        GameMedia.hide(file4);
                        mergeDirectories(file3, file4);
                    } else {
                        Files.move(file3.toPath(), file4.toPath(), StandardCopyOption.ATOMIC_MOVE);
                    }
                }
            }
        }
        Storage.atomicText(new File(file2, ".sourceandroid-complete"), "SourceAndroid Steam install\n");
        sharedPreferencesJournal.edit().clear().apply();
    }

    private static void mergeDirectories(File file, File file2) throws IOException {
        Storage.mkdir(file2);
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file3 : fileArrListFiles) {
            File file4 = new File(file2, file3.getName());
            if (file3.isDirectory()) {
                mergeDirectories(file3, file4);
            } else {
                Files.move(file3.toPath(), file4.toPath(), StandardCopyOption.REPLACE_EXISTING);
            }
        }
    }

    public static void abandon(Context context, File file) throws Exception {
        SharedPreferences sharedPreferencesJournal = journal(context);
        if (pending(context)) {
            if (file.exists()) {
                Storage.delete(file);
            }
            sharedPreferencesJournal.edit().clear().apply();
        }
    }
}
