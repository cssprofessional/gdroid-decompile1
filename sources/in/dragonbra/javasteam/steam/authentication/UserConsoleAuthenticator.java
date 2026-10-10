package in.dragonbra.javasteam.steam.authentication;

import in.dragonbra.javasteam.util.Strings;
import java.util.concurrent.CompletableFuture;
import java.util.function.Supplier;
import kotlin.io.ConsoleKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: UserConsoleAuthenticator.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class UserConsoleAuthenticator implements IAuthenticator {
    @Override // in.dragonbra.javasteam.steam.authentication.IAuthenticator
    public CompletableFuture<String> getDeviceCode(final boolean z) {
        CompletableFuture<String> completableFutureSupplyAsync = CompletableFuture.supplyAsync(new Supplier() { // from class: in.dragonbra.javasteam.steam.authentication.UserConsoleAuthenticator$$ExternalSyntheticLambda0
            @Override // java.util.function.Supplier
            public final Object get() {
                return UserConsoleAuthenticator.getDeviceCode$lambda$0(z);
            }
        });
        Intrinsics.checkNotNullExpressionValue(completableFutureSupplyAsync, "supplyAsync(...)");
        return completableFutureSupplyAsync;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getDeviceCode$lambda$0(boolean z) {
        String string;
        if (z) {
            System.out.println((Object) "The previous 2-factor auth code you have provided is incorrect.");
        }
        do {
            System.out.print((Object) "STEAM GUARD! Please enter your 2-factor auth code from your authenticator app: ");
            string = StringsKt__StringsKt.trim(ConsoleKt.readln()).toString();
        } while (Strings.isNullOrEmpty(string));
        return string;
    }

    @Override // in.dragonbra.javasteam.steam.authentication.IAuthenticator
    public CompletableFuture<String> getEmailCode(final String str, final boolean z) {
        CompletableFuture<String> completableFutureSupplyAsync = CompletableFuture.supplyAsync(new Supplier() { // from class: in.dragonbra.javasteam.steam.authentication.UserConsoleAuthenticator$$ExternalSyntheticLambda1
            @Override // java.util.function.Supplier
            public final Object get() {
                return UserConsoleAuthenticator.getEmailCode$lambda$0(z, str);
            }
        });
        Intrinsics.checkNotNullExpressionValue(completableFutureSupplyAsync, "supplyAsync(...)");
        return completableFutureSupplyAsync;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getEmailCode$lambda$0(boolean z, String str) {
        String string;
        if (z) {
            System.out.println((Object) "The previous 2-factor auth code you have provided is incorrect.");
        }
        do {
            System.out.print((Object) ("STEAM GUARD! Please enter the auth code sent to the email at " + str + ": "));
            string = StringsKt__StringsKt.trim(ConsoleKt.readln()).toString();
        } while (Strings.isNullOrEmpty(string));
        return string;
    }

    @Override // in.dragonbra.javasteam.steam.authentication.IAuthenticator
    public CompletableFuture<Boolean> acceptDeviceConfirmation() {
        CompletableFuture<Boolean> completableFutureSupplyAsync = CompletableFuture.supplyAsync(new Supplier() { // from class: in.dragonbra.javasteam.steam.authentication.UserConsoleAuthenticator$$ExternalSyntheticLambda2
            @Override // java.util.function.Supplier
            public final Object get() {
                return UserConsoleAuthenticator.acceptDeviceConfirmation$lambda$0();
            }
        });
        Intrinsics.checkNotNullExpressionValue(completableFutureSupplyAsync, "supplyAsync(...)");
        return completableFutureSupplyAsync;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean acceptDeviceConfirmation$lambda$0() {
        System.out.println((Object) "STEAM GUARD! Use the Steam Mobile App to confirm your sign in...");
        return Boolean.TRUE;
    }
}
