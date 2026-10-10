package org.tukaani.xz;

/* JADX INFO: loaded from: classes3.dex */
public class ArrayCache {
    private static volatile ArrayCache defaultCache;
    private static final ArrayCache dummyCache;

    public void putArray(byte[] bArr) {
    }

    public void putArray(int[] iArr) {
    }

    static {
        ArrayCache arrayCache = new ArrayCache();
        dummyCache = arrayCache;
        String property = System.getProperty("org.tukaani.xz.ArrayCache");
        if (property == null) {
            property = "Dummy";
        }
        if (!property.equals("Basic")) {
            if (property.equals("Dummy")) {
                defaultCache = arrayCache;
                return;
            }
            throw new Error("Unsupported value '" + property + "' in the system property org.tukaani.xz.ArrayCache. Supported values: Dummy, Basic");
        }
        defaultCache = BasicArrayCache.getInstance();
    }

    public static ArrayCache getDummyCache() {
        return dummyCache;
    }

    public static ArrayCache getDefaultCache() {
        return defaultCache;
    }

    public static void setDefaultCache(ArrayCache arrayCache) {
        arrayCache.getClass();
        defaultCache = arrayCache;
    }

    public byte[] getByteArray(int i, boolean z) {
        return new byte[i];
    }

    public int[] getIntArray(int i, boolean z) {
        return new int[i];
    }
}
