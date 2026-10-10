package com.google.protobuf;

import com.google.protobuf.ProtobufToStringOutput;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes.dex */
public final class ProtobufToStringOutput {
    private static final ThreadLocal<OutputMode> outputMode = ThreadLocal.withInitial(new Supplier() { // from class: com.google.protobuf.ProtobufToStringOutput$$ExternalSyntheticLambda0
        @Override // java.util.function.Supplier
        public final Object get() {
            return ProtobufToStringOutput.OutputMode.TEXT_FORMAT;
        }
    });

    public enum OutputMode {
        DEBUG_FORMAT,
        TEXT_FORMAT
    }

    private ProtobufToStringOutput() {
    }

    private static OutputMode setOutputMode(OutputMode newMode) {
        ThreadLocal<OutputMode> threadLocal = outputMode;
        OutputMode outputMode2 = threadLocal.get();
        threadLocal.set(newMode);
        return outputMode2;
    }

    private static void callWithSpecificFormat(Runnable impl, OutputMode mode) {
        OutputMode outputMode2 = setOutputMode(mode);
        try {
            impl.run();
        } finally {
            setOutputMode(outputMode2);
        }
    }

    public static void callWithDebugFormat(Runnable impl) {
        callWithSpecificFormat(impl, OutputMode.DEBUG_FORMAT);
    }

    public static void callWithTextFormat(Runnable impl) {
        callWithSpecificFormat(impl, OutputMode.TEXT_FORMAT);
    }

    public static boolean shouldOutputDebugFormat() {
        return outputMode.get() == OutputMode.DEBUG_FORMAT;
    }
}
