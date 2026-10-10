package com.gmodvr.flat;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class GameMedia {
    private GameMedia() {
    }

    public static void hide(File file) throws IOException {
        Storage.mkdir(file);
        File file2 = new File(file, ".nomedia");
        if (file2.isFile() || file2.createNewFile() || file2.isFile()) {
            return;
        }
        throw new IOException("Cannot hide game media in " + file);
    }

    public static File protectExistingContent(File file) {
        if (!file.isDirectory()) {
            return file;
        }
        try {
            if (file.getCanonicalFile().getName().equals("srceng")) {
                hide(file);
                return file;
            }
        } catch (IOException | SecurityException unused) {
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory() && !Files.isSymbolicLink(file2.toPath())) {
                    String name = file2.getName();
                    if (GameFolder.destination(name) != null || Arrays.asList("cstrike", "hl1", "hl1mp", "hl2mp", "dod").contains(name)) {
                        try {
                            hide(file2);
                        } catch (IOException | SecurityException unused2) {
                        }
                    }
                }
            }
        }
        return file;
    }
}
