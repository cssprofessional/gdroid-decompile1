package org.bouncycastle.pqc.crypto.sphincsplus;

/* JADX INFO: loaded from: classes3.dex */
class NodeEntry {
    final int nodeHeight;
    final byte[] nodeValue;

    public NodeEntry(byte[] bArr, int i) {
        this.nodeValue = bArr;
        this.nodeHeight = i;
    }
}
