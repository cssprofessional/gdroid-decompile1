package io.ktor.util.reflect;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;

/* JADX INFO: compiled from: Type.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TypeInfo {
    public final KType kotlinType;
    public final KClass<?> type;

    public TypeInfo(KClass<?> type, KType kType) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.kotlinType = kType;
    }

    public final KClass<?> getType() {
        return this.type;
    }

    public int hashCode() {
        KType kType = this.kotlinType;
        return kType != null ? kType.hashCode() : this.type.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TypeInfo)) {
            return false;
        }
        KType kType = this.kotlinType;
        if (kType == null) {
            TypeInfo typeInfo = (TypeInfo) obj;
            if (typeInfo.kotlinType == null) {
                return Intrinsics.areEqual(this.type, typeInfo.type);
            }
        }
        return Intrinsics.areEqual(kType, ((TypeInfo) obj).kotlinType);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("TypeInfo(");
        Object obj = this.kotlinType;
        if (obj == null) {
            obj = this.type;
        }
        sb.append(obj);
        sb.append(')');
        return sb.toString();
    }
}
