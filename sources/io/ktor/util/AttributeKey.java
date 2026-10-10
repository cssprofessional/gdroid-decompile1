package io.ktor.util;

import io.ktor.util.reflect.TypeInfo;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: Attributes.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AttributeKey<T> {
    public final String name;
    public final TypeInfo type;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AttributeKey)) {
            return false;
        }
        AttributeKey attributeKey = (AttributeKey) obj;
        return Intrinsics.areEqual(this.name, attributeKey.name) && Intrinsics.areEqual(this.type, attributeKey.type);
    }

    public int hashCode() {
        return (this.name.hashCode() * 31) + this.type.hashCode();
    }

    public AttributeKey(String name, TypeInfo type) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(type, "type");
        this.name = name;
        this.type = type;
        if (StringsKt__StringsKt.isBlank(name)) {
            throw new IllegalArgumentException("Name can't be blank");
        }
    }

    public String toString() {
        return "AttributeKey: " + this.name;
    }
}
