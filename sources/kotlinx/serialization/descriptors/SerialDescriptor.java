package kotlinx.serialization.descriptors;

/* JADX INFO: compiled from: SerialDescriptor.kt */
/* JADX INFO: loaded from: classes3.dex */
public interface SerialDescriptor {
    SerialDescriptor getElementDescriptor(int i);

    String getElementName(int i);

    int getElementsCount();

    SerialKind getKind();

    String getSerialName();
}
