package io.ktor.utils.io;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: ByteReadChannelOperations.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.utils.io.ByteReadChannelOperationsKt", f = "ByteReadChannelOperations.kt", l = {446, 461, 485}, m = "readUTF8LineTo-RRvyBJ8", v = 1)
public final class ByteReadChannelOperationsKt$readUTF8LineTo$2 extends ContinuationImpl {
    public byte B$0;
    public int I$0;
    public int I$1;
    public int I$2;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public int label;
    public /* synthetic */ Object result;

    public ByteReadChannelOperationsKt$readUTF8LineTo$2(Continuation<? super ByteReadChannelOperationsKt$readUTF8LineTo$2> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
        return ByteReadChannelOperationsKt.m8136readUTF8LineToRRvyBJ8(null, null, 0, 0, this);
    }
}
