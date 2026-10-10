package in.dragonbra.javasteam.protobufs.steamclient;

import com.google.protobuf.DescriptorProtos;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.RuntimeVersion;

/* JADX INFO: loaded from: classes2.dex */
public final class SteammessagesUnifiedBaseSteamclient {
    public static final int DESCRIPTION_FIELD_NUMBER = 50000;
    public static final int ENUM_DESCRIPTION_FIELD_NUMBER = 50000;
    public static final int ENUM_VALUE_DESCRIPTION_FIELD_NUMBER = 50000;
    public static final int FORCE_EMIT_MESSAGE_FIELD_NUMBER = 50026;
    public static final int FORCE_EMIT_SERVICE_FIELD_NUMBER = 50026;
    public static final int MESSAGE_DESCRIPTION_FIELD_NUMBER = 51000;
    public static final int METHOD_DESCRIPTION_FIELD_NUMBER = 50000;
    public static final int SERVICE_DESCRIPTION_FIELD_NUMBER = 50000;
    public static final int SERVICE_EXECUTION_SITE_FIELD_NUMBER = 50008;
    public static final int SERVICE_TYPE_FIELD_NUMBER = 50025;
    public static final GeneratedMessage.GeneratedExtension<DescriptorProtos.FieldOptions, String> description;
    private static Descriptors.FileDescriptor descriptor;
    public static final GeneratedMessage.GeneratedExtension<DescriptorProtos.EnumOptions, String> enumDescription;
    public static final GeneratedMessage.GeneratedExtension<DescriptorProtos.EnumValueOptions, String> enumValueDescription;
    public static final GeneratedMessage.GeneratedExtension<DescriptorProtos.MessageOptions, Boolean> forceEmitMessage;
    public static final GeneratedMessage.GeneratedExtension<DescriptorProtos.ServiceOptions, Boolean> forceEmitService;
    private static final Descriptors.Descriptor internal_static_NoResponse_descriptor;
    private static final GeneratedMessage.FieldAccessorTable internal_static_NoResponse_fieldAccessorTable;
    public static final GeneratedMessage.GeneratedExtension<DescriptorProtos.MessageOptions, String> messageDescription;
    public static final GeneratedMessage.GeneratedExtension<DescriptorProtos.MethodOptions, String> methodDescription;
    public static final GeneratedMessage.GeneratedExtension<DescriptorProtos.ServiceOptions, String> serviceDescription;
    public static final GeneratedMessage.GeneratedExtension<DescriptorProtos.ServiceOptions, EProtoExecutionSite> serviceExecutionSite;
    public static final GeneratedMessage.GeneratedExtension<DescriptorProtos.ServiceOptions, EProtoServiceType> serviceType;

