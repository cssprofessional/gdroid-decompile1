package com.gmodvr.flat;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
final class VtfWriter {
    static final int FLAGS = 8972;
    static final int FORMAT_RGBA8888 = 0;
    static final int HEADER_SIZE = 80;

    private VtfWriter() {
    }

    public static byte[] rgba8888(int i, int i2, byte[] bArr) {
        if (i <= 0 || i2 <= 0 || i > 65535 || i2 > 65535) {
            throw new IllegalArgumentException("Bad VTF size " + i + "x" + i2);
        }
        int i3 = i * i2 * 4;
        if (bArr.length != i3) {
            throw new IllegalArgumentException("Expected " + i3 + " bytes of RGBA, got " + bArr.length);
        }
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(bArr.length + 80).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.put(new byte[]{86, 84, 70, 0});
        byteBufferOrder.putInt(7).putInt(2);
        byteBufferOrder.putInt(80);
        byteBufferOrder.putShort((short) i).putShort((short) i2);
        byteBufferOrder.putInt(FLAGS);
        byteBufferOrder.putShort((short) 1);
        byteBufferOrder.putShort((short) 0);
        byteBufferOrder.putInt(0);
        byteBufferOrder.putFloat(0.5f).putFloat(0.5f).putFloat(0.5f);
        byteBufferOrder.putInt(0);
        byteBufferOrder.putFloat(1.0f);
        byteBufferOrder.putInt(0);
        byteBufferOrder.put((byte) 1);
        byteBufferOrder.putInt(-1);
        byteBufferOrder.put((byte) 0).put((byte) 0);
        byteBufferOrder.putShort((short) 1);
        byteBufferOrder.position(80);
        byteBufferOrder.put(bArr);
        return byteBufferOrder.array();
    }

    public static String touchVmt(String str) {
        return "\"UnlitGeneric\"\n{\n\t\"$basetexture\" \"" + str + "\"\n\t\"$translucent\" \"1\"\n\t\"$ignorez\" \"1\"\n\t\"$vertexcolor\" \"1\"\n\t\"$vertexalpha\" \"1\"\n}\n";
    }
}
