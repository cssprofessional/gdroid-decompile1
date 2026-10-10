package com.gmodvr.flat;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import java.util.Arrays;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
final class GlProbe {
    private static final String[] ASTC = {"4x4", "5x4", "5x5", "6x5", "6x6", "8x5", "8x6", "8x8", "10x5", "10x6", "10x8", "10x10", "12x10", "12x12"};
    private static final int EGL_OPENGL_ES3_BIT_KHR = 64;
    private static String cached;

    private GlProbe() {
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.String, java.util.concurrent.ExecutorService] */
    public static synchronized String report(long j) {
        ?? r1 = cached;
        if (r1 != 0) {
            return r1;
        }
        try {
            ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.gmodvr.flat.GlProbe$$ExternalSyntheticLambda0
                @Override // java.util.concurrent.ThreadFactory
                public final Thread newThread(Runnable runnable) {
                    return GlProbe.lambda$report$0(runnable);
                }
            });
            try {
                String str = (String) executorServiceNewSingleThreadExecutor.submit(new Callable() { // from class: com.gmodvr.flat.GlProbe$$ExternalSyntheticLambda1
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return GlProbe.probe();
                    }
                }).get(j, TimeUnit.MILLISECONDS);
                cached = str;
                executorServiceNewSingleThreadExecutor.shutdownNow();
                return str;
            } catch (TimeoutException unused) {
                String str2 = "GL probe: timed out after " + j + " ms\n";
                executorServiceNewSingleThreadExecutor.shutdownNow();
                return str2;
            } catch (Throwable th) {
                th = th;
                if ((th instanceof ExecutionException) && th.getCause() != null) {
                    th = th.getCause();
                }
                String str3 = "GL probe failed: " + th + "\n";
                executorServiceNewSingleThreadExecutor.shutdownNow();
                return str3;
            }
        } catch (Throwable th2) {
            r1.shutdownNow();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread lambda$report$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "GDroid-glprobe");
        thread.setDaemon(true);
        return thread;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String probe() {
        StringBuilder sb = new StringBuilder();
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        if (eGLDisplayEglGetDisplay == EGL14.EGL_NO_DISPLAY) {
            return "GL probe: no EGL display\n";
        }
        int i = 2;
        int[] iArr = new int[2];
        if (!EGL14.eglInitialize(eGLDisplayEglGetDisplay, iArr, 0, iArr, 1)) {
            return "GL probe: eglInitialize failed 0x" + Integer.toHexString(EGL14.eglGetError()) + "\n";
        }
        sb.append("EGL ");
        sb.append(iArr[0]);
        sb.append('.');
        sb.append(iArr[1]);
        sb.append(" vendor: ");
        sb.append(EGL14.eglQueryString(eGLDisplayEglGetDisplay, 12371));
        sb.append(", version: ");
        sb.append(EGL14.eglQueryString(eGLDisplayEglGetDisplay, 12372));
        sb.append('\n');
        EGLConfig eGLConfigChoose = choose(eGLDisplayEglGetDisplay, 64);
        if (eGLConfigChoose == null) {
            eGLConfigChoose = choose(eGLDisplayEglGetDisplay, 4);
        } else {
            i = 3;
        }
        if (eGLConfigChoose == null) {
            sb.append("GL probe: no pbuffer config\n");
            return sb.toString();
        }
        EGLSurface eGLSurfaceEglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplayEglGetDisplay, eGLConfigChoose, new int[]{12375, 1, 12374, 1, 12344}, 0);
        EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(eGLDisplayEglGetDisplay, eGLConfigChoose, EGL14.EGL_NO_CONTEXT, new int[]{12440, i, 12344}, 0);
        try {
            if (eGLSurfaceEglCreatePbufferSurface != EGL14.EGL_NO_SURFACE && eGLContextEglCreateContext != EGL14.EGL_NO_CONTEXT && EGL14.eglMakeCurrent(eGLDisplayEglGetDisplay, eGLSurfaceEglCreatePbufferSurface, eGLSurfaceEglCreatePbufferSurface, eGLContextEglCreateContext)) {
                sb.append("context: OpenGL ES ");
                sb.append(i);
                sb.append(" (pbuffer)\n");
                sb.append("GL_VENDOR: ");
                sb.append(GLES20.glGetString(7936));
                sb.append('\n');
                sb.append("GL_RENDERER: ");
                sb.append(GLES20.glGetString(7937));
                sb.append('\n');
                sb.append("GL_VERSION: ");
                sb.append(GLES20.glGetString(7938));
                sb.append('\n');
                sb.append("GL_SHADING_LANGUAGE_VERSION: ");
                sb.append(GLES20.glGetString(35724));
                sb.append('\n');
                limit(sb, "GL_MAX_TEXTURE_SIZE", 3379);
                limit(sb, "GL_MAX_CUBE_MAP_TEXTURE_SIZE", 34076);
                limit(sb, "GL_MAX_RENDERBUFFER_SIZE", 34024);
                limit(sb, "GL_MAX_VERTEX_ATTRIBS", 34921);
                limit(sb, "GL_MAX_VERTEX_UNIFORM_VECTORS", 36347);
                limit(sb, "GL_MAX_FRAGMENT_UNIFORM_VECTORS", 36349);
                limit(sb, "GL_MAX_VARYING_VECTORS", 36348);
                limit(sb, "GL_MAX_TEXTURE_IMAGE_UNITS", 34930);
                limit(sb, "GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS", 35660);
                limit(sb, "GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS", 35661);
                if (i >= 3) {
                    limit(sb, "GL_MAX_3D_TEXTURE_SIZE", 32883);
                    limit(sb, "GL_MAX_ARRAY_TEXTURE_LAYERS", 35071);
                    limit(sb, "GL_MAX_DRAW_BUFFERS", 34852);
                    limit(sb, "GL_MAX_COLOR_ATTACHMENTS", 36063);
                    limit(sb, "GL_MAX_SAMPLES", 36183);
                    limit(sb, "GL_MAX_UNIFORM_BLOCK_SIZE", 35376);
                    limit(sb, "GL_MAX_VERTEX_UNIFORM_COMPONENTS", 35658);
                    limit(sb, "GL_MAX_FRAGMENT_UNIFORM_COMPONENTS", 35657);
                }
                int[] iArr2 = new int[1];
                GLES20.glGetIntegerv(34466, iArr2, 0);
                int iMax = Math.max(0, Math.min(iArr2[0], 512));
                int[] iArr3 = new int[Math.max(1, iMax)];
                if (iMax > 0) {
                    GLES20.glGetIntegerv(34467, iArr3, 0);
                }
                sb.append("GL_COMPRESSED_TEXTURE_FORMATS (");
                sb.append(iMax);
                sb.append("):");
                int i2 = 0;
                while (true) {
                    String str = "  ";
                    if (i2 >= iMax) {
                        break;
                    }
                    if (i2 % 4 == 0) {
                        str = "\n  ";
                    }
                    sb.append(str);
                    sb.append(formatName(iArr3[i2]));
                    i2++;
                }
                sb.append('\n');
                String strGlGetString = GLES20.glGetString(7939);
                String[] strArrSplit = strGlGetString == null ? new String[0] : strGlGetString.trim().split("\\s+");
                Arrays.sort(strArrSplit);
                sb.append("GL_EXTENSIONS (");
                sb.append(strArrSplit.length);
                sb.append("):\n");
                for (String str2 : strArrSplit) {
                    if (!str2.isEmpty()) {
                        sb.append("  ");
                        sb.append(str2);
                        sb.append('\n');
                    }
                }
                String string = sb.toString();
                EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplayEglGetDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
                if (eGLContextEglCreateContext != EGL14.EGL_NO_CONTEXT) {
                    EGL14.eglDestroyContext(eGLDisplayEglGetDisplay, eGLContextEglCreateContext);
                }
                if (eGLSurfaceEglCreatePbufferSurface != EGL14.EGL_NO_SURFACE) {
                    EGL14.eglDestroySurface(eGLDisplayEglGetDisplay, eGLSurfaceEglCreatePbufferSurface);
                }
                EGL14.eglReleaseThread();
                return string;
            }
            sb.append("GL probe: context creation failed 0x");
            sb.append(Integer.toHexString(EGL14.eglGetError()));
            sb.append('\n');
            String string2 = sb.toString();
            EGLSurface eGLSurface2 = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplayEglGetDisplay, eGLSurface2, eGLSurface2, EGL14.EGL_NO_CONTEXT);
            if (eGLContextEglCreateContext != EGL14.EGL_NO_CONTEXT) {
                EGL14.eglDestroyContext(eGLDisplayEglGetDisplay, eGLContextEglCreateContext);
            }
            if (eGLSurfaceEglCreatePbufferSurface != EGL14.EGL_NO_SURFACE) {
                EGL14.eglDestroySurface(eGLDisplayEglGetDisplay, eGLSurfaceEglCreatePbufferSurface);
            }
            EGL14.eglReleaseThread();
            return string2;
        } catch (Throwable th) {
            EGLSurface eGLSurface3 = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplayEglGetDisplay, eGLSurface3, eGLSurface3, EGL14.EGL_NO_CONTEXT);
            if (eGLContextEglCreateContext != EGL14.EGL_NO_CONTEXT) {
                EGL14.eglDestroyContext(eGLDisplayEglGetDisplay, eGLContextEglCreateContext);
            }
            if (eGLSurfaceEglCreatePbufferSurface != EGL14.EGL_NO_SURFACE) {
                EGL14.eglDestroySurface(eGLDisplayEglGetDisplay, eGLSurfaceEglCreatePbufferSurface);
            }
            EGL14.eglReleaseThread();
            throw th;
        }
    }

    private static EGLConfig choose(EGLDisplay eGLDisplay, int i) {
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr = new int[1];
        if (!EGL14.eglChooseConfig(eGLDisplay, new int[]{12352, i, 12339, 1, 12324, 8, 12323, 8, 12322, 8, 12344}, 0, eGLConfigArr, 0, 1, iArr, 0) || iArr[0] <= 0) {
            return null;
        }
        return eGLConfigArr[0];
    }

    private static void limit(StringBuilder sb, String str, int i) {
        String string;
        int[] iArr = new int[1];
        GLES20.glGetIntegerv(i, iArr, 0);
        int iGlGetError = GLES20.glGetError();
        sb.append(str);
        sb.append(": ");
        if (iGlGetError == 0) {
            string = Integer.toString(iArr[0]);
        } else {
            string = "error 0x" + Integer.toHexString(iGlGetError);
        }
        sb.append(string);
        sb.append('\n');
    }

    public static String formatName(int i) {
        switch (i) {
            case 33776:
                return "RGB_S3TC_DXT1";
            case 33777:
                return "RGBA_S3TC_DXT1";
            case 33778:
                return "RGBA_S3TC_DXT3";
            case 33779:
                return "RGBA_S3TC_DXT5";
            default:
                switch (i) {
                    case 34798:
                        return "ATC_RGBA_INTERPOLATED_ALPHA_AMD";
                    case 35840:
                        return "RGB_PVRTC_4BPPV1";
                    case 35842:
                        return "RGBA_PVRTC_4BPPV1";
                    case 36196:
                        return "ETC1_RGB8";
                    case 36283:
                        return "RED_RGTC1";
                    case 36285:
                        return "RG_RGTC2";
                    default:
                        switch (i) {
                            case 35916:
                                return "SRGB_S3TC_DXT1";
                            case 35917:
                                return "SRGB_ALPHA_S3TC_DXT1";
                            case 35918:
                                return "SRGB_ALPHA_S3TC_DXT3";
                            case 35919:
                                return "SRGB_ALPHA_S3TC_DXT5";
                            default:
                                switch (i) {
                                    case 35986:
                                        return "ATC_RGB_AMD";
                                    case 35987:
                                        return "ATC_RGBA_EXPLICIT_ALPHA_AMD";
                                    default:
                                        switch (i) {
                                            case 36492:
                                                return "RGBA_BPTC_UNORM";
                                            case 36493:
                                                return "SRGB_ALPHA_BPTC_UNORM";
                                            default:
                                                switch (i) {
                                                    case 37488:
                                                        return "R11_EAC";
                                                    case 37489:
                                                        return "SIGNED_R11_EAC";
                                                    case 37490:
                                                        return "RG11_EAC";
                                                    case 37491:
                                                        return "SIGNED_RG11_EAC";
                                                    case 37492:
                                                        return "RGB8_ETC2";
                                                    case 37493:
                                                        return "SRGB8_ETC2";
                                                    case 37494:
                                                        return "RGB8_PUNCHTHROUGH_ALPHA1_ETC2";
                                                    case 37495:
                                                        return "SRGB8_PUNCHTHROUGH_ALPHA1_ETC2";
                                                    case 37496:
                                                        return "RGBA8_ETC2_EAC";
                                                    case 37497:
                                                        return "SRGB8_ALPHA8_ETC2_EAC";
                                                    default:
                                                        if (i >= 37808 && i <= 37821) {
                                                            return "RGBA_ASTC_" + ASTC[i - 37808];
                                                        }
                                                        if (i >= 37840 && i <= 37853) {
                                                            return "SRGB8_ALPHA8_ASTC_" + ASTC[i - 37840];
                                                        }
                                                        return "0x" + Integer.toHexString(i);
                                                }
                                        }
                                }
                        }
                }
        }
    }
}
