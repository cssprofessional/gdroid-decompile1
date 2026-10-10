package org.slf4j.helpers;

import java.util.Deque;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class ThreadLocalMapOfStacks {
    public final ThreadLocal<Map<String, Deque<String>>> tlMapOfStacks = new ThreadLocal<>();
}
