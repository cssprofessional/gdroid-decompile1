package in.dragonbra.javasteam.base;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: ISteamSerializable.kt */
/* JADX INFO: loaded from: classes.dex */
public interface ISteamSerializable {
    void deserialize(InputStream inputStream) throws IOException;

    void serialize(OutputStream outputStream) throws IOException;
}
