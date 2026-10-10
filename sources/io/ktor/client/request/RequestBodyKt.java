package io.ktor.client.request;

import io.ktor.util.AttributeKey;
import io.ktor.util.reflect.TypeInfo;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;

/* JADX INFO: compiled from: RequestBody.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class RequestBodyKt {
    public static final AttributeKey<TypeInfo> BodyTypeAttributeKey;

    public static final AttributeKey<TypeInfo> getBodyTypeAttributeKey() {
        return BodyTypeAttributeKey;
    }

    static {
        KType kTypeTypeOf;
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(TypeInfo.class);
        try {
            kTypeTypeOf = Reflection.typeOf(TypeInfo.class);
        } catch (Throwable unused) {
            kTypeTypeOf = null;
        }
        BodyTypeAttributeKey = new AttributeKey<>("BodyTypeAttributeKey", new TypeInfo(orCreateKotlinClass, kTypeTypeOf));
    }
}
