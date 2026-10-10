package io.ktor.utils.io;

import io.ktor.utils.io.core.OutputArraysJVMKt;
import java.nio.ByteBuffer;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Buffer;
import kotlinx.io.Segment;
import kotlinx.io.SegmentKt;
import kotlinx.io.unsafe.UnsafeBufferOperations;

/* JADX INFO: compiled from: ByteWriteChannelOperations.jvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ByteWriteChannelOperations_jvmKt {
    public static final Object writeFully(ByteWriteChannel byteWriteChannel, ByteBuffer byteBuffer, Continuation<? super Unit> continuation) {
        OutputArraysJVMKt.writeByteBuffer(byteWriteChannel.getWriteBuffer(), byteBuffer);
        Object objFlush = byteWriteChannel.flush(continuation);
        return objFlush == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objFlush : Unit.INSTANCE;
    }

    public static /* synthetic */ Object write$default(ByteWriteChannel byteWriteChannel, int i, Function1 function1, Continuation continuation, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 1;
        }
        return write(byteWriteChannel, i, function1, continuation);
    }

    public static final Object write(ByteWriteChannel byteWriteChannel, int i, Function1<? super ByteBuffer, Unit> function1, Continuation<? super Unit> continuation) {
        UnsafeBufferOperations unsafeBufferOperations = UnsafeBufferOperations.INSTANCE;
        Buffer buffer = byteWriteChannel.getWriteBuffer().getBuffer();
        Segment segmentWritableSegment = buffer.writableSegment(i);
        byte[] bArrDataAsByteArray = segmentWritableSegment.dataAsByteArray(false);
        int limit = segmentWritableSegment.getLimit();
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArrDataAsByteArray, limit, bArrDataAsByteArray.length - limit);
        Intrinsics.checkNotNull(byteBufferWrap);
        function1.invoke(byteBufferWrap);
        int iPosition = byteBufferWrap.position() - limit;
        if (iPosition == i) {
            segmentWritableSegment.writeBackData(bArrDataAsByteArray, iPosition);
            segmentWritableSegment.setLimit(segmentWritableSegment.getLimit() + iPosition);
            buffer.setSizeMut(buffer.getSizeMut() + ((long) iPosition));
        } else {
            if (iPosition < 0 || iPosition > segmentWritableSegment.getRemainingCapacity()) {
                throw new IllegalStateException(("Invalid number of bytes written: " + iPosition + ". Should be in 0.." + segmentWritableSegment.getRemainingCapacity()).toString());
            }
            if (iPosition != 0) {
                segmentWritableSegment.writeBackData(bArrDataAsByteArray, iPosition);
                segmentWritableSegment.setLimit(segmentWritableSegment.getLimit() + iPosition);
                buffer.setSizeMut(buffer.getSizeMut() + ((long) iPosition));
            } else if (SegmentKt.isEmpty(segmentWritableSegment)) {
                buffer.recycleTail();
            }
        }
        Object objFlush = byteWriteChannel.flush(continuation);
        return objFlush == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objFlush : Unit.INSTANCE;
    }
}
