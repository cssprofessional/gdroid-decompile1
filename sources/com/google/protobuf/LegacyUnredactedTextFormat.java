package com.google.protobuf;

import com.google.protobuf.TextFormat;

/* JADX INFO: loaded from: classes.dex */
public final class LegacyUnredactedTextFormat {
    private LegacyUnredactedTextFormat() {
    }

    public static String legacyUnredactedMultilineString(MessageOrBuilder message) {
        return TextFormat.printer().printToString(message, TextFormat.Printer.FieldReporterLevel.LEGACY_MULTILINE);
    }

    public static String legacyUnredactedMultilineString(UnknownFieldSet fields) {
        return TextFormat.printer().printToString(fields);
    }

    public static String legacyUnredactedSingleLineString(MessageOrBuilder message) {
        return TextFormat.printer().emittingSingleLine(true).printToString(message, TextFormat.Printer.FieldReporterLevel.LEGACY_SINGLE_LINE);
    }

    public static String legacyUnredactedSingleLineString(UnknownFieldSet fields) {
        return TextFormat.printer().emittingSingleLine(true).printToString(fields);
    }

    public static String legacyUnredactedToString(final Object object) {
        final String[] strArr = new String[1];
        ProtobufToStringOutput.callWithTextFormat(new Runnable() { // from class: com.google.protobuf.LegacyUnredactedTextFormat$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                LegacyUnredactedTextFormat.lambda$legacyUnredactedToString$0(strArr, object);
            }
        });
        return strArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$legacyUnredactedToString$0(String[] strArr, Object obj) {
        strArr[0] = obj.toString();
    }

    public static String legacyUnredactedStringValueOf(Object object) {
        return object == null ? String.valueOf(object) : legacyUnredactedToString(object);
    }
}
