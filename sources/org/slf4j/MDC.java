package org.slf4j;

import org.slf4j.spi.MDCAdapter;

/* JADX INFO: loaded from: classes3.dex */
public class MDC {
    public static MDCAdapter MDC_ADAPTER;

    public static void setMDCAdapter(MDCAdapter mDCAdapter) {
        if (mDCAdapter == null) {
            throw new IllegalStateException("MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA");
        }
        MDC_ADAPTER = mDCAdapter;
    }
}
