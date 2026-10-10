package com.google.protobuf;

import com.google.protobuf.Internal;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class ListFieldSchemaLite implements ListFieldSchema {
    @Override // com.google.protobuf.ListFieldSchema
    public <L> List<L> mutableListAt(Object message, long offset) {
        Internal.ProtobufList protobufList = getProtobufList(message, offset);
        if (protobufList.isModifiable()) {
            return protobufList;
        }
        int size = protobufList.size();
        Internal.ProtobufList protobufListMutableCopyWithCapacity2 = protobufList.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
        UnsafeUtil.putObject(message, offset, protobufListMutableCopyWithCapacity2);
        return protobufListMutableCopyWithCapacity2;
    }

    @Override // com.google.protobuf.ListFieldSchema
    public void makeImmutableListAt(Object message, long offset) {
        getProtobufList(message, offset).makeImmutable();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.google.protobuf.Internal$ProtobufList, java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v3 */
    @Override // com.google.protobuf.ListFieldSchema
    public <E> void mergeListsAt(Object obj, Object obj2, long j) {
        Internal.ProtobufList protobufList = getProtobufList(obj, j);
        ?? protobufList2 = getProtobufList(obj2, j);
        int size = protobufList.size();
        int size2 = protobufList2.size();
        ?? r3 = protobufList;
        r3 = protobufList;
        if (size > 0 && size2 > 0) {
            boolean zIsModifiable = protobufList.isModifiable();
            ?? MutableCopyWithCapacity2 = protobufList;
            if (!zIsModifiable) {
                MutableCopyWithCapacity2 = protobufList.mutableCopyWithCapacity2(size2 + size);
            }
            MutableCopyWithCapacity2.addAll(protobufList2);
            r3 = MutableCopyWithCapacity2;
        }
        if (size > 0) {
            protobufList2 = r3;
        }
        UnsafeUtil.putObject(obj, j, (Object) protobufList2);
    }

    public static <E> Internal.ProtobufList<E> getProtobufList(Object message, long offset) {
        return (Internal.ProtobufList) UnsafeUtil.getObject(message, offset);
    }
}
