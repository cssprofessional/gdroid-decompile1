package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.DynamicMessage;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.Message;
import com.google.protobuf.MessageReflection;
import com.google.protobuf.TextFormatParseInfoTree;
import com.google.protobuf.UnknownFieldSet;
import in.dragonbra.javasteam.types.SteamID;
import java.io.IOException;
import java.lang.Character;
import java.math.BigInteger;
import java.nio.CharBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.logging.Logger;
import org.tukaani.xz.common.Util;

/* JADX INFO: loaded from: classes.dex */
public final class TextFormat {
    private static final String DEBUG_STRING_SILENT_MARKER = " \t ";
    private static final String REDACTED_MARKER = "[REDACTED]";
    private static final Logger logger = Logger.getLogger(TextFormat.class.getName());
    private static final Parser PARSER = Parser.newBuilder().build();

    private static int digitValue(final byte c) {
        return (48 > c || c > 57) ? (97 > c || c > 122) ? c - 55 : c - 87 : c - 48;
    }

    private static boolean isHex(final byte c) {
        return (48 <= c && c <= 57) || (97 <= c && c <= 102) || (65 <= c && c <= 70);
    }

    private static boolean isOctal(final byte c) {
        return 48 <= c && c <= 55;
    }

    private TextFormat() {
    }

    @Deprecated
    public static String shortDebugString(final MessageOrBuilder message) {
        return printer().emittingSingleLine(true).printToString(message, Printer.FieldReporterLevel.SHORT_DEBUG_STRING);
    }

    public static void printUnknownFieldValue(final int tag, final Object value, final Appendable output) throws IOException {
        printUnknownFieldValue(tag, value, setSingleLineOutput(output, false), false);
    }

    private static void printUnknownFieldValue(final int tag, final Object value, final TextGenerator generator, boolean redact) throws IOException {
        int tagWireType = WireFormat.getTagWireType(tag);
        if (tagWireType == 0) {
            generator.print(unsignedToString(((Long) value).longValue()));
            return;
        }
        if (tagWireType == 1) {
            generator.print(String.format(null, "0x%016x", (Long) value));
            return;
        }
        if (tagWireType != 2) {
            if (tagWireType == 3) {
                Printer.printUnknownFields((UnknownFieldSet) value, generator, redact);
                return;
            } else {
                if (tagWireType == 5) {
                    generator.print(String.format(null, "0x%08x", (Integer) value));
                    return;
                }
                throw new IllegalArgumentException("Bad tag: " + tag);
            }
        }
        try {
            UnknownFieldSet from = UnknownFieldSet.parseFrom((ByteString) value);
            generator.print("{");
            generator.eol();
            generator.indent();
            Printer.printUnknownFields(from, generator, redact);
            generator.outdent();
            generator.print("}");
        } catch (InvalidProtocolBufferException unused) {
            generator.print("\"");
            generator.print(escapeBytes((ByteString) value));
            generator.print("\"");
        }
    }

    public static Printer printer() {
        return Printer.DEFAULT_TEXT_FORMAT;
    }

    public static Printer debugFormatPrinter() {
        return Printer.DEFAULT_DEBUG_FORMAT;
    }

    public static final class Printer {
        private final boolean enablingSafeDebugFormat;
        private final boolean escapeNonAscii;
        private final ExtensionRegistryLite extensionRegistry;
        private final boolean singleLine;
        private final TypeRegistry typeRegistry;
        private final boolean useShortRepeatedPrimitives;
        private static final Printer DEFAULT_TEXT_FORMAT = new Printer(true, false, TypeRegistry.getEmptyTypeRegistry(), ExtensionRegistryLite.getEmptyRegistry(), false, false);
        private static final Printer DEFAULT_DEBUG_FORMAT = new Printer(true, false, TypeRegistry.getEmptyTypeRegistry(), ExtensionRegistryLite.getEmptyRegistry(), true, false);
        private static final ThreadLocal<FieldReporterLevel> sensitiveFieldReportingLevel = new ThreadLocal<FieldReporterLevel>() { // from class: com.google.protobuf.TextFormat.Printer.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.lang.ThreadLocal
            public FieldReporterLevel initialValue() {
                return FieldReporterLevel.ABSTRACT_TO_STRING;
            }
        };

        public enum FieldReporterLevel {
            REPORT_ALL(0),
            TEXT_GENERATOR(1),
            PRINT(2),
            PRINTER_PRINT_TO_STRING(3),
            TEXTFORMAT_PRINT_TO_STRING(4),
            PRINT_UNICODE(5),
            SHORT_DEBUG_STRING(6),
            LEGACY_MULTILINE(7),
            LEGACY_SINGLE_LINE(8),
            DEBUG_MULTILINE(9),
            DEBUG_SINGLE_LINE(10),
            ABSTRACT_TO_STRING(11),
            ABSTRACT_BUILDER_TO_STRING(12),
            ABSTRACT_MUTABLE_TO_STRING(13),
            REPORT_NONE(14);

            private final int index;

            FieldReporterLevel(int index) {
                this.index = index;
            }
        }

        private Printer(boolean escapeNonAscii, boolean useShortRepeatedPrimitives, TypeRegistry typeRegistry, ExtensionRegistryLite extensionRegistry, boolean enablingSafeDebugFormat, boolean singleLine) {
            this.escapeNonAscii = escapeNonAscii;
            this.useShortRepeatedPrimitives = useShortRepeatedPrimitives;
            this.typeRegistry = typeRegistry;
            this.extensionRegistry = extensionRegistry;
            this.enablingSafeDebugFormat = enablingSafeDebugFormat;
            this.singleLine = singleLine;
        }

        public Printer escapingNonAscii(boolean escapeNonAscii) {
            return new Printer(escapeNonAscii, this.useShortRepeatedPrimitives, this.typeRegistry, this.extensionRegistry, this.enablingSafeDebugFormat, this.singleLine);
        }

        public Printer usingTypeRegistry(TypeRegistry typeRegistry) {
            if (this.typeRegistry != TypeRegistry.getEmptyTypeRegistry()) {
                throw new IllegalArgumentException("Only one typeRegistry is allowed.");
            }
            return new Printer(this.escapeNonAscii, this.useShortRepeatedPrimitives, typeRegistry, this.extensionRegistry, this.enablingSafeDebugFormat, this.singleLine);
        }

        public Printer usingExtensionRegistry(ExtensionRegistryLite extensionRegistry) {
            if (this.extensionRegistry != ExtensionRegistryLite.getEmptyRegistry()) {
                throw new IllegalArgumentException("Only one extensionRegistry is allowed.");
            }
            return new Printer(this.escapeNonAscii, this.useShortRepeatedPrimitives, this.typeRegistry, extensionRegistry, this.enablingSafeDebugFormat, this.singleLine);
        }

        public Printer enablingSafeDebugFormat(boolean enablingSafeDebugFormat) {
            return new Printer(this.escapeNonAscii, this.useShortRepeatedPrimitives, this.typeRegistry, this.extensionRegistry, enablingSafeDebugFormat, this.singleLine);
        }

        public Printer usingShortRepeatedPrimitives(boolean useShortRepeatedPrimitives) {
            return new Printer(this.escapeNonAscii, useShortRepeatedPrimitives, this.typeRegistry, this.extensionRegistry, this.enablingSafeDebugFormat, this.singleLine);
        }

        public Printer emittingSingleLine(boolean singleLine) {
            return new Printer(this.escapeNonAscii, this.useShortRepeatedPrimitives, this.typeRegistry, this.extensionRegistry, this.enablingSafeDebugFormat, singleLine);
        }

        public void setSensitiveFieldReportingLevel(FieldReporterLevel level) {
            sensitiveFieldReportingLevel.set(level);
        }

        public void print(final MessageOrBuilder message, final Appendable output) throws IOException {
            print(message, output, FieldReporterLevel.PRINT);
        }

        public void print(final MessageOrBuilder message, final Appendable output, FieldReporterLevel level) throws IOException {
            print(message, TextFormat.setSingleLineOutput(output, this.singleLine, message.getDescriptorForType(), level));
        }

        public void print(final UnknownFieldSet fields, final Appendable output) throws IOException {
            printUnknownFields(fields, TextFormat.setSingleLineOutput(output, this.singleLine), this.enablingSafeDebugFormat);
        }

        private void print(final MessageOrBuilder message, final TextGenerator generator) throws IOException {
            if (message.getDescriptorForType().getFullName().equals("google.protobuf.Any") && printAny(message, generator)) {
                return;
            }
            printMessage(message, generator);
        }

