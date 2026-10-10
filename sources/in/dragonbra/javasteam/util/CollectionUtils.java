package in.dragonbra.javasteam.util;

import in.dragonbra.javasteam.util.compat.ObjectsCompat;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class CollectionUtils {
    public static <T, E> T getKeyByValue(Map<T, E> map, E e) {
        for (Map.Entry<T, E> entry : map.entrySet()) {
            if (ObjectsCompat.equals(e, entry.getValue())) {
                return entry.getKey();
            }
        }
        return null;
    }
}
