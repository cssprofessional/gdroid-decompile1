package in.dragonbra.javasteam.types;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MessageObject.kt */
/* JADX INFO: loaded from: classes2.dex */
public class MessageObject {
    private KeyValue keyValues;

    /* JADX WARN: Multi-variable type inference failed */
    public MessageObject() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public MessageObject(KeyValue keyValues) {
        Intrinsics.checkNotNullParameter(keyValues, "keyValues");
        this.keyValues = keyValues;
    }

    public /* synthetic */ MessageObject(KeyValue keyValue, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new KeyValue("MessageObject", null, 2, null) : keyValue);
    }

    public final KeyValue getKeyValues() {
        return this.keyValues;
    }

    public final void setKeyValues(KeyValue keyValue) {
        Intrinsics.checkNotNullParameter(keyValue, "<set-?>");
        this.keyValues = keyValue;
    }

    public final boolean readFromStream(InputStream stream) throws IOException {
        Intrinsics.checkNotNullParameter(stream, "stream");
        return this.keyValues.tryReadAsBinary(stream);
    }

    public final void writeToStream(OutputStream stream) throws IOException {
        Intrinsics.checkNotNullParameter(stream, "stream");
        this.keyValues.saveToStream(stream, true);
    }
}
