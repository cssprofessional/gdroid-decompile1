package kotlin.reflect;

/* JADX INFO: compiled from: KClass.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface KClass<T> extends KDeclarationContainer, KAnnotatedElement, KClassifier {
    String getSimpleName();

    int hashCode();

    boolean isInstance(Object obj);
}
