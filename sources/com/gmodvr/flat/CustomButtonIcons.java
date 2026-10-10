package com.gmodvr.flat;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import com.gmodvr.flat.CustomButtons;
import in.dragonbra.javasteam.protobufs.steamclient.Enums;

/* JADX INFO: loaded from: classes.dex */
final class CustomButtonIcons implements CustomButtons.IconSource {
    static final float LABEL_OPACITY = 0.75f;
    static final int LABEL_RGB = 11206400;
    static final int SIZE = 256;
    private final int[][] backgrounds = new int[CustomButtons.Shape.values().length][];
    private final Context context;

    public CustomButtonIcons(Context context) {
        this.context = context.getApplicationContext();
    }

    public static byte[] compose(int[] iArr, byte[] bArr, int i) {
        float f;
        float f2;
        int i2 = i * i;
        if (iArr.length != i2 || bArr.length != i2) {
            throw new IllegalArgumentException("Icon inputs must be " + i + "x" + i);
        }
        byte[] bArr2 = new byte[i2 * 4];
        for (int i3 = 0; i3 < iArr.length; i3++) {
            int i4 = iArr[i3];
            float f3 = ((bArr[i3] & 255) / 255.0f) * LABEL_OPACITY;
            float f4 = (((i4 >>> 24) & 255) / 255.0f) * (1.0f - f3);
            float f5 = f3 + f4;
            float f6 = 0.0f;
            if (f5 > 0.0f) {
                float f7 = ((170.0f * f3) + (((i4 >> 16) & 255) * f4)) / f5;
                f2 = ((f3 * 255.0f) + (((i4 >> 8) & 255) * f4)) / f5;
                f = ((f3 * 0.0f) + ((i4 & 255) * f4)) / f5;
                f6 = f7;
            } else {
                f = 0.0f;
                f2 = 0.0f;
            }
            int i5 = i3 * 4;
            bArr2[i5] = (byte) Math.round(f6);
            bArr2[i5 + 1] = (byte) Math.round(f2);
            bArr2[i5 + 2] = (byte) Math.round(f);
            bArr2[i5 + 3] = (byte) Math.round(f5 * 255.0f);
        }
        return bArr2;
    }

    @Override // com.gmodvr.flat.CustomButtons.IconSource
    public byte[] rgba(CustomButtons.Entry entry) {
        return compose(background(entry.shape), coverage(entry.label), 256);
    }

    public Bitmap bitmap(CustomButtons.Shape shape, String str) {
        byte[] bArrCompose = compose(background(shape), coverage(str), 256);
        int[] iArr = new int[Enums.EProtoAppType.k_EAppTypeBeta_VALUE];
        for (int i = 0; i < 65536; i++) {
            int i2 = i * 4;
            iArr[i] = Color.argb(bArrCompose[i2 + 3] & 255, bArrCompose[i2] & 255, bArrCompose[i2 + 1] & 255, bArrCompose[i2 + 2] & 255);
        }
        return Bitmap.createBitmap(iArr, 256, 256, Bitmap.Config.ARGB_8888);
    }

    private synchronized int[] background(CustomButtons.Shape shape) {
        try {
            int[] iArr = this.backgrounds[shape.ordinal()];
            if (iArr != null) {
                return iArr;
            }
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inScaled = false;
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(this.context.getResources(), resource(shape), options);
            if (bitmapDecodeResource.getWidth() != 256 || bitmapDecodeResource.getHeight() != 256) {
                bitmapDecodeResource = Bitmap.createScaledBitmap(bitmapDecodeResource, 256, 256, true);
            }
            Bitmap bitmap = bitmapDecodeResource;
            int[] iArr2 = new int[Enums.EProtoAppType.k_EAppTypeBeta_VALUE];
            bitmap.getPixels(iArr2, 0, 256, 0, 0, 256, 256);
            this.backgrounds[shape.ordinal()] = iArr2;
            return iArr2;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: com.gmodvr.flat.CustomButtonIcons$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$gmodvr$flat$CustomButtons$Shape;

        static {
            int[] iArr = new int[CustomButtons.Shape.values().length];
            $SwitchMap$com$gmodvr$flat$CustomButtons$Shape = iArr;
            try {
                iArr[CustomButtons.Shape.SQUARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$gmodvr$flat$CustomButtons$Shape[CustomButtons.Shape.SHARP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$gmodvr$flat$CustomButtons$Shape[CustomButtons.Shape.CIRCLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static int resource(CustomButtons.Shape shape) {
        int i = AnonymousClass1.$SwitchMap$com$gmodvr$flat$CustomButtons$Shape[shape.ordinal()];
        if (i == 1) {
            return R.drawable.custom_button_square;
        }
        if (i == 2) {
            return R.drawable.custom_button_sharp;
        }
        return R.drawable.custom_button_circle;
    }

    private static byte[] coverage(String str) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(256, 256, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(129);
        paint.setColor(-1);
        Typeface typefaceCreate = Typeface.create("sans-serif-black", 0);
        paint.setTypeface(typefaceCreate != null ? typefaceCreate : Typeface.DEFAULT_BOLD);
        paint.setFakeBoldText(typefaceCreate == null);
        paint.setTextSize(143.36f);
        Rect rect = new Rect();
        paint.getTextBounds(str, 0, str.length(), rect);
        float fMin = Math.min(1.0f, Math.min(rect.width() > 0 ? 179.2f / rect.width() : 1.0f, rect.height() > 0 ? 133.12f / rect.height() : 1.0f));
        if (fMin < 1.0f) {
            paint.setTextSize(fMin * 143.36f);
            paint.getTextBounds(str, 0, str.length(), rect);
        }
        canvas.drawText(str, 128.0f - ((rect.left + rect.right) / 2.0f), 128.0f - ((rect.top + rect.bottom) / 2.0f), paint);
        int[] iArr = new int[Enums.EProtoAppType.k_EAppTypeBeta_VALUE];
        bitmapCreateBitmap.getPixels(iArr, 0, 256, 0, 0, 256, 256);
        byte[] bArr = new byte[Enums.EProtoAppType.k_EAppTypeBeta_VALUE];
        for (int i = 0; i < 65536; i++) {
            bArr[i] = (byte) (iArr[i] >>> 24);
        }
        bitmapCreateBitmap.recycle();
        return bArr;
    }
}
