package com.google.protobuf;

import com.google.protobuf.Descriptors;

/* JADX INFO: loaded from: classes.dex */
public interface RpcChannel {
    void callMethod(Descriptors.MethodDescriptor method, RpcController controller, Message request, Message responsePrototype, RpcCallback<Message> done);
}
