package org.bouncycastle.pqc.jcajce.interfaces;

import java.security.Key;
import org.bouncycastle.pqc.jcajce.spec.RainbowParameterSpec;

/* JADX INFO: loaded from: classes3.dex */
public interface RainbowKey extends Key {
    RainbowParameterSpec getParameterSpec();
}
