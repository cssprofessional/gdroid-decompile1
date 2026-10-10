package com.gmodvr.flat;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class CustomButtonKeys {
    private static final Map<String, Key> KEYS = new LinkedHashMap();

    public static final class Key {
        final String group;
        final String label;
        final String name;
        final String title;

        public Key(String str, String str2, String str3, String str4) {
            this.name = str;
            this.label = str2;
            this.group = str3;
            this.title = str4;
        }

        public boolean isWheel() {
            return this.name.startsWith("MOUSE_WHEEL_");
        }

        public String toString() {
            return this.title + " · " + this.name;
        }
    }

    static {
        for (char c = 'A'; c <= 'Z'; c = (char) (c + 1)) {
            add("KEY_" + c, String.valueOf(c), "Letters", String.valueOf(c));
        }
        for (char c2 = '0'; c2 <= '9'; c2 = (char) (c2 + 1)) {
            add("KEY_" + c2, String.valueOf(c2), "Numbers", String.valueOf(c2));
        }
        for (int i = 1; i <= 12; i++) {
            add("KEY_F" + i, "F" + i, "Function keys", "F" + i);
        }
        add("KEY_SPACE", "SPC", "Common keys", "Space");
        add("KEY_ENTER", "ENT", "Common keys", "Enter");
        add("KEY_TAB", "TAB", "Common keys", "Tab");
        add("KEY_BACKSPACE", "BKSP", "Common keys", "Backspace");
        add("KEY_ESCAPE", "ESC", "Common keys", "Escape");
        add("KEY_LSHIFT", "SHFT", "Common keys", "Shift");
        add("KEY_LCONTROL", "CTRL", "Common keys", "Ctrl");
        add("KEY_LALT", "ALT", "Common keys", "Alt");
        add("KEY_RSHIFT", "RSHF", "Common keys", "Right Shift");
        add("KEY_RCONTROL", "RCTL", "Common keys", "Right Ctrl");
        add("KEY_RALT", "RALT", "Common keys", "Right Alt");
        add("KEY_CAPSLOCK", "CAPS", "Common keys", "Caps Lock");
        add("KEY_INSERT", "INS", "Common keys", "Insert");
        add("KEY_DELETE", "DEL", "Common keys", "Delete");
        add("KEY_HOME", "HOME", "Common keys", "Home");
        add("KEY_END", "END", "Common keys", "End");
        add("KEY_PAGEUP", "PGUP", "Common keys", "Page Up");
        add("KEY_PAGEDOWN", "PGDN", "Common keys", "Page Down");
        add("KEY_UP", "↑", "Arrows", "Up");
        add("KEY_DOWN", "↓", "Arrows", "Down");
        add("KEY_LEFT", "←", "Arrows", "Left");
        add("KEY_RIGHT", "→", "Arrows", "Right");
        for (int i2 = 0; i2 <= 9; i2++) {
            add("KEY_PAD_" + i2, "N" + i2, "Numpad", "Numpad " + i2);
        }
        add("KEY_PAD_DIVIDE", "N/", "Numpad", "Numpad /");
        add("KEY_PAD_MULTIPLY", "N*", "Numpad", "Numpad *");
        add("KEY_PAD_MINUS", "N-", "Numpad", "Numpad -");
        add("KEY_PAD_PLUS", "N+", "Numpad", "Numpad +");
        add("KEY_PAD_ENTER", "NENT", "Numpad", "Numpad Enter");
        add("KEY_PAD_DECIMAL", "N.", "Numpad", "Numpad .");
        add("KEY_LBRACKET", "[", "Symbols", "[");
        add("KEY_RBRACKET", "]", "Symbols", "]");
        add("KEY_SEMICOLON", ";", "Symbols", ";");
        add("KEY_APOSTROPHE", "'", "Symbols", "'");
        add("KEY_BACKQUOTE", "`", "Symbols", "`");
        add("KEY_COMMA", ",", "Symbols", ",");
        add("KEY_PERIOD", ".", "Symbols", ".");
        add("KEY_SLASH", "/", "Symbols", "/");
        add("KEY_BACKSLASH", "\\", "Symbols", "\\");
        add("KEY_MINUS", "-", "Symbols", "-");
        add("KEY_EQUAL", "=", "Symbols", "=");
        add("MOUSE_MIDDLE", "M3", "Mouse", "Mouse 3 (middle)");
        add("MOUSE_4", "M4", "Mouse", "Mouse 4");
        add("MOUSE_5", "M5", "Mouse", "Mouse 5");
        add("MOUSE_WHEEL_UP", "MW↑", "Mouse", "Wheel up");
        add("MOUSE_WHEEL_DOWN", "MW↓", "Mouse", "Wheel down");
        add("MOUSE_LEFT", "M1", "Mouse", "Mouse 1 (left)");
        add("MOUSE_RIGHT", "M2", "Mouse", "Mouse 2 (right)");
    }

    private static void add(String str, String str2, String str3, String str4) {
        KEYS.put(str, new Key(str, str2, str3, str4));
    }

    private CustomButtonKeys() {
    }

    public static Key get(String str) {
        if (str == null) {
            return null;
        }
        return KEYS.get(str);
    }

    public static List<Key> all() {
        return Collections.unmodifiableList(new ArrayList(KEYS.values()));
    }

    public static int indexOf(String str) {
        Iterator<String> it = KEYS.keySet().iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().equals(str)) {
                return i;
            }
            i++;
        }
        return -1;
    }
}
