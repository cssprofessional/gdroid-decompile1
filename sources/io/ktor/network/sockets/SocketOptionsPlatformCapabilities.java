package io.ktor.network.sockets;

import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.net.SocketOption;
import java.nio.channels.DatagramChannel;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: compiled from: SocketOptionsPlatformCapabilities.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SocketOptionsPlatformCapabilities {
    public static final SocketOptionsPlatformCapabilities INSTANCE = new SocketOptionsPlatformCapabilities();
    public static final Method channelSetOption;
    public static final Method datagramSetOption;
    public static final Method serverChannelSetOption;
    public static final Map<String, Field> standardSocketOptions;

    static {
        Map mapEmptyMap;
        Method method;
        Method method2;
        try {
            Field[] fields = Class.forName("java.net.StandardSocketOptions").getFields();
            if (fields == null) {
                mapEmptyMap = MapsKt__MapsKt.emptyMap();
            } else {
                ArrayList arrayList = new ArrayList();
                for (Field field : fields) {
                    int modifiers = field.getModifiers();
                    if (Modifier.isStatic(modifiers) && Modifier.isFinal(modifiers) && Modifier.isPublic(modifiers)) {
                        arrayList.add(field);
                    }
                }
                mapEmptyMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10)), 16));
                for (Object obj : arrayList) {
                    String name = ((Field) obj).getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    mapEmptyMap.put(name, obj);
                }
            }
        } catch (Throwable unused) {
            mapEmptyMap = MapsKt__MapsKt.emptyMap();
        }
        standardSocketOptions = mapEmptyMap;
        Method method3 = null;
        try {
            Class<?> cls = Class.forName("java.nio.channels.SocketChannel");
            Method[] methods = cls.getMethods();
            Intrinsics.checkNotNullExpressionValue(methods, "getMethods(...)");
            int length = methods.length;
            for (int i = 0; i < length; i++) {
                method = methods[i];
                int modifiers2 = method.getModifiers();
                if (Modifier.isPublic(modifiers2) && !Modifier.isStatic(modifiers2) && Intrinsics.areEqual(method.getName(), "setOption") && method.getParameterTypes().length == 2 && Intrinsics.areEqual(method.getReturnType(), cls) && Intrinsics.areEqual(method.getParameterTypes()[0], SocketOption.class) && Intrinsics.areEqual(method.getParameterTypes()[1], Object.class)) {
                    break;
                }
            }
        } catch (Throwable unused2) {
        }
        method = null;
        channelSetOption = method;
        try {
            Class<?> cls2 = Class.forName("java.nio.channels.ServerSocketChannel");
            Method[] methods2 = cls2.getMethods();
            Intrinsics.checkNotNullExpressionValue(methods2, "getMethods(...)");
            int length2 = methods2.length;
            for (int i2 = 0; i2 < length2; i2++) {
                method2 = methods2[i2];
                int modifiers3 = method2.getModifiers();
                if (Modifier.isPublic(modifiers3) && !Modifier.isStatic(modifiers3) && Intrinsics.areEqual(method2.getName(), "setOption") && method2.getParameterTypes().length == 2 && Intrinsics.areEqual(method2.getReturnType(), cls2) && Intrinsics.areEqual(method2.getParameterTypes()[0], SocketOption.class) && Intrinsics.areEqual(method2.getParameterTypes()[1], Object.class)) {
                    break;
                }
            }
        } catch (Throwable unused3) {
        }
        method2 = null;
        serverChannelSetOption = method2;
        try {
            Class<?> cls3 = Class.forName("java.nio.channels.DatagramChannel");
            Method[] methods3 = cls3.getMethods();
            Intrinsics.checkNotNullExpressionValue(methods3, "getMethods(...)");
            int length3 = methods3.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length3) {
                    break;
                }
                Method method4 = methods3[i3];
                int modifiers4 = method4.getModifiers();
                if (Modifier.isPublic(modifiers4) && !Modifier.isStatic(modifiers4) && Intrinsics.areEqual(method4.getName(), "setOption") && method4.getParameterTypes().length == 2 && Intrinsics.areEqual(method4.getReturnType(), cls3) && Intrinsics.areEqual(method4.getParameterTypes()[0], SocketOption.class) && Intrinsics.areEqual(method4.getParameterTypes()[1], Object.class)) {
                    method3 = method4;
                    break;
                }
                i3++;
            }
        } catch (Throwable unused4) {
        }
        datagramSetOption = method3;
    }

    public final void setReusePort(SocketChannel channel) throws IllegalAccessException, IOException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(channel, "channel");
        Object objSocketOption = socketOption("SO_REUSEPORT");
        Method method = channelSetOption;
        Intrinsics.checkNotNull(method);
        method.invoke(channel, objSocketOption, Boolean.TRUE);
    }

    public final void setReusePort(ServerSocketChannel channel) throws IllegalAccessException, IOException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(channel, "channel");
        Object objSocketOption = socketOption("SO_REUSEPORT");
        Method method = serverChannelSetOption;
        Intrinsics.checkNotNull(method);
        method.invoke(channel, objSocketOption, Boolean.TRUE);
    }

    public final void setReusePort(DatagramChannel channel) throws IllegalAccessException, IOException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(channel, "channel");
        Object objSocketOption = socketOption("SO_REUSEPORT");
        Method method = datagramSetOption;
        Intrinsics.checkNotNull(method);
        method.invoke(channel, objSocketOption, Boolean.TRUE);
    }

    public final Object socketOption(String str) throws IOException {
        Object obj;
        Field field = standardSocketOptions.get(str);
        if (field != null && (obj = field.get(null)) != null) {
            return obj;
        }
        throw new IOException("Socket option " + str + " is not supported");
    }
}
