package com.gmodvr.flat;

import com.gmodvr.flat.CustomButtons;
import com.gmodvr.flat.TouchLayout;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
final class TouchLayout {
    static final int COLORIZE = 4096;
    static final int HIDE = 1;
    private static final int RUNTIME_FLAGS = 3076;
    final float screenAspect;
    boolean snap;
    final List<Button> buttons = new ArrayList();
    private final List<Line> lines = new ArrayList();
    int gridCount = 50;

    public static final class Button {
        float aspect;
        String command;
        int flags;
        final String name;
        String texture;
        float x1;
        float x2;
        float y1;
        float y2;
        int r = 255;
        int g = 255;
        int b = 255;
        int a = 255;

        public Button(String str, String str2, String str3) {
            this.name = str;
            this.texture = str2;
            this.command = str3;
        }

        public boolean zone() {
            return this.texture.isEmpty();
        }

        public boolean hidden() {
            return (this.flags & 1) != 0;
        }

        public float width() {
            return this.x2 - this.x1;
        }

        public float height() {
            return this.y2 - this.y1;
        }

        public int color() {
            return this.b | (this.r << 16) | (-16777216) | (this.g << 8);
        }

        public void color(int i) {
            this.r = (i >>> 16) & 255;
            this.g = (i >>> 8) & 255;
            this.b = i & 255;
            this.flags |= 4096;
        }

        public String label() {
            String str = this.name;
            str.hashCode();
            switch (str) {
                case "attack":
                    return "Fire";
                case "attack2":
                    return "Secondary fire";
                case "spawnmenu":
                    return "Spawn menu";
                case "contextmenu":
                    return "Context menu";
                case "lastinv":
                    return "Last weapon";
                case "duck":
                    return "Crouch";
                case "edit":
                    return "Layout editor";
                case "look":
                    return "Look zone";
                case "move":
                    return "Move zone";
                case "score":
                    return "Scoreboard";
                case "speed":
                    return "Sprint";
                case "voice":
                    return "Voice chat";
                case "thirdperson":
                    return "Third person";
                case "invnext":
                    return "Next weapon";
                case "invprev":
                    return "Previous weapon";
                default:
                    if (this.name.startsWith("custom_")) {
                        return "Custom button " + this.name.substring(7);
                    }
                    return Character.toUpperCase(this.name.charAt(0)) + this.name.substring(1);
            }
        }

        public String cfg() {
            return String.format(Locale.ROOT, "touch_addbutton %s %s %s %.6f %.6f %.6f %.6f %d %d %d %d %d %.6f", TouchLayout.quote(this.name), TouchLayout.quote(this.texture), TouchLayout.quote(this.command), Float.valueOf(this.x1), Float.valueOf(this.y1), Float.valueOf(this.x2), Float.valueOf(this.y2), Integer.valueOf(this.r), Integer.valueOf(this.g), Integer.valueOf(this.b), Integer.valueOf(this.a), Integer.valueOf(this.flags & (-3077)), Float.valueOf(this.aspect));
        }
    }

    public static final class Line {
        final Button button;
        final String text;

        public Line(String str, Button button) {
            this.text = str;
            this.button = button;
        }
    }

    private TouchLayout(float f) {
        this.screenAspect = f;
    }

