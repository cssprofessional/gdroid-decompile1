package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.os.Parcelable;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.io.ByteArrayOutputStream;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {
    public static final PorterDuff.Mode DEFAULT_TINT_MODE = PorterDuff.Mode.SRC_IN;
    public Object mObj1;
    public int mType = -1;
    public byte[] mData = null;
    public Parcelable mParcelable = null;
    public int mInt1 = 0;
    public int mInt2 = 0;
    public ColorStateList mTintList = null;
    public PorterDuff.Mode mTintMode = DEFAULT_TINT_MODE;
    public String mTintModeStr = null;

    public String getResPackage() {
        int i = this.mType;
        if (i == -1) {
            return getResPackage((Icon) this.mObj1);
        }
        if (i != 2) {
            throw new IllegalStateException("called getResPackage() on " + this);
        }
        return ((String) this.mObj1).split(":", -1)[0];
    }

    public int getResId() {
        int i = this.mType;
        if (i == -1) {
            return getResId((Icon) this.mObj1);
        }
        if (i != 2) {
            throw new IllegalStateException("called getResId() on " + this);
        }
        return this.mInt1;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String toString() {
        /*
            r3 = this;
            int r0 = r3.mType
            r1 = -1
            if (r0 != r1) goto Lc
            java.lang.Object r3 = r3.mObj1
            java.lang.String r3 = java.lang.String.valueOf(r3)
            return r3
        Lc:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Icon(typ="
            r0.<init>(r1)
            int r1 = r3.mType
            java.lang.String r1 = typeToString(r1)
            r0.append(r1)
            int r1 = r3.mType
            r2 = 1
            if (r1 == r2) goto L79
            r2 = 2
            if (r1 == r2) goto L52
            r2 = 3
            if (r1 == r2) goto L39
            r2 = 4
            if (r1 == r2) goto L2e
            r2 = 5
            if (r1 == r2) goto L79
            goto L99
        L2e:
            java.lang.String r1 = " uri="
            r0.append(r1)
            java.lang.Object r1 = r3.mObj1
            r0.append(r1)
            goto L99
        L39:
            java.lang.String r1 = " len="
            r0.append(r1)
            int r1 = r3.mInt1
            r0.append(r1)
            int r1 = r3.mInt2
            if (r1 == 0) goto L99
            java.lang.String r1 = " off="
            r0.append(r1)
            int r1 = r3.mInt2
            r0.append(r1)
            goto L99
        L52:
            java.lang.String r1 = " pkg="
            r0.append(r1)
            java.lang.String r1 = r3.getResPackage()
            r0.append(r1)
            java.lang.String r1 = " id="
            r0.append(r1)
            int r1 = r3.getResId()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.Object[] r1 = new java.lang.Object[]{r1}
            java.lang.String r2 = "0x%08x"
            java.lang.String r1 = java.lang.String.format(r2, r1)
            r0.append(r1)
            goto L99
        L79:
            java.lang.String r1 = " size="
            r0.append(r1)
            java.lang.Object r1 = r3.mObj1
            android.graphics.Bitmap r1 = (android.graphics.Bitmap) r1
            int r1 = r1.getWidth()
            r0.append(r1)
            java.lang.String r1 = "x"
            r0.append(r1)
            java.lang.Object r1 = r3.mObj1
            android.graphics.Bitmap r1 = (android.graphics.Bitmap) r1
            int r1 = r1.getHeight()
            r0.append(r1)
        L99:
            android.content.res.ColorStateList r1 = r3.mTintList
            if (r1 == 0) goto La7
            java.lang.String r1 = " tint="
            r0.append(r1)
            android.content.res.ColorStateList r1 = r3.mTintList
            r0.append(r1)
        La7:
            android.graphics.PorterDuff$Mode r1 = r3.mTintMode
            android.graphics.PorterDuff$Mode r2 = androidx.core.graphics.drawable.IconCompat.DEFAULT_TINT_MODE
            if (r1 == r2) goto Lb7
            java.lang.String r1 = " mode="
            r0.append(r1)
            android.graphics.PorterDuff$Mode r3 = r3.mTintMode
            r0.append(r3)
        Lb7:
            java.lang.String r3 = ")"
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.drawable.IconCompat.toString():java.lang.String");
    }

    public void onPreParceling(boolean z) {
        this.mTintModeStr = this.mTintMode.name();
        int i = this.mType;
        if (i == -1) {
            if (z) {
                throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
            }
            this.mParcelable = (Parcelable) this.mObj1;
            return;
        }
        if (i != 1) {
            if (i == 2) {
                this.mData = ((String) this.mObj1).getBytes(Charset.forName("UTF-16"));
                return;
            }
            if (i == 3) {
                this.mData = (byte[]) this.mObj1;
                return;
            } else if (i == 4) {
                this.mData = this.mObj1.toString().getBytes(Charset.forName("UTF-16"));
                return;
            } else if (i != 5) {
                return;
            }
        }
        if (z) {
            Bitmap bitmap = (Bitmap) this.mObj1;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
            this.mData = byteArrayOutputStream.toByteArray();
            return;
        }
        this.mParcelable = (Parcelable) this.mObj1;
    }

    public void onPostParceling() {
        this.mTintMode = PorterDuff.Mode.valueOf(this.mTintModeStr);
        int i = this.mType;
        if (i == -1) {
            Parcelable parcelable = this.mParcelable;
            if (parcelable != null) {
                this.mObj1 = parcelable;
                return;
            }
            throw new IllegalArgumentException("Invalid icon");
        }
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    this.mObj1 = this.mData;
                    return;
                } else if (i != 4) {
                    if (i != 5) {
                        return;
                    }
                }
            }
            this.mObj1 = new String(this.mData, Charset.forName("UTF-16"));
            return;
        }
        Parcelable parcelable2 = this.mParcelable;
        if (parcelable2 != null) {
            this.mObj1 = parcelable2;
            return;
        }
        byte[] bArr = this.mData;
        this.mObj1 = bArr;
        this.mType = 3;
        this.mInt1 = 0;
        this.mInt2 = bArr.length;
    }

    public static String typeToString(int i) {
        if (i == 1) {
            return "BITMAP";
        }
        if (i == 2) {
            return "RESOURCE";
        }
        if (i == 3) {
            return "DATA";
        }
        if (i == 4) {
            return "URI";
        }
        if (i == 5) {
            return "BITMAP_MASKABLE";
        }
        return "UNKNOWN";
    }

    public static String getResPackage(Icon icon) {
        return icon.getResPackage();
    }

    public static int getResId(Icon icon) {
        return icon.getResId();
    }
}
