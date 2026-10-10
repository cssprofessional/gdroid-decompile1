package org.tukaani.xz;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public abstract class FilterOptions implements Cloneable {
    public abstract int getDecoderMemoryUsage();

    public abstract int getEncoderMemoryUsage();

    public abstract FilterEncoder getFilterEncoder();

    public abstract InputStream getInputStream(InputStream inputStream, ArrayCache arrayCache) throws IOException;

    public abstract FinishableOutputStream getOutputStream(FinishableOutputStream finishableOutputStream, ArrayCache arrayCache);

    public static int getEncoderMemoryUsage(FilterOptions[] filterOptionsArr) {
        int encoderMemoryUsage = 0;
        for (FilterOptions filterOptions : filterOptionsArr) {
            encoderMemoryUsage += filterOptions.getEncoderMemoryUsage();
        }
        return encoderMemoryUsage;
    }

    public static int getDecoderMemoryUsage(FilterOptions[] filterOptionsArr) {
        int decoderMemoryUsage = 0;
        for (FilterOptions filterOptions : filterOptionsArr) {
            decoderMemoryUsage += filterOptions.getDecoderMemoryUsage();
        }
        return decoderMemoryUsage;
    }

    public FinishableOutputStream getOutputStream(FinishableOutputStream finishableOutputStream) {
        return getOutputStream(finishableOutputStream, ArrayCache.getDefaultCache());
    }

    public InputStream getInputStream(InputStream inputStream) throws IOException {
        return getInputStream(inputStream, ArrayCache.getDefaultCache());
    }
}
