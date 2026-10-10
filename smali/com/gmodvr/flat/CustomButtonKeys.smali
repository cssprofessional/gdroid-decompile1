###### Class com.gmodvr.flat.CustomButtonKeys (com.gmodvr.flat.CustomButtonKeys)
.class final Lcom/gmodvr/flat/CustomButtonKeys;
.super Ljava/lang/Object;
.source "CustomButtonKeys.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/CustomButtonKeys$Key;
    }
.end annotation


# static fields
.field private static final KEYS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gmodvr/flat/CustomButtonKeys$Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/gmodvr/flat/CustomButtonKeys;->KEYS:Ljava/util/Map;

    const/16 v0, 0x41

    :goto_9
    const/16 v1, 0x5a

    .line 32
    const-string v2, "KEY_"

    if-gt v0, v1, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Letters"

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_9

    :cond_2f
    const/16 v0, 0x30

    :goto_31
    const/16 v1, 0x39

    if-gt v0, v1, :cond_55

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Numbers"

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_31

    :cond_55
    const/4 v0, 0x1

    :goto_56
    const/16 v1, 0xc

    if-gt v0, v1, :cond_93

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_F"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Function keys"

    invoke-static {v1, v2, v4, v3}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 36
    :cond_93
    const-string v0, "SPC"

    const-string v1, "Space"

    const-string v2, "KEY_SPACE"

    const-string v3, "Common keys"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "ENT"

    const-string v1, "Enter"

    const-string v2, "KEY_ENTER"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "TAB"

    const-string v1, "Tab"

    const-string v2, "KEY_TAB"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "BKSP"

    const-string v1, "Backspace"

    const-string v2, "KEY_BACKSPACE"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "ESC"

    const-string v1, "Escape"

    const-string v2, "KEY_ESCAPE"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "SHFT"

    const-string v1, "Shift"

    const-string v2, "KEY_LSHIFT"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "CTRL"

    const-string v1, "Ctrl"

    const-string v2, "KEY_LCONTROL"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "ALT"

    const-string v1, "Alt"

    const-string v2, "KEY_LALT"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "RSHF"

    const-string v1, "Right Shift"

    const-string v2, "KEY_RSHIFT"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "RCTL"

    const-string v1, "Right Ctrl"

    const-string v2, "KEY_RCONTROL"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "RALT"

    const-string v1, "Right Alt"

    const-string v2, "KEY_RALT"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "CAPS"

    const-string v1, "Caps Lock"

    const-string v2, "KEY_CAPSLOCK"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "INS"

    const-string v1, "Insert"

    const-string v2, "KEY_INSERT"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "DEL"

    const-string v1, "Delete"

    const-string v2, "KEY_DELETE"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "HOME"

    const-string v1, "Home"

    const-string v2, "KEY_HOME"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "END"

    const-string v1, "End"

    const-string v2, "KEY_END"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "PGUP"

    const-string v1, "Page Up"

    const-string v2, "KEY_PAGEUP"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "PGDN"

    const-string v1, "Page Down"

    const-string v2, "KEY_PAGEDOWN"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "\u2191"

    const-string v1, "Up"

    const-string v2, "KEY_UP"

    const-string v3, "Arrows"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "\u2193"

    const-string v1, "Down"

    const-string v2, "KEY_DOWN"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "\u2190"

    const-string v1, "Left"

    const-string v2, "KEY_LEFT"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "\u2192"

    const-string v1, "Right"

    const-string v2, "KEY_RIGHT"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_15e
    const/16 v1, 0x9

    .line 60
    const-string v2, "Numpad"

    if-gt v0, v1, :cond_19d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_PAD_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "N"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Numpad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v2, v4}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15e

    .line 61
    :cond_19d
    const-string v0, "N/"

    const-string v1, "Numpad /"

    const-string v3, "KEY_PAD_DIVIDE"

    invoke-static {v3, v0, v2, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "N*"

    const-string v1, "Numpad *"

    const-string v3, "KEY_PAD_MULTIPLY"

    invoke-static {v3, v0, v2, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "N-"

    const-string v1, "Numpad -"

    const-string v3, "KEY_PAD_MINUS"

    invoke-static {v3, v0, v2, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "N+"

    const-string v1, "Numpad +"

    const-string v3, "KEY_PAD_PLUS"

    invoke-static {v3, v0, v2, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "NENT"

    const-string v1, "Numpad Enter"

    const-string v3, "KEY_PAD_ENTER"

    invoke-static {v3, v0, v2, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "N."

    const-string v1, "Numpad ."

    const-string v3, "KEY_PAD_DECIMAL"

    invoke-static {v3, v0, v2, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "KEY_LBRACKET"

    const-string v1, "["

    const-string v2, "Symbols"

    invoke-static {v0, v1, v2, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "KEY_RBRACKET"

    const-string v1, "]"

    invoke-static {v0, v1, v2, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "KEY_SEMICOLON"

    const-string v1, ";"

    invoke-static {v0, v1, v2, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "KEY_APOSTROPHE"

    const-string v1, "\'"

    invoke-static {v0, v1, v2, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "KEY_BACKQUOTE"

    const-string v1, "`"

    invoke-static {v0, v1, v2, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "KEY_COMMA"

    const-string v1, ","

    invoke-static {v0, v1, v2, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "KEY_PERIOD"

    const-string v1, "."

    invoke-static {v0, v1, v2, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "KEY_SLASH"

    const-string v1, "/"

    invoke-static {v0, v1, v2, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "KEY_BACKSLASH"

    const-string v1, "\\"

    invoke-static {v0, v1, v2, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "KEY_MINUS"

    const-string v1, "-"

    invoke-static {v0, v1, v2, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "KEY_EQUAL"

    const-string v1, "="

    invoke-static {v0, v1, v2, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "M3"

    const-string v1, "Mouse 3 (middle)"

    const-string v2, "MOUSE_MIDDLE"

    const-string v3, "Mouse"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "M4"

    const-string v1, "Mouse 4"

    const-string v2, "MOUSE_4"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "M5"

    const-string v1, "Mouse 5"

    const-string v2, "MOUSE_5"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "MW\u2191"

    const-string v1, "Wheel up"

    const-string v2, "MOUSE_WHEEL_UP"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "MW\u2193"

    const-string v1, "Wheel down"

    const-string v2, "MOUSE_WHEEL_DOWN"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "M1"

    const-string v1, "Mouse 1 (left)"

    const-string v2, "MOUSE_LEFT"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "M2"

    const-string v1, "Mouse 2 (right)"

    const-string v2, "MOUSE_RIGHT"

    invoke-static {v2, v0, v3, v1}, Lcom/gmodvr/flat/CustomButtonKeys;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 28
    sget-object v0, Lcom/gmodvr/flat/CustomButtonKeys;->KEYS:Ljava/util/Map;

    new-instance v1, Lcom/gmodvr/flat/CustomButtonKeys$Key;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/gmodvr/flat/CustomButtonKeys$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static all()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/CustomButtonKeys$Key;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/gmodvr/flat/CustomButtonKeys;->KEYS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lcom/gmodvr/flat/CustomButtonKeys$Key;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_c

    .line 91
    :cond_4
    sget-object v0, Lcom/gmodvr/flat/CustomButtonKeys;->KEYS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gmodvr/flat/CustomButtonKeys$Key;

    :goto_c
    return-object p0
.end method

.method public static indexOf(Ljava/lang/String;)I
    .registers 4

    .line 97
    sget-object v0, Lcom/gmodvr/flat/CustomButtonKeys;->KEYS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return v1

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_21
    const/4 p0, -0x1

    return p0
.end method

###### Class com.gmodvr.flat.CustomButtonKeys.Key (com.gmodvr.flat.CustomButtonKeys$Key)
.class final Lcom/gmodvr/flat/CustomButtonKeys$Key;
.super Ljava/lang/Object;
.source "CustomButtonKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/CustomButtonKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# instance fields
.field final group:Ljava/lang/String;

.field final label:Ljava/lang/String;

.field final name:Ljava/lang/String;

.field final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/gmodvr/flat/CustomButtonKeys$Key;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/gmodvr/flat/CustomButtonKeys$Key;->label:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmodvr/flat/CustomButtonKeys$Key;->group:Ljava/lang/String;

    iput-object p4, p0, Lcom/gmodvr/flat/CustomButtonKeys$Key;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isWheel()Z
    .registers 2

    .line 20
    iget-object p0, p0, Lcom/gmodvr/flat/CustomButtonKeys$Key;->name:Ljava/lang/String;

    const-string v0, "MOUSE_WHEEL_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gmodvr/flat/CustomButtonKeys$Key;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gmodvr/flat/CustomButtonKeys$Key;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
