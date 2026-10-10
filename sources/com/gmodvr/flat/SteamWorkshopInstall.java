package com.gmodvr.flat;

import com.gmodvr.flat.SteamDownloads;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.AtomicMoveNotSupportedException;
import java.nio.file.CopyOption;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.i18n.MessageBundle;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class SteamWorkshopInstall {
    private static final String MARKER = ".sourceandroid-workshop.json";

    public static void install(File file, SteamDownloads.WorkshopItem workshopItem) throws Exception {
        String unsignedString = Long.toUnsignedString(workshopItem.id);
        SteamFiles.mkdir(file);
        File fileInside = SteamFiles.inside(file, "workshop_" + unsignedString);
        File fileInside2 = SteamFiles.inside(file, ".steam-workshop-backup-" + unsignedString);
        if (Files.exists(new File(file, ".sourceandroid-disabled-workshop_" + unsignedString).toPath(), LinkOption.NOFOLLOW_LINKS)) {
            throw new IOException("Enable or remove the legacy disabled Workshop folder before updating it");
        }
        if (fileInside2.exists()) {
            requireOwned(fileInside2, unsignedString);
            if (fileInside.exists()) {
                requireOwned(fileInside, unsignedString);
                SteamFiles.deleteTree(fileInside2);
            } else {
                SteamFiles.move(fileInside2, fileInside);
            }
        }
        if (fileInside.exists()) {
            requireOwned(fileInside, unsignedString);
        }
        if (new File(fileInside, CustomContentName.DISABLED_MARKER).exists()) {
            Files.write(new File(workshopItem.folder, CustomContentName.DISABLED_MARKER).toPath(), new byte[0], new OpenOption[0]);
        }
        JSONObject jSONObjectPut = new JSONObject().put("id", unsignedString).put(MessageBundle.TITLE_ENTRY, workshopItem.title);
        JSONObject jSONObject = workshopItem.metadata;
        if (jSONObject != null) {
            jSONObjectPut.put("time", jSONObject.optLong("time", 0L));
            if (workshopItem.metadata.optJSONArray("collections") != null) {
                jSONObjectPut.put("collections", workshopItem.metadata.optJSONArray("collections"));
            }
        }
        FileOutputStream fileOutputStream = new FileOutputStream(new File(workshopItem.folder, MARKER));
        try {
            fileOutputStream.write(jSONObjectPut.toString().getBytes(StandardCharsets.UTF_8));
            fileOutputStream.getFD().sync();
            fileOutputStream.close();
            File fileInside3 = SteamFiles.inside(file, ".steam-workshop-incoming-" + unsignedString);
            SteamFiles.deleteTree(fileInside3);
            try {
                SteamFiles.move(workshopItem.folder, fileInside3);
            } catch (AtomicMoveNotSupportedException unused) {
                copyTree(workshopItem.folder, fileInside3);
            }
            if (fileInside.exists()) {
                SteamFiles.move(fileInside, fileInside2);
            }
            try {
                SteamFiles.move(fileInside3, fileInside);
                SteamFiles.deleteTree(fileInside2);
            } catch (Exception e) {
                if (!fileInside.exists() && fileInside2.exists()) {
                    SteamFiles.move(fileInside2, fileInside);
                }
                throw e;
            }
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static Map<Long, long[]> installed(File file) {
        HashMap map = new HashMap();
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return map;
        }
        for (File file2 : fileArrListFiles) {
            String name = file2.getName();
            if (name.startsWith(CustomContentName.DISABLED_PREFIX)) {
                name = name.substring(24);
            }
            if (name.matches("workshop_[0-9]{1,20}")) {
                File file3 = new File(file2, MARKER);
                try {
                    if (file3.isFile() && !Files.isSymbolicLink(file3.toPath()) && file3.length() <= 65536) {
                        JSONObject jSONObject = new JSONObject(new String(Files.readAllBytes(file3.toPath()), StandardCharsets.UTF_8));
                        long unsignedLong = Long.parseUnsignedLong(name.substring(9));
                        if (Long.toUnsignedString(unsignedLong).equals(jSONObject.optString("id"))) {
                            map.put(Long.valueOf(unsignedLong), new long[]{jSONObject.optLong("time", 0L), 0});
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }
        return map;
    }

    private static void copyTree(File file, File file2) throws IOException {
        if (Files.isSymbolicLink(file.toPath())) {
            throw new IOException("Symbolic links are not allowed in Workshop content");
        }
        if (!file.isDirectory()) {
            Files.copy(file.toPath(), file2.toPath(), new CopyOption[0]);
            return;
        }
        SteamFiles.mkdir(file2);
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            throw new IOException("Cannot read prepared Workshop content");
        }
        for (File file3 : fileArrListFiles) {
            copyTree(file3, new File(file2, file3.getName()));
        }
    }

    private static void requireOwned(File file, String str) throws Exception {
        File file2 = new File(file, MARKER);
        if (!file2.isFile() || Files.isSymbolicLink(file2.toPath()) || file2.length() > 65536) {
            throw new IOException("Workshop destination contains unmanaged files; rename it before installing");
        }
        if (!str.equals(new JSONObject(new String(Files.readAllBytes(file2.toPath()), StandardCharsets.UTF_8)).optString("id"))) {
            throw new IOException("Workshop destination belongs to another item");
        }
    }
}
