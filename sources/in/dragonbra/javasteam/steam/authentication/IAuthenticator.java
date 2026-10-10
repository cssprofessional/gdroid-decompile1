package in.dragonbra.javasteam.steam.authentication;

import java.util.concurrent.CompletableFuture;

/* JADX INFO: compiled from: IAuthenticator.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface IAuthenticator {
    CompletableFuture<Boolean> acceptDeviceConfirmation();

    CompletableFuture<String> getDeviceCode(boolean z);

    CompletableFuture<String> getEmailCode(String str, boolean z);
}
