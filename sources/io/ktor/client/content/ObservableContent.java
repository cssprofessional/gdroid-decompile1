package io.ktor.client.content;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import io.ktor.client.utils.ByteChannelUtilsKt;
import io.ktor.http.ContentType;
import io.ktor.http.Headers;
import io.ktor.http.content.OutgoingContent;
import io.ktor.utils.io.ByteChannelCtorKt;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.ByteWriteChannel;
import io.ktor.utils.io.ByteWriteChannelOperationsKt;
import io.ktor.utils.io.WriterScope;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.GlobalScope;

/* JADX INFO: compiled from: ObservableContent.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ObservableContent extends OutgoingContent.ReadChannelContent {
    public final CoroutineContext callContext;
    public final OutgoingContent delegate;
    public final ProgressListener listener;

    public ObservableContent(OutgoingContent delegate, CoroutineContext callContext, ProgressListener listener) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(callContext, "callContext");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.delegate = delegate;
        this.callContext = callContext;
        this.listener = listener;
    }

    public final ByteReadChannel getContent(OutgoingContent outgoingContent) {
        if (outgoingContent instanceof OutgoingContent.ContentWrapper) {
            return getContent(((OutgoingContent.ContentWrapper) outgoingContent).delegate());
        }
        if (outgoingContent instanceof OutgoingContent.ByteArrayContent) {
            return ByteChannelCtorKt.ByteReadChannel$default(((OutgoingContent.ByteArrayContent) outgoingContent).bytes(), 0, 0, 6, null);
        }
        if (outgoingContent instanceof OutgoingContent.NoContent) {
            return ByteReadChannel.Companion.getEmpty();
        }
        if (outgoingContent instanceof OutgoingContent.ReadChannelContent) {
            return ((OutgoingContent.ReadChannelContent) outgoingContent).readFrom();
        }
        if (!(outgoingContent instanceof OutgoingContent.WriteChannelContent)) {
            throw new NoWhenBranchMatchedException();
        }
        return ByteWriteChannelOperationsKt.writer((CoroutineScope) GlobalScope.INSTANCE, this.callContext, true, (Function2<? super WriterScope, ? super Continuation<? super Unit>, ? extends Object>) new AnonymousClass1(outgoingContent, null)).getChannel();
    }

    /* JADX INFO: renamed from: io.ktor.client.content.ObservableContent$getContent$1, reason: invalid class name */
    /* JADX INFO: compiled from: ObservableContent.kt */
    @DebugMetadata(c = "io.ktor.client.content.ObservableContent$getContent$1", f = "ObservableContent.kt", l = {SteammessagesPublishedfileSteamclient.PublishedFileDetails.CHILDREN_FIELD_NUMBER}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<WriterScope, Continuation<? super Unit>, Object> {
        public final /* synthetic */ OutgoingContent $delegate;
        public /* synthetic */ Object L$0;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(OutgoingContent outgoingContent, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$delegate = outgoingContent;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$delegate, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(WriterScope writerScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(writerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            WriterScope writerScope = (WriterScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                OutgoingContent.WriteChannelContent writeChannelContent = (OutgoingContent.WriteChannelContent) this.$delegate;
                ByteWriteChannel channel = writerScope.getChannel();
                this.L$0 = SpillingKt.nullOutSpilledVariable(writerScope);
                this.label = 1;
                if (writeChannelContent.writeTo(channel, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // io.ktor.http.content.OutgoingContent
    public ContentType getContentType() {
        return this.delegate.getContentType();
    }

    @Override // io.ktor.http.content.OutgoingContent
    public Long getContentLength() {
        return this.delegate.getContentLength();
    }

    @Override // io.ktor.http.content.OutgoingContent
    public Headers getHeaders() {
        return this.delegate.getHeaders();
    }

    @Override // io.ktor.http.content.OutgoingContent.ReadChannelContent
    public ByteReadChannel readFrom() {
        return ByteChannelUtilsKt.observable(getContent(this.delegate), this.callContext, getContentLength(), this.listener);
    }
}
