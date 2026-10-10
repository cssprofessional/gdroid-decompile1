package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.TextFormat;

/* JADX INFO: loaded from: classes.dex */
public final class DebugFormat {
    private final boolean isSingleLine;

    private DebugFormat(boolean singleLine) {
        this.isSingleLine = singleLine;
    }

    public static DebugFormat singleLine() {
        return new DebugFormat(true);
    }

    public static DebugFormat multiline() {
        return new DebugFormat(false);
    }

    public String toString(MessageOrBuilder message) {
        if (!this.isSingleLine) {
            return TextFormat.debugFormatPrinter().printToString(message, TextFormat.Printer.FieldReporterLevel.DEBUG_MULTILINE);
        }
        return TextFormat.debugFormatPrinter().emittingSingleLine(this.isSingleLine).printToString(message, TextFormat.Printer.FieldReporterLevel.DEBUG_SINGLE_LINE);
    }

    public String toString(Descriptors.FieldDescriptor field, Object value) {
        if (!this.isSingleLine) {
            return TextFormat.debugFormatPrinter().printFieldToString(field, value);
        }
        return TextFormat.debugFormatPrinter().emittingSingleLine(this.isSingleLine).printFieldToString(field, value);
    }

    public String toString(UnknownFieldSet fields) {
        if (!this.isSingleLine) {
            return TextFormat.debugFormatPrinter().printToString(fields);
        }
        return TextFormat.debugFormatPrinter().emittingSingleLine(this.isSingleLine).printToString(fields);
    }

    public Object lazyToString(MessageOrBuilder message) {
        return new LazyDebugOutput(message, this);
    }

    public Object lazyToString(UnknownFieldSet fields) {
        return new LazyDebugOutput(fields, this);
    }

    public static class LazyDebugOutput {
        private final UnknownFieldSet fields;
        private final DebugFormat format;
        private final MessageOrBuilder message;

        public LazyDebugOutput(MessageOrBuilder message, DebugFormat format) {
            this.message = message;
            this.fields = null;
            this.format = format;
        }

        public LazyDebugOutput(UnknownFieldSet fields, DebugFormat format) {
            this.message = null;
            this.fields = fields;
            this.format = format;
        }

        public String toString() {
            MessageOrBuilder messageOrBuilder = this.message;
            if (messageOrBuilder != null) {
                return this.format.toString(messageOrBuilder);
            }
            return this.format.toString(this.fields);
        }
    }
}
