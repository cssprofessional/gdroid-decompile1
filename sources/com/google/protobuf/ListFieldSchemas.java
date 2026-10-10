package com.google.protobuf;

/* JADX INFO: loaded from: classes.dex */
@CheckReturnValue
final class ListFieldSchemas {
    private static final ListFieldSchema FULL_SCHEMA = loadSchemaForFullRuntime();
    private static final ListFieldSchema LITE_SCHEMA = new ListFieldSchemaLite();

    public static ListFieldSchema full() {
        return FULL_SCHEMA;
    }

    public static ListFieldSchema lite() {
        return LITE_SCHEMA;
    }

    private static ListFieldSchema loadSchemaForFullRuntime() {
        if (Protobuf.assumeLiteRuntime) {
            return null;
        }
        try {
            int i = ListFieldSchemaFull.$r8$clinit;
            return (ListFieldSchema) ListFieldSchemaFull.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    private ListFieldSchemas() {
    }
}
