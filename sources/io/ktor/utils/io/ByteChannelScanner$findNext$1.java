package io.ktor.utils.io;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: ByteChannelScanner.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.utils.io.ByteChannelScanner", f = "ByteChannelScanner.kt", l = {SteammessagesPublishedfileSteamclient.PublishedFileDetails.CHILDREN_FIELD_NUMBER, 55, SteammessagesPublishedfileSteamclient.PublishedFileDetails.METADATA_FIELD_NUMBER, 70}, m = "findNext$ktor_io", v = 1)
public final class ByteChannelScanner$findNext$1 extends ContinuationImpl {
    public boolean Z$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ ByteChannelScanner this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteChannelScanner$findNext$1(ByteChannelScanner byteChannelScanner, Continuation<? super ByteChannelScanner$findNext$1> continuation) {
        super(continuation);
        this.this$0 = byteChannelScanner;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
        return this.this$0.findNext$ktor_io(false, this);
    }
}
