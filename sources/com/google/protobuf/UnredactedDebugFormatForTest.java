package com.google.protobuf;

import com.google.protobuf.TextFormat;

/* JADX INFO: loaded from: classes.dex */
public final class UnredactedDebugFormatForTest {
    private UnredactedDebugFormatForTest() {
    }

    public static String unredactedMultilineString(MessageOrBuilder message) {
        return TextFormat.printer().printToString(message, TextFormat.Printer.FieldReporterLevel.TEXT_GENERATOR);
    }

    public static String unredactedMultilineString(UnknownFieldSet fields) {
        return TextFormat.printer().printToString(fields);
    }

    public static String unredactedSingleLineString(MessageOrBuilder message) {
        return TextFormat.printer().emittingSingleLine(true).printToString(message, TextFormat.Printer.FieldReporterLevel.TEXT_GENERATOR);
    }

    public static String unredactedSingleLineString(UnknownFieldSet fields) {
        return TextFormat.printer().emittingSingleLine(true).printToString(fields);
    }

    public static String unredactedToString(Object object) {
        return LegacyUnredactedTextFormat.legacyUnredactedToString(object);
    }

    public static String unredactedStringValueOf(Object object) {
        return LegacyUnredactedTextFormat.legacyUnredactedStringValueOf(object);
    }
}