    private SteammessagesUnifiedBaseSteamclient() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", SteammessagesUnifiedBaseSteamclient.class.getName());
        GeneratedMessage.GeneratedExtension<DescriptorProtos.MessageOptions, String> generatedExtensionNewFileScopedGeneratedExtension = GeneratedMessage.newFileScopedGeneratedExtension(String.class, null);
        messageDescription = generatedExtensionNewFileScopedGeneratedExtension;
        GeneratedMessage.GeneratedExtension<DescriptorProtos.MessageOptions, Boolean> generatedExtensionNewFileScopedGeneratedExtension2 = GeneratedMessage.newFileScopedGeneratedExtension(Boolean.class, null);
        forceEmitMessage = generatedExtensionNewFileScopedGeneratedExtension2;
        GeneratedMessage.GeneratedExtension<DescriptorProtos.FieldOptions, String> generatedExtensionNewFileScopedGeneratedExtension3 = GeneratedMessage.newFileScopedGeneratedExtension(String.class, null);
        description = generatedExtensionNewFileScopedGeneratedExtension3;
        GeneratedMessage.GeneratedExtension<DescriptorProtos.ServiceOptions, String> generatedExtensionNewFileScopedGeneratedExtension4 = GeneratedMessage.newFileScopedGeneratedExtension(String.class, null);
        serviceDescription = generatedExtensionNewFileScopedGeneratedExtension4;
        GeneratedMessage.GeneratedExtension<DescriptorProtos.ServiceOptions, EProtoExecutionSite> generatedExtensionNewFileScopedGeneratedExtension5 = GeneratedMessage.newFileScopedGeneratedExtension(EProtoExecutionSite.class, null);
        serviceExecutionSite = generatedExtensionNewFileScopedGeneratedExtension5;
        GeneratedMessage.GeneratedExtension<DescriptorProtos.ServiceOptions, EProtoServiceType> generatedExtensionNewFileScopedGeneratedExtension6 = GeneratedMessage.newFileScopedGeneratedExtension(EProtoServiceType.class, null);
        serviceType = generatedExtensionNewFileScopedGeneratedExtension6;
        GeneratedMessage.GeneratedExtension<DescriptorProtos.ServiceOptions, Boolean> generatedExtensionNewFileScopedGeneratedExtension7 = GeneratedMessage.newFileScopedGeneratedExtension(Boolean.class, null);
        forceEmitService = generatedExtensionNewFileScopedGeneratedExtension7;
        GeneratedMessage.GeneratedExtension<DescriptorProtos.MethodOptions, String> generatedExtensionNewFileScopedGeneratedExtension8 = GeneratedMessage.newFileScopedGeneratedExtension(String.class, null);
        methodDescription = generatedExtensionNewFileScopedGeneratedExtension8;
        GeneratedMessage.GeneratedExtension<DescriptorProtos.EnumOptions, String> generatedExtensionNewFileScopedGeneratedExtension9 = GeneratedMessage.newFileScopedGeneratedExtension(String.class, null);
        enumDescription = generatedExtensionNewFileScopedGeneratedExtension9;
        GeneratedMessage.GeneratedExtension<DescriptorProtos.EnumValueOptions, String> generatedExtensionNewFileScopedGeneratedExtension10 = GeneratedMessage.newFileScopedGeneratedExtension(String.class, null);
        enumValueDescription = generatedExtensionNewFileScopedGeneratedExtension10;
        descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\nYin/dragonbra/javasteam/protobufs/steamclient/steammessages_unified_base.steamclient.proto\u001a google/protobuf/descriptor.proto\"\f\n\nNoResponse*]\n\u0013EProtoExecutionSite\u0012 \n\u001ck_EProtoExecutionSiteUnknown\u0010\u0000\u0012$\n k_EProtoExecutionSiteSteamClient\u0010\u0002*e\n\u0011EProtoServiceType\u0012$\n k_EProtoServiceTypeSteamMessages\u0010\u0000\u0012*\n&k_EProtoServiceTypeVRGamepadUIMessages\u0010\u0001:>\n\u0013message_description\u0012\u001f.google.protobuf.MessageOptions\u0018¸\u008e\u0003 \u0001(\t:D\n\u0012force_emit_message\u0012\u001f.google.protobuf.MessageOptions\u0018ê\u0086\u0003 \u0001(\b:\u0005false:4\n\u000bdescription\u0012\u001d.google.protobuf.FieldOptions\u0018Ð\u0086\u0003 \u0001(\t:>\n\u0013service_description\u0012\u001f.google.protobuf.ServiceOptions\u0018Ð\u0086\u0003 \u0001(\t:u\n\u0016service_execution_site\u0012\u001f.google.protobuf.ServiceOptions\u0018Ø\u0086\u0003 \u0001(\u000e2\u0014.EProtoExecutionSite:\u001ck_EProtoExecutionSiteUnknown:m\n\fservice_type\u0012\u001f.google.protobuf.ServiceOptions\u0018é\u0086\u0003 \u0001(\u000e2\u0012.EProtoServiceType: k_EProtoServiceTypeSteamMessages:D\n\u0012force_emit_service\u0012\u001f.google.protobuf.ServiceOptions\u0018ê\u0086\u0003 \u0001(\b:\u0005false:<\n\u0012method_description\u0012\u001e.google.protobuf.MethodOptions\u0018Ð\u0086\u0003 \u0001(\t:8\n\u0010enum_description\u0012\u001c.google.protobuf.EnumOptions\u0018Ð\u0086\u0003 \u0001(\t:C\n\u0016enum_value_description\u0012!.google.protobuf.EnumValueOptions\u0018Ð\u0086\u0003 \u0001(\tB3\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001\u0088\u0001\u0000"}, new Descriptors.FileDescriptor[]{DescriptorProtos.getDescriptor()});
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_NoResponse_descriptor = descriptor2;
        internal_static_NoResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[0]);
        generatedExtensionNewFileScopedGeneratedExtension.internalInit(descriptor.getExtensions().get(0));
        generatedExtensionNewFileScopedGeneratedExtension2.internalInit(descriptor.getExtensions().get(1));
        generatedExtensionNewFileScopedGeneratedExtension3.internalInit(descriptor.getExtensions().get(2));
        generatedExtensionNewFileScopedGeneratedExtension4.internalInit(descriptor.getExtensions().get(3));
        generatedExtensionNewFileScopedGeneratedExtension5.internalInit(descriptor.getExtensions().get(4));
        generatedExtensionNewFileScopedGeneratedExtension6.internalInit(descriptor.getExtensions().get(5));
        generatedExtensionNewFileScopedGeneratedExtension7.internalInit(descriptor.getExtensions().get(6));
        generatedExtensionNewFileScopedGeneratedExtension8.internalInit(descriptor.getExtensions().get(7));
        generatedExtensionNewFileScopedGeneratedExtension9.internalInit(descriptor.getExtensions().get(8));
        generatedExtensionNewFileScopedGeneratedExtension10.internalInit(descriptor.getExtensions().get(9));
        descriptor.resolveAllFeaturesImmutable();
        DescriptorProtos.getDescriptor();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
        extensionRegistryLite.add(messageDescription);
        extensionRegistryLite.add(forceEmitMessage);
        extensionRegistryLite.add(description);
        extensionRegistryLite.add(serviceDescription);
        extensionRegistryLite.add(serviceExecutionSite);
        extensionRegistryLite.add(serviceType);
        extensionRegistryLite.add(forceEmitService);
        extensionRegistryLite.add(methodDescription);
        extensionRegistryLite.add(enumDescription);
        extensionRegistryLite.add(enumValueDescription);
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public enum EProtoExecutionSite implements ProtocolMessageEnum {
        k_EProtoExecutionSiteUnknown(0),
        k_EProtoExecutionSiteSteamClient(2);

        private static final EProtoExecutionSite[] VALUES;
        private static final Internal.EnumLiteMap<EProtoExecutionSite> internalValueMap;
        public static final int k_EProtoExecutionSiteSteamClient_VALUE = 2;
        public static final int k_EProtoExecutionSiteUnknown_VALUE = 0;
        private final int value;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", EProtoExecutionSite.class.getName());
            internalValueMap = new Internal.EnumLiteMap<EProtoExecutionSite>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUnifiedBaseSteamclient.EProtoExecutionSite.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public EProtoExecutionSite findValueByNumber(int i) {
                    return EProtoExecutionSite.forNumber(i);
                }
            };
            VALUES = values();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static EProtoExecutionSite valueOf(int i) {
            return forNumber(i);
        }

        public static EProtoExecutionSite forNumber(int i) {
            if (i == 0) {
                return k_EProtoExecutionSiteUnknown;
            }
            if (i != 2) {
                return null;
            }
            return k_EProtoExecutionSiteSteamClient;
        }

        public static Internal.EnumLiteMap<EProtoExecutionSite> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return getDescriptor().getValues().get(ordinal());
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static Descriptors.EnumDescriptor getDescriptor() {
            return SteammessagesUnifiedBaseSteamclient.getDescriptor().getEnumTypes().get(0);
        }

        public static EProtoExecutionSite valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        EProtoExecutionSite(int i) {
            this.value = i;
        }
    }

    public enum EProtoServiceType implements ProtocolMessageEnum {
        k_EProtoServiceTypeSteamMessages(0),
        k_EProtoServiceTypeVRGamepadUIMessages(1);

        private static final EProtoServiceType[] VALUES;
        private static final Internal.EnumLiteMap<EProtoServiceType> internalValueMap;
        public static final int k_EProtoServiceTypeSteamMessages_VALUE = 0;
        public static final int k_EProtoServiceTypeVRGamepadUIMessages_VALUE = 1;
        private final int value;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", EProtoServiceType.class.getName());
            internalValueMap = new Internal.EnumLiteMap<EProtoServiceType>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUnifiedBaseSteamclient.EProtoServiceType.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public EProtoServiceType findValueByNumber(int i) {
                    return EProtoServiceType.forNumber(i);
                }
            };
            VALUES = values();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static EProtoServiceType valueOf(int i) {
            return forNumber(i);
        }

        public static EProtoServiceType forNumber(int i) {
            if (i == 0) {
                return k_EProtoServiceTypeSteamMessages;
            }
            if (i != 1) {
                return null;
            }
            return k_EProtoServiceTypeVRGamepadUIMessages;
        }

        public static Internal.EnumLiteMap<EProtoServiceType> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return getDescriptor().getValues().get(ordinal());
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static Descriptors.EnumDescriptor getDescriptor() {
            return SteammessagesUnifiedBaseSteamclient.getDescriptor().getEnumTypes().get(1);
        }

        public static EProtoServiceType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        EProtoServiceType(int i) {
            this.value = i;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
