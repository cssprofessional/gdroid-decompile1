package com.sourcevrport.platform;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Presentation;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.hardware.display.DisplayManager;
import android.hardware.display.VirtualDisplay;
import android.media.Image;
import android.media.ImageReader;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.webkit.ConsoleMessage;
import android.webkit.JavascriptInterface;
import android.webkit.MimeTypeMap;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.webkit.ScriptHandler;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import com.sourcevrport.platform.GModWebView;
import java.io.ByteArrayInputStream;
import java.lang.ref.WeakReference;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.bouncycastle.i18n.MessageBundle;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class GModWebView {
    private static final String ASSETS = "https://gmod-assets.invalid/";
    private static final Handler UI = new Handler(Looper.getMainLooper());
    private static final ConcurrentHashMap<Integer, Page> PAGES = new ConcurrentHashMap<>();
    private static final AtomicInteger NEXT = new AtomicInteger(1);
    private static volatile WeakReference<Activity> activity = new WeakReference<>(null);

    public interface Operation {
        void run(Page page);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native byte[] readAsset(String str);

    private GModWebView() {
    }

    public static void initialize(Activity activity2) {
        activity = new WeakReference<>(activity2);
    }

    public static void shutdown(Activity activity2) {
        if (activity.get() != activity2) {
            return;
        }
        Iterator<Integer> it = PAGES.keySet().iterator();
        while (it.hasNext()) {
            destroy(it.next().intValue());
        }
        activity.clear();
    }

    public static int create(final int i, final int i2) {
        Activity activity2 = activity.get();
        if (activity2 == null || activity2.isFinishing()) {
            return 0;
        }
        final int andIncrement = NEXT.getAndIncrement();
        final Page page = new Page(andIncrement, activity2);
        PAGES.put(Integer.valueOf(andIncrement), page);
        UI.post(new Runnable() { // from class: com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                GModWebView.lambda$create$0(andIncrement, page, i, i2);
            }
        });
        return andIncrement;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$create$0(int i, Page page, int i2, int i3) {
        if (PAGES.containsKey(Integer.valueOf(i))) {
            try {
                page.create(i2, i3);
            } catch (Throwable th) {
                page.event("fatal", th.toString());
                page.release();
            }
        }
    }

    private static void post(final int i, final Operation operation) {
        UI.post(new Runnable() { // from class: com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                GModWebView.lambda$post$1(i, operation);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$post$1(int i, Operation operation) {
        Page page = PAGES.get(Integer.valueOf(i));
        if (page == null || page.web == null) {
            return;
        }
        try {
            operation.run(page);
        } catch (RuntimeException e) {
            page.event("error", e.toString());
        }
    }

    public static void destroy(int i) {
        final Page pageRemove = PAGES.remove(Integer.valueOf(i));
        if (pageRemove == null) {
            return;
        }
        synchronized (pageRemove.assetLock) {
            pageRemove.closed = true;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            pageRemove.release();
            return;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        UI.post(new Runnable() { // from class: com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                GModWebView.lambda$destroy$2(pageRemove, countDownLatch);
            }
        });
        try {
            countDownLatch.await(5L, TimeUnit.SECONDS);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$destroy$2(Page page, CountDownLatch countDownLatch) {
        try {
            page.release();
        } finally {
            countDownLatch.countDown();
        }
    }

    public static void command(int i, int i2, String str, int i3, int i4) {
        switch (i2) {
            case 0:
                navigate(i, str);
                break;
            case 1:
                html(i, str, "");
                break;
            case 2:
                script(i, str);
                break;
            case 3:
                resize(i, i3, i4);
                break;
            case 4:
                stop(i);
                break;
            case 5:
                wheel(i, i3);
                break;
            case 6:
                key(i, i3, i4 != 0);
                break;
            case 7:
                text(i, str);
                break;
        }
    }

    public static void resize(int i, final int i2, final int i3) {
        post(i, new Operation() { // from class: com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda3
            @Override // com.sourcevrport.platform.GModWebView.Operation
            public final void run(GModWebView.Page page) {
                page.resize(i2, i3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$navigate$4(String str, Page page) {
        page.web.loadUrl(assetURL(str));
    }

    public static void navigate(int i, final String str) {
        post(i, new Operation() { // from class: com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda0
            @Override // com.sourcevrport.platform.GModWebView.Operation
            public final void run(GModWebView.Page page) {
                GModWebView.lambda$navigate$4(str, page);
            }
        });
    }

    public static void html(int i, final String str, final String str2) {
        post(i, new Operation() { // from class: com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda6
            @Override // com.sourcevrport.platform.GModWebView.Operation
            public final void run(GModWebView.Page page) {
                GModWebView.lambda$html$5(str2, str, page);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$html$5(String str, String str2, Page page) {
        page.web.loadDataWithBaseURL(str.isEmpty() ? ASSETS : assetURL(str), str2.replace("asset://", ASSETS), "text/html", "UTF-8", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$script$6(String str, Page page) {
        page.web.evaluateJavascript(str, null);
    }

    public static void script(int i, final String str) {
        post(i, new Operation() { // from class: com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda2
            @Override // com.sourcevrport.platform.GModWebView.Operation
            public final void run(GModWebView.Page page) {
                GModWebView.lambda$script$6(str, page);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$stop$7(Page page) {
        page.web.stopLoading();
    }

    public static void stop(int i) {
        post(i, new Operation() { // from class: com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda8
            @Override // com.sourcevrport.platform.GModWebView.Operation
            public final void run(GModWebView.Page page) {
                GModWebView.lambda$stop$7(page);
            }
        });
    }

    public static void bind(int i, final String str, final String str2) {
        post(i, new Operation() { // from class: com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda12
            @Override // com.sourcevrport.platform.GModWebView.Operation
            public final void run(GModWebView.Page page) {
                GModWebView.lambda$bind$8(str, str2, page);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$bind$8(String str, String str2, Page page) {
        page.bindings.put(str + "\u0000" + str2, new String[]{str, str2});
        page.installBindings();
    }

    public static void reply(int i, int i2, String str) {
        script(i, "window.__gmodReply&&window.__gmodReply(" + i2 + "," + str + ");");
    }

    public static String[] events(int i) {
        String strPoll;
        Page page = PAGES.get(Integer.valueOf(i));
        if (page == null) {
            return new String[0];
        }
        ArrayList arrayList = new ArrayList();
        while (arrayList.size() < 128 && (strPoll = page.events.poll()) != null) {
            arrayList.add(strPoll);
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static byte[] pixels(int i) {
        Page page = PAGES.get(Integer.valueOf(i));
        if (page == null) {
            return null;
        }
        return page.pixels.getAndSet(null);
    }

    public static void pointer(int i, final int i2, final int i3, final int i4, final int i5) {
        post(i, new Operation() { // from class: com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda9
            @Override // com.sourcevrport.platform.GModWebView.Operation
            public final void run(GModWebView.Page page) {
                GModWebView.lambda$pointer$9(i3, i4, i5, i2, page);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$pointer$9(int i, int i2, int i3, int i4, Page page) {
        String str;
        int i5;
        page.mouseX = i;
        page.mouseY = i2;
        int i6 = 0;
        if (i3 != 0 || page.otherButtons != 0) {
            if (i3 == 1) {
                i6 = 2;
            } else if (i3 == 2) {
                i6 = 4;
            }
            if (i4 == 1) {
                page.otherButtons |= i6;
                page.web.requestFocus();
            }
            if (i4 == 2) {
                page.otherButtons = (~i6) & page.otherButtons;
            }
            if (i4 == 1) {
                str = "mousedown";
            } else {
                str = i4 == 2 ? "mouseup" : "mousemove";
            }
            String str2 = (i3 == 1 && i4 == 2) ? "e.dispatchEvent(new MouseEvent('contextmenu',o));" : "";
            WebView webView = page.web;
            StringBuilder sb = new StringBuilder();
            sb.append("(()=>{let e=document.elementFromPoint(");
            sb.append(i);
            sb.append(",");
            sb.append(i2);
            sb.append(");if(e){let o={bubbles:true,cancelable:true,button:");
            sb.append(i3 != 1 ? i3 == 2 ? 1 : -1 : 2);
            sb.append(",buttons:");
            sb.append(page.otherButtons);
            sb.append(",clientX:");
            sb.append(i);
            sb.append(",clientY:");
            sb.append(i2);
            sb.append("};e.dispatchEvent(new MouseEvent('");
            sb.append(str);
            sb.append("',o));");
            sb.append(str2);
            sb.append("}})()");
            webView.evaluateJavascript(sb.toString(), null);
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (i4 == 1) {
            i5 = 0;
        } else if (i4 == 2) {
            i5 = 1;
        } else {
            i5 = page.down ? 2 : 7;
        }
        if (i4 == 1) {
            page.down = true;
            page.downTime = jUptimeMillis;
            page.web.requestFocus();
        }
        if (i4 == 2) {
            page.down = false;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(page.downTime, jUptimeMillis, i5, i, i2, 0);
        motionEventObtain.setSource(8194);
        if (i5 == 7) {
            page.web.dispatchGenericMotionEvent(motionEventObtain);
        } else {
            page.web.dispatchTouchEvent(motionEventObtain);
        }
        motionEventObtain.recycle();
    }

    public static void wheel(int i, final int i2) {
        post(i, new Operation() { // from class: com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda1
            @Override // com.sourcevrport.platform.GModWebView.Operation
            public final void run(GModWebView.Page page) {
                GModWebView.lambda$wheel$10(i2, page);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$wheel$10(int i, Page page) {
        MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
        pointerProperties.id = 0;
        pointerProperties.toolType = 3;
        MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
        pointerCoords.x = page.mouseX;
        pointerCoords.y = page.mouseY;
        pointerCoords.setAxisValue(9, i);
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 8, 1, new MotionEvent.PointerProperties[]{pointerProperties}, new MotionEvent.PointerCoords[]{pointerCoords}, page.keyMeta, 0, 1.0f, 1.0f, 0, 0, 8194, 0);
        page.web.dispatchGenericMotionEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    public static void key(int i, final int i2, final boolean z) {
        post(i, new Operation() { // from class: com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda7
            @Override // com.sourcevrport.platform.GModWebView.Operation
            public final void run(GModWebView.Page page) {
                GModWebView.lambda$key$11(i2, z, page);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$key$11(int i, boolean z, Page page) {
        page.web.requestFocus();
        int i2 = (i == 59 || i == 60) ? 1 : (i == 113 || i == 114) ? 4096 : (i == 57 || i == 58) ? 2 : 0;
        int i3 = page.keyMeta;
        page.keyMeta = z ? i2 | i3 : (~i2) & i3;
        int i4 = KeyCharacterMap.load(-1).get(i, page.keyMeta);
        if (i4 >= 32 && (page.keyMeta & 4098) == 0) {
            String str = new String(Character.toChars(i4));
            WebView webView = page.web;
            StringBuilder sb = new StringBuilder();
            sb.append("(()=>{let e=document.activeElement;if(e)window.__gmodCancelText=!e.dispatchEvent(new KeyboardEvent('");
            sb.append(z ? "keydown" : "keyup");
            sb.append("',{key:");
            sb.append(JSONObject.quote(str));
            sb.append(",bubbles:true,cancelable:true,shiftKey:");
            sb.append((page.keyMeta & 1) != 0);
            sb.append("}));})()");
            webView.evaluateJavascript(sb.toString(), null);
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        page.web.dispatchKeyEvent(new KeyEvent(jUptimeMillis, jUptimeMillis, !z ? 1 : 0, i, 0, page.keyMeta));
    }

    public static void text(int i, final String str) {
        post(i, new Operation() { // from class: com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda4
            @Override // com.sourcevrport.platform.GModWebView.Operation
            public final void run(GModWebView.Page page) {
                GModWebView.lambda$text$12(str, page);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$text$12(String str, Page page) {
        page.web.evaluateJavascript("(()=>{if(window.__gmodCancelText){window.__gmodCancelText=false;return;}document.execCommand('insertText',false," + JSONObject.quote(str) + ");})()", null);
    }

    private static String assetURL(String str) {
        if (str.startsWith("asset://")) {
            return ASSETS + str.substring(8);
        }
        if (str.startsWith("file://")) {
            return ASSETS + str.substring(7).replaceFirst("^/+", "");
        }
        if (!str.startsWith("html/") && !str.startsWith("data/") && !str.startsWith("lua/")) {
            return str;
        }
        return ASSETS + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String mime(String str) {
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(str));
        return str.endsWith(".js") ? "application/javascript" : mimeTypeFromExtension == null ? "application/octet-stream" : mimeTypeFromExtension;
    }

    public static final class Page {
        volatile boolean closed;
        VirtualDisplay display;
        ScriptHandler documentScript;
        boolean down;
        long downTime;
        int height;
        final int id;
        int keyMeta;
        long lastFrame;
        int mouseX;
        int mouseY;
        int otherButtons;
        final Activity owner;
        Presentation presentation;
        ImageReader reader;
        WebView web;
        int width;
        final ConcurrentLinkedQueue<String> events = new ConcurrentLinkedQueue<>();
        final AtomicReference<byte[]> pixels = new AtomicReference<>();
        final Map<String, String[]> bindings = new HashMap();
        final Object assetLock = new Object();

        public Page(int i, Activity activity) {
            this.id = i;
            this.owner = activity;
        }

        public void event(Object... objArr) {
            if (this.events.size() < 1024) {
                this.events.add(new JSONArray((Collection) Arrays.asList(objArr)).toString());
            }
        }

        @SuppressLint({"SetJavaScriptEnabled", "JavascriptInterface"})
        public void create(int i, int i2) {
            resize(i, i2);
            WebView webView = new WebView(this.presentation.getContext());
            this.web = webView;
            webView.setBackgroundColor(0);
            WebSettings settings = this.web.getSettings();
            settings.setJavaScriptEnabled(true);
            settings.setDomStorageEnabled(true);
            settings.setMediaPlaybackRequiresUserGesture(false);
            settings.setMixedContentMode(2);
            settings.setAllowFileAccess(false);
            settings.setAllowContentAccess(false);
            settings.setSupportMultipleWindows(true);
            settings.setJavaScriptCanOpenWindowsAutomatically(true);
            settings.setUserAgentString(settings.getUserAgentString().replace("; wv", "") + " GModVR");
            this.web.addJavascriptInterface(new Object() { // from class: com.sourcevrport.platform.GModWebView.Page.1
                @JavascriptInterface
                public void call(String str, String str2, String str3, int i3) {
                    if (str3.length() > 1048576) {
                        return;
                    }
                    try {
                        Page.this.event("call", str, str2, new JSONArray(str3), Integer.valueOf(i3));
                    } catch (JSONException unused) {
                        Page.this.event("error", "Invalid Lua callback arguments");
                    }
                }
            }, "__gmodNative");
            this.web.setWebViewClient(new WebViewClient() { // from class: com.sourcevrport.platform.GModWebView.Page.2
                @Override // android.webkit.WebViewClient
                public void onPageStarted(WebView webView2, String str, Bitmap bitmap) {
                    Page.this.event("begin", str);
                    Page.this.installBindings();
                }

                @Override // android.webkit.WebViewClient
                public void onPageFinished(WebView webView2, String str) {
                    Page.this.installBindings();
                    Page.this.event("ready", str);
                }

                @Override // android.webkit.WebViewClient
                public WebResourceResponse shouldInterceptRequest(WebView webView2, WebResourceRequest webResourceRequest) {
                    int i3;
                    String string = webResourceRequest.getUrl().toString();
                    byte[] asset = null;
                    if (!string.startsWith(GModWebView.ASSETS) && !string.startsWith("asset://")) {
                        return null;
                    }
                    if (string.startsWith(GModWebView.ASSETS)) {
                        string = webResourceRequest.getUrl().getPath();
                        i3 = 1;
                    } else {
                        i3 = 8;
                    }
                    String strSubstring = string.substring(i3);
                    int iIndexOf = strSubstring.indexOf(63);
                    if (iIndexOf >= 0) {
                        strSubstring = strSubstring.substring(0, iIndexOf);
                    }
                    synchronized (Page.this.assetLock) {
                        try {
                            if (!Page.this.closed) {
                                asset = GModWebView.readAsset(strSubstring);
                            }
                        } catch (UnsatisfiedLinkError unused) {
                        }
                    }
                    String strContentType = GModWebAsset.contentType(GModWebView.mime(strSubstring), asset);
                    byte[] bArrRewriteURLs = GModWebAsset.rewriteURLs(strContentType, asset, GModWebView.ASSETS);
                    int i4 = bArrRewriteURLs == null ? 404 : 200;
                    String str = bArrRewriteURLs == null ? "Not Found" : "OK";
                    Map mapSingletonMap = Collections.singletonMap("Access-Control-Allow-Origin", "*");
                    if (bArrRewriteURLs == null) {
                        bArrRewriteURLs = new byte[0];
                    }
                    return new WebResourceResponse(strContentType, "UTF-8", i4, str, mapSingletonMap, new ByteArrayInputStream(bArrRewriteURLs));
                }

                @Override // android.webkit.WebViewClient
                public void onReceivedError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                    if (webResourceRequest.isForMainFrame()) {
                        Page.this.event("error", webResourceError.getDescription().toString());
                        Page.this.event("ready", webResourceRequest.getUrl().toString());
                    }
                }

                @Override // android.webkit.WebViewClient
                public boolean onRenderProcessGone(WebView webView2, RenderProcessGoneDetail renderProcessGoneDetail) {
                    Page.this.event("fatal", "The browser renderer stopped");
                    Page.this.release();
                    return true;
                }
            });
            this.web.setWebChromeClient(new WebChromeClient() { // from class: com.sourcevrport.platform.GModWebView.Page.3
                @Override // android.webkit.WebChromeClient
                public void onReceivedTitle(WebView webView2, String str) {
                    Page.this.event(MessageBundle.TITLE_ENTRY, str);
                }

                @Override // android.webkit.WebChromeClient
                public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                    Page.this.event("console", consoleMessage.message());
                    return true;
                }

                @Override // android.webkit.WebChromeClient
                public boolean onCreateWindow(final WebView webView2, final boolean z, boolean z2, Message message) {
                    final WebView webView3 = new WebView(Page.this.owner);
                    webView3.setWebViewClient(new WebViewClient() { // from class: com.sourcevrport.platform.GModWebView.Page.3.1
                        @Override // android.webkit.WebViewClient
                        public boolean shouldOverrideUrlLoading(WebView webView4, WebResourceRequest webResourceRequest) {
                            Page.this.event("child", webView2.getUrl(), webResourceRequest.getUrl().toString(), Boolean.valueOf(z));
                            webView2.loadUrl(webResourceRequest.getUrl().toString());
                            webView3.destroy();
                            return true;
                        }
                    });
                    ((WebView.WebViewTransport) message.obj).setWebView(webView3);
                    message.sendToTarget();
                    return true;
                }
            });
            installBindings();
            attach();
            this.web.loadUrl("about:blank");
        }

        public void installBindings() {
            StringBuilder sb = new StringBuilder("(()=>{window.__gmodCallbacks=window.__gmodCallbacks||{};window.__gmodCallId=window.__gmodCallId||0;window.__gmodReply=(id,args)=>{let f=window.__gmodCallbacks[id];delete window.__gmodCallbacks[id];if(f)f.apply(null,args);};");
            for (String[] strArr : this.bindings.values()) {
                String strQuote = JSONObject.quote(strArr[0]);
                String strQuote2 = JSONObject.quote(strArr[1]);
                if (strArr[1].isEmpty()) {
                    sb.append("window[");
                    sb.append(strQuote);
                    sb.append("]=window[");
                    sb.append(strQuote);
                    sb.append("]||{};");
                } else {
                    sb.append("window[");
                    sb.append(strQuote);
                    sb.append("]=window[");
                    sb.append(strQuote);
                    sb.append("]||{};window[");
                    sb.append(strQuote);
                    sb.append("][");
                    sb.append(strQuote2);
                    sb.append("]=function(...args){let id=++window.__gmodCallId;if(typeof args[args.length-1]==='function')window.__gmodCallbacks[id]=args.pop();window.__gmodNative.call(");
                    sb.append(strQuote);
                    sb.append(',');
                    sb.append(strQuote2);
                    sb.append(",JSON.stringify(args),id);};");
                }
            }
            sb.append("})()");
            ScriptHandler scriptHandler = this.documentScript;
            if (scriptHandler != null) {
                scriptHandler.remove();
                this.documentScript = null;
            }
            if (WebViewFeature.isFeatureSupported("DOCUMENT_START_SCRIPT")) {
                this.documentScript = WebViewCompat.addDocumentStartJavaScript(this.web, sb.toString(), Collections.singleton("*"));
            }
            this.web.evaluateJavascript(sb.toString(), null);
        }

        public void resize(int i, int i2) {
            int iMax = Math.max(64, Math.min(4096, i));
            int iMax2 = Math.max(64, Math.min(4096, i2));
            if (iMax == this.width && iMax2 == this.height && this.reader != null) {
                return;
            }
            Presentation presentation = this.presentation;
            if (presentation != null) {
                presentation.dismiss();
            }
            VirtualDisplay virtualDisplay = this.display;
            if (virtualDisplay != null) {
                virtualDisplay.release();
            }
            ImageReader imageReader = this.reader;
            if (imageReader != null) {
                imageReader.close();
            }
            this.width = iMax;
            this.height = iMax2;
            this.pixels.set(null);
            ImageReader imageReaderNewInstance = ImageReader.newInstance(iMax, iMax2, 1, 3);
            this.reader = imageReaderNewInstance;
            imageReaderNewInstance.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class: com.sourcevrport.platform.GModWebView$Page$$ExternalSyntheticLambda0
                @Override // android.media.ImageReader.OnImageAvailableListener
                public final void onImageAvailable(ImageReader imageReader2) {
                    this.f$0.lambda$resize$0(imageReader2);
                }
            }, GModWebView.UI);
            VirtualDisplay virtualDisplayCreateVirtualDisplay = ((DisplayManager) this.owner.getSystemService("display")).createVirtualDisplay("GMod DHTML " + this.id, iMax, iMax2, 160, this.reader.getSurface(), 10);
            this.display = virtualDisplayCreateVirtualDisplay;
            if (virtualDisplayCreateVirtualDisplay == null) {
                throw new IllegalStateException("Cannot create the browser display");
            }
            Presentation presentation2 = new Presentation(this.owner, this.display.getDisplay());
            this.presentation = presentation2;
            presentation2.getWindow().addFlags(16777216);
            this.presentation.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            this.presentation.getWindow().setFormat(-3);
            if (this.web != null) {
                attach();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$resize$0(ImageReader imageReader) {
            try {
                Image imageAcquireLatestImage = imageReader.acquireLatestImage();
                if (imageAcquireLatestImage != null) {
                    try {
                        if (imageReader == this.reader) {
                            long jUptimeMillis = SystemClock.uptimeMillis();
                            if (jUptimeMillis - this.lastFrame >= 30) {
                                this.lastFrame = jUptimeMillis;
                                Image.Plane plane = imageAcquireLatestImage.getPlanes()[0];
                                ByteBuffer buffer = plane.getBuffer();
                                int rowStride = plane.getRowStride();
                                int pixelStride = plane.getPixelStride();
                                int i = this.width * this.height * 4;
                                byte[] bArr = new byte[i];
                                for (int i2 = 0; i2 < this.height; i2++) {
                                    if (pixelStride == 4) {
                                        buffer.position(i2 * rowStride);
                                        int i3 = this.width;
                                        buffer.get(bArr, i2 * i3 * 4, i3 * 4);
                                    } else {
                                        for (int i4 = 0; i4 < this.width; i4++) {
                                            for (int i5 = 0; i5 < 4; i5++) {
                                                bArr[(((this.width * i2) + i4) * 4) + i5] = buffer.get((i2 * rowStride) + (i4 * pixelStride) + i5);
                                            }
                                        }
                                    }
                                }
                                for (int i6 = 0; i6 < i; i6 += 4) {
                                    int i7 = bArr[i6 + 3] & 255;
                                    if (i7 != 255) {
                                        for (int i8 = 0; i8 < 3; i8++) {
                                            int i9 = i6 + i8;
                                            bArr[i9] = i7 == 0 ? (byte) 0 : (byte) Math.min(255, (((bArr[i9] & 255) * 255) + (i7 / 2)) / i7);
                                        }
                                    }
                                }
                                this.pixels.set(bArr);
                                imageAcquireLatestImage.close();
                                return;
                            }
                            imageAcquireLatestImage.close();
                            return;
                        }
                    } catch (Throwable th) {
                        try {
                            imageAcquireLatestImage.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (imageAcquireLatestImage != null) {
                    imageAcquireLatestImage.close();
                }
            } catch (IllegalStateException | BufferUnderflowException e) {
                event("error", e.toString());
            }
        }

        public void attach() {
            if (this.web.getParent() instanceof ViewGroup) {
                ((ViewGroup) this.web.getParent()).removeView(this.web);
            }
            this.presentation.setContentView(this.web);
            this.presentation.show();
        }

        public void release() {
            WebView webView = this.web;
            if (webView != null) {
                webView.stopLoading();
                this.web.removeJavascriptInterface("__gmodNative");
                this.web.destroy();
                this.web = null;
            }
            Presentation presentation = this.presentation;
            if (presentation != null) {
                presentation.dismiss();
                this.presentation = null;
            }
            VirtualDisplay virtualDisplay = this.display;
            if (virtualDisplay != null) {
                virtualDisplay.release();
                this.display = null;
            }
            ImageReader imageReader = this.reader;
            if (imageReader != null) {
                imageReader.close();
                this.reader = null;
            }
            this.pixels.set(null);
        }
    }
}
