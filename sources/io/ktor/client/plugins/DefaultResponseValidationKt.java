package io.ktor.client.plugins;

import io.ktor.client.HttpClientConfig;
import io.ktor.util.AttributeKey;
import io.ktor.util.logging.KtorSimpleLoggerJvmKt;
import io.ktor.util.reflect.TypeInfo;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import org.slf4j.Logger;

/* JADX INFO: compiled from: DefaultResponseValidation.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class DefaultResponseValidationKt {
    public static final Logger LOGGER;
    public static final AttributeKey<Unit> ValidateMark;

    public static final void addDefaultResponseValidation(final HttpClientConfig<?> httpClientConfig) {
        Intrinsics.checkNotNullParameter(httpClientConfig, "<this>");
        HttpCallValidatorKt.HttpResponseValidator(httpClientConfig, new Function1() { // from class: io.ktor.client.plugins.DefaultResponseValidationKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DefaultResponseValidationKt.addDefaultResponseValidation$lambda$0(httpClientConfig, (HttpCallValidatorConfig) obj);
            }
        });
    }

    public static final Unit addDefaultResponseValidation$lambda$0(HttpClientConfig httpClientConfig, HttpCallValidatorConfig HttpResponseValidator) {
        Intrinsics.checkNotNullParameter(HttpResponseValidator, "$this$HttpResponseValidator");
        HttpResponseValidator.setExpectSuccess$ktor_client_core(httpClientConfig.getExpectSuccess());
        HttpResponseValidator.validateResponse(new DefaultResponseValidationKt$addDefaultResponseValidation$1$1(null));
        return Unit.INSTANCE;
    }

    static {
        KType kTypeTypeOf;
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Unit.class);
        try {
            kTypeTypeOf = Reflection.typeOf(Unit.class);
        } catch (Throwable unused) {
            kTypeTypeOf = null;
        }
        ValidateMark = new AttributeKey<>("ValidateMark", new TypeInfo(orCreateKotlinClass, kTypeTypeOf));
        LOGGER = KtorSimpleLoggerJvmKt.KtorSimpleLogger("io.ktor.client.plugins.DefaultResponseValidation");
    }
}
