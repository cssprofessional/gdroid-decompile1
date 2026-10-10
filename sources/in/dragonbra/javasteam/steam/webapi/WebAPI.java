package in.dragonbra.javasteam.steam.webapi;

import in.dragonbra.javasteam.types.KeyValue;
import in.dragonbra.javasteam.util.Versions;
import in.dragonbra.javasteam.util.WebHelpers;
import in.dragonbra.javasteam.util.compat.Consumer;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes2.dex */
public class WebAPI {
    public static final String DEFAULT_BASE_ADDRESS = "https://api.steampowered.com/";
    private final String _interface;
    private final HttpUrl baseAddress;
    private final OkHttpClient client;
    private final String webAPIKey;

    public WebAPI(OkHttpClient okHttpClient, String str, String str2, String str3) {
        HttpUrl httpUrl = HttpUrl.parse(str);
        this.baseAddress = httpUrl;
        if (httpUrl == null) {
            throw new IllegalArgumentException();
        }
        this._interface = str2;
        this.webAPIKey = str3;
        this.client = okHttpClient;
    }

    public KeyValue call(String str, String str2, int i, Map<String, String> map) throws IOException {
        Response responseExecute = this.client.newCall(buildRequest(str, str2, i, map)).execute();
        if (!responseExecute.isSuccessful()) {
            throw new WebAPIRequestException(responseExecute);
        }
        return parseResponse(responseExecute);
    }

    public KeyValue call(String str, int i, Map<String, String> map) throws IOException {
        return call("GET", str, i, map);
    }

    public KeyValue call(String str, String str2, Map<String, String> map) throws IOException {
        return call(str, str2, 1, map);
    }

    public KeyValue call(String str, Map<String, String> map) throws IOException {
        return call("GET", str, 1, map);
    }

    public KeyValue call(String str, String str2, int i) throws IOException {
        return call(str, str2, i, (Map<String, String>) null);
    }

    public KeyValue call(String str, int i) throws IOException {
        return call("GET", str, i, (Map<String, String>) null);
    }

    public KeyValue call(String str, String str2) throws IOException {
        return call(str, str2, 1, (Map<String, String>) null);
    }

    public KeyValue call(String str) throws IOException {
        return call("GET", str, 1, (Map<String, String>) null);
    }

    public void call(String str, String str2, int i, Map<String, String> map, final Consumer<KeyValue> consumer, final Consumer<WebAPIRequestException> consumer2) {
        this.client.newCall(buildRequest(str, str2, i, map)).enqueue(new Callback() { // from class: in.dragonbra.javasteam.steam.webapi.WebAPI.1
            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException iOException) {
                throw new IllegalStateException("request unsuccessful", iOException);
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) {
                if (!response.isSuccessful()) {
                    consumer2.accept(new WebAPIRequestException(response));
                } else {
                    consumer.accept(WebAPI.this.parseResponse(response));
                }
            }
        });
    }

    public void call(String str, String str2, int i, Consumer<KeyValue> consumer, Consumer<WebAPIRequestException> consumer2) throws IOException {
        call(str, str2, i, null, consumer, consumer2);
    }

    public void call(String str, String str2, Map<String, String> map, Consumer<KeyValue> consumer, Consumer<WebAPIRequestException> consumer2) throws IOException {
        call(str, str2, 1, map, consumer, consumer2);
    }

    public void call(String str, String str2, Consumer<KeyValue> consumer, Consumer<WebAPIRequestException> consumer2) throws IOException {
        call(str, str2, 1, null, consumer, consumer2);
    }

    public void call(String str, int i, Consumer<KeyValue> consumer, Consumer<WebAPIRequestException> consumer2) throws IOException {
        call("GET", str, i, null, consumer, consumer2);
    }

    public void call(String str, Map<String, String> map, Consumer<KeyValue> consumer, Consumer<WebAPIRequestException> consumer2) throws IOException {
        call("GET", str, 1, map, consumer, consumer2);
    }

    public void call(String str, Consumer<KeyValue> consumer, Consumer<WebAPIRequestException> consumer2) throws IOException {
        call("GET", str, 1, null, consumer, consumer2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public KeyValue parseResponse(Response response) {
        KeyValue keyValue = new KeyValue();
        try {
            InputStream inputStreamByteStream = response.body().byteStream();
            try {
                keyValue.readAsText(inputStreamByteStream);
                if (inputStreamByteStream != null) {
                    inputStreamByteStream.close();
                }
                return keyValue;
            } finally {
            }
        } catch (Exception e) {
            throw new IllegalStateException("An internal error occurred when attempting to parse the response from the WebAPI server. This can indicate a change in the VDF format.", e);
        }
    }

    private Request buildRequest(String str, String str2, int i, Map<String, String> map) {
        if (str == null) {
            throw new IllegalArgumentException("httpMethod is null");
        }
        if (!str.equalsIgnoreCase("GET") && !str.equalsIgnoreCase("POST")) {
            throw new IllegalArgumentException("only GET and POST is supported right now");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("function is null");
        }
        if (map == null) {
            map = new HashMap<>();
        }
        map.put("format", "vdf");
        String str3 = this.webAPIKey;
        if (str3 != null) {
            map.put("key", str3);
        }
        Request.Builder builder = new Request.Builder();
        builder.header("User-Agent", "JavaSteam-" + Versions.getVersion());
        HttpUrl.Builder builderAddPathSegment = this.baseAddress.newBuilder().addPathSegment(this._interface).addPathSegment(str2).addPathSegment("v" + i);
        if (str.equalsIgnoreCase("GET")) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                builderAddPathSegment.addEncodedQueryParameter(WebHelpers.urlEncode(entry.getKey()), entry.getValue());
            }
            builder.get();
        } else {
            FormBody.Builder builder2 = new FormBody.Builder();
            for (Map.Entry<String, String> entry2 : map.entrySet()) {
                builder2.addEncoded(WebHelpers.urlEncode(entry2.getKey()), entry2.getValue());
            }
            builder.post(builder2.build());
        }
        return builder.url(builderAddPathSegment.build()).build();
    }

    public HttpUrl getBaseAddress() {
        return this.baseAddress;
    }

    public String getInterface() {
        return this._interface;
    }

    public String getWebAPIKey() {
        return this.webAPIKey;
    }

    public static class WebAPIRequestException extends IOException {
        private final Map<String, List<String>> headers;
        private final int statusCode;

        public WebAPIRequestException(Response response) {
            super(response.message());
            this.statusCode = response.code();
            this.headers = response.headers().toMultimap();
        }

        public int getStatusCode() {
            return this.statusCode;
        }

        public Map<String, List<String>> getHeaders() {
            return this.headers;
        }
    }
}
