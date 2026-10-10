package com.google.protobuf;

import com.google.protobuf.Descriptors;

/* JADX INFO: loaded from: classes.dex */
public interface BlockingRpcChannel {
    Message callBlockingMethod(Descriptors.MethodDescriptor method, RpcController controller, Message request, Message responsePrototype) throws ServiceException;
}