    public static TouchLayout parse(String str, float f) throws IOException {
        int i;
        int i2;
        boolean z;
        Button button;
        if (Float.isFinite(f)) {
            boolean z2 = false;
            if (f > 0.0f) {
                TouchLayout touchLayout = new TouchLayout(f);
                String[] strArrSplit = str.split("\\R");
                int length = strArrSplit.length;
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    i = 2;
                    i2 = 1;
                    if (i4 >= length) {
                        break;
                    }
                    List<String> list = tokens(strArrSplit[i4]);
                    if (list.size() >= 2) {
                        if (list.get(0).equals("touch_grid_count")) {
                            touchLayout.gridCount = Math.max(2, integer(list.get(1)));
                        }
                        if (list.get(0).equals("touch_grid_enable")) {
                            touchLayout.snap = integer(list.get(1)) != 0;
                        }
                    }
                    i4++;
                }
                String[] strArrSplit2 = str.split("\\R");
                int length2 = strArrSplit2.length;
                int i5 = 0;
                while (i5 < length2) {
                    String str2 = strArrSplit2[i5];
                    List<String> list2 = tokens(str2);
                    if (list2.isEmpty() || !list2.get(i3).equals("touch_addbutton")) {
                        z = z2;
                        button = null;
                    } else {
                        if (list2.size() < 8 || list2.get(i2).isEmpty()) {
                            throw new IOException("Invalid touch button in the saved layout.");
                        }
                        Button button2 = new Button(list2.get(i2), list2.get(i), list2.get(3));
                        float fNumber = number(list2.get(4));
                        float fNumber2 = number(list2.get(5));
                        float fNumber3 = number(list2.get(6));
                        float fNumber4 = number(list2.get(7));
                        if (fNumber3 <= fNumber || fNumber4 <= fNumber2) {
                            throw new IOException("Invalid bounds for " + button2.name + ".");
                        }
                        if (list2.size() >= 12) {
                            button2.r = channel(list2.get(8));
                            button2.g = channel(list2.get(9));
                            button2.b = channel(list2.get(10));
                            button2.a = channel(list2.get(11));
                        }
                        if (list2.size() >= 13) {
                            button2.flags = integer(list2.get(12)) & (-3077);
                        }
                        float fNumber5 = list2.size() >= 14 ? number(list2.get(13)) : 1.0f;
                        z = false;
                        if (fNumber5 <= 0.0f) {
                            throw new IOException("Invalid aspect for " + button2.name + ".");
                        }
                        if (!button2.zone()) {
                            fNumber4 = fNumber2 + ((fNumber3 - fNumber) * f * fNumber5);
                        }
                        touchLayout.rect(button2, fNumber, fNumber2, fNumber3 - fNumber, fNumber4 - fNumber2);
                        if (touchLayout.find(button2.name) != null) {
                            throw new IOException("Duplicate touch button " + button2.name + ".");
                        }
                        touchLayout.buttons.add(button2);
                        button = button2;
                    }
                    touchLayout.lines.add(new Line(str2, button));
                    i5++;
                    z2 = z;
                    i3 = 0;
                    i = 2;
                    i2 = 1;
                }
                if (touchLayout.buttons.isEmpty()) {
                    throw new IOException("The saved layout has no touch controls.");
                }
                return touchLayout;
            }
        }
        throw new IOException("Invalid preview dimensions.");
    }

    public Button find(String str) {
        for (Button button : this.buttons) {
            if (button.name.equals(str)) {
                return button;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0069 A[PHI: r7 r8 r9 r10
      0x0069: PHI (r7v2 float) = (r7v1 float), (r7v11 float) binds: [B:3:0x0028, B:8:0x0064] A[DONT_GENERATE, DONT_INLINE]
      0x0069: PHI (r8v2 float) = (r8v1 float), (r8v10 float) binds: [B:3:0x0028, B:8:0x0064] A[DONT_GENERATE, DONT_INLINE]
      0x0069: PHI (r9v3 float) = (r9v2 float), (r9v7 float) binds: [B:3:0x0028, B:8:0x0064] A[DONT_GENERATE, DONT_INLINE]
      0x0069: PHI (r10v3 float) = (r10v2 float), (r10v9 float) binds: [B:3:0x0028, B:8:0x0064] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void rect(com.gmodvr.flat.TouchLayout.Button r6, float r7, float r8, float r9, float r10) {
        /*
            r5 = this;
            int r0 = r5.gridCount
            float r0 = (float) r0
            r1 = 1073741824(0x40000000, float:2.0)
            float r1 = r1 / r0
            float r0 = r5.screenAspect
            float r0 = r0 * r1
            r2 = 1065353216(0x3f800000, float:1.0)
            float r0 = java.lang.Math.min(r2, r0)
            float r9 = clamp(r9, r1, r2)
            float r10 = clamp(r10, r0, r2)
            float r0 = r2 - r9
            r1 = 0
            float r7 = clamp(r7, r1, r0)
            float r0 = r2 - r10
            float r8 = clamp(r8, r1, r0)
            float r9 = r9 + r7
            float r10 = r10 + r8
            boolean r0 = r5.snap
            if (r0 == 0) goto L69
            int r0 = r5.gridCount
            float r0 = (float) r0
            float r7 = r7 * r0
            int r7 = java.lang.Math.round(r7)
            float r7 = (float) r7
            int r0 = r5.gridCount
            float r3 = (float) r0
            float r7 = r7 / r3
            float r0 = (float) r0
            float r9 = r9 * r0
            int r9 = java.lang.Math.round(r9)
            float r9 = (float) r9
            int r0 = r5.gridCount
            float r3 = (float) r0
            float r9 = r9 / r3
            float r0 = (float) r0
            float r3 = r5.screenAspect
            float r0 = r0 / r3
            float r8 = r8 * r0
            int r8 = java.lang.Math.round(r8)
            float r8 = (float) r8
            float r8 = r8 / r0
            float r10 = r10 * r0
            int r10 = java.lang.Math.round(r10)
            float r10 = (float) r10
            float r10 = r10 / r0
            int r3 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r3 <= 0) goto L62
            double r3 = (double) r0
            double r3 = java.lang.Math.floor(r3)
            float r3 = (float) r3
            float r3 = r3 / r0
            float r10 = r10 - r3
            float r8 = r8 - r10
            r10 = r3
        L62:
            int r0 = (r9 > r2 ? 1 : (r9 == r2 ? 0 : -1))
            if (r0 <= 0) goto L69
            float r9 = r9 - r2
            float r7 = r7 - r9
            goto L6a
        L69:
            r2 = r9
        L6a:
            float r7 = java.lang.Math.max(r1, r7)
            r6.x1 = r7
            float r7 = java.lang.Math.max(r1, r8)
            r6.y1 = r7
            r6.x2 = r2
            r6.y2 = r10
            float r7 = r6.height()
            float r8 = r6.width()
            float r5 = r5.screenAspect
            float r8 = r8 * r5
            float r7 = r7 / r8
            r6.aspect = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gmodvr.flat.TouchLayout.rect(com.gmodvr.flat.TouchLayout$Button, float, float, float, float):void");
    }

    public void mergeCustom(List<CustomButtons.Entry> list, Map<String, String> map) {
        final HashSet hashSet = new HashSet();
        int iLastSlot = CustomButtons.lastSlot(list);
        for (CustomButtons.Entry entry : list) {
            String strButtonName = entry.buttonName();
            hashSet.add(strButtonName);
            Button buttonFind = find(strButtonName);
            if (buttonFind == null) {
                buttonFind = new Button(strButtonName, map.get(strButtonName), entry.command());
                buttonFind.a = 155;
                float[] fArrSlotRect = CustomButtons.slotRect(entry.slot, iLastSlot);
                float f = fArrSlotRect[0];
                float f2 = fArrSlotRect[1];
                float f3 = fArrSlotRect[2];
                rect(buttonFind, f, f2, f3 - f, (f3 - f) * this.screenAspect);
                this.buttons.add(buttonFind);
                this.lines.add(new Line("", buttonFind));
            }
            buttonFind.command = entry.command();
            buttonFind.texture = map.get(strButtonName);
        }
        this.buttons.removeIf(new Predicate() { // from class: com.gmodvr.flat.TouchLayout$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return TouchLayout.lambda$mergeCustom$0(hashSet, (TouchLayout.Button) obj);
            }
        });
        this.lines.removeIf(new Predicate() { // from class: com.gmodvr.flat.TouchLayout$$ExternalSyntheticLambda1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f$0.lambda$mergeCustom$1((TouchLayout.Line) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$mergeCustom$0(Set set, Button button) {
        return button.name.startsWith("custom_") && !set.contains(button.name);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$mergeCustom$1(Line line) {
        Button button = line.button;
        return (button == null || this.buttons.contains(button)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$reset$2(Line line) {
        return line.button != null;
    }

    public void reset(TouchLayout touchLayout, List<CustomButtons.Entry> list, Map<String, String> map) {
        this.lines.removeIf(new Predicate() { // from class: com.gmodvr.flat.TouchLayout$$ExternalSyntheticLambda2
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return TouchLayout.lambda$reset$2((TouchLayout.Line) obj);
            }
        });
        this.buttons.clear();
        for (Button button : touchLayout.buttons) {
            rect(button, button.x1, button.y1, button.width(), button.height());
            this.buttons.add(button);
            this.lines.add(new Line("", button));
        }
        mergeCustom(list, map);
    }

    public String cfg(String str) {
        StringBuilder sb = new StringBuilder("// Saved by the launcher control layout editor.\n");
        sb.append("touch_config_file ");
        sb.append(quote(str));
        sb.append('\n');
        sb.append("touch_grid_count ");
        sb.append(this.gridCount);
        sb.append('\n');
        sb.append("touch_grid_enable ");
        sb.append(this.snap ? 1 : 0);
        sb.append('\n');
        for (Line line : this.lines) {
            List<String> list = tokens(line.text);
            if (list.isEmpty() || (!list.get(0).equals("touch_config_file") && !list.get(0).equals("touch_grid_count") && !list.get(0).equals("touch_grid_enable"))) {
                Button button = line.button;
                sb.append(button != null ? button.cfg() : line.text);
                sb.append('\n');
            }
        }
        return sb.toString();
    }

    public static String profileFile(String str) {
        String str2 = "touch.cfg";
        for (String str3 : str.split("\\R")) {
            List<String> list = tokens(str3);
            if (list.size() >= 2 && list.get(0).equals("touch_config_file")) {
                str2 = list.get(1);
            }
        }
        return (!str2.matches("[A-Za-z0-9_.-]+\\.cfg") || str2.contains("..")) ? "touch.cfg" : str2;
    }

    public static List<String> tokens(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < str.length()) {
            while (i < str.length() && Character.isWhitespace(str.charAt(i))) {
                i++;
            }
            if (i == str.length() || str.startsWith("//", i)) {
                break;
            }
            StringBuilder sb = new StringBuilder();
            boolean z = str.charAt(i) == '\"';
            if (z) {
                i++;
            }
            while (i < str.length()) {
                int i2 = i + 1;
                char cCharAt = str.charAt(i);
                if ((z && cCharAt == '\"') || (!z && (Character.isWhitespace(cCharAt) || cCharAt == ';'))) {
                    i = i2;
                    break;
                }
                if (z && cCharAt == '\\' && i2 < str.length() && str.charAt(i2) == '\"') {
                    i += 2;
                    cCharAt = str.charAt(i2);
                } else {
                    i = i2;
                }
                sb.append(cCharAt);
            }
            arrayList.add(sb.toString());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String quote(String str) {
        return "\"" + str.replace("\"", "\\\"") + "\"";
    }

    private static float clamp(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f3, f));
    }

    private static float number(String str) throws IOException {
        try {
            float f = Float.parseFloat(str);
            if (Float.isFinite(f)) {
                return f;
            }
        } catch (NumberFormatException unused) {
        }
        throw new IOException("Invalid number in the saved layout.");
    }

    private static int integer(String str) throws IOException {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            throw new IOException("Invalid number in the saved layout.", e);
        }
    }

    private static int channel(String str) throws IOException {
        return Math.max(0, Math.min(255, integer(str)));
    }
}
