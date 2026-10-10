package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.MessageLite;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
@CheckReturnValue
public interface Message extends MessageLite, MessageOrBuilder {

    public interface Builder extends MessageLite.Builder, MessageOrBuilder {
        @CanIgnoreReturnValue
        Builder addRepeatedField(Descriptors.FieldDescriptor field, Object value);

        Message build();

        Message buildPartial();

        @CanIgnoreReturnValue
        Builder clear();

        @CanIgnoreReturnValue
        Builder clearField(Descriptors.FieldDescriptor field);

        @CanIgnoreReturnValue
        Builder clearOneof(Descriptors.OneofDescriptor oneof);

        /* JADX INFO: renamed from: clone */
        Builder m155clone();

        @Override // com.google.protobuf.MessageOrBuilder
        Descriptors.Descriptor getDescriptorForType();

        Builder getFieldBuilder(Descriptors.FieldDescriptor field);

        Builder getRepeatedFieldBuilder(Descriptors.FieldDescriptor field, int index);

        @Override // com.google.protobuf.MessageLite.Builder
        boolean mergeDelimitedFrom(InputStream input) throws IOException;

        @Override // com.google.protobuf.MessageLite.Builder
        boolean mergeDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException;

        @CanIgnoreReturnValue
        Builder mergeFrom(ByteString data) throws InvalidProtocolBufferException;

        @CanIgnoreReturnValue
        Builder mergeFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException;

        @CanIgnoreReturnValue
        Builder mergeFrom(CodedInputStream input) throws IOException;

        @CanIgnoreReturnValue
        Builder mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException;

        @CanIgnoreReturnValue
        Builder mergeFrom(Message other);

        @CanIgnoreReturnValue
        Builder mergeFrom(InputStream input) throws IOException;

        @CanIgnoreReturnValue
        Builder mergeFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException;

        @CanIgnoreReturnValue
        Builder mergeFrom(byte[] data) throws InvalidProtocolBufferException;

        @CanIgnoreReturnValue
        Builder mergeFrom(byte[] data, int off, int len) throws InvalidProtocolBufferException;

        @CanIgnoreReturnValue
        Builder mergeFrom(byte[] data, int off, int len, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException;

        @CanIgnoreReturnValue
        Builder mergeFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException;

        @CanIgnoreReturnValue
        Builder mergeUnknownFields(UnknownFieldSet unknownFields);

        Builder newBuilderForField(Descriptors.FieldDescriptor field);

        @CanIgnoreReturnValue
        Builder setField(Descriptors.FieldDescriptor field, Object value);

        @CanIgnoreReturnValue
        Builder setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value);

        @CanIgnoreReturnValue
        Builder setUnknownFields(UnknownFieldSet unknownFields);
    }

    boolean equals(Object other);

    Parser<? extends Message> getParserForType();

    int hashCode();

    Builder newBuilderForType();

    Builder toBuilder();

    String toString();
}
