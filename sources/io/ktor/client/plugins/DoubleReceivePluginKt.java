package io.ktor.client.plugins;

import io.ktor.client.plugins.api.ClientPlugin;
import io.ktor.client.plugins.api.ClientPluginBuilder;
import io.ktor.client.plugins.api.CreatePluginUtilsKt;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.client.statement.HttpReceivePipeline;
import io.ktor.client.statement.HttpResponse;
import io.ktor.util.AttributeKey;
import io.ktor.util.logging.KtorSimpleLoggerJvmKt;
import io.ktor.util.reflect.TypeInfo;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import org.slf4j.Logger;

/* JADX INFO: compiled from: SaveBody.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class DoubleReceivePluginKt {
    public static final Lazy LOGGER$delegate;
    public static final AttributeKey<Unit> RESPONSE_BODY_SAVED;
    public static final AttributeKey<Unit> SKIP_SAVE_BODY;
    public static final ClientPlugin<Unit> SaveBody;
    public static final ClientPlugin<SaveBodyPluginConfig> SaveBodyPlugin;

    public static final Logger LOGGER_delegate$lambda$0() {
        return KtorSimpleLoggerJvmKt.KtorSimpleLogger("io.ktor.client.plugins.SaveBody");
    }

    public static final Logger getLOGGER() {
        return (Logger) LOGGER$delegate.getValue();
    }

    public static final ClientPlugin<Unit> getSaveBody() {
        return SaveBody;
    }

    public static final Unit SaveBody$lambda$0(ClientPluginBuilder createClientPlugin) {
        Intrinsics.checkNotNullParameter(createClientPlugin, "$this$createClientPlugin");
        createClientPlugin.getClient().getReceivePipeline().intercept(HttpReceivePipeline.Phases.getBefore(), new DoubleReceivePluginKt$SaveBody$1$1(null));
        return Unit.INSTANCE;
    }

    public static final void skipSaveBody(HttpRequestBuilder httpRequestBuilder) {
        Intrinsics.checkNotNullParameter(httpRequestBuilder, "<this>");
        httpRequestBuilder.getAttributes().put(SKIP_SAVE_BODY, Unit.INSTANCE);
    }

    static {
        KType kTypeTypeOf;
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Unit.class);
        KType kTypeTypeOf2 = null;
        try {
            kTypeTypeOf = Reflection.typeOf(Unit.class);
        } catch (Throwable unused) {
            kTypeTypeOf = null;
        }
        SKIP_SAVE_BODY = new AttributeKey<>("SkipSaveBody", new TypeInfo(orCreateKotlinClass, kTypeTypeOf));
        KClass orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(Unit.class);
        try {
            kTypeTypeOf2 = Reflection.typeOf(Unit.class);
        } catch (Throwable unused2) {
        }
        RESPONSE_BODY_SAVED = new AttributeKey<>("ResponseBodySaved", new TypeInfo(orCreateKotlinClass2, kTypeTypeOf2));
        LOGGER$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: io.ktor.client.plugins.DoubleReceivePluginKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DoubleReceivePluginKt.LOGGER_delegate$lambda$0();
            }
        });
        SaveBody = CreatePluginUtilsKt.createClientPlugin("SaveBody", new Function1() { // from class: io.ktor.client.plugins.DoubleReceivePluginKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DoubleReceivePluginKt.SaveBody$lambda$0((ClientPluginBuilder) obj);
            }
        });
        SaveBodyPlugin = CreatePluginUtilsKt.createClientPlugin("DoubleReceivePlugin", DoubleReceivePluginKt$SaveBodyPlugin$1.INSTANCE, new Function1() { // from class: io.ktor.client.plugins.DoubleReceivePluginKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DoubleReceivePluginKt.SaveBodyPlugin$lambda$0((ClientPluginBuilder) obj);
            }
        });
    }

    public static final Unit SaveBodyPlugin$lambda$0(ClientPluginBuilder createClientPlugin) {
        Intrinsics.checkNotNullParameter(createClientPlugin, "$this$createClientPlugin");
        if (((SaveBodyPluginConfig) createClientPlugin.getPluginConfig()).getDisabled()) {
            getLOGGER().warn("It is no longer possible to disable body saving for all requests. Use client.prepareRequest(...).execute { ... } syntax to prevent saving the body in memory.\n\nThis API is deprecated and will be removed in Ktor 4.0.0\nIf you were relying on this functionality, share your use case by commenting on this issue: https://youtrack.jetbrains.com/issue/KTOR-8367/");
        } else {
            getLOGGER().warn("The SaveBodyPlugin plugin is deprecated and can be safely removed. Request bodies are now saved in memory by default for all non-streaming responses.");
        }
        return Unit.INSTANCE;
    }

    public static final boolean isSaved(HttpResponse httpResponse) {
        Intrinsics.checkNotNullParameter(httpResponse, "<this>");
        return httpResponse.getCall().getAttributes().contains(RESPONSE_BODY_SAVED);
    }
}
