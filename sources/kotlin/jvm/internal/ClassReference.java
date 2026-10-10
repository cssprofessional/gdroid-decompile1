package kotlin.jvm.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function10;
import kotlin.jvm.functions.Function11;
import kotlin.jvm.functions.Function12;
import kotlin.jvm.functions.Function13;
import kotlin.jvm.functions.Function14;
import kotlin.jvm.functions.Function15;
import kotlin.jvm.functions.Function16;
import kotlin.jvm.functions.Function17;
import kotlin.jvm.functions.Function18;
import kotlin.jvm.functions.Function19;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function20;
import kotlin.jvm.functions.Function21;
import kotlin.jvm.functions.Function22;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function7;
import kotlin.jvm.functions.Function8;
import kotlin.jvm.functions.Function9;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: ClassReference.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ClassReference implements KClass<Object>, ClassBasedDeclarationContainer {
    public static final Companion Companion = new Companion(null);
    public static final Map<Class<? extends Function<?>>, Integer> FUNCTION_CLASSES;
    public final Class<?> jClass;

    public ClassReference(Class<?> jClass) {
        Intrinsics.checkNotNullParameter(jClass, "jClass");
        this.jClass = jClass;
    }

    @Override // kotlin.jvm.internal.ClassBasedDeclarationContainer
    public Class<?> getJClass() {
        return this.jClass;
    }

    @Override // kotlin.reflect.KClass
    public String getSimpleName() {
        return Companion.getClassSimpleName(getJClass());
    }

    @Override // kotlin.reflect.KClass
    public boolean isInstance(Object obj) {
        return Companion.isInstance(obj, getJClass());
    }

    public boolean equals(Object obj) {
        return (obj instanceof ClassReference) && Intrinsics.areEqual(JvmClassMappingKt.getJavaObjectType(this), JvmClassMappingKt.getJavaObjectType((KClass) obj));
    }

    @Override // kotlin.reflect.KClass
    public int hashCode() {
        return JvmClassMappingKt.getJavaObjectType(this).hashCode();
    }

    public String toString() {
        return getJClass().toString() + " (Kotlin reflection is not available)";
    }

    /* JADX INFO: compiled from: ClassReference.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:101:0x016c, code lost:
        
            if (r10.equals("kotlin.jvm.internal.IntCompanionObject") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:109:0x0187, code lost:
        
            if (r10.equals("kotlin.jvm.internal.BooleanCompanionObject") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:128:0x01c9, code lost:
        
            if (r10.equals("java.lang.Double") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:132:0x01d6, code lost:
        
            if (r10.equals("kotlin.jvm.internal.StringCompanionObject") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:143:0x01fc, code lost:
        
            if (r10.equals("kotlin.jvm.internal.FloatCompanionObject") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:146:0x0206, code lost:
        
            if (r10.equals("java.lang.Long") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:154:0x0221, code lost:
        
            if (r10.equals("java.lang.Byte") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:158:0x022e, code lost:
        
            if (r10.equals("java.lang.Boolean") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:162:0x023b, code lost:
        
            if (r10.equals("kotlin.jvm.internal.EnumCompanionObject") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:165:0x0245, code lost:
        
            if (r10.equals("java.lang.Character") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:169:0x0252, code lost:
        
            if (r10.equals("short") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:173:0x025f, code lost:
        
            if (r10.equals("float") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:177:0x026c, code lost:
        
            if (r10.equals("kotlin.jvm.internal.ShortCompanionObject") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:184:0x0284, code lost:
        
            if (r10.equals("boolean") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:187:0x028e, code lost:
        
            if (r10.equals("long") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:190:0x0298, code lost:
        
            if (r10.equals("char") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:193:0x02a2, code lost:
        
            if (r10.equals("byte") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:203:0x02c4, code lost:
        
            if (r10.equals("kotlin.jvm.internal.LongCompanionObject") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:206:0x02ce, code lost:
        
            if (r10.equals("kotlin.jvm.internal.CharCompanionObject") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:209:0x02d8, code lost:
        
            if (r10.equals("java.lang.Short") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:212:0x02e2, code lost:
        
            if (r10.equals("java.lang.Float") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:223:0x0308, code lost:
        
            if (r10.equals("kotlin.jvm.internal.ByteCompanionObject") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:226:0x0311, code lost:
        
            if (r10.equals("double") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:252:0x035f, code lost:
        
            if (r10.equals("kotlin.jvm.internal.DoubleCompanionObject") == false) goto L253;
         */
        /* JADX WARN: Code restructure failed: missing block: B:278:?, code lost:
        
            return "Companion";
         */
        /* JADX WARN: Code restructure failed: missing block: B:284:?, code lost:
        
            return "Double";
         */
        /* JADX WARN: Code restructure failed: missing block: B:287:?, code lost:
        
            return "Long";
         */
        /* JADX WARN: Code restructure failed: missing block: B:289:?, code lost:
        
            return "Byte";
         */
        /* JADX WARN: Code restructure failed: missing block: B:290:?, code lost:
        
            return "Boolean";
         */
        /* JADX WARN: Code restructure failed: missing block: B:291:?, code lost:
        
            return "Char";
         */
        /* JADX WARN: Code restructure failed: missing block: B:292:?, code lost:
        
            return "Short";
         */
        /* JADX WARN: Code restructure failed: missing block: B:293:?, code lost:
        
            return "Float";
         */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        /* JADX WARN: Removed duplicated region for block: B:253:0x0361 A[ORIG_RETURN, RETURN] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.String simpleNameOf(java.lang.String r10) {
            /*
                Method dump skipped, instruction units count: 1100
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.jvm.internal.ClassReference.Companion.simpleNameOf(java.lang.String):java.lang.String");
        }

        public final String getClassSimpleName(Class<?> jClass) {
            Intrinsics.checkNotNullParameter(jClass, "jClass");
            String str = null;
            if (jClass.isAnonymousClass()) {
                return null;
            }
            if (jClass.isLocalClass()) {
                String simpleName = jClass.getSimpleName();
                Method enclosingMethod = jClass.getEnclosingMethod();
                if (enclosingMethod != null) {
                    Intrinsics.checkNotNull(simpleName);
                    String strSubstringAfter$default = StringsKt__StringsKt.substringAfter$default(simpleName, enclosingMethod.getName() + '$', (String) null, 2, (Object) null);
                    if (strSubstringAfter$default != null) {
                        return strSubstringAfter$default;
                    }
                }
                Constructor<?> enclosingConstructor = jClass.getEnclosingConstructor();
                if (enclosingConstructor == null) {
                    Intrinsics.checkNotNull(simpleName);
                    return StringsKt__StringsKt.substringAfter$default(simpleName, '$', (String) null, 2, (Object) null);
                }
                Intrinsics.checkNotNull(simpleName);
                return StringsKt__StringsKt.substringAfter$default(simpleName, enclosingConstructor.getName() + '$', (String) null, 2, (Object) null);
            }
            if (jClass.isArray()) {
                Class<?> componentType = jClass.getComponentType();
                if (componentType.isPrimitive()) {
                    String name = componentType.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    String strSimpleNameOf = simpleNameOf(name);
                    if (strSimpleNameOf != null) {
                        str = strSimpleNameOf + "Array";
                    }
                }
                return str == null ? "Array" : str;
            }
            String name2 = jClass.getName();
            Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
            String strSimpleNameOf2 = simpleNameOf(name2);
            return strSimpleNameOf2 == null ? jClass.getSimpleName() : strSimpleNameOf2;
        }

        public final boolean isInstance(Object obj, Class<?> jClass) {
            Intrinsics.checkNotNullParameter(jClass, "jClass");
            Map map = ClassReference.FUNCTION_CLASSES;
            Intrinsics.checkNotNull(map, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.get, V of kotlin.collections.MapsKt__MapsKt.get>");
            Integer num = (Integer) map.get(jClass);
            if (num != null) {
                return TypeIntrinsics.isFunctionOfArity(obj, num.intValue());
            }
            if (jClass.isPrimitive()) {
                jClass = JvmClassMappingKt.getJavaObjectType(JvmClassMappingKt.getKotlinClass(jClass));
            }
            return jClass.isInstance(obj);
        }
    }

    static {
        List listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Class[]{Function0.class, Function1.class, Function2.class, Function3.class, Function4.class, Function5.class, Function6.class, Function7.class, Function8.class, Function9.class, Function10.class, Function11.class, Function12.class, Function13.class, Function14.class, Function15.class, Function16.class, Function17.class, Function18.class, Function19.class, Function20.class, Function21.class, Function22.class});
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listListOf, 10));
        int i = 0;
        for (Object obj : listListOf) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            arrayList.add(TuplesKt.to((Class) obj, Integer.valueOf(i)));
            i = i2;
        }
        FUNCTION_CLASSES = MapsKt__MapsKt.toMap(arrayList);
    }
}
