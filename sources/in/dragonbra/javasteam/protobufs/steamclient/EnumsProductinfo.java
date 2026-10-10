package in.dragonbra.javasteam.protobufs.steamclient;

import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.RuntimeVersion;

/* JADX INFO: loaded from: classes.dex */
public final class EnumsProductinfo {
    private static Descriptors.FileDescriptor descriptor;

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private EnumsProductinfo() {
    }

    static {
        RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", EnumsProductinfo.class.getName());
        Descriptors.FileDescriptor fileDescriptorInternalBuildGeneratedFileFrom = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\nDin/dragonbra/javasteam/protobufs/steamclient/enums_productinfo.proto*¢\u0002\n\u0014EContentDescriptorID\u0012.\n*k_EContentDescriptor_NudityOrSexualContent\u0010\u0001\u0012/\n+k_EContentDescriptor_FrequentViolenceOrGore\u0010\u0002\u0012/\n+k_EContentDescriptor_AdultOnlySexualContent\u0010\u0003\u00120\n,k_EContentDescriptor_GratuitousSexualContent\u0010\u0004\u0012)\n%k_EContentDescriptor_AnyMatureContent\u0010\u0005\u0012\u001b\n\u0017k_EContentDescriptorMAX\u0010\u0006B0\n,in.dragonbra.javasteam.protobufs.steamclientH\u0001"}, new Descriptors.FileDescriptor[0]);
        descriptor = fileDescriptorInternalBuildGeneratedFileFrom;
        fileDescriptorInternalBuildGeneratedFileFrom.resolveAllFeaturesImmutable();
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public enum EContentDescriptorID implements ProtocolMessageEnum {
        k_EContentDescriptor_NudityOrSexualContent(1),
        k_EContentDescriptor_FrequentViolenceOrGore(2),
        k_EContentDescriptor_AdultOnlySexualContent(3),
        k_EContentDescriptor_GratuitousSexualContent(4),
        k_EContentDescriptor_AnyMatureContent(5),
        k_EContentDescriptorMAX(6);

        private static final EContentDescriptorID[] VALUES;
        private static final Internal.EnumLiteMap<EContentDescriptorID> internalValueMap;
        public static final int k_EContentDescriptorMAX_VALUE = 6;
        public static final int k_EContentDescriptor_AdultOnlySexualContent_VALUE = 3;
        public static final int k_EContentDescriptor_AnyMatureContent_VALUE = 5;
        public static final int k_EContentDescriptor_FrequentViolenceOrGore_VALUE = 2;
        public static final int k_EContentDescriptor_GratuitousSexualContent_VALUE = 4;
        public static final int k_EContentDescriptor_NudityOrSexualContent_VALUE = 1;
        private final int value;

        static {
            RuntimeVersion.validateProtobufGencodeVersion(RuntimeVersion.RuntimeDomain.PUBLIC, 4, 31, 1, "", EContentDescriptorID.class.getName());
            internalValueMap = new Internal.EnumLiteMap<EContentDescriptorID>() { // from class: in.dragonbra.javasteam.protobufs.steamclient.EnumsProductinfo.EContentDescriptorID.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public EContentDescriptorID findValueByNumber(int i) {
                    return EContentDescriptorID.forNumber(i);
                }
            };
            VALUES = values();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static EContentDescriptorID valueOf(int i) {
            return forNumber(i);
        }

        public static EContentDescriptorID forNumber(int i) {
            switch (i) {
                case 1:
                    return k_EContentDescriptor_NudityOrSexualContent;
                case 2:
                    return k_EContentDescriptor_FrequentViolenceOrGore;
                case 3:
                    return k_EContentDescriptor_AdultOnlySexualContent;
                case 4:
                    return k_EContentDescriptor_GratuitousSexualContent;
                case 5:
                    return k_EContentDescriptor_AnyMatureContent;
                case 6:
                    return k_EContentDescriptorMAX;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<EContentDescriptorID> internalGetValueMap() {
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
            return EnumsProductinfo.getDescriptor().getEnumTypes().get(0);
        }

        public static EContentDescriptorID valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        EContentDescriptorID(int i) {
            this.value = i;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }
}
