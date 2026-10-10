package io.ktor.client.plugins;

import io.ktor.client.call.DelegatedCallKt;
import io.ktor.client.content.ProgressListener;
import io.ktor.client.plugins.api.ClientPlugin;
import io.ktor.client.plugins.api.ClientPluginBuilder;
import io.ktor.client.plugins.api.CreatePluginUtilsKt;
import io.ktor.client.statement.HttpResponse;
import io.ktor.client.utils.ByteChannelUtilsKt;
import io.ktor.http.HttpMessagePropertiesKt;
import io.ktor.util.AttributeKey;
import io.ktor.util.reflect.TypeInfo;
import io.ktor.utils.io.ByteReadChannel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;

/* JADX INFO: compiled from: BodyProgress.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class BodyProgressKt {
    public static final ClientPlugin<Unit> BodyProgress;
    public static final AttributeKey<ProgressListener> DownloadProgressListenerAttributeKey;
    public static final AttributeKey<ProgressListener> UploadProgressListenerAttributeKey;

    public static final ClientPlugin<Unit> getBodyProgress() {
        return BodyProgress;
    }

    public static final Unit BodyProgress$lambda$0(ClientPluginBuilder createClientPlugin) {
        Intrinsics.checkNotNullParameter(createClientPlugin, "$this$createClientPlugin");
        createClientPlugin.on(AfterRenderHook.INSTANCE, new BodyProgressKt$BodyProgress$1$1(null));
        createClientPlugin.on(AfterReceiveHook.INSTANCE, new BodyProgressKt$BodyProgress$1$2(null));
        return Unit.INSTANCE;
    }

    static {
        KType kTypeTypeOf;
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ProgressListener.class);
        KType kTypeTypeOf2 = null;
        try {
            kTypeTypeOf = Reflection.typeOf(ProgressListener.class);
        } catch (Throwable unused) {
            kTypeTypeOf = null;
        }
        UploadProgressListenerAttributeKey = new AttributeKey<>("UploadProgressListenerAttributeKey", new TypeInfo(orCreateKotlinClass, kTypeTypeOf));
        KClass orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(ProgressListener.class);
        try {
            kTypeTypeOf2 = Reflection.typeOf(ProgressListener.class);
        } catch (Throwable unused2) {
        }
        DownloadProgressListenerAttributeKey = new AttributeKey<>("DownloadProgressListenerAttributeKey", new TypeInfo(orCreateKotlinClass2, kTypeTypeOf2));
        BodyProgress = CreatePluginUtilsKt.createClientPlugin("BodyProgress", new Function1() { // from class: io.ktor.client.plugins.BodyProgressKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BodyProgressKt.BodyProgress$lambda$0((ClientPluginBuilder) obj);
            }
        });
    }

    public static final HttpResponse withObservableDownload(HttpResponse httpResponse, final ProgressListener listener) {
        Intrinsics.checkNotNullParameter(httpResponse, "<this>");
        Intrinsics.checkNotNullParameter(listener, "listener");
        return DelegatedCallKt.replaceResponse$default(httpResponse.getCall(), null, new Function1() { // from class: io.ktor.client.plugins.BodyProgressKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BodyProgressKt.withObservableDownload$lambda$0(listener, (HttpResponse) obj);
            }
        }, 1, null).getResponse();
    }

    public static final ByteReadChannel withObservableDownload$lambda$0(ProgressListener progressListener, HttpResponse replaceResponse) {
        Intrinsics.checkNotNullParameter(replaceResponse, "$this$replaceResponse");
        return ByteChannelUtilsKt.observable(replaceResponse.getRawContent(), replaceResponse.getCoroutineContext(), HttpMessagePropertiesKt.contentLength(replaceResponse), progressListener);
    }
}
