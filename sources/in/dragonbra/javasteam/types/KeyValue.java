package in.dragonbra.javasteam.types;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.function.Predicate;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringNumberConversionsJVMKt;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.UStringsKt;

/* JADX INFO: compiled from: KeyValue.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class KeyValue {
    private List<KeyValue> children;
    private String name;
    private String value;
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(KeyValue.class);
    public static final KeyValue INVALID = new KeyValue(0 == true ? 1 : 0, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);

    /* JADX WARN: Multi-variable type inference failed */
    public KeyValue() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public KeyValue(String str) {
        this(str, null, 2, 0 == true ? 1 : 0);
    }

    public static final KeyValue loadAsText(String str) {
        return Companion.loadAsText(str);
    }

    public static final KeyValue loadFromString(String str) {
        return Companion.loadFromString(str);
    }

    public static final KeyValue tryLoadAsBinary(String str) {
        return Companion.tryLoadAsBinary(str);
    }

    public final boolean asBoolean() {
        return asBoolean$default(this, false, 1, null);
    }

    public final byte asByte() {
        return asByte$default(this, (byte) 0, 1, null);
    }

    public final float asFloat() {
        return asFloat$default(this, 0.0f, 1, null);
    }

    public final int asInteger() {
        return asInteger$default(this, 0, 1, null);
    }

    public final long asLong() {
        return asLong$default(this, 0L, 1, null);
    }

    public final short asShort() {
        return asShort$default(this, (short) 0, 1, null);
    }

    /* JADX INFO: renamed from: asUnsignedByte-w2LRezQ, reason: not valid java name */
    public final byte m8072asUnsignedBytew2LRezQ() {
        return m8067asUnsignedByteUGUG2fk$default(this, (byte) 0, 1, null);
    }

    /* JADX INFO: renamed from: asUnsignedInteger-pVg5ArA, reason: not valid java name */
    public final int m8074asUnsignedIntegerpVg5ArA() {
        return m8068asUnsignedIntegerIKrLr70$default(this, 0, 1, null);
    }

    /* JADX INFO: renamed from: asUnsignedLong-s-VKNKU, reason: not valid java name */
    public final long m8076asUnsignedLongsVKNKU() {
        return m8069asUnsignedLongPUiSbYQ$default(this, 0L, 1, null);
    }

    /* JADX INFO: renamed from: asUnsignedShort-Mh2AYeg, reason: not valid java name */
    public final short m8077asUnsignedShortMh2AYeg() {
        return m8070asUnsignedShortSDdNylE$default(this, (short) 0, 1, null);
    }

    public KeyValue(String str, String str2) {
        this.name = str;
        this.value = str2;
        this.children = new ArrayList(4);
    }

    public /* synthetic */ KeyValue(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2);
    }

    public final String getName() {
        return this.name;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final String getValue() {
        return this.value;
    }

    public final void setValue(String str) {
        this.value = str;
    }

    public final List<KeyValue> getChildren() {
        return this.children;
    }

    public final void setChildren(List<KeyValue> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.children = list;
    }

    public final KeyValue get(String key) {
        Object next;
        Intrinsics.checkNotNullParameter(key, "key");
        Iterator<T> it = this.children.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            String str = ((KeyValue) next).name;
            if (str != null && StringsKt__StringsJVMKt.equals(str, key, true)) {
                break;
            }
        }
        KeyValue keyValue = (KeyValue) next;
        return keyValue == null ? INVALID : keyValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean set$lambda$0(String str, KeyValue c) {
        Intrinsics.checkNotNullParameter(c, "c");
        String str2 = c.name;
        return str2 != null && StringsKt__StringsJVMKt.equals(str2, str, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean set$lambda$1(Function1 function1, Object obj) {
        return ((Boolean) function1.invoke(obj)).booleanValue();
    }

    public final void set(final String key, KeyValue value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        List<KeyValue> list = this.children;
        final Function1 function1 = new Function1() { // from class: in.dragonbra.javasteam.types.KeyValue$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(KeyValue.set$lambda$0(key, (KeyValue) obj));
            }
        };
        list.removeIf(new Predicate() { // from class: in.dragonbra.javasteam.types.KeyValue$$ExternalSyntheticLambda1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return KeyValue.set$lambda$1(function1, obj);
            }
        });
        value.name = key;
        this.children.add(value);
    }

    public final String asString() {
        return this.value;
    }

    public static /* synthetic */ byte asByte$default(KeyValue keyValue, byte b, int i, Object obj) {
        if ((i & 1) != 0) {
            b = 0;
        }
        return keyValue.asByte(b);
    }

    public final byte asByte(byte b) {
        Byte byteOrNull;
        String str = this.value;
        return (str == null || (byteOrNull = StringsKt__StringNumberConversionsKt.toByteOrNull(str)) == null) ? b : byteOrNull.byteValue();
    }

    /* JADX INFO: renamed from: asUnsignedByte-UGUG2fk$default, reason: not valid java name */
    public static /* synthetic */ byte m8067asUnsignedByteUGUG2fk$default(KeyValue keyValue, byte b, int i, Object obj) {
        if ((i & 1) != 0) {
            b = 0;
        }
        return keyValue.m8071asUnsignedByteUGUG2fk(b);
    }

    /* JADX INFO: renamed from: asUnsignedByte-UGUG2fk, reason: not valid java name */
    public final byte m8071asUnsignedByteUGUG2fk(byte b) {
        UByte uByteOrNull;
        String str = this.value;
        return (str == null || (uByteOrNull = UStringsKt.toUByteOrNull(str)) == null) ? b : uByteOrNull.m8159unboximpl();
    }

    public static /* synthetic */ short asShort$default(KeyValue keyValue, short s, int i, Object obj) {
        if ((i & 1) != 0) {
            s = 0;
        }
        return keyValue.asShort(s);
    }

    public final short asShort(short s) {
        Short shortOrNull;
        String str = this.value;
        return (str == null || (shortOrNull = StringsKt__StringNumberConversionsKt.toShortOrNull(str)) == null) ? s : shortOrNull.shortValue();
    }

    /* JADX INFO: renamed from: asUnsignedShort-SDdNylE$default, reason: not valid java name */
    public static /* synthetic */ short m8070asUnsignedShortSDdNylE$default(KeyValue keyValue, short s, int i, Object obj) {
        if ((i & 1) != 0) {
            s = 0;
        }
        return keyValue.m8078asUnsignedShortSDdNylE(s);
    }

    /* JADX INFO: renamed from: asUnsignedShort-SDdNylE, reason: not valid java name */
    public final short m8078asUnsignedShortSDdNylE(short s) {
        UShort uShortOrNull;
        String str = this.value;
        return (str == null || (uShortOrNull = UStringsKt.toUShortOrNull(str)) == null) ? s : uShortOrNull.m8210unboximpl();
    }

    public static /* synthetic */ int asInteger$default(KeyValue keyValue, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return keyValue.asInteger(i);
    }

    public final int asInteger(int i) {
        Integer intOrNull;
        String str = this.value;
        return (str == null || (intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(str)) == null) ? i : intOrNull.intValue();
    }

    /* JADX INFO: renamed from: asUnsignedInteger-IKrLr70$default, reason: not valid java name */
    public static /* synthetic */ int m8068asUnsignedIntegerIKrLr70$default(KeyValue keyValue, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return keyValue.m8073asUnsignedIntegerIKrLr70(i);
    }

    /* JADX INFO: renamed from: asUnsignedInteger-IKrLr70, reason: not valid java name */
    public final int m8073asUnsignedIntegerIKrLr70(int i) {
        UInt uIntOrNull;
        String str = this.value;
        return (str == null || (uIntOrNull = UStringsKt.toUIntOrNull(str)) == null) ? i : uIntOrNull.m8176unboximpl();
    }

    public static /* synthetic */ long asLong$default(KeyValue keyValue, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 0;
        }
        return keyValue.asLong(j);
    }

    public final long asLong(long j) {
        Long longOrNull;
        String str = this.value;
        return (str == null || (longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(str)) == null) ? j : longOrNull.longValue();
    }

    /* JADX INFO: renamed from: asUnsignedLong-PUiSbYQ$default, reason: not valid java name */
    public static /* synthetic */ long m8069asUnsignedLongPUiSbYQ$default(KeyValue keyValue, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 0;
        }
        return keyValue.m8075asUnsignedLongPUiSbYQ(j);
    }

    /* JADX INFO: renamed from: asUnsignedLong-PUiSbYQ, reason: not valid java name */
    public final long m8075asUnsignedLongPUiSbYQ(long j) {
        ULong uLongOrNull;
        String str = this.value;
        return (str == null || (uLongOrNull = UStringsKt.toULongOrNull(str)) == null) ? j : uLongOrNull.m8193unboximpl();
    }

    public static /* synthetic */ float asFloat$default(KeyValue keyValue, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        return keyValue.asFloat(f);
    }

    public final float asFloat(float f) {
        Float floatOrNull;
        String str = this.value;
        return (str == null || (floatOrNull = StringsKt__StringNumberConversionsJVMKt.toFloatOrNull(str)) == null) ? f : floatOrNull.floatValue();
    }

    public static /* synthetic */ boolean asBoolean$default(KeyValue keyValue, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return keyValue.asBoolean(z);
    }

    public final boolean asBoolean(boolean z) {
        String lowerCase;
        try {
            String str = this.value;
            Intrinsics.checkNotNull(str);
            return Integer.parseInt(str) != 0;
        } catch (Exception unused) {
            String str2 = this.value;
            if (str2 != null) {
                lowerCase = str2.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            } else {
                lowerCase = null;
            }
            if (Intrinsics.areEqual(lowerCase, "true")) {
                z = true;
            } else if (Intrinsics.areEqual(lowerCase, "false")) {
                z = false;
            }
            return z;
        }
    }

    public final <T extends Enum<T>> EnumSet<T> asEnum(Class<T> enumClass, T defaultValue) {
        Intrinsics.checkNotNullParameter(enumClass, "enumClass");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        EnumSet<T> enumSetOf = EnumSet.of(defaultValue);
        Intrinsics.checkNotNullExpressionValue(enumSetOf, "of(...)");
        return asEnum(enumClass, enumSetOf);
    }

    public final <T extends Enum<T>> EnumSet<T> asEnum(Class<T> enumClass, EnumSet<T> defaultValue) {
        Intrinsics.checkNotNullParameter(enumClass, "enumClass");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        try {
            try {
                try {
                    String str = this.value;
                    if (str != null) {
                        Object objInvoke = enumClass.getMethod("from", enumClass.getDeclaredField("code").getType()).invoke(null, Integer.valueOf(Integer.parseInt(str)));
                        if (objInvoke instanceof EnumSet) {
                            Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type java.util.EnumSet<T of in.dragonbra.javasteam.types.KeyValue.asEnum>");
                            return (EnumSet) objInvoke;
                        }
                        EnumSet<T> enumSetOf = EnumSet.of(enumClass.cast(objInvoke));
                        Intrinsics.checkNotNullExpressionValue(enumSetOf, "of(...)");
                        return enumSetOf;
                    }
                } catch (IllegalArgumentException unused) {
                    Field[] declaredFields = enumClass.getDeclaredFields();
                    Intrinsics.checkNotNullExpressionValue(declaredFields, "getDeclaredFields(...)");
                    for (Field field : declaredFields) {
                        if (Modifier.isStatic(field.getModifiers()) && Intrinsics.areEqual(field.getName(), this.value) && EnumSet.class.isAssignableFrom(field.getType())) {
                            Object obj = field.get(null);
                            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.util.EnumSet<T of in.dragonbra.javasteam.types.KeyValue.asEnum>");
                            return (EnumSet) obj;
                        }
                        return defaultValue;
                    }
                    return defaultValue;
                }
            } catch (IllegalAccessException e) {
                e.printStackTrace();
                return defaultValue;
            }
        } catch (IllegalAccessException | NoSuchFieldException | NoSuchMethodException | InvocationTargetException unused2) {
        } catch (NumberFormatException unused3) {
            String str2 = this.value;
            if (str2 == null) {
                return defaultValue;
            }
            EnumSet<T> enumSetOf2 = EnumSet.of(Enum.valueOf(enumClass, str2));
            Intrinsics.checkNotNullExpressionValue(enumSetOf2, "of(...)");
            return enumSetOf2;
            return defaultValue;
        }
        return defaultValue;
    }

    public String toString() {
        return this.name + " = " + this.value;
    }

    public final boolean readAsText(InputStream input) throws IllegalAccessException, IOException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(input, "input");
        this.children.clear();
        KVTextReader kVTextReader = new KVTextReader(this, input);
        try {
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(kVTextReader, null);
            return true;
        } finally {
        }
    }

    public final boolean readFileAsText(String filename) throws IllegalAccessException, IOException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(filename, "filename");
        FileInputStream fileInputStream = new FileInputStream(filename);
        try {
            boolean asText = readAsText(fileInputStream);
            CloseableKt.closeFinally(fileInputStream, null);
            return asText;
        } finally {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b4, code lost:
    
        throw new java.lang.IllegalStateException("RecursiveLoadFromBuffer: got EOF or empty keyname");
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void recursiveLoadFromBuffer$javasteam(in.dragonbra.javasteam.types.KVTextReader r11) throws java.io.IOException {
        /*
            r10 = this;
            java.lang.String r0 = "kvr"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            in.dragonbra.javasteam.util.Passable r0 = new in.dragonbra.javasteam.util.Passable
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            r0.<init>(r1)
            in.dragonbra.javasteam.util.Passable r2 = new in.dragonbra.javasteam.util.Passable
            r2.<init>(r1)
        L11:
            java.lang.String r1 = r11.readToken(r0, r2)
            if (r1 == 0) goto Lad
            int r3 = r1.length()
            if (r3 == 0) goto Lad
            r3 = 125(0x7d, float:1.75E-43)
            r4 = 0
            r5 = 2
            r6 = 0
            boolean r7 = kotlin.text.StringsKt__StringsKt.startsWith$default(r1, r3, r4, r5, r6)
            if (r7 == 0) goto L35
            java.lang.Object r7 = r0.getValue()
            java.lang.Boolean r8 = java.lang.Boolean.FALSE
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r8)
            if (r7 == 0) goto L35
            return
        L35:
            in.dragonbra.javasteam.types.KeyValue r7 = new in.dragonbra.javasteam.types.KeyValue
            r7.<init>(r1, r6, r5, r6)
            java.util.List<in.dragonbra.javasteam.types.KeyValue> r1 = r7.children
            r1.clear()
            java.util.List<in.dragonbra.javasteam.types.KeyValue> r1 = r10.children
            r1.add(r7)
            java.lang.String r1 = r11.readToken(r0, r2)
            java.lang.Object r8 = r2.getValue()
            java.lang.Boolean r9 = java.lang.Boolean.TRUE
            boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r9)
            if (r8 == 0) goto L5a
            if (r1 == 0) goto L5a
            java.lang.String r1 = r11.readToken(r0, r2)
        L5a:
            if (r1 == 0) goto La5
            boolean r3 = kotlin.text.StringsKt__StringsKt.startsWith$default(r1, r3, r4, r5, r6)
            if (r3 == 0) goto L77
            java.lang.Object r3 = r0.getValue()
            java.lang.Boolean r8 = java.lang.Boolean.FALSE
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r8)
            if (r3 != 0) goto L6f
            goto L77
        L6f:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "RecursiveLoadFromBuffer: got } in key"
            r10.<init>(r11)
            throw r10
        L77:
            r3 = 123(0x7b, float:1.72E-43)
            boolean r3 = kotlin.text.StringsKt__StringsKt.startsWith$default(r1, r3, r4, r5, r6)
            if (r3 == 0) goto L8f
            java.lang.Object r3 = r0.getValue()
            java.lang.Boolean r4 = java.lang.Boolean.FALSE
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r4)
            if (r3 == 0) goto L8f
            r7.recursiveLoadFromBuffer$javasteam(r11)
            goto L11
        L8f:
            java.lang.Object r3 = r2.getValue()
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r9)
            if (r3 != 0) goto L9d
            r7.value = r1
            goto L11
        L9d:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "RecursiveLoadFromBuffer: got conditional between key and value"
            r10.<init>(r11)
            throw r10
        La5:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "RecursiveLoadFromBuffer: got NULL key"
            r10.<init>(r11)
            throw r10
        Lad:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "RecursiveLoadFromBuffer: got EOF or empty keyname"
            r10.<init>(r11)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: in.dragonbra.javasteam.types.KeyValue.recursiveLoadFromBuffer$javasteam(in.dragonbra.javasteam.types.KVTextReader):void");
    }

    public final void saveToFile(File file, boolean z) throws IllegalAccessException, IOException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(file, "file");
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file, false), Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE);
        try {
            saveToStream(bufferedOutputStream, z);
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(bufferedOutputStream, null);
        } finally {
        }
    }

    public final void saveToFile(String path, boolean z) throws IllegalAccessException, IOException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(path, "path");
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(path, false), Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE);
        try {
            saveToStream(bufferedOutputStream, z);
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(bufferedOutputStream, null);
        } finally {
        }
    }

    public final void saveToStream(OutputStream stream, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(stream, "stream");
        if (z) {
            recursiveSaveBinaryToStream(stream);
        } else {
            recursiveSaveTextToFile$default(this, stream, 0, 2, null);
        }
    }

    private final void recursiveSaveBinaryToStream(OutputStream outputStream) throws IOException {
        recursiveSaveBinaryToStreamCore(outputStream);
        outputStream.write(Companion.Type.END.getCode());
    }

    private final void recursiveSaveBinaryToStreamCore(OutputStream outputStream) throws IOException {
        byte[] bytes;
        if (this.value == null) {
            outputStream.write(Companion.Type.NONE.getCode());
            String nameForSerialization = getNameForSerialization();
            Charset UTF_8 = StandardCharsets.UTF_8;
            Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
            byte[] bytes2 = nameForSerialization.getBytes(UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes2, "getBytes(...)");
            outputStream.write(bytes2);
            outputStream.write(0);
            Iterator<T> it = this.children.iterator();
            while (it.hasNext()) {
                ((KeyValue) it.next()).recursiveSaveBinaryToStreamCore(outputStream);
            }
            outputStream.write(Companion.Type.END.getCode());
            return;
        }
        outputStream.write(Companion.Type.STRING.getCode());
        String nameForSerialization2 = getNameForSerialization();
        Charset UTF_82 = StandardCharsets.UTF_8;
        Intrinsics.checkNotNullExpressionValue(UTF_82, "UTF_8");
        byte[] bytes3 = nameForSerialization2.getBytes(UTF_82);
        Intrinsics.checkNotNullExpressionValue(bytes3, "getBytes(...)");
        outputStream.write(bytes3);
        outputStream.write(0);
        String str = this.value;
        if (str != null) {
            Intrinsics.checkNotNullExpressionValue(UTF_82, "UTF_8");
            bytes = str.getBytes(UTF_82);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        } else {
            bytes = null;
        }
        outputStream.write(bytes);
        outputStream.write(0);
    }

    public static /* synthetic */ void recursiveSaveTextToFile$default(KeyValue keyValue, OutputStream outputStream, int i, int i2, Object obj) throws IOException {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        keyValue.recursiveSaveTextToFile(outputStream, i);
    }

    private final void recursiveSaveTextToFile(OutputStream outputStream, int i) throws IOException {
        Companion companion = Companion;
        companion.writeIndents(outputStream, i);
        companion.writeString(outputStream, getNameForSerialization(), true);
        Companion.writeString$default(companion, outputStream, "\n", false, 4, null);
        companion.writeIndents(outputStream, i);
        Companion.writeString$default(companion, outputStream, "{\n", false, 4, null);
        for (KeyValue keyValue : this.children) {
            if (keyValue.value == null) {
                keyValue.recursiveSaveTextToFile(outputStream, i + 1);
            } else {
                Companion companion2 = Companion;
                companion2.writeIndents(outputStream, i + 1);
                companion2.writeString(outputStream, keyValue.getNameForSerialization(), true);
                Companion.writeString$default(companion2, outputStream, "\t\t", false, 4, null);
                String strAsString = keyValue.asString();
                Intrinsics.checkNotNull(strAsString);
                companion2.writeString(outputStream, companion2.escapeText(strAsString), true);
                Companion.writeString$default(companion2, outputStream, "\n", false, 4, null);
            }
        }
        Companion companion3 = Companion;
        companion3.writeIndents(outputStream, i);
        Companion.writeString$default(companion3, outputStream, "}\n", false, 4, null);
    }

    public final boolean tryReadAsBinary(InputStream input) throws IllegalAccessException, IOException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(input, "input");
        BinaryReader binaryReader = new BinaryReader(input);
        try {
            boolean zTryReadAsBinaryCore = Companion.tryReadAsBinaryCore(binaryReader, this, null);
            CloseableKt.closeFinally(binaryReader, null);
            return zTryReadAsBinaryCore;
        } finally {
        }
    }

    private final String getNameForSerialization() {
        String str = this.name;
        if (str != null) {
            return str;
        }
        throw new IllegalArgumentException("Cannot serialise a KeyValue object with a null name!");
    }

    /* JADX INFO: compiled from: KeyValue.kt */
    public static final class Companion {

        /* JADX INFO: compiled from: KeyValue.kt */
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Type.values().length];
                try {
                    iArr[Type.NONE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Type.STRING.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[Type.WIDESTRING.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[Type.INT32.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[Type.COLOR.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[Type.POINTER.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[Type.UINT64.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr[Type.FLOAT32.ordinal()] = 8;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr[Type.INT64.ordinal()] = 9;
                } catch (NoSuchFieldError unused9) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: KeyValue.kt */
        public static final class Type {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ Type[] $VALUES;
            public static final C0000Companion Companion;
            private static final Map<Byte, Type> codeMap;
            private final byte code;
            public static final Type NONE = new Type("NONE", 0, (byte) 0);
            public static final Type STRING = new Type("STRING", 1, (byte) 1);
            public static final Type INT32 = new Type("INT32", 2, (byte) 2);
            public static final Type FLOAT32 = new Type("FLOAT32", 3, (byte) 3);
            public static final Type POINTER = new Type("POINTER", 4, (byte) 4);
            public static final Type WIDESTRING = new Type("WIDESTRING", 5, (byte) 5);
            public static final Type COLOR = new Type("COLOR", 6, (byte) 6);
            public static final Type UINT64 = new Type("UINT64", 7, (byte) 7);
            public static final Type END = new Type("END", 8, (byte) 8);
            public static final Type INT64 = new Type("INT64", 9, (byte) 10);
            public static final Type ALTERNATEEND = new Type("ALTERNATEEND", 10, (byte) 11);

            private static final /* synthetic */ Type[] $values() {
                return new Type[]{NONE, STRING, INT32, FLOAT32, POINTER, WIDESTRING, COLOR, UINT64, END, INT64, ALTERNATEEND};
            }

            public static final Type from(byte b) {
                return Companion.from(b);
            }

            public static EnumEntries<Type> getEntries() {
                return $ENTRIES;
            }

            public static Type valueOf(String str) {
                return (Type) Enum.valueOf(Type.class, str);
            }

            public static Type[] values() {
                return (Type[]) $VALUES.clone();
            }

            private Type(String str, int i, byte b) {
                this.code = b;
            }

            public final byte getCode() {
                return this.code;
            }

            static {
                Type[] typeArr$values = $values();
                $VALUES = typeArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(typeArr$values);
                Companion = new C0000Companion(null);
                EnumEntries<Type> entries = getEntries();
                LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(entries, 10)), 16));
                for (Type type : entries) {
                    linkedHashMap.put(Byte.valueOf(type.code), type);
                }
                codeMap = linkedHashMap;
            }

            /* JADX INFO: renamed from: in.dragonbra.javasteam.types.KeyValue$Companion$Type$Companion, reason: collision with other inner class name */
            /* JADX INFO: compiled from: KeyValue.kt */
            public static final class C0000Companion {
                public /* synthetic */ C0000Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private C0000Companion() {
                }

                public final Type from(byte b) {
                    return (Type) Type.codeMap.get(Byte.valueOf(b));
                }
            }
        }

        public final KeyValue loadAsText(String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            return loadFromFile(path, false);
        }

        public final KeyValue tryLoadAsBinary(String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            return loadFromFile(path, true);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private final KeyValue loadFromFile(String str, boolean z) {
            File file = new File(str);
            String str2 = null;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            if (file.exists() && !file.isDirectory()) {
                try {
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE);
                    try {
                        KeyValue keyValue = new KeyValue(str2, objArr2 == true ? 1 : 0, 3, objArr == true ? 1 : 0);
                        if (z) {
                            if (!keyValue.tryReadAsBinary(bufferedInputStream)) {
                                CloseableKt.closeFinally(bufferedInputStream, null);
                                return null;
                            }
                        } else if (!keyValue.readAsText(bufferedInputStream)) {
                            CloseableKt.closeFinally(bufferedInputStream, null);
                            return null;
                        }
                        CloseableKt.closeFinally(bufferedInputStream, null);
                        return keyValue;
                    } finally {
                    }
                } catch (Exception e) {
                    KeyValue.logger.error(e.getMessage(), e);
                }
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final KeyValue loadFromString(String input) {
            Intrinsics.checkNotNullParameter(input, "input");
            Charset UTF_8 = StandardCharsets.UTF_8;
            Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
            byte[] bytes = input.getBytes(UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            String str = null;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
                try {
                    KeyValue keyValue = new KeyValue(str, objArr2 == true ? 1 : 0, 3, objArr == true ? 1 : 0);
                    if (keyValue.readAsText(byteArrayInputStream)) {
                        CloseableKt.closeFinally(byteArrayInputStream, null);
                        return keyValue;
                    }
                    CloseableKt.closeFinally(byteArrayInputStream, null);
                    return null;
                } finally {
                }
            } catch (Exception e) {
                KeyValue.logger.error(e.getMessage(), e);
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String escapeText(String str) {
            String strReplace$default = str;
            for (Map.Entry<Character, Character> entry : KVTextReader.ESCAPED_MAPPING.entrySet()) {
                strReplace$default = StringsKt__StringsJVMKt.replace$default(strReplace$default, String.valueOf(entry.getValue().charValue()), "\\" + entry.getKey(), false, 4, (Object) null);
            }
            return strReplace$default;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void writeIndents(OutputStream outputStream, int i) throws IOException {
            writeString$default(this, outputStream, StringsKt__StringsJVMKt.repeat("\t", i), false, 4, null);
        }

        public static /* synthetic */ void writeString$default(Companion companion, OutputStream outputStream, String str, boolean z, int i, Object obj) throws IOException {
            if ((i & 4) != 0) {
                z = false;
            }
            companion.writeString(outputStream, str, z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void writeString(OutputStream outputStream, String str, boolean z) throws IOException {
            String strReplace$default = StringsKt__StringsJVMKt.replace$default(str, "\"", "\\\"", false, 4, (Object) null);
            if (z) {
                strReplace$default = "\"" + strReplace$default + "\"";
            }
            byte[] bytes = strReplace$default.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            outputStream.write(bytes);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public final boolean tryReadAsBinaryCore(BinaryReader binaryReader, KeyValue keyValue, KeyValue keyValue2) {
            List<KeyValue> children;
            keyValue.getChildren().clear();
            while (true) {
                Type typeFrom = Type.Companion.from(binaryReader.readByte());
                if (typeFrom == Type.END || typeFrom == Type.ALTERNATEEND) {
                    return true;
                }
                Charset charset = StandardCharsets.UTF_8;
                keyValue.setName(binaryReader.readNullTermString(charset));
                int i = 3;
                String str = null;
                Object[] objArr = 0;
                Object[] objArr2 = 0;
                Object[] objArr3 = 0;
                Object[] objArr4 = 0;
                Object[] objArr5 = 0;
                switch (typeFrom == null ? -1 : WhenMappings.$EnumSwitchMapping$0[typeFrom.ordinal()]) {
                    case 1:
                        if (!tryReadAsBinaryCore(binaryReader, new KeyValue(objArr3 == true ? 1 : 0, objArr2 == true ? 1 : 0, i, objArr == true ? 1 : 0), keyValue)) {
                            return false;
                        }
                        break;
                    case 2:
                        keyValue.setValue(binaryReader.readNullTermString(charset));
                        break;
                    case 3:
                        Logger.debug$default(KeyValue.logger, "Encountered WideString type when parsing binary KeyValue, which is unsupported. Returning false.", null, 2, null);
                        return false;
                    case 4:
                    case 5:
                    case 6:
                        keyValue.setValue(String.valueOf(binaryReader.readInt()));
                        break;
                    case 7:
                        keyValue.setValue(String.valueOf(binaryReader.readLong()));
                        break;
                    case 8:
                        keyValue.setValue(String.valueOf(binaryReader.readFloat()));
                        break;
                    case 9:
                        keyValue.setValue(String.valueOf(binaryReader.readLong()));
                        break;
                    default:
                        return false;
                }
                if (keyValue2 != null && (children = keyValue2.getChildren()) != null) {
                    children.add(keyValue);
                }
                keyValue = new KeyValue(str, objArr5 == true ? 1 : 0, i, objArr4 == true ? 1 : 0);
            }
        }
    }
}
