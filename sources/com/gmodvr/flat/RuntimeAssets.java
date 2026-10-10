package com.gmodvr.flat;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.CopyOption;
import java.nio.file.Files;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes.dex */
final class RuntimeAssets {
    private static final String PORTAL2_GAMEINFO = "\"GameInfo\"\n{\n game \"PORTAL 2\"\n title \"PORTAL 2\"\n gamelogo 0\n SupportsDX8 0\n SupportsXbox360 0\n FileSystem\n {\n  SteamAppId 620\n  ToolsAppId 211\n  SearchPaths\n  {\n   Mod+Mod_Write+Default_Write_Path |gameinfo_path|.\n   Game update\n   Game portal2_dlc2/pak01.vpk\n   Game portal2_dlc2\n   Game portal2_dlc1/pak01.vpk\n   Game portal2_dlc1\n   Game portal2/pak01.vpk\n   Game portal2\n   Game+Platform portal2_platform\n   Game+Platform platform\n  }\n }\n}\n";

    public static File runtime(Context context) {
        return new File(context.getFilesDir(), "runtime");
    }

    public static String assetText(Context context, String str) throws IOException {
        InputStream inputStreamOpen = context.getAssets().open(str);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                Storage.copy(inputStreamOpen, byteArrayOutputStream, 1048576L);
                String string = byteArrayOutputStream.toString(StandardCharsets.UTF_8.name());
                byteArrayOutputStream.close();
                if (inputStreamOpen != null) {
                    inputStreamOpen.close();
                }
                return string;
            } finally {
            }
        } catch (Throwable th) {
            if (inputStreamOpen != null) {
                try {
                    inputStreamOpen.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static void prepare(Context context, GameContentProfile gameContentProfile) throws IOException {
        prepare(context, gameContentProfile, null);
    }

    public static void prepare(Context context, GameContentProfile gameContentProfile, GameMod gameMod) throws IOException {
        Storage.recoverContent(context);
        File fileRuntime = runtime(context);
        Storage.recover(fileRuntime);
        try {
            InputStream inputStreamOpen = context.getAssets().open("runtime.sha256");
            if (inputStreamOpen != null) {
                try {
                    inputStreamOpen.close();
                } catch (IOException unused) {
                }
            }
            String strTrim = assetText(context, "runtime.sha256").trim();
            File file = new File(fileRuntime, ".identity");
            if (!file.isFile() || !new String(Files.readAllBytes(file.toPath()), StandardCharsets.UTF_8).equals(strTrim)) {
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                    InputStream inputStreamOpen2 = context.getAssets().open("runtime.zip");
                    try {
                        byte[] bArr = new byte[262144];
                        while (true) {
                            int i = inputStreamOpen2.read(bArr);
                            if (i == -1) {
                                break;
                            } else {
                                messageDigest.update(bArr, 0, i);
                            }
                        }
                        inputStreamOpen2.close();
                        StringBuilder sb = new StringBuilder();
                        for (byte b : messageDigest.digest()) {
                            sb.append(String.format(Locale.ROOT, "%02x", Integer.valueOf(b & 255)));
                        }
                        if (!sb.toString().equals(strTrim)) {
                            throw new IOException("Runtime package checksum failed. Reinstall the APK.");
                        }
                        File file2 = new File(context.getFilesDir(), "runtime.pending");
                        if (file2.exists()) {
                            Storage.delete(file2);
                        }
                        Storage.mkdir(file2);
                        ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(context.getAssets().open("runtime.zip")));
                        long jCopy = 1073741824;
                        while (true) {
                            try {
                                ZipEntry nextEntry = zipInputStream.getNextEntry();
                                if (nextEntry == null) {
                                    break;
                                }
                                File fileChild = Storage.child(file2, nextEntry.getName());
                                if (nextEntry.isDirectory()) {
                                    Storage.mkdir(fileChild);
                                } else {
                                    Storage.mkdir(fileChild.getParentFile());
                                    FileOutputStream fileOutputStream = new FileOutputStream(fileChild);
                                    try {
                                        jCopy -= Storage.copy(zipInputStream, fileOutputStream, jCopy);
                                        fileOutputStream.close();
                                    } catch (Throwable th) {
                                        try {
                                            fileOutputStream.close();
                                        } catch (Throwable th2) {
                                            th.addSuppressed(th2);
                                        }
                                        throw th;
                                    }
                                }
                                zipInputStream.closeEntry();
                            } finally {
                                try {
                                    zipInputStream.close();
                                } catch (Throwable th3) {
                                    th.addSuppressed(th3);
                                }
                            }
                        }
                        zipInputStream.close();
                        Storage.atomicText(new File(file2, ".identity"), strTrim);
                        Storage.publish(file2, fileRuntime);
                    } finally {
                    }
                } catch (NoSuchAlgorithmException e) {
                    throw new IOException(e);
                }
            }
        } catch (IOException unused2) {
        }
        File fileUser = gameMod == null ? Storage.user(context, gameContentProfile) : gameMod.userDirectory(Storage.root(context), gameContentProfile);
        Storage.mkdir(fileUser);
        Storage.recoverUser(fileUser);
        Storage.mkdir(new File(fileUser, "cfg"));
        Storage.mkdir(new File(fileUser, "save"));
        if (gameMod != null) {
            Storage.atomicText(new File(fileUser, "gameinfo.txt"), gameMod.runtimeGameInfo(Storage.content(context, gameContentProfile), fileUser, gameContentProfile));
        } else if (!"portal2".equals(gameContentProfile.id)) {
            if ("garrysmod".equals(gameContentProfile.id)) {
                File file3 = new File(Storage.content(context, gameContentProfile), "garrysmod/gameinfo.txt");
                if (!file3.isFile()) {
                    throw new IOException("Missing garrysmod/gameinfo.txt in the game folder.");
                }
                Storage.atomicText(new File(fileUser, "gameinfo.txt"), new String(Files.readAllBytes(file3.toPath()), StandardCharsets.UTF_8));
            }
        } else {
            Storage.atomicText(new File(fileUser, "gameinfo.txt"), PORTAL2_GAMEINFO);
        }
        File file4 = new File(fileUser, "cfg/config.cfg");
        File file5 = new File(fileRuntime, "cfg/android_first_run.cfg");
        if (!file4.exists() && file5.exists()) {
            Files.copy(file5.toPath(), file4.toPath(), new CopyOption[0]);
        }
        migrateAudioDefaults(file4, new File(fileUser, "cfg/.gmodvr_audio_defaults_v2"));
        SharedPreferences sharedPreferences = context.getSharedPreferences("settings", 0);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("// Generated from the GDroid launcher settings.\nfps_max ");
        sb2.append(sharedPreferences.getInt("fps", 60));
        sb2.append("\ntouch_enable ");
        sb2.append(sharedPreferences.getBoolean("touch", true) ? 1 : 0);
        sb2.append("\ntouch_opacity ");
        sb2.append(Math.max(0, Math.min(100, sharedPreferences.getInt("touch_opacity", 100))) / 100.0f);
        sb2.append("\ntouch_sensitivity ");
        sb2.append(sharedPreferences.getInt("sensitivity", 30) / 10.0f);
        sb2.append("\ntouch_pitch ");
        sb2.append(sharedPreferences.getBoolean("invert", false) ? -90 : 90);
        sb2.append("\nmat_queue_mode 0\nvr_mainmenu 0\nmat_antialias 0\nmat_vsync 1\n");
        Storage.atomicText(new File(fileUser, "cfg/android_settings.cfg"), sb2.toString());
        if ("garrysmod".equals(gameContentProfile.id)) {
            Storage.atomicText(new File(fileUser, "cfg/android_player_name.cfg"), PlayerName.config(sharedPreferences.getString("gmod_player_name", null)));
            try {
                CustomButtons.install(context, fileUser);
            } catch (IOException | RuntimeException e2) {
                Log.w("GDroid", "Custom buttons not installed", e2);
            }
        }
    }

    public static void prepare(Context context) throws IOException {
        prepare(context, GameContentProfile.DEFAULT);
    }

    public static void migrateAudioDefaults(File file, File file2) {
        if (file2.exists()) {
            return;
        }
        try {
            if (file.isFile()) {
                String str = new String(Files.readAllBytes(file.toPath()), StandardCharsets.UTF_8);
                String strMigrateAudioDefaults = migrateAudioDefaults(str);
                if (!strMigrateAudioDefaults.equals(str)) {
                    Storage.atomicText(file, strMigrateAudioDefaults);
                }
            }
            Storage.atomicText(file2, "1\n");
        } catch (IOException | RuntimeException e) {
            Log.w("GDroid", "Audio defaults not migrated", e);
        }
    }

    public static String migrateAudioDefaults(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        int i = 0;
        while (i < str.length()) {
            int iIndexOf = str.indexOf(10, i);
            int length = iIndexOf < 0 ? str.length() : iIndexOf + 1;
            sb.append(migrateAudioLine(str.substring(i, iIndexOf < 0 ? str.length() : iIndexOf)));
            if (iIndexOf >= 0) {
                sb.append('\n');
            }
            i = length;
        }
        return sb.toString();
    }

    private static String migrateAudioLine(String str) {
        double d;
        String strSubstring = str.endsWith("\r") ? str.substring(0, str.length() - 1) : str;
        String str2 = strSubstring.length() == str.length() ? "" : "\r";
        String[] strArrSplit = strSubstring.trim().split("\\s+");
        if (strArrSplit.length != 2) {
            return str;
        }
        String str3 = strArrSplit[0];
        String strReplace = strArrSplit[1].replace("\"", "");
        if (str3.equalsIgnoreCase("volume")) {
            d = 0.8d;
        } else {
            if (!str3.equalsIgnoreCase("snd_musicvolume")) {
                return str;
            }
            d = 0.6d;
        }
        try {
            if (Math.abs(Double.parseDouble(strReplace) - d) > 1.0E-6d) {
                return str;
            }
            return str3 + " \"1\"" + str2;
        } catch (NumberFormatException unused) {
            return str;
        }
    }
}
