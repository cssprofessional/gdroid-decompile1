package org.bouncycastle.crypto;

import javax.security.auth.Destroyable;

/* JADX INFO: loaded from: classes3.dex */
public interface SecretWithEncapsulation extends Destroyable {
    byte[] getEncapsulation();

    byte[] getSecret();
}
