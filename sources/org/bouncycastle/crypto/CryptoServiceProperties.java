package org.bouncycastle.crypto;

/* JADX INFO: loaded from: classes3.dex */
public interface CryptoServiceProperties {
    int bitsOfSecurity();

    Object getParams();

    CryptoServicePurpose getPurpose();

    String getServiceName();
}
