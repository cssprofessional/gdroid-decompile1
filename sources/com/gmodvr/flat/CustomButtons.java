package com.gmodvr.flat;

import android.content.Context;
import com.gmodvr.flat.CustomButtonKeys;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.zip.CRC32;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class CustomButtons {
    static final String BUTTON_PREFIX = "custom_";
    static final String CFG = "cfg/gmod_touch_custom.cfg";
    static final String COLOR = "255 255 255 155";
    static final int INITIAL_SLOTS = 13;
    static final String MATERIAL_DIR = "materials/gmodvr_touch_custom";
    static final int MAX_LABEL = 4;
    static final int[] ROW_COLUMNS = {5, 4, 4};
    static final String TEXTURE_PREFIX = "gmodvr_touch_custom/";

    public interface IconSource {
        byte[] rgba(Entry entry);
    }

    public enum Shape {
        CIRCLE("circle", "Circle"),
        SQUARE("square", "Rounded"),
        SHARP("sharp", "Square");

        final String id;
        final String title;

        Shape(String str, String str2) {
            this.id = str;
            this.title = str2;
        }

        public static Shape of(String str) {
            for (Shape shape : values()) {
                if (shape.id.equals(str)) {
                    return shape;
                }
            }
            return CIRCLE;
        }
    }

    public enum Mode {
        HOLD("hold", "Hold"),
        TOGGLE("toggle", "Toggle");

        final String id;
        final String title;

        Mode(String str, String str2) {
            this.id = str;
            this.title = str2;
        }

        public static Mode of(String str) {
            return "toggle".equals(str) ? TOGGLE : HOLD;
        }
    }

    public static final class Entry {
        final int id;
        final String key;
        final String label;
        final Mode mode;
        final Shape shape;
        final int slot;
        final String with;

        public Entry(int i, int i2, String str, String str2, Shape shape, Mode mode) {
            this(i, i2, str, null, str2, shape, mode);
        }

        public Entry(int i, int i2, String str, String str2, String str3, Shape shape, Mode mode) {
            this.id = i;
            this.slot = i2;
            this.key = str;
            this.with = str2;
            this.label = str3;
            this.shape = shape;
            this.mode = mode;
        }

        public String buttonName() {
            return CustomButtons.BUTTON_PREFIX + this.id;
        }

        public String keySpec() {
            if (this.with == null) {
                return this.key;
            }
            return this.with + "+" + this.key;
        }

        public boolean hasWheel() {
            return CustomButtons.isWheel(this.key) || CustomButtons.isWheel(this.with);
        }

        public String command() {
            if (this.mode == Mode.TOGGLE && !hasWheel()) {
                return "gmod_touch_key_toggle " + keySpec() + " " + buttonName();
            }
            return "+gmod_touch_key " + keySpec();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isWheel(String str) {
        CustomButtonKeys.Key key = CustomButtonKeys.get(str);
        return key != null && key.isWheel();
    }

    private CustomButtons() {
    }

    public static File file(Context context) {
        return new File(context.getFilesDir(), "custom_buttons.json");
    }

    public static String normalizeLabel(String str, String str2) {
        return normalizeLabel(str, str2, null);
    }

    public static String defaultLabel(String str, String str2) {
        CustomButtonKeys.Key key = CustomButtonKeys.get(str);
        if (key == null) {
            return "?";
        }
        CustomButtonKeys.Key key2 = CustomButtonKeys.get(str2);
        if (key2 == null) {
            return key.label;
        }
        String str3 = key2.label + "+" + key.label;
        return str3.codePointCount(0, str3.length()) <= 4 ? str3 : key.label;
    }

    public static String normalizeLabel(String str, String str2, String str3) {
        String strTrim = str == null ? "" : str.trim();
        if (strTrim.isEmpty()) {
            return defaultLabel(str2, str3);
        }
        if (strTrim.codePointCount(0, strTrim.length()) > 4) {
            return null;
        }
        for (int i = 0; i < strTrim.length(); i++) {
            if (Character.isISOControl(strTrim.charAt(i))) {
                return null;
            }
        }
        return strTrim;
    }

    public static Entry validate(Entry entry) {
        if (entry.id <= 0) {
            throw new IllegalArgumentException("Bad custom button id " + entry.id);
        }
        if (CustomButtonKeys.get(entry.key) == null) {
            throw new IllegalArgumentException("Unknown key " + entry.key);
        }
        String str = entry.with;
        String str2 = (str == null || str.isEmpty()) ? null : entry.with;
        if (str2 != null && CustomButtonKeys.get(str2) == null) {
            throw new IllegalArgumentException("Unknown key " + str2);
        }
        if (entry.key.equals(str2)) {
            throw new IllegalArgumentException("Pick two different keys.");
        }
        if (entry.slot < 0) {
            throw new IllegalArgumentException("Bad slot " + entry.slot);
        }
        String strNormalizeLabel = normalizeLabel(entry.label, entry.key, str2);
        if (strNormalizeLabel == null) {
            throw new IllegalArgumentException("Use a label of 1 to 4 characters.");
        }
        int i = entry.id;
        int i2 = entry.slot;
        String str3 = entry.key;
        Shape shape = entry.shape;
        if (shape == null) {
            shape = Shape.CIRCLE;
        }
        Shape shape2 = shape;
        Mode mode = entry.mode;
        if (mode == null) {
            mode = Mode.HOLD;
        }
        return new Entry(i, i2, str3, str2, strNormalizeLabel, shape2, mode);
    }

    public static String toJson(List<Entry> list) {
        try {
            JSONArray jSONArray = new JSONArray();
            for (Entry entry : list) {
                JSONObject jSONObjectPut = new JSONObject().put("id", entry.id).put("slot", entry.slot).put("key", entry.key);
                String str = entry.with;
                if (str != null) {
                    jSONObjectPut.put("with", str);
                }
                jSONArray.put(jSONObjectPut.put(AnnotatedPrivateKey.LABEL, entry.label).put("shape", entry.shape.id).put("mode", entry.mode.id));
            }
            return new JSONObject().put("version", 1).put("buttons", jSONArray).toString(2) + "\n";
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    public static List<Entry> fromJson(String str) throws IOException {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArrayOptJSONArray = new JSONObject(str).optJSONArray("buttons");
            if (jSONArrayOptJSONArray == null) {
                return arrayList;
            }
            HashSet hashSet = new HashSet();
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    try {
                        Entry entryValidate = validate(new Entry(jSONObjectOptJSONObject.optInt("id"), jSONObjectOptJSONObject.optInt("slot", -1), jSONObjectOptJSONObject.optString("key"), jSONObjectOptJSONObject.optString("with", null), jSONObjectOptJSONObject.optString(AnnotatedPrivateKey.LABEL), Shape.of(jSONObjectOptJSONObject.optString("shape")), Mode.of(jSONObjectOptJSONObject.optString("mode"))));
                        if (hashSet.add(Integer.valueOf(entryValidate.id))) {
                            arrayList.add(entryValidate);
                        }
                    } catch (IllegalArgumentException unused) {
                    }
                }
            }
            return arrayList;
        } catch (JSONException e) {
            throw new IOException("Custom buttons file is damaged: " + e.getMessage(), e);
        }
    }

    public static List<Entry> load(File file) throws IOException {
        return !file.isFile() ? new ArrayList() : fromJson(new String(Files.readAllBytes(file.toPath()), StandardCharsets.UTF_8));
    }

    public static void save(File file, List<Entry> list) throws IOException {
        Storage.atomicText(file, toJson(list));
    }

    public static int nextId(List<Entry> list) {
        Iterator<Entry> it = list.iterator();
        int iMax = 0;
        while (it.hasNext()) {
            iMax = Math.max(iMax, it.next().id);
        }
        return iMax + 1;
    }

    public static int nextSlot(List<Entry> list) {
        HashSet hashSet = new HashSet();
        Iterator<Entry> it = list.iterator();
        while (it.hasNext()) {
            hashSet.add(Integer.valueOf(it.next().slot));
        }
        int i = 0;
        while (hashSet.contains(Integer.valueOf(i))) {
            i++;
        }
        return i;
    }

    public static int lastSlot(List<Entry> list) {
        Iterator<Entry> it = list.iterator();
        int iMax = 0;
        while (it.hasNext()) {
            iMax = Math.max(iMax, it.next().slot);
        }
        return iMax;
    }

    public static float[] slotRect(int i, int i2) {
        int i3;
        if (i >= 13) {
            float fMin = Math.min(0.26f / Math.max(4, (int) Math.ceil(Math.sqrt(((((double) (Math.max(i, i2) - 12)) * ((double) 0.26f)) * ((double) 2.2222223f)) / ((double) 0.35f)))), 0.35f / ((((r9 - 13) / r1) + 1) * 2.2222223f));
            float fMax = Math.max(0.04f, Math.min(0.055f, 0.84615386f * fMin));
            int i4 = i - 13;
            float fMin2 = Math.min(0.26f - fMax, (i4 % r1) * fMin) + 0.42f;
            float fMin3 = Math.min(0.35f - (fMax * 2.2222223f), (i4 / r1) * fMin * 2.2222223f) + 0.468f;
            return new float[]{fMin2, fMin3, fMin2 + fMax, ((fMax * 16.0f) / 9.0f) + fMin3};
        }
        int iMax = Math.max(0, i);
        int i5 = 0;
        while (true) {
            int[] iArr = ROW_COLUMNS;
            if (i5 >= iArr.length - 1 || iMax < (i3 = iArr[i5])) {
                break;
            }
            i5++;
            iMax -= i3;
        }
        float f = (iMax * 0.065f) + 0.42f;
        float f2 = (i5 * 0.15f) + 0.018f;
        return new float[]{f, f2, 0.055f + f, 0.098f + f2};
    }

    public static String textureName(Entry entry, byte[] bArr) {
        CRC32 crc32 = new CRC32();
        crc32.update(bArr);
        return "gmodvr_touch_custom/c" + entry.id + "_" + String.format(Locale.ROOT, "%08x", Long.valueOf(crc32.getValue()));
    }

    public static String cfg(List<Entry> list, List<String> list2) {
        StringBuilder sb = new StringBuilder();
        sb.append("// Generated by the GDroid launcher (Custom buttons) before every launch; edits are lost.\n");
        sb.append("// custom_* buttons the touch editor saved in touch.cfg keep their place and color.\n");
        sb.append("touch_custom_begin\n");
        int iLastSlot = lastSlot(list);
        for (int i = 0; i < list.size(); i++) {
            Entry entry = list.get(i);
            float[] fArrSlotRect = slotRect(entry.slot, iLastSlot);
            sb.append(String.format(Locale.ROOT, "touch_custom_button \"%s\" \"%s\" \"%s\" %.3f %.3f %.3f %.3f %s 0 1\n", entry.buttonName(), list2.get(i), entry.command(), Float.valueOf(fArrSlotRect[0]), Float.valueOf(fArrSlotRect[1]), Float.valueOf(fArrSlotRect[2]), Float.valueOf(fArrSlotRect[3]), COLOR));
        }
        sb.append("touch_custom_end\n");
        return sb.toString();
    }

    public static void install(Context context, File file) throws IOException {
        List<Entry> listEmptyList;
        try {
            listEmptyList = load(file(context));
        } catch (IOException unused) {
            listEmptyList = Collections.emptyList();
        }
        install(file, listEmptyList, listEmptyList.isEmpty() ? null : new CustomButtonIcons(context));
    }

    public static void install(File file, List<Entry> list, IconSource iconSource) throws IOException {
        File file2 = new File(file, CFG);
        File file3 = new File(file, MATERIAL_DIR);
        if (list.isEmpty()) {
            if (file2.exists()) {
                Storage.delete(file2);
            }
            if (file3.exists()) {
                Storage.delete(file3);
                return;
            }
            return;
        }
        Storage.mkdir(file3);
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        for (Entry entry : list) {
            byte[] bArrRgba8888 = VtfWriter.rgba8888(256, 256, iconSource.rgba(entry));
            String strTextureName = textureName(entry, bArrRgba8888);
            String strSubstring = strTextureName.substring(20);
            File file4 = new File(file3, strSubstring + ".vtf");
            if (!file4.isFile() || file4.length() != bArrRgba8888.length) {
                File file5 = new File(file3, strSubstring + ".vtf.tmp");
                Files.write(file5.toPath(), bArrRgba8888, new OpenOption[0]);
                if (!file5.renameTo(file4)) {
                    throw new IOException("Could not write " + file4);
                }
            }
            Storage.atomicText(new File(file3, strSubstring + ".vmt"), VtfWriter.touchVmt(strTextureName));
            hashSet.add(strSubstring + ".vtf");
            hashSet.add(strSubstring + ".vmt");
            arrayList.add(strTextureName);
        }
        File[] fileArrListFiles = file3.listFiles();
        if (fileArrListFiles != null) {
            for (File file6 : fileArrListFiles) {
                if (!hashSet.contains(file6.getName())) {
                    Storage.delete(file6);
                }
            }
        }
        Storage.mkdir(file2.getParentFile());
        Storage.atomicText(file2, cfg(list, arrayList));
    }
}
