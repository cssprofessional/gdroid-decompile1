package okhttp3;

import java.io.IOException;

/* JADX INFO: compiled from: Interceptor.kt */
/* JADX INFO: loaded from: classes3.dex */
public interface Interceptor {

    /* JADX INFO: compiled from: Interceptor.kt */
    public interface Chain {
        Call call();

        Response proceed(Request request) throws IOException;

        Request request();
    }

    Response intercept(Chain chain) throws IOException;
}
