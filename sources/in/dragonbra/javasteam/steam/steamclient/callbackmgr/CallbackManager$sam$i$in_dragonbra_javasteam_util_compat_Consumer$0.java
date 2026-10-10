package in.dragonbra.javasteam.steam.steamclient.callbackmgr;

import in.dragonbra.javasteam.util.compat.Consumer;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CallbackManager.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CallbackManager$sam$i$in_dragonbra_javasteam_util_compat_Consumer$0 implements Consumer {
    private final /* synthetic */ Function1 function;

    public CallbackManager$sam$i$in_dragonbra_javasteam_util_compat_Consumer$0(Function1 function) {
        Intrinsics.checkNotNullParameter(function, "function");
        this.function = function;
    }

    @Override // in.dragonbra.javasteam.util.compat.Consumer
    public final /* synthetic */ void accept(Object obj) {
        this.function.invoke(obj);
    }
}