        private void applyUnstablePrefix(final Appendable output) {
            try {
                output.append("");
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        private boolean printAny(final MessageOrBuilder message, final TextGenerator generator) throws IOException {
            Descriptors.Descriptor descriptorForType = message.getDescriptorForType();
            Descriptors.FieldDescriptor fieldDescriptorFindFieldByNumber = descriptorForType.findFieldByNumber(1);
            Descriptors.FieldDescriptor fieldDescriptorFindFieldByNumber2 = descriptorForType.findFieldByNumber(2);
            if (fieldDescriptorFindFieldByNumber != null && fieldDescriptorFindFieldByNumber.getType() == Descriptors.FieldDescriptor.Type.STRING && fieldDescriptorFindFieldByNumber2 != null && fieldDescriptorFindFieldByNumber2.getType() == Descriptors.FieldDescriptor.Type.BYTES) {
                String str = (String) message.getField(fieldDescriptorFindFieldByNumber);
                if (str.isEmpty()) {
                    return false;
                }
                Object field = message.getField(fieldDescriptorFindFieldByNumber2);
                try {
                    Descriptors.Descriptor descriptorForTypeUrl = this.typeRegistry.getDescriptorForTypeUrl(str);
                    if (descriptorForTypeUrl == null) {
                        return false;
                    }
                    DynamicMessage.Builder builderNewBuilderForType = DynamicMessage.getDefaultInstance(descriptorForTypeUrl).newBuilderForType();
                    builderNewBuilderForType.mergeFrom((ByteString) field, this.extensionRegistry);
                    generator.print("[");
                    generator.print(str);
                    generator.print("] {");
                    generator.eol();
                    generator.indent();
                    print(builderNewBuilderForType, generator);
                    generator.outdent();
                    generator.print("}");
                    generator.eol();
                    return true;
                } catch (InvalidProtocolBufferException unused) {
                }
            }
            return false;
        }

        public String printFieldToString(final Descriptors.FieldDescriptor field, final Object value) {
            try {
                StringBuilder sb = new StringBuilder();
                if (this.enablingSafeDebugFormat) {
                    applyUnstablePrefix(sb);
                }
                printField(field, value, sb);
                return sb.toString();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        public void printField(final Descriptors.FieldDescriptor field, final Object value, final Appendable output) throws IOException {
            printField(field, value, TextFormat.setSingleLineOutput(output, this.singleLine));
        }

        private void printField(final Descriptors.FieldDescriptor field, final Object value, final TextGenerator generator) throws IOException {
            if (field.isMapField()) {
                ArrayList arrayList = new ArrayList();
                Iterator it = ((List) value).iterator();
                while (it.hasNext()) {
                    arrayList.add(new MapEntryAdapter(it.next(), field));
                }
                Collections.sort(arrayList);
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    printSingleField(field, ((MapEntryAdapter) it2.next()).getEntry(), generator);
                }
                return;
            }
            if (field.isRepeated()) {
                if (this.useShortRepeatedPrimitives && field.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                    printShortRepeatedField(field, value, generator);
                    return;
                }
                Iterator it3 = ((List) value).iterator();
                while (it3.hasNext()) {
                    printSingleField(field, it3.next(), generator);
                }
                return;
            }
            printSingleField(field, value, generator);
        }

        public static class MapEntryAdapter implements Comparable<MapEntryAdapter> {
            private Object entry;
            private final Descriptors.FieldDescriptor keyField;
            private Message messageEntry;

            public MapEntryAdapter(Object entry, Descriptors.FieldDescriptor fieldDescriptor) {
                if (entry instanceof Message) {
                    this.messageEntry = (Message) entry;
                } else {
                    this.entry = entry;
                }
                this.keyField = fieldDescriptor.getMessageType().findFieldByName("key");
            }

            public Object getKey() {
                Descriptors.FieldDescriptor fieldDescriptor;
                Message message = this.messageEntry;
                if (message == null || (fieldDescriptor = this.keyField) == null) {
                    return null;
                }
                return message.getField(fieldDescriptor);
            }

            public Object getEntry() {
                Message message = this.messageEntry;
                return message != null ? message : this.entry;
            }

            @Override // java.lang.Comparable
            public int compareTo(MapEntryAdapter b) {
                Object key = getKey();
                Object key2 = b.getKey();
                if (key == null && key2 == null) {
                    return 0;
                }
                if (key == null) {
                    return -1;
                }
                if (key2 == null) {
                    return 1;
                }
                int i = AnonymousClass1.$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType[this.keyField.getJavaType().ordinal()];
                if (i == 1) {
                    return ((Boolean) key).compareTo((Boolean) key2);
                }
                if (i == 2) {
                    return ((Long) key).compareTo((Long) key2);
                }
                if (i == 3) {
                    return ((Integer) key).compareTo((Integer) key2);
                }
                if (i != 4) {
                    return 0;
                }
                return ((String) key).compareTo((String) key2);
            }
        }

        public void printFieldValue(final Descriptors.FieldDescriptor field, final Object value, final Appendable output) throws IOException {
            printFieldValue(field, value, TextFormat.setSingleLineOutput(output, this.singleLine));
        }

        private void printFieldValue(final Descriptors.FieldDescriptor field, final Object value, final TextGenerator generator) throws IOException {
            String strReplace;
            if (shouldRedact(field, generator)) {
                generator.print(TextFormat.REDACTED_MARKER);
                if (field.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                    generator.eol();
                }
                return;
            }
            switch (AnonymousClass1.$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[field.getType().ordinal()]) {
                case 1:
                case 2:
                case 3:
                    generator.print(((Integer) value).toString());
                    break;
                case 4:
                case 5:
                case 6:
                    generator.print(((Long) value).toString());
                    break;
                case 7:
                    generator.print(((Boolean) value).toString());
                    break;
                case 8:
                    generator.print(((Float) value).toString());
                    break;
                case 9:
                    generator.print(((Double) value).toString());
                    break;
                case 10:
                case 11:
                    generator.print(TextFormat.unsignedToString(((Integer) value).intValue()));
                    break;
                case 12:
                case 13:
                    generator.print(TextFormat.unsignedToString(((Long) value).longValue()));
                    break;
                case 14:
                    generator.print("\"");
                    if (this.escapeNonAscii) {
                        strReplace = TextFormatEscaper.escapeText((String) value);
                    } else {
                        strReplace = TextFormat.escapeDoubleQuotesAndBackslashes((String) value).replace("\n", "\\n");
                    }
                    generator.print(strReplace);
                    generator.print("\"");
                    break;
                case 15:
                    generator.print("\"");
                    if (value instanceof ByteString) {
                        generator.print(TextFormat.escapeBytes((ByteString) value));
                    } else {
                        generator.print(TextFormat.escapeBytes((byte[]) value));
                    }
                    generator.print("\"");
                    break;
                case 16:
                    Descriptors.EnumValueDescriptor enumValueDescriptor = (Descriptors.EnumValueDescriptor) value;
                    if (enumValueDescriptor.getIndex() == -1) {
                        generator.print(Integer.toString(enumValueDescriptor.getNumber()));
                    } else {
                        generator.print(enumValueDescriptor.getName());
                    }
                    break;
                case 17:
                case 18:
                    print((MessageOrBuilder) value, generator);
                    break;
            }
        }

        private boolean shouldRedact(final Descriptors.FieldDescriptor field, TextGenerator generator) {
            return this.enablingSafeDebugFormat && field.isSensitive();
        }

        public String printToString(final MessageOrBuilder message) {
            return printToString(message, FieldReporterLevel.PRINTER_PRINT_TO_STRING);
        }

        public String printToString(final MessageOrBuilder message, FieldReporterLevel level) {
            try {
                StringBuilder sb = new StringBuilder();
                if (this.enablingSafeDebugFormat) {
                    applyUnstablePrefix(sb);
                }
                print(message, sb, level);
                return sb.toString();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        public String printToString(final UnknownFieldSet fields) {
            try {
                StringBuilder sb = new StringBuilder();
                if (this.enablingSafeDebugFormat) {
                    applyUnstablePrefix(sb);
                }
                print(fields, sb);
                return sb.toString();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Deprecated
        public String shortDebugString(final MessageOrBuilder message) {
            return emittingSingleLine(true).printToString(message, FieldReporterLevel.SHORT_DEBUG_STRING);
        }

        @InlineMe(replacement = "this.emittingSingleLine(true).printFieldToString(field, value)")
        @Deprecated
        public String shortDebugString(final Descriptors.FieldDescriptor field, final Object value) {
            return emittingSingleLine(true).printFieldToString(field, value);
        }

        @InlineMe(replacement = "this.emittingSingleLine(true).printToString(fields)")
        @Deprecated
        public String shortDebugString(final UnknownFieldSet fields) {
            return emittingSingleLine(true).printToString(fields);
        }

        private static void printUnknownFieldValue(final int tag, final Object value, final TextGenerator generator, boolean redact) throws IOException {
            String strUnsignedToString;
            String str;
            String str2;
            int tagWireType = WireFormat.getTagWireType(tag);
            if (tagWireType == 0) {
                if (redact) {
                    strUnsignedToString = String.format("UNKNOWN_VARINT %s", TextFormat.REDACTED_MARKER);
                } else {
                    strUnsignedToString = TextFormat.unsignedToString(((Long) value).longValue());
                }
                generator.print(strUnsignedToString);
                return;
            }
            if (tagWireType == 1) {
                if (redact) {
                    str = String.format("UNKNOWN_FIXED64 %s", TextFormat.REDACTED_MARKER);
                } else {
                    str = String.format(null, "0x%016x", (Long) value);
                }
                generator.print(str);
                return;
            }
            if (tagWireType != 2) {
                if (tagWireType == 3) {
                    printUnknownFields((UnknownFieldSet) value, generator, redact);
                    return;
                }
                if (tagWireType == 5) {
                    if (redact) {
                        str2 = String.format("UNKNOWN_FIXED32 %s", TextFormat.REDACTED_MARKER);
                    } else {
                        str2 = String.format(null, "0x%08x", (Integer) value);
                    }
                    generator.print(str2);
                    return;
                }
                throw new IllegalArgumentException("Bad tag: " + tag);
            }
            try {
                UnknownFieldSet from = UnknownFieldSet.parseFrom((ByteString) value);
                generator.print("{");
                generator.eol();
                generator.indent();
                printUnknownFields(from, generator, redact);
                generator.outdent();
                generator.print("}");
            } catch (InvalidProtocolBufferException unused) {
                if (redact) {
                    generator.print(String.format("UNKNOWN_STRING %s", TextFormat.REDACTED_MARKER));
                    return;
                }
                generator.print("\"");
                generator.print(TextFormat.escapeBytes((ByteString) value));
                generator.print("\"");
            }
        }

        private void printMessage(final MessageOrBuilder message, final TextGenerator generator) throws IOException {
            for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : message.getAllFields().entrySet()) {
                printField(entry.getKey(), entry.getValue(), generator);
            }
            printUnknownFields(message.getUnknownFields(), generator, this.enablingSafeDebugFormat);
        }

        private void printShortRepeatedField(final Descriptors.FieldDescriptor field, final Object value, final TextGenerator generator) throws IOException {
            generator.print(field.getName());
            generator.print(": ");
            generator.print("[");
            String str = "";
            for (Object obj : (List) value) {
                generator.print(str);
                printFieldValue(field, obj, generator);
                str = ", ";
            }
            generator.print("]");
            generator.eol();
        }

        private void printSingleField(final Descriptors.FieldDescriptor field, final Object value, final TextGenerator generator) throws IOException {
            if (field.isExtension()) {
                generator.print("[");
                if (field.getContainingType().getOptions().getMessageSetWireFormat() && field.getType() == Descriptors.FieldDescriptor.Type.MESSAGE && field.isOptional() && field.getExtensionScope() == field.getMessageType()) {
                    generator.print(field.getMessageType().getFullName());
                } else {
                    generator.print(field.getFullName());
                }
                generator.print("]");
            } else if (field.isGroupLike()) {
                generator.print(field.getMessageType().getName());
            } else {
                generator.print(field.getName());
            }
            Descriptors.FieldDescriptor.JavaType javaType = field.getJavaType();
            Descriptors.FieldDescriptor.JavaType javaType2 = Descriptors.FieldDescriptor.JavaType.MESSAGE;
            if (javaType == javaType2) {
                generator.print(" {");
                generator.eol();
                generator.indent();
            } else {
                generator.print(": ");
            }
            printFieldValue(field, value, generator);
            if (field.getJavaType() == javaType2) {
                generator.outdent();
                generator.print("}");
            }
            generator.eol();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void printUnknownFields(final UnknownFieldSet unknownFields, final TextGenerator generator, boolean redact) throws IOException {
            if (unknownFields.isEmpty()) {
                return;
            }
            for (Map.Entry<Integer, UnknownFieldSet.Field> entry : unknownFields.asMap().entrySet()) {
                int iIntValue = entry.getKey().intValue();
                UnknownFieldSet.Field value = entry.getValue();
                printUnknownField(iIntValue, 0, value.getVarintList(), generator, redact);
                printUnknownField(iIntValue, 5, value.getFixed32List(), generator, redact);
                printUnknownField(iIntValue, 1, value.getFixed64List(), generator, redact);
                printUnknownField(iIntValue, 2, value.getLengthDelimitedList(), generator, redact);
                for (UnknownFieldSet unknownFieldSet : value.getGroupList()) {
                    generator.print(entry.getKey().toString());
                    generator.print(" {");
                    generator.eol();
                    generator.indent();
                    printUnknownFields(unknownFieldSet, generator, redact);
                    generator.outdent();
                    generator.print("}");
                    generator.eol();
                }
            }
        }

        private static void printUnknownField(final int number, final int wireType, final List<?> values, final TextGenerator generator, boolean redact) throws IOException {
            for (Object obj : values) {
                generator.print(String.valueOf(number));
                generator.print(": ");
                printUnknownFieldValue(wireType, obj, generator, redact);
                generator.eol();
            }
        }
    }

    /* JADX INFO: renamed from: com.google.protobuf.TextFormat$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType;
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type;

        static {
            int[] iArr = new int[Descriptors.FieldDescriptor.Type.values().length];
            $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type = iArr;
            try {
                iArr[Descriptors.FieldDescriptor.Type.INT32.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.SINT32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.SFIXED32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.INT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.SINT64.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.SFIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.BOOL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.DOUBLE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.UINT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.FIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.UINT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.FIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.STRING.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.GROUP.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[Descriptors.FieldDescriptor.JavaType.values().length];
            $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType = iArr2;
            try {
                iArr2[Descriptors.FieldDescriptor.JavaType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType[Descriptors.FieldDescriptor.JavaType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType[Descriptors.FieldDescriptor.JavaType.INT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType[Descriptors.FieldDescriptor.JavaType.STRING.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
        }
    }

    public static String unsignedToString(final int value) {
        if (value >= 0) {
            return Integer.toString(value);
        }
        return Long.toString(((long) value) & SteamID.ACCOUNT_ID_MASK);
    }

    public static String unsignedToString(final long value) {
        if (value >= 0) {
            return Long.toString(value);
        }
        return BigInteger.valueOf(value & Util.VLI_MAX).setBit(63).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static TextGenerator setSingleLineOutput(Appendable output, boolean singleLine) {
        return new TextGenerator(output, singleLine, null, Printer.FieldReporterLevel.TEXT_GENERATOR, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static TextGenerator setSingleLineOutput(Appendable output, boolean singleLine, Descriptors.Descriptor rootMessageType, Printer.FieldReporterLevel fieldReporterLevel) {
        return new TextGenerator(output, singleLine, rootMessageType, fieldReporterLevel, null);
    }

    public static final class TextGenerator {
        private boolean atStartOfLine;
        private final Printer.FieldReporterLevel fieldReporterLevel;
        private final StringBuilder indent;
        private final Appendable output;
        private final Descriptors.Descriptor rootMessageType;
        private final boolean singleLineMode;

        public /* synthetic */ TextGenerator(Appendable appendable, boolean z, Descriptors.Descriptor descriptor, Printer.FieldReporterLevel fieldReporterLevel, AnonymousClass1 anonymousClass1) {
            this(appendable, z, descriptor, fieldReporterLevel);
        }

        private TextGenerator(final Appendable output, boolean singleLineMode, Descriptors.Descriptor rootMessageType, Printer.FieldReporterLevel fieldReporterLevel) {
            this.indent = new StringBuilder();
            this.atStartOfLine = false;
            this.output = output;
            this.singleLineMode = singleLineMode;
            this.rootMessageType = rootMessageType;
            this.fieldReporterLevel = fieldReporterLevel;
        }

        public void indent() {
            this.indent.append("  ");
        }

        public void outdent() {
            int length = this.indent.length();
            if (length == 0) {
                throw new IllegalArgumentException(" Outdent() without matching Indent().");
            }
            this.indent.setLength(length - 2);
        }

        public void print(final CharSequence text) throws IOException {
            if (this.atStartOfLine) {
                this.atStartOfLine = false;
                this.output.append(this.singleLineMode ? " " : this.indent);
            }
            this.output.append(text);
        }

        public void eol() throws IOException {
            if (!this.singleLineMode) {
                this.output.append("\n");
            }
            this.atStartOfLine = true;
        }
    }

    public static final class Tokenizer {
        private int column;
        private boolean containsSilentMarkerAfterCurrentToken;
        private boolean containsSilentMarkerAfterPrevToken;
        private String currentToken;
        private int line;
        private int lineInfoTrackingPos;
        private int pos;
        private int previousColumn;
        private int previousLine;
        private final CharSequence text;

        private static boolean isAlphaUnder(char c) {
            return ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z') || c == '_';
        }

        private static boolean isDigitPlusMinus(char c) {
            return ('0' <= c && c <= '9') || c == '+' || c == '-';
        }

        private static boolean isWhitespace(char c) {
            return c == ' ' || c == '\f' || c == '\n' || c == '\r' || c == '\t';
        }

        public /* synthetic */ Tokenizer(CharSequence charSequence, AnonymousClass1 anonymousClass1) {
            this(charSequence);
        }

        private Tokenizer(final CharSequence text) {
            this.pos = 0;
            this.line = 0;
            this.column = 0;
            this.lineInfoTrackingPos = 0;
            this.previousLine = 0;
            this.previousColumn = 0;
            this.containsSilentMarkerAfterCurrentToken = false;
            this.containsSilentMarkerAfterPrevToken = false;
            this.text = text;
            skipWhitespace();
            nextToken();
        }

        public int getPreviousLine() {
            return this.previousLine;
        }

        public int getPreviousColumn() {
            return this.previousColumn;
        }

        public int getLine() {
            return this.line;
        }

        public int getColumn() {
            return this.column;
        }

        public boolean getContainsSilentMarkerAfterCurrentToken() {
            return this.containsSilentMarkerAfterCurrentToken;
        }

        public boolean getContainsSilentMarkerAfterPrevToken() {
            return this.containsSilentMarkerAfterPrevToken;
        }

        public boolean atEnd() {
            return this.currentToken.length() == 0;
        }

        public void nextToken() {
            int i;
            this.previousLine = this.line;
            this.previousColumn = this.column;
            while (true) {
                int i2 = this.lineInfoTrackingPos;
                i = this.pos;
                if (i2 >= i) {
                    break;
                }
                if (this.text.charAt(i2) == '\n') {
                    this.line++;
                    this.column = 0;
                } else {
                    this.column++;
                }
                this.lineInfoTrackingPos++;
            }
            if (i == this.text.length()) {
                this.currentToken = "";
            } else {
                this.currentToken = nextTokenInternal();
                skipWhitespace();
            }
        }

        private String nextTokenInternal() {
            int i;
            int length = this.text.length();
            int i2 = this.pos;
            char cCharAt = this.text.charAt(i2);
            int i3 = this.pos;
            if (isAlphaUnder(cCharAt)) {
                while (true) {
                    i3++;
                    if (i3 == length) {
                        break;
                    }
                    char cCharAt2 = this.text.charAt(i3);
                    if (!isAlphaUnder(cCharAt2) && !isDigitPlusMinus(cCharAt2)) {
                        break;
                    }
                }
            } else if (isDigitPlusMinus(cCharAt) || cCharAt == '.') {
                if (cCharAt == '.') {
                    i3++;
                    if (i3 == length) {
                        return nextTokenSingleChar();
                    }
                    if (!isDigitPlusMinus(this.text.charAt(i3))) {
                        return nextTokenSingleChar();
                    }
                }
                while (true) {
                    i3++;
                    if (i3 == length) {
                        break;
                    }
                    char cCharAt3 = this.text.charAt(i3);
                    if (!isDigitPlusMinus(cCharAt3) && !isAlphaUnder(cCharAt3) && cCharAt3 != '.') {
                        break;
                    }
                }
            } else {
                if (cCharAt != '\"' && cCharAt != '\'') {
                    return nextTokenSingleChar();
                }
                while (true) {
                    i = i3 + 1;
                    if (i == length) {
                        break;
                    }
                    char cCharAt4 = this.text.charAt(i);
                    if (cCharAt4 == cCharAt) {
                        i3 += 2;
                        break;
                    }
                    if (cCharAt4 == '\n') {
                        break;
                    }
                    if (cCharAt4 == '\\') {
                        i3 += 2;
                        if (i3 == length || this.text.charAt(i3) == '\n') {
                            break;
                        }
                    } else {
                        i3 = i;
                    }
                }
                i3 = i;
            }
            this.pos = i3;
            return this.text.subSequence(i2, i3).toString();
        }

        private String nextTokenSingleChar() {
            CharSequence charSequence = this.text;
            int i = this.pos;
            this.pos = i + 1;
            char cCharAt = charSequence.charAt(i);
            if (cCharAt == ',') {
                return ",";
            }
            if (cCharAt == ':') {
                return ":";
            }
            if (cCharAt == '<') {
                return "<";
            }
            if (cCharAt == '>') {
                return ">";
            }
            if (cCharAt == '[') {
                return "[";
            }
            if (cCharAt == ']') {
                return "]";
            }
            if (cCharAt == '{') {
                return "{";
            }
            if (cCharAt == '}') {
                return "}";
            }
            return String.valueOf(cCharAt);
        }

        private void skipWhitespace() {
            int length = this.text.length();
            int i = this.pos - 1;
            while (true) {
                i++;
                if (i != length) {
                    char cCharAt = this.text.charAt(i);
                    if (cCharAt == '#') {
                        do {
                            i++;
                            if (i == length) {
                                break;
                            }
                        } while (this.text.charAt(i) != '\n');
                        if (i == length) {
                            break;
                        }
                    } else if (!isWhitespace(cCharAt)) {
                        break;
                    }
                } else {
                    break;
                }
            }
            this.pos = i;
        }

        public boolean tryConsume(final String token) {
            if (!this.currentToken.equals(token)) {
                return false;
            }
            nextToken();
            return true;
        }

        public void consume(final String token) throws ParseException {
            if (tryConsume(token)) {
                return;
            }
            throw parseException("Expected \"" + token + "\".");
        }

        public boolean lookingAtInteger() {
            if (this.currentToken.length() == 0) {
                return false;
            }
            return isDigitPlusMinus(this.currentToken.charAt(0));
        }

        public boolean lookingAt(String text) {
            return this.currentToken.equals(text);
        }

        public String consumeIdentifier() throws ParseException {
            for (int i = 0; i < this.currentToken.length(); i++) {
                char cCharAt = this.currentToken.charAt(i);
                if (!isAlphaUnder(cCharAt) && (('0' > cCharAt || cCharAt > '9') && cCharAt != '.')) {
                    throw parseException("Expected identifier. Found '" + this.currentToken + "'");
                }
            }
            String str = this.currentToken;
            nextToken();
            return str;
        }

        public boolean tryConsumeIdentifier() {
            try {
                consumeIdentifier();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        public int consumeInt32() throws ParseException {
            try {
                int int32 = TextFormat.parseInt32(this.currentToken);
                nextToken();
                return int32;
            } catch (NumberFormatException e) {
                throw integerParseException(e);
            }
        }

        public int consumeUInt32() throws ParseException {
            try {
                int uInt32 = TextFormat.parseUInt32(this.currentToken);
                nextToken();
                return uInt32;
            } catch (NumberFormatException e) {
                throw integerParseException(e);
            }
        }

        public long consumeInt64() throws ParseException {
            try {
                long int64 = TextFormat.parseInt64(this.currentToken);
                nextToken();
                return int64;
            } catch (NumberFormatException e) {
                throw integerParseException(e);
            }
        }

        public boolean tryConsumeInt64() {
            try {
                consumeInt64();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        public long consumeUInt64() throws ParseException {
            try {
                long uInt64 = TextFormat.parseUInt64(this.currentToken);
                nextToken();
                return uInt64;
            } catch (NumberFormatException e) {
                throw integerParseException(e);
            }
        }

        public boolean tryConsumeUInt64() {
            try {
                consumeUInt64();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        public double consumeDouble() throws ParseException {
            String lowerCase = this.currentToken.toLowerCase(Locale.ROOT);
            lowerCase.hashCode();
            switch (lowerCase) {
                case "inf":
                case "infinity":
                    nextToken();
                    return Double.POSITIVE_INFINITY;
                case "nan":
                    nextToken();
                    return Double.NaN;
                case "-inf":
                case "-infinity":
                    nextToken();
                    return Double.NEGATIVE_INFINITY;
                default:
                    try {
                        double d = Double.parseDouble(this.currentToken);
                        nextToken();
                        return d;
                    } catch (NumberFormatException e) {
                        throw floatParseException(e);
                    }
            }
        }

        public boolean tryConsumeDouble() {
            try {
                consumeDouble();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        public float consumeFloat() throws ParseException {
            String lowerCase = this.currentToken.toLowerCase(Locale.ROOT);
            lowerCase.hashCode();
            switch (lowerCase) {
                case "inf":
                case "inff":
                case "infinity":
                case "infinityf":
                    nextToken();
                    return Float.POSITIVE_INFINITY;
                case "nan":
                case "nanf":
                    nextToken();
                    return Float.NaN;
                case "-inf":
                case "-inff":
                case "-infinity":
                case "-infinityf":
                    nextToken();
                    return Float.NEGATIVE_INFINITY;
                default:
                    try {
                        float f = Float.parseFloat(this.currentToken);
                        nextToken();
                        return f;
                    } catch (NumberFormatException e) {
                        throw floatParseException(e);
                    }
            }
        }

        public boolean tryConsumeFloat() {
            try {
                consumeFloat();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        public boolean consumeBoolean() throws ParseException {
            if (this.currentToken.equals("true") || this.currentToken.equals("True") || this.currentToken.equals("t") || this.currentToken.equals("1")) {
                nextToken();
                return true;
            }
            if (this.currentToken.equals("false") || this.currentToken.equals("False") || this.currentToken.equals("f") || this.currentToken.equals("0")) {
                nextToken();
                return false;
            }
            throw parseException("Expected \"true\" or \"false\". Found \"" + this.currentToken + "\".");
        }

        public String consumeString() throws ParseException {
            return consumeByteString().toStringUtf8();
        }

        @CanIgnoreReturnValue
        public ByteString consumeByteString() throws ParseException {
            ArrayList arrayList = new ArrayList();
            consumeByteString(arrayList);
            while (true) {
                if (this.currentToken.startsWith("'") || this.currentToken.startsWith("\"")) {
                    consumeByteString(arrayList);
                } else {
                    return ByteString.copyFrom(arrayList);
                }
            }
        }

        public boolean tryConsumeByteString() {
            try {
                consumeByteString();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        private void consumeByteString(List<ByteString> list) throws ParseException {
            char cCharAt = this.currentToken.length() > 0 ? this.currentToken.charAt(0) : (char) 0;
            if (cCharAt != '\"' && cCharAt != '\'') {
                throw parseException("Expected string.");
            }
            if (this.currentToken.length() >= 2) {
                String str = this.currentToken;
                if (str.charAt(str.length() - 1) == cCharAt) {
                    try {
                        String str2 = this.currentToken;
                        ByteString byteStringUnescapeBytes = TextFormat.unescapeBytes(str2.substring(1, str2.length() - 1));
                        nextToken();
                        list.add(byteStringUnescapeBytes);
                        return;
                    } catch (InvalidEscapeSequenceException e) {
                        throw parseException(e.getMessage());
                    }
                }
            }
            throw parseException("String missing ending quote.");
        }

        public ParseException parseException(final String description) {
            return new ParseException(this.line + 1, this.column + 1, description);
        }

        public ParseException parseExceptionPreviousToken(final String description) {
            return new ParseException(this.previousLine + 1, this.previousColumn + 1, description);
        }

        private ParseException integerParseException(final NumberFormatException e) {
            return parseException("Couldn't parse integer: " + e.getMessage());
        }

        private ParseException floatParseException(final NumberFormatException e) {
            return parseException("Couldn't parse number: " + e.getMessage());
        }
    }

    public static class ParseException extends IOException {
        private static final long serialVersionUID = 3196188060225107702L;
        private final int column;
        private final int line;

        public ParseException(final String message) {
            this(-1, -1, message);
        }

        public ParseException(final int line, final int column, final String message) {
            super(Integer.toString(line) + ":" + column + ": " + message);
            this.line = line;
            this.column = column;
        }

        public int getLine() {
            return this.line;
        }

        public int getColumn() {
            return this.column;
        }
    }

    @Deprecated
    public static class UnknownFieldParseException extends ParseException {
        private final String unknownField;

        public UnknownFieldParseException(final String message) {
            this(-1, -1, "", message);
        }

        public UnknownFieldParseException(final int line, final int column, final String unknownField, final String message) {
            super(line, column, message);
            this.unknownField = unknownField;
        }

        public String getUnknownField() {
            return this.unknownField;
        }
    }

    public static Parser getParser() {
        return PARSER;
    }

    public static void merge(final Readable input, final Message.Builder builder) throws IOException {
        PARSER.merge(input, builder);
    }

    public static void merge(final CharSequence input, final Message.Builder builder) throws ParseException {
        PARSER.merge(input, builder);
    }

    public static <T extends Message> T parse(CharSequence charSequence, Class<T> cls) throws ParseException {
        Message.Builder builderNewBuilderForType = ((Message) Internal.getDefaultInstance(cls)).newBuilderForType();
        merge(charSequence, builderNewBuilderForType);
        return (T) builderNewBuilderForType.build();
    }

    public static void merge(final Readable input, final ExtensionRegistry extensionRegistry, final Message.Builder builder) throws IOException {
        PARSER.merge(input, extensionRegistry, builder);
    }

    public static void merge(final CharSequence input, final ExtensionRegistry extensionRegistry, final Message.Builder builder) throws ParseException {
        PARSER.merge(input, extensionRegistry, builder);
    }

    public static <T extends Message> T parse(CharSequence charSequence, ExtensionRegistry extensionRegistry, Class<T> cls) throws ParseException {
        Message.Builder builderNewBuilderForType = ((Message) Internal.getDefaultInstance(cls)).newBuilderForType();
        merge(charSequence, extensionRegistry, builderNewBuilderForType);
        return (T) builderNewBuilderForType.build();
    }

    public static class Parser {
        private static final int BUFFER_SIZE = 4096;
        private final boolean allowUnknownEnumValues;
        private final boolean allowUnknownExtensions;
        private final boolean allowUnknownFields;
        private TextFormatParseInfoTree.Builder parseInfoTreeBuilder;
        private final int recursionLimit;
        private final SingularOverwritePolicy singularOverwritePolicy;
        private final TypeRegistry typeRegistry;

        public enum SingularOverwritePolicy {
            ALLOW_SINGULAR_OVERWRITES,
            FORBID_SINGULAR_OVERWRITES
        }

        private void detectSilentMarker(Tokenizer tokenizer, Descriptors.Descriptor immediateMessageType, String fieldName) {
        }

        public /* synthetic */ Parser(TypeRegistry typeRegistry, boolean z, boolean z2, boolean z3, SingularOverwritePolicy singularOverwritePolicy, TextFormatParseInfoTree.Builder builder, int i, AnonymousClass1 anonymousClass1) {
            this(typeRegistry, z, z2, z3, singularOverwritePolicy, builder, i);
        }

        private Parser(TypeRegistry typeRegistry, boolean allowUnknownFields, boolean allowUnknownEnumValues, boolean allowUnknownExtensions, SingularOverwritePolicy singularOverwritePolicy, TextFormatParseInfoTree.Builder parseInfoTreeBuilder, int recursionLimit) {
            this.typeRegistry = typeRegistry;
            this.allowUnknownFields = allowUnknownFields;
            this.allowUnknownEnumValues = allowUnknownEnumValues;
            this.allowUnknownExtensions = allowUnknownExtensions;
            this.singularOverwritePolicy = singularOverwritePolicy;
            this.parseInfoTreeBuilder = parseInfoTreeBuilder;
            this.recursionLimit = recursionLimit;
        }

        public static Builder newBuilder() {
            return new Builder();
        }

        public static class Builder {
            private boolean allowUnknownFields = false;
            private boolean allowUnknownEnumValues = false;
            private boolean allowUnknownExtensions = false;
            private SingularOverwritePolicy singularOverwritePolicy = SingularOverwritePolicy.ALLOW_SINGULAR_OVERWRITES;
            private TextFormatParseInfoTree.Builder parseInfoTreeBuilder = null;
            private TypeRegistry typeRegistry = TypeRegistry.getEmptyTypeRegistry();
            private int recursionLimit = 100;

            public Builder setTypeRegistry(TypeRegistry typeRegistry) {
                this.typeRegistry = typeRegistry;
                return this;
            }

            public Builder setAllowUnknownFields(boolean allowUnknownFields) {
                this.allowUnknownFields = allowUnknownFields;
                return this;
            }

            public Builder setAllowUnknownExtensions(boolean allowUnknownExtensions) {
                this.allowUnknownExtensions = allowUnknownExtensions;
                return this;
            }

            public Builder setSingularOverwritePolicy(SingularOverwritePolicy p) {
                this.singularOverwritePolicy = p;
                return this;
            }

            public Builder setParseInfoTreeBuilder(TextFormatParseInfoTree.Builder parseInfoTreeBuilder) {
                this.parseInfoTreeBuilder = parseInfoTreeBuilder;
                return this;
            }

            public Builder setRecursionLimit(int recursionLimit) {
                this.recursionLimit = recursionLimit;
                return this;
            }

            public Parser build() {
                return new Parser(this.typeRegistry, this.allowUnknownFields, this.allowUnknownEnumValues, this.allowUnknownExtensions, this.singularOverwritePolicy, this.parseInfoTreeBuilder, this.recursionLimit, null);
            }
        }

        public void merge(final Readable input, final Message.Builder builder) throws IOException {
            merge(input, ExtensionRegistry.getEmptyRegistry(), builder);
        }

        public void merge(final CharSequence input, final Message.Builder builder) throws ParseException {
            merge(input, ExtensionRegistry.getEmptyRegistry(), builder);
        }

        public void merge(final Readable input, final ExtensionRegistry extensionRegistry, final Message.Builder builder) throws IOException {
            merge(toStringBuilder(input), extensionRegistry, builder);
        }

        private static StringBuilder toStringBuilder(final Readable input) throws IOException {
            StringBuilder sb = new StringBuilder();
            CharBuffer charBufferAllocate = CharBuffer.allocate(4096);
            while (true) {
                int i = input.read(charBufferAllocate);
                if (i == -1) {
                    return sb;
                }
                Java8Compatibility.flip(charBufferAllocate);
                sb.append((CharSequence) charBufferAllocate, 0, i);
            }
        }

        public static final class UnknownField {
            final String message;
            final Type type;

            public enum Type {
                FIELD,
                EXTENSION
            }

            public UnknownField(String message, Type type) {
                this.message = message;
                this.type = type;
            }
        }

        private void checkUnknownFields(final List<UnknownField> unknownFields) throws ParseException {
            int i;
            if (unknownFields.isEmpty()) {
                return;
            }
            StringBuilder sb = new StringBuilder("Input contains unknown fields and/or extensions:");
            for (UnknownField unknownField : unknownFields) {
                sb.append('\n');
                sb.append(unknownField.message);
            }
            if (this.allowUnknownFields) {
                TextFormat.logger.warning(sb.toString());
                return;
            }
            if (this.allowUnknownExtensions) {
                Iterator<UnknownField> it = unknownFields.iterator();
                i = 0;
                while (it.hasNext()) {
                    if (it.next().type != UnknownField.Type.FIELD) {
                        i++;
                    }
                }
                TextFormat.logger.warning(sb.toString());
                return;
            }
            i = 0;
            String[] strArrSplit = unknownFields.get(i).message.split(":");
            throw new ParseException(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), sb.toString());
        }

        public void merge(final CharSequence input, final ExtensionRegistry extensionRegistry, final Message.Builder builder) throws ParseException {
            Tokenizer tokenizer = new Tokenizer(input, null);
            MessageReflection.BuilderAdapter builderAdapter = new MessageReflection.BuilderAdapter(builder);
            ArrayList arrayList = new ArrayList();
            while (!tokenizer.atEnd()) {
                mergeField(tokenizer, extensionRegistry, builderAdapter, arrayList, this.recursionLimit);
            }
            checkUnknownFields(arrayList);
        }

        private void mergeField(final Tokenizer tokenizer, final ExtensionRegistry extensionRegistry, final MessageReflection.MergeTarget target, List<UnknownField> unknownFields, int recursionLimit) throws ParseException {
            mergeField(tokenizer, extensionRegistry, target, this.parseInfoTreeBuilder, unknownFields, recursionLimit);
        }

        private void mergeField(final Tokenizer tokenizer, final ExtensionRegistry extensionRegistry, final MessageReflection.MergeTarget target, TextFormatParseInfoTree.Builder parseTreeBuilder, List<UnknownField> unknownFields, int recursionLimit) throws ParseException {
            String strConsumeIdentifier;
            Descriptors.FieldDescriptor fieldDescriptor;
            ExtensionRegistry.ExtensionInfo extensionInfo;
            Descriptors.FieldDescriptor fieldDescriptor2;
            int line = tokenizer.getLine();
            int column = tokenizer.getColumn();
            Descriptors.Descriptor descriptorForType = target.getDescriptorForType();
            if ("google.protobuf.Any".equals(descriptorForType.getFullName()) && tokenizer.tryConsume("[")) {
                if (recursionLimit < 1) {
                    throw tokenizer.parseException("Message is nested too deep");
                }
                mergeAnyFieldValue(tokenizer, extensionRegistry, target, parseTreeBuilder, unknownFields, descriptorForType, recursionLimit - 1);
                return;
            }
            if (tokenizer.tryConsume("[")) {
                StringBuilder sb = new StringBuilder(tokenizer.consumeIdentifier());
                while (tokenizer.tryConsume(".")) {
                    sb.append('.');
                    sb.append(tokenizer.consumeIdentifier());
                }
                strConsumeIdentifier = sb.toString();
                ExtensionRegistry.ExtensionInfo extensionInfoFindExtensionByName = target.findExtensionByName(extensionRegistry, strConsumeIdentifier);
                if (extensionInfoFindExtensionByName == null) {
                    unknownFields.add(new UnknownField((tokenizer.getPreviousLine() + 1) + ":" + (tokenizer.getPreviousColumn() + 1) + ":\t" + descriptorForType.getFullName() + ".[" + strConsumeIdentifier + "]", UnknownField.Type.EXTENSION));
                    fieldDescriptor2 = null;
                } else {
                    if (extensionInfoFindExtensionByName.descriptor.getContainingType() != descriptorForType) {
                        throw tokenizer.parseExceptionPreviousToken("Extension \"" + strConsumeIdentifier + "\" does not extend message type \"" + descriptorForType.getFullName() + "\".");
                    }
                    fieldDescriptor2 = extensionInfoFindExtensionByName.descriptor;
                }
                tokenizer.consume("]");
                fieldDescriptor = fieldDescriptor2;
                extensionInfo = extensionInfoFindExtensionByName;
            } else {
                strConsumeIdentifier = tokenizer.consumeIdentifier();
                Descriptors.FieldDescriptor fieldDescriptorFindFieldByName = descriptorForType.findFieldByName(strConsumeIdentifier);
                if (fieldDescriptorFindFieldByName == null) {
                    fieldDescriptorFindFieldByName = descriptorForType.findFieldByName(strConsumeIdentifier.toLowerCase(Locale.US));
                    if (fieldDescriptorFindFieldByName != null && !fieldDescriptorFindFieldByName.isGroupLike()) {
                        fieldDescriptorFindFieldByName = null;
                    }
                    if (fieldDescriptorFindFieldByName != null && !fieldDescriptorFindFieldByName.getMessageType().getName().equals(strConsumeIdentifier)) {
                        fieldDescriptorFindFieldByName = null;
                    }
                }
                if (fieldDescriptorFindFieldByName == null) {
                    unknownFields.add(new UnknownField((tokenizer.getPreviousLine() + 1) + ":" + (tokenizer.getPreviousColumn() + 1) + ":\t" + descriptorForType.getFullName() + "." + strConsumeIdentifier, UnknownField.Type.FIELD));
                }
                fieldDescriptor = fieldDescriptorFindFieldByName;
                extensionInfo = null;
            }
            if (fieldDescriptor == null) {
                detectSilentMarker(tokenizer, descriptorForType, strConsumeIdentifier);
                guessFieldTypeAndSkip(tokenizer, descriptorForType, recursionLimit);
                return;
            }
            if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                detectSilentMarker(tokenizer, descriptorForType, fieldDescriptor.getFullName());
                tokenizer.tryConsume(":");
                if (parseTreeBuilder != null) {
                    consumeFieldValues(tokenizer, extensionRegistry, target, fieldDescriptor, extensionInfo, parseTreeBuilder.getBuilderForSubMessageField(fieldDescriptor), unknownFields, recursionLimit);
                } else {
                    consumeFieldValues(tokenizer, extensionRegistry, target, fieldDescriptor, extensionInfo, parseTreeBuilder, unknownFields, recursionLimit);
                }
            } else {
                detectSilentMarker(tokenizer, descriptorForType, fieldDescriptor.getFullName());
                tokenizer.consume(":");
                consumeFieldValues(tokenizer, extensionRegistry, target, fieldDescriptor, extensionInfo, parseTreeBuilder, unknownFields, recursionLimit);
            }
            if (parseTreeBuilder != null) {
                parseTreeBuilder.setLocation(fieldDescriptor, TextFormatParseLocation.create(line, column));
            }
            if (tokenizer.tryConsume(";")) {
                return;
            }
            tokenizer.tryConsume(",");
        }

        private String consumeFullTypeName(Tokenizer tokenizer) throws ParseException {
            if (!tokenizer.tryConsume("[")) {
                return tokenizer.consumeIdentifier();
            }
            String strConsumeIdentifier = tokenizer.consumeIdentifier();
            while (tokenizer.tryConsume(".")) {
                strConsumeIdentifier = strConsumeIdentifier + "." + tokenizer.consumeIdentifier();
            }
            if (tokenizer.tryConsume("/")) {
                strConsumeIdentifier = strConsumeIdentifier + "/" + tokenizer.consumeIdentifier();
                while (tokenizer.tryConsume(".")) {
                    strConsumeIdentifier = strConsumeIdentifier + "." + tokenizer.consumeIdentifier();
                }
            }
            tokenizer.consume("]");
            return strConsumeIdentifier;
        }

        private void consumeFieldValues(final Tokenizer tokenizer, final ExtensionRegistry extensionRegistry, final MessageReflection.MergeTarget target, final Descriptors.FieldDescriptor field, final ExtensionRegistry.ExtensionInfo extension, final TextFormatParseInfoTree.Builder parseTreeBuilder, List<UnknownField> unknownFields, int recursionLimit) throws ParseException {
            if (field.isRepeated() && tokenizer.tryConsume("[")) {
                if (tokenizer.tryConsume("]")) {
                    return;
                }
                while (true) {
                    consumeFieldValue(tokenizer, extensionRegistry, target, field, extension, parseTreeBuilder, unknownFields, recursionLimit);
                    if (tokenizer.tryConsume("]")) {
                        return;
                    } else {
                        tokenizer.consume(",");
                    }
                }
            } else {
                consumeFieldValue(tokenizer, extensionRegistry, target, field, extension, parseTreeBuilder, unknownFields, recursionLimit);
            }
        }

        private void consumeFieldValue(Tokenizer tokenizer, ExtensionRegistry extensionRegistry, MessageReflection.MergeTarget mergeTarget, Descriptors.FieldDescriptor fieldDescriptor, ExtensionRegistry.ExtensionInfo extensionInfo, TextFormatParseInfoTree.Builder builder, List<UnknownField> list, int i) throws ParseException {
            String str;
            if (this.singularOverwritePolicy == SingularOverwritePolicy.FORBID_SINGULAR_OVERWRITES && !fieldDescriptor.isRepeated()) {
                if (mergeTarget.hasField(fieldDescriptor)) {
                    throw tokenizer.parseExceptionPreviousToken("Non-repeated field \"" + fieldDescriptor.getFullName() + "\" cannot be overwritten.");
                }
                if (fieldDescriptor.getContainingOneof() != null && mergeTarget.hasOneof(fieldDescriptor.getContainingOneof())) {
                    Descriptors.OneofDescriptor containingOneof = fieldDescriptor.getContainingOneof();
                    throw tokenizer.parseExceptionPreviousToken("Field \"" + fieldDescriptor.getFullName() + "\" is specified along with field \"" + mergeTarget.getOneofFieldDescriptor(containingOneof).getFullName() + "\", another member of oneof \"" + containingOneof.getName() + "\".");
                }
            }
            Object objValueOf = null;
            if (fieldDescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                switch (AnonymousClass1.$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[fieldDescriptor.getType().ordinal()]) {
                    case 1:
                    case 2:
                    case 3:
                        objValueOf = Integer.valueOf(tokenizer.consumeInt32());
                        break;
                    case 4:
                    case 5:
                    case 6:
                        objValueOf = Long.valueOf(tokenizer.consumeInt64());
                        break;
                    case 7:
                        objValueOf = Boolean.valueOf(tokenizer.consumeBoolean());
                        break;
                    case 8:
                        objValueOf = Float.valueOf(tokenizer.consumeFloat());
                        break;
                    case 9:
                        objValueOf = Double.valueOf(tokenizer.consumeDouble());
                        break;
                    case 10:
                    case 11:
                        objValueOf = Integer.valueOf(tokenizer.consumeUInt32());
                        break;
                    case 12:
                    case 13:
                        objValueOf = Long.valueOf(tokenizer.consumeUInt64());
                        break;
                    case 14:
                        objValueOf = tokenizer.consumeString();
                        break;
                    case 15:
                        objValueOf = tokenizer.consumeByteString();
                        break;
                    case 16:
                        Descriptors.EnumDescriptor enumType = fieldDescriptor.getEnumType();
                        if (tokenizer.lookingAtInteger()) {
                            int iConsumeInt32 = tokenizer.consumeInt32();
                            if (enumType.isClosed()) {
                                objValueOf = enumType.findValueByNumber(iConsumeInt32);
                            } else {
                                objValueOf = enumType.findValueByNumberCreatingIfUnknown(iConsumeInt32);
                            }
                            if (objValueOf == null) {
                                String str2 = "Enum type \"" + enumType.getFullName() + "\" has no value with number " + iConsumeInt32 + '.';
                                if (this.allowUnknownEnumValues) {
                                    TextFormat.logger.warning(str2);
                                    return;
                                }
                                throw tokenizer.parseExceptionPreviousToken("Enum type \"" + enumType.getFullName() + "\" has no value with number " + iConsumeInt32 + '.');
                            }
                        } else {
                            String strConsumeIdentifier = tokenizer.consumeIdentifier();
                            objValueOf = enumType.findValueByName(strConsumeIdentifier);
                            if (objValueOf == null) {
                                String str3 = "Enum type \"" + enumType.getFullName() + "\" has no value named \"" + strConsumeIdentifier + "\".";
                                if (this.allowUnknownEnumValues) {
                                    TextFormat.logger.warning(str3);
                                    return;
                                }
                                throw tokenizer.parseExceptionPreviousToken(str3);
                            }
                        }
                    case 17:
                    case 18:
                        throw new RuntimeException("Can't get here.");
                }
            } else {
                if (i < 1) {
                    throw tokenizer.parseException("Message is nested too deep");
                }
                if (tokenizer.tryConsume("<")) {
                    str = ">";
                } else {
                    tokenizer.consume("{");
                    str = "}";
                }
                String str4 = str;
                MessageReflection.MergeTarget mergeTargetNewMergeTargetForField = mergeTarget.newMergeTargetForField(fieldDescriptor, extensionInfo != null ? extensionInfo.defaultInstance : null);
                while (!tokenizer.tryConsume(str4)) {
                    if (tokenizer.atEnd()) {
                        throw tokenizer.parseException("Expected \"" + str4 + "\".");
                    }
                    mergeField(tokenizer, extensionRegistry, mergeTargetNewMergeTargetForField, builder, list, i - 1);
                }
                objValueOf = mergeTargetNewMergeTargetForField.finish();
            }
            if (fieldDescriptor.isRepeated()) {
                mergeTarget.addRepeatedField(fieldDescriptor, objValueOf);
            } else {
                mergeTarget.setField(fieldDescriptor, objValueOf);
            }
        }

        private void mergeAnyFieldValue(final Tokenizer tokenizer, final ExtensionRegistry extensionRegistry, MessageReflection.MergeTarget target, final TextFormatParseInfoTree.Builder parseTreeBuilder, List<UnknownField> unknownFields, Descriptors.Descriptor anyDescriptor, int recursionLimit) throws ParseException {
            String str;
            StringBuilder sb = new StringBuilder();
            while (true) {
                sb.append(tokenizer.consumeIdentifier());
                if (!tokenizer.tryConsume("]")) {
                    if (tokenizer.tryConsume("/")) {
                        sb.append("/");
                    } else if (tokenizer.tryConsume(".")) {
                        sb.append(".");
                    } else {
                        throw tokenizer.parseExceptionPreviousToken("Expected a valid type URL.");
                    }
                } else {
                    detectSilentMarker(tokenizer, anyDescriptor, sb.toString());
                    tokenizer.tryConsume(":");
                    if (tokenizer.tryConsume("<")) {
                        str = ">";
                    } else {
                        tokenizer.consume("{");
                        str = "}";
                    }
                    String str2 = str;
                    String string = sb.toString();
                    try {
                        Descriptors.Descriptor descriptorForTypeUrl = this.typeRegistry.getDescriptorForTypeUrl(string);
                        if (descriptorForTypeUrl == null) {
                            throw tokenizer.parseException("Unable to parse Any of type: " + string + ". Please make sure that the TypeRegistry contains the descriptors for the given types.");
                        }
                        DynamicMessage.Builder builderNewBuilderForType = DynamicMessage.getDefaultInstance(descriptorForTypeUrl).newBuilderForType();
                        MessageReflection.BuilderAdapter builderAdapter = new MessageReflection.BuilderAdapter(builderNewBuilderForType);
                        while (!tokenizer.tryConsume(str2)) {
                            mergeField(tokenizer, extensionRegistry, builderAdapter, parseTreeBuilder, unknownFields, recursionLimit);
                        }
                        target.setField(anyDescriptor.findFieldByName("type_url"), sb.toString());
                        target.setField(anyDescriptor.findFieldByName("value"), builderNewBuilderForType.build().toByteString());
                        return;
                    } catch (InvalidProtocolBufferException unused) {
                        throw tokenizer.parseException("Invalid valid type URL. Found: " + string);
                    }
                }
            }
        }

        private void skipField(Tokenizer tokenizer, Descriptors.Descriptor type, int recursionLimit) throws ParseException {
            detectSilentMarker(tokenizer, type, consumeFullTypeName(tokenizer));
            guessFieldTypeAndSkip(tokenizer, type, recursionLimit);
            if (tokenizer.tryConsume(";")) {
                return;
            }
            tokenizer.tryConsume(",");
        }

        private void skipFieldMessage(Tokenizer tokenizer, Descriptors.Descriptor type, int recursionLimit) throws ParseException {
            String str;
            if (tokenizer.tryConsume("<")) {
                str = ">";
            } else {
                tokenizer.consume("{");
                str = "}";
            }
            while (!tokenizer.lookingAt(">") && !tokenizer.lookingAt("}")) {
                skipField(tokenizer, type, recursionLimit);
            }
            tokenizer.consume(str);
        }

        private void skipFieldValue(Tokenizer tokenizer) throws ParseException {
            if (tokenizer.tryConsumeByteString() || tokenizer.tryConsumeIdentifier() || tokenizer.tryConsumeInt64() || tokenizer.tryConsumeUInt64() || tokenizer.tryConsumeDouble() || tokenizer.tryConsumeFloat()) {
                return;
            }
            throw tokenizer.parseException("Invalid field value: " + tokenizer.currentToken);
        }

        private void guessFieldTypeAndSkip(Tokenizer tokenizer, Descriptors.Descriptor type, int recursionLimit) throws ParseException {
            boolean zTryConsume = tokenizer.tryConsume(":");
            if (tokenizer.lookingAt("[")) {
                skipFieldShortFormedRepeated(tokenizer, zTryConsume, type, recursionLimit);
                return;
            }
            if (zTryConsume && !tokenizer.lookingAt("{") && !tokenizer.lookingAt("<")) {
                skipFieldValue(tokenizer);
            } else {
                if (recursionLimit < 1) {
                    throw tokenizer.parseException("Message is nested too deep");
                }
                skipFieldMessage(tokenizer, type, recursionLimit - 1);
            }
        }

        private void skipFieldShortFormedRepeated(Tokenizer tokenizer, boolean scalarAllowed, Descriptors.Descriptor type, int recursionLimit) throws ParseException {
            if (!tokenizer.tryConsume("[") || tokenizer.tryConsume("]")) {
                return;
            }
            while (true) {
                if (tokenizer.lookingAt("{") || tokenizer.lookingAt("<")) {
                    if (recursionLimit < 1) {
                        throw tokenizer.parseException("Message is nested too deep");
                    }
                    skipFieldMessage(tokenizer, type, recursionLimit - 1);
                } else if (scalarAllowed) {
                    skipFieldValue(tokenizer);
                } else {
                    throw tokenizer.parseException("Invalid repeated scalar field: missing \":\" before \"[\".");
                }
                if (tokenizer.tryConsume("]")) {
                    return;
                } else {
                    tokenizer.consume(",");
                }
            }
        }
    }

    public static String escapeBytes(ByteString input) {
        return TextFormatEscaper.escapeBytes(input);
    }

    public static String escapeBytes(byte[] input) {
        return TextFormatEscaper.escapeBytes(input);
    }

    public static ByteString unescapeBytes(CharSequence charString) throws InvalidEscapeSequenceException {
        int i;
        int i2;
        int length;
        int i3;
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8(charString.toString());
        int size = byteStringCopyFromUtf8.size();
        byte[] bArr = new byte[size];
        int i4 = 0;
        int i5 = 0;
        while (i4 < byteStringCopyFromUtf8.size()) {
            byte bByteAt = byteStringCopyFromUtf8.byteAt(i4);
            if (bByteAt == 92) {
                int i6 = i4 + 1;
                if (i6 < byteStringCopyFromUtf8.size()) {
                    byte bByteAt2 = byteStringCopyFromUtf8.byteAt(i6);
                    if (isOctal(bByteAt2)) {
                        int iDigitValue = digitValue(bByteAt2);
                        int i7 = i4 + 2;
                        if (i7 < byteStringCopyFromUtf8.size() && isOctal(byteStringCopyFromUtf8.byteAt(i7))) {
                            iDigitValue = (iDigitValue * 8) + digitValue(byteStringCopyFromUtf8.byteAt(i7));
                            i6 = i7;
                        }
                        i4 = i6 + 1;
                        if (i4 >= byteStringCopyFromUtf8.size() || !isOctal(byteStringCopyFromUtf8.byteAt(i4))) {
                            i4 = i6;
                        } else {
                            iDigitValue = (iDigitValue * 8) + digitValue(byteStringCopyFromUtf8.byteAt(i4));
                        }
                        i3 = i5 + 1;
                        bArr[i5] = (byte) iDigitValue;
                    } else {
                        if (bByteAt2 == 34) {
                            i = i5 + 1;
                            bArr[i5] = 34;
                        } else if (bByteAt2 == 39) {
                            i = i5 + 1;
                            bArr[i5] = 39;
                        } else if (bByteAt2 != 63) {
                            if (bByteAt2 == 85) {
                                int i8 = i4 + 2;
                                i2 = i4 + 9;
                                if (i2 >= byteStringCopyFromUtf8.size()) {
                                    throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\U' with too few hex chars");
                                }
                                int iDigitValue2 = 0;
                                int i9 = i8;
                                while (true) {
                                    int i10 = i4 + 10;
                                    if (i9 < i10) {
                                        byte bByteAt3 = byteStringCopyFromUtf8.byteAt(i9);
                                        if (!isHex(bByteAt3)) {
                                            throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\U' with too few hex chars");
                                        }
                                        iDigitValue2 = (iDigitValue2 << 4) | digitValue(bByteAt3);
                                        i9++;
                                    } else {
                                        if (!Character.isValidCodePoint(iDigitValue2)) {
                                            throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\U" + byteStringCopyFromUtf8.substring(i8, i10).toStringUtf8() + "' is not a valid code point value");
                                        }
                                        Character.UnicodeBlock unicodeBlockOf = Character.UnicodeBlock.of(iDigitValue2);
                                        if (unicodeBlockOf != null && (unicodeBlockOf.equals(Character.UnicodeBlock.LOW_SURROGATES) || unicodeBlockOf.equals(Character.UnicodeBlock.HIGH_SURROGATES) || unicodeBlockOf.equals(Character.UnicodeBlock.HIGH_PRIVATE_USE_SURROGATES))) {
                                            throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\U" + byteStringCopyFromUtf8.substring(i8, i10).toStringUtf8() + "' refers to a surrogate code unit");
                                        }
                                        byte[] bytes = new String(new int[]{iDigitValue2}, 0, 1).getBytes(Internal.UTF_8);
                                        System.arraycopy(bytes, 0, bArr, i5, bytes.length);
                                        length = bytes.length;
                                    }
                                }
                            } else if (bByteAt2 == 92) {
                                i = i5 + 1;
                                bArr[i5] = 92;
                            } else if (bByteAt2 == 102) {
                                i = i5 + 1;
                                bArr[i5] = 12;
                            } else if (bByteAt2 == 110) {
                                i = i5 + 1;
                                bArr[i5] = 10;
                            } else if (bByteAt2 == 114) {
                                i = i5 + 1;
                                bArr[i5] = 13;
                            } else if (bByteAt2 == 120) {
                                int i11 = i4 + 2;
                                if (i11 < byteStringCopyFromUtf8.size() && isHex(byteStringCopyFromUtf8.byteAt(i11))) {
                                    int iDigitValue3 = digitValue(byteStringCopyFromUtf8.byteAt(i11));
                                    i4 += 3;
                                    if (i4 >= byteStringCopyFromUtf8.size() || !isHex(byteStringCopyFromUtf8.byteAt(i4))) {
                                        i4 = i11;
                                    } else {
                                        iDigitValue3 = (iDigitValue3 * 16) + digitValue(byteStringCopyFromUtf8.byteAt(i4));
                                    }
                                    i3 = i5 + 1;
                                    bArr[i5] = (byte) iDigitValue3;
                                } else {
                                    throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\x' with no digits");
                                }
                            } else if (bByteAt2 == 97) {
                                i = i5 + 1;
                                bArr[i5] = 7;
                            } else if (bByteAt2 == 98) {
                                i = i5 + 1;
                                bArr[i5] = 8;
                            } else {
                                switch (bByteAt2) {
                                    case 116:
                                        i = i5 + 1;
                                        bArr[i5] = 9;
                                        break;
                                    case 117:
                                        int i12 = i4 + 2;
                                        i2 = i4 + 5;
                                        if (i2 < byteStringCopyFromUtf8.size() && isHex(byteStringCopyFromUtf8.byteAt(i12))) {
                                            int i13 = i4 + 3;
                                            if (isHex(byteStringCopyFromUtf8.byteAt(i13))) {
                                                int i14 = i4 + 4;
                                                if (isHex(byteStringCopyFromUtf8.byteAt(i14)) && isHex(byteStringCopyFromUtf8.byteAt(i2))) {
                                                    char cDigitValue = (char) ((digitValue(byteStringCopyFromUtf8.byteAt(i14)) << 4) | (digitValue(byteStringCopyFromUtf8.byteAt(i12)) << 12) | (digitValue(byteStringCopyFromUtf8.byteAt(i13)) << 8) | digitValue(byteStringCopyFromUtf8.byteAt(i2)));
                                                    if (cDigitValue >= 55296 && cDigitValue <= 57343) {
                                                        throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\u' refers to a surrogate");
                                                    }
                                                    byte[] bytes2 = Character.toString(cDigitValue).getBytes(Internal.UTF_8);
                                                    System.arraycopy(bytes2, 0, bArr, i5, bytes2.length);
                                                    length = bytes2.length;
                                                    break;
                                                }
                                            }
                                        }
                                        throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\u' with too few hex chars");
                                    case 118:
                                        i = i5 + 1;
                                        bArr[i5] = 11;
                                        break;
                                    default:
                                        throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\" + ((char) bByteAt2) + '\'');
                                }
                            }
                            i5 += length;
                            i4 = i2;
                        } else {
                            i = i5 + 1;
                            bArr[i5] = 63;
                        }
                        i5 = i;
                        i4 = i6;
                    }
                    i5 = i3;
                } else {
                    throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\' at end of string.");
                }
            } else {
                bArr[i5] = bByteAt;
                i5++;
            }
            i4++;
        }
        if (size == i5) {
            return ByteString.wrap(bArr);
        }
        return ByteString.copyFrom(bArr, 0, i5);
    }

    public static class InvalidEscapeSequenceException extends IOException {
        private static final long serialVersionUID = -8164033650142593304L;

        public InvalidEscapeSequenceException(final String description) {
            super(description);
        }
    }

    public static String escapeText(final String input) {
        return escapeBytes(ByteString.copyFromUtf8(input));
    }

    public static String escapeDoubleQuotesAndBackslashes(final String input) {
        return TextFormatEscaper.escapeDoubleQuotesAndBackslashes(input);
    }

    public static String unescapeText(final String input) throws InvalidEscapeSequenceException {
        return unescapeBytes(input).toStringUtf8();
    }

    public static int parseInt32(final String text) throws NumberFormatException {
        return (int) parseInteger(text, true, false);
    }

    public static int parseUInt32(final String text) throws NumberFormatException {
        return (int) parseInteger(text, false, false);
    }

    public static long parseInt64(final String text) throws NumberFormatException {
        return parseInteger(text, true, true);
    }

    public static long parseUInt64(final String text) throws NumberFormatException {
        return parseInteger(text, false, true);
    }

    private static long parseInteger(final String text, final boolean isSigned, final boolean isLong) throws NumberFormatException {
        int i;
        int i2 = 0;
        if (text.startsWith("-", 0)) {
            if (!isSigned) {
                throw new NumberFormatException("Number must be positive: " + text);
            }
            i2 = 1;
        }
        int i3 = i2;
        if (text.startsWith("0x", i2)) {
            i2 += 2;
            i = 16;
        } else {
            i = text.startsWith("0", i2) ? 8 : 10;
        }
        String strSubstring = text.substring(i2);
        if (strSubstring.length() < 16) {
            long j = Long.parseLong(strSubstring, i);
            if (i3 != 0) {
                j = -j;
            }
            if (isLong) {
                return j;
            }
            if (isSigned) {
                if (j <= 2147483647L && j >= -2147483648L) {
                    return j;
                }
                throw new NumberFormatException("Number out of range for 32-bit signed integer: " + text);
            }
            if (j < 4294967296L && j >= 0) {
                return j;
            }
            throw new NumberFormatException("Number out of range for 32-bit unsigned integer: " + text);
        }
        BigInteger bigInteger = new BigInteger(strSubstring, i);
        if (i3 != 0) {
            bigInteger = bigInteger.negate();
        }
        if (isLong) {
            if (isSigned) {
                if (bigInteger.bitLength() > 63) {
                    throw new NumberFormatException("Number out of range for 64-bit signed integer: " + text);
                }
            } else if (bigInteger.bitLength() > 64) {
                throw new NumberFormatException("Number out of range for 64-bit unsigned integer: " + text);
            }
        } else if (isSigned) {
            if (bigInteger.bitLength() > 31) {
                throw new NumberFormatException("Number out of range for 32-bit signed integer: " + text);
            }
        } else if (bigInteger.bitLength() > 32) {
            throw new NumberFormatException("Number out of range for 32-bit unsigned integer: " + text);
        }
        return bigInteger.longValue();
    }
}
