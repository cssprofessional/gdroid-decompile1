package com.google.protobuf;

/* JADX INFO: loaded from: classes.dex */
final class NewInstanceSchemaFull implements NewInstanceSchema {
    @Override // com.google.protobuf.NewInstanceSchema
    public Object newInstance(Object defaultInstance) {
        return ((Message) defaultInstance).toBuilder().buildPartial();
    }
}
