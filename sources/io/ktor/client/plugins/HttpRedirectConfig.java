package io.ktor.client.plugins;

/* JADX INFO: compiled from: HttpRedirect.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpRedirectConfig {
    public boolean allowHttpsDowngrade;
    public boolean checkHttpMethod = true;

    public final boolean getCheckHttpMethod() {
        return this.checkHttpMethod;
    }

    public final boolean getAllowHttpsDowngrade() {
        return this.allowHttpsDowngrade;
    }
}
