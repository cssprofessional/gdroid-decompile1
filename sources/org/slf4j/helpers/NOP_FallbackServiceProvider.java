package org.slf4j.helpers;

import org.slf4j.ILoggerFactory;
import org.slf4j.IMarkerFactory;
import org.slf4j.spi.MDCAdapter;
import org.slf4j.spi.SLF4JServiceProvider;

/* JADX INFO: loaded from: classes3.dex */
public class NOP_FallbackServiceProvider implements SLF4JServiceProvider {
    public static String REQUESTED_API_VERSION = "2.0.99";
    public final ILoggerFactory loggerFactory = new NOPLoggerFactory();
    public final IMarkerFactory markerFactory = new BasicMarkerFactory();
    public final MDCAdapter mdcAdapter = new NOPMDCAdapter();

    @Override // org.slf4j.spi.SLF4JServiceProvider
    public void initialize() {
    }

    @Override // org.slf4j.spi.SLF4JServiceProvider
    public ILoggerFactory getLoggerFactory() {
        return this.loggerFactory;
    }

    @Override // org.slf4j.spi.SLF4JServiceProvider
    public MDCAdapter getMDCAdapter() {
        return this.mdcAdapter;
    }

    @Override // org.slf4j.spi.SLF4JServiceProvider
    public String getRequestedApiVersion() {
        return REQUESTED_API_VERSION;
    }
}
