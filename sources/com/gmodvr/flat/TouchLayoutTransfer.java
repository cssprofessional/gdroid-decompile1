package com.gmodvr.flat;

import com.gmodvr.flat.CustomButtons;
import com.gmodvr.flat.TouchLayout;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.List;
import java.util.Set;
import java.util.function.Predicate;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class TouchLayoutTransfer {
    private static final String FORMAT = "gmodvr-control-layout";
    static final int MAX_BYTES = 262144;
    private static final Set<String> NUMERIC_SETTINGS = TouchLayoutTransfer$$ExternalSyntheticBackport0.m(new String[]{"touch_enable", "touch_draw", "touch_opacity", "touch_filter", "touch_forwardzone", "touch_sidezone", "touch_pitch", "touch_yaw", "touch_grid_count", "touch_grid_enable", "touch_precise_amount", "touch_button_info"});

    public static final class Imported {
        final List<CustomButtons.Entry> custom;
        final TouchLayout layout;

        public Imported(TouchLayout touchLayout, List<CustomButtons.Entry> list) {
            this.layout = touchLayout;
            this.custom = list;
        }
    }

    private TouchLayoutTransfer() {
    }

    public static String export(TouchLayout touchLayout, List<CustomButtons.Entry> list) throws IOException {
        try {
            String str = new JSONObject().put("format", FORMAT).put("version", 1).put("layout", importConfig(touchLayout.cfg("touch.cfg"), touchLayout.screenAspect).cfg("touch.cfg")).put("customButtons", new JSONObject(CustomButtons.toJson(list))).toString(2) + "\n";
            if (str.getBytes(StandardCharsets.UTF_8).length <= MAX_BYTES) {
                return str;
            }
            throw new IOException("The control layout is too large to export.");
        } catch (JSONException e) {
            throw new IOException("Could not export the control layout.", e);
        }
    }

    public static Imported read(InputStream inputStream, float f) throws IOException {
        if (inputStream == null) {
            throw new IOException("Could not open the selected layout.");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Storage.copy(inputStream, byteArrayOutputStream, 262144L);
        CharsetDecoder charsetDecoderNewDecoder = StandardCharsets.UTF_8.newDecoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;
        String string = charsetDecoderNewDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).decode(ByteBuffer.wrap(byteArrayOutputStream.toByteArray())).toString();
        if (string.startsWith("\ufeff")) {
            string = string.substring(1);
        }
        if (!string.trim().startsWith("{")) {
            return new Imported(importConfig(string, f), null);
        }
        try {
            JSONObject jSONObject = new JSONObject(string);
            if (!FORMAT.equals(jSONObject.getString("format")) || jSONObject.getDouble("version") != 1.0d) {
                throw new IOException("This file is not a supported control layout export.");
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("customButtons");
            if (jSONObject2.getDouble("version") != 1.0d) {
                throw new IOException("This file uses an unsupported custom button format.");
            }
            JSONArray jSONArray = jSONObject2.getJSONArray("buttons");
            List<CustomButtons.Entry> listFromJson = CustomButtons.fromJson(jSONObject2.toString());
            if (listFromJson.size() != jSONArray.length()) {
                throw new IOException("The file contains invalid or duplicate custom buttons.");
            }
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                CustomButtons.Entry entry = listFromJson.get(i);
                double d = jSONObject3.getDouble("id");
                int i2 = entry.id;
                if (d != i2 || i2 == Integer.MAX_VALUE || jSONObject3.getDouble("slot") != entry.slot) {
                    throw new IOException("The file contains invalid custom button identifiers or slots.");
                }
                if (!entry.shape.id.equals(jSONObject3.getString("shape")) || !entry.mode.id.equals(jSONObject3.getString("mode"))) {
                    throw new IOException("The file contains an unsupported custom button shape or mode.");
                }
            }
            TouchLayout touchLayoutImportConfig = importConfig(jSONObject.getString("layout"), f);
            for (final TouchLayout.Button button : touchLayoutImportConfig.buttons) {
                if (button.name.startsWith("custom_") && listFromJson.stream().noneMatch(new Predicate() { // from class: com.gmodvr.flat.TouchLayoutTransfer$$ExternalSyntheticLambda1
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return TouchLayoutTransfer.lambda$read$0(button, (CustomButtons.Entry) obj);
                    }
                })) {
                    throw new IOException("The file is missing a definition for " + button.name + ".");
                }
            }
            return new Imported(touchLayoutImportConfig, listFromJson);
        } catch (JSONException e) {
            throw new IOException("The selected control layout file is damaged or incomplete.", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$read$0(TouchLayout.Button button, CustomButtons.Entry entry) {
        return entry.buttonName().equals(button.name);
    }

    private static TouchLayout importConfig(String str, float f) throws IOException {
        String string;
        StringBuilder sb = new StringBuilder("touch_removeall\n");
        for (String str2 : str.split("\\R")) {
            List<String> list = TouchLayout.tokens(str2);
            if (!list.isEmpty()) {
                String str3 = list.get(0);
                if (str3.equals("touch_config_file")) {
                    require(list.size() == 2);
                } else if (str3.equals("touch_removeall")) {
                    require(list.size() == 1);
                } else if (str3.equals("touch_addbutton")) {
                    require(list.size() == 8 || list.size() == 12 || list.size() == 13 || list.size() == 14);
                    sb.append(str3);
                    int i = 1;
                    while (i < list.size()) {
                        String str4 = list.get(i);
                        for (int i2 = 0; i2 < str4.length(); i2++) {
                            require(!Character.isISOControl(str4.charAt(i2)));
                        }
                        if (i <= 3) {
                            require(str4.getBytes(StandardCharsets.UTF_8).length <= (i == 1 ? 31 : 255));
                        }
                        sb.append(" \"");
                        sb.append(str4.replace("\"", "\\\""));
                        sb.append('\"');
                        i++;
                    }
                    sb.append('\n');
                } else if (NUMERIC_SETTINGS.contains(str3)) {
                    require(list.size() == 2);
                    try {
                        float f2 = Float.parseFloat(list.get(1));
                        require(Float.isFinite(f2));
                        if (str3.equals("touch_grid_count") || str3.equals("touch_grid_enable")) {
                            int i3 = Integer.parseInt(list.get(1));
                            if (str3.equals("touch_grid_count")) {
                                if (i3 < 2 || i3 > 1000) {
                                    z = false;
                                }
                                require(z);
                            }
                            string = Integer.toString(i3);
                        } else {
                            string = Float.toString(f2);
                        }
                        sb.append(str3);
                        sb.append(' ');
                        sb.append(string);
                        sb.append('\n');
                    } catch (NumberFormatException e) {
                        throw new IOException("Invalid control setting: " + str3, e);
                    }
                } else if (str3.equals("touch_setgridcolor")) {
                    require(list.size() == 5);
                    sb.append(str3);
                    for (int i4 = 1; i4 < 5; i4++) {
                        try {
                            int i5 = Integer.parseInt(list.get(i4));
                            require(i5 >= 0 && i5 <= 255);
                            sb.append(' ');
                            sb.append(i5);
                        } catch (NumberFormatException e2) {
                            throw new IOException("Invalid control grid colour.", e2);
                        }
                    }
                    sb.append('\n');
                } else {
                    throw new IOException("This file contains commands outside a control layout: " + str3);
                }
            }
        }
        return TouchLayout.parse(sb.toString(), f);
    }

    private static void require(boolean z) throws IOException {
        if (!z) {
            throw new IOException("The selected control layout contains invalid settings.");
        }
    }

    public static void save(File file, String str, String str2, File file2, String str3, List<CustomButtons.Entry> list) throws IOException {
        if (!text(file).equals(str)) {
            throw new IOException("The layout changed while this editor was open. Reopen it to load the latest controls.");
        }
        if (list == null) {
            Storage.atomicText(file, str2);
            return;
        }
        if (!text(file2).equals(str3)) {
            throw new IOException("Your custom buttons changed while this editor was open. Reopen it before importing.");
        }
        boolean zIsFile = file2.isFile();
        CustomButtons.save(file2, list);
        try {
            Storage.atomicText(file, str2);
        } catch (IOException e) {
            try {
                if (zIsFile) {
                    Storage.atomicText(file2, str3);
                } else {
                    Files.deleteIfExists(file2.toPath());
                }
            } catch (IOException e2) {
                e.addSuppressed(e2);
            }
            throw e;
        }
    }

    private static String text(File file) throws IOException {
        return file.isFile() ? new String(Files.readAllBytes(file.toPath()), StandardCharsets.UTF_8) : "";
    }
}
