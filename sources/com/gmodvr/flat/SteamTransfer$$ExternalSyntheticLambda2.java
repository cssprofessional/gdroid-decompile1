package com.gmodvr.flat;

import in.dragonbra.javasteam.types.ChunkData;
import java.util.function.ToLongFunction;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class SteamTransfer$$ExternalSyntheticLambda2 implements ToLongFunction {
    @Override // java.util.function.ToLongFunction
    public final long applyAsLong(Object obj) {
        return ((ChunkData) obj).getOffset();
    }
}
