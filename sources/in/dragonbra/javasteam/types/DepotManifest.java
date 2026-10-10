package in.dragonbra.javasteam.types;

import com.google.protobuf.ByteString;
import com.google.protobuf.DescriptorProtos;
import in.dragonbra.javasteam.enums.EDepotFileFlag;
import in.dragonbra.javasteam.protobufs.steamclient.ContentManifest;
import in.dragonbra.javasteam.types.Steam3Manifest;
import in.dragonbra.javasteam.util.Utils;
import in.dragonbra.javasteam.util.compat.InputStreamCompatKt;
import in.dragonbra.javasteam.util.crypto.CryptoHelper;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.Comparator;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Charsets;
import kotlin.text.HexExtensionsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* JADX INFO: compiled from: DepotManifest.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class DepotManifest {
    private static final int PROTOBUF_ENDOFMANIFEST_MAGIC = 851711403;
    private static final int PROTOBUF_METADATA_MAGIC = 524817086;
    private static final int PROTOBUF_PAYLOAD_MAGIC = 1911953360;
    private static final int PROTOBUF_SIGNATURE_MAGIC = 461486103;
    private int depotID;
    private int encryptedCRC;
    private boolean filenamesEncrypted;
    private long manifestGID;
    private long totalCompressedSize;
    private long totalUncompressedSize;
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(DepotManifest.class);
    private ArrayList<FileData> files = new ArrayList<>();
    private Date creationTime = new Date();

    public static final DepotManifest deserialize(InputStream inputStream) {
        return Companion.deserialize(inputStream);
    }

    public static final DepotManifest deserialize(byte[] bArr) {
        return Companion.deserialize(bArr);
    }

    public static final DepotManifest loadFromFile(String str) {
        return Companion.loadFromFile(str);
    }

    /* JADX INFO: compiled from: DepotManifest.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final DepotManifest deserialize(InputStream stream) throws IllegalAccessException, IOException, InvocationTargetException {
            Intrinsics.checkNotNullParameter(stream, "stream");
            DepotManifest depotManifest = new DepotManifest();
            depotManifest.internalDeserialize(stream);
            return depotManifest;
        }

        public final DepotManifest deserialize(byte[] data) throws IllegalAccessException, IOException, InvocationTargetException {
            Intrinsics.checkNotNullParameter(data, "data");
            MemoryStream memoryStream = new MemoryStream(data);
            try {
                DepotManifest depotManifestDeserialize = DepotManifest.Companion.deserialize(memoryStream);
                CloseableKt.closeFinally(memoryStream, null);
                return depotManifestDeserialize;
            } finally {
            }
        }

        public final DepotManifest loadFromFile(String filename) throws IllegalAccessException, IOException, InvocationTargetException {
            Intrinsics.checkNotNullParameter(filename, "filename");
            File file = new File(filename);
            if (!file.exists()) {
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                DepotManifest depotManifestDeserialize = DepotManifest.Companion.deserialize(fileInputStream);
                CloseableKt.closeFinally(fileInputStream, null);
                return depotManifestDeserialize;
            } finally {
            }
        }
    }

    public final ArrayList<FileData> getFiles() {
        return this.files;
    }

    public final void setFiles(ArrayList<FileData> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.files = arrayList;
    }

    public final boolean getFilenamesEncrypted() {
        return this.filenamesEncrypted;
    }

    public final void setFilenamesEncrypted(boolean z) {
        this.filenamesEncrypted = z;
    }

    public final int getDepotID() {
        return this.depotID;
    }

    public final void setDepotID(int i) {
        this.depotID = i;
    }

    public final long getManifestGID() {
        return this.manifestGID;
    }

    public final void setManifestGID(long j) {
        this.manifestGID = j;
    }

    public final Date getCreationTime() {
        return this.creationTime;
    }

    public final void setCreationTime(Date date) {
        Intrinsics.checkNotNullParameter(date, "<set-?>");
        this.creationTime = date;
    }

    public final long getTotalUncompressedSize() {
        return this.totalUncompressedSize;
    }

    public final void setTotalUncompressedSize(long j) {
        this.totalUncompressedSize = j;
    }

    public final long getTotalCompressedSize() {
        return this.totalCompressedSize;
    }

    public final void setTotalCompressedSize(long j) {
        this.totalCompressedSize = j;
    }

    public final int getEncryptedCRC() {
        return this.encryptedCRC;
    }

    public final void setEncryptedCRC(int i) {
        this.encryptedCRC = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v3, types: [T, byte[]] */
    /* JADX WARN: Type inference failed for: r6v0, types: [T, byte[]] */
    public final boolean decryptFilenames(byte[] encryptionKey) throws Throwable {
        Ref$ObjectRef ref$ObjectRef;
        Ref$ObjectRef ref$ObjectRef2;
        Intrinsics.checkNotNullParameter(encryptionKey, "encryptionKey");
        if (!this.filenamesEncrypted) {
            return true;
        }
        if (encryptionKey.length != 32) {
            throw new IllegalArgumentException("Decrypt filnames used with non 32 byte key!");
        }
        String str = CryptoHelper.SEC_PROV;
        Cipher cipher = Cipher.getInstance("AES/ECB/NoPadding", str);
        Cipher cipher2 = Cipher.getInstance("AES/CBC/PKCS7Padding", str);
        SecretKeySpec secretKeySpec = new SecretKeySpec(encryptionKey, "AES");
        byte[] bArr = new byte[16];
        Ref$IntRef ref$IntRef = new Ref$IntRef();
        Ref$ObjectRef ref$ObjectRef3 = new Ref$ObjectRef();
        ref$ObjectRef3.element = new byte[256];
        Ref$ObjectRef ref$ObjectRef4 = new Ref$ObjectRef();
        ref$ObjectRef4.element = new byte[256];
        try {
            for (FileData fileData : this.files) {
                final Ref$ObjectRef ref$ObjectRef5 = new Ref$ObjectRef();
                String fileName = fileData.getFileName();
                Ref$ObjectRef ref$ObjectRef6 = ref$ObjectRef4;
                Ref$IntRef ref$IntRef2 = ref$IntRef;
                Ref$IntRef ref$IntRef3 = ref$IntRef;
                ref$ObjectRef = ref$ObjectRef4;
                byte[] bArr2 = bArr;
                byte[] bArr3 = bArr;
                ref$ObjectRef2 = ref$ObjectRef3;
                try {
                    if (!decryptFilenames$tryDecryptName(ref$ObjectRef3, ref$ObjectRef6, cipher, secretKeySpec, cipher2, ref$IntRef2, fileName, bArr2, new Function1() { // from class: in.dragonbra.javasteam.types.DepotManifest$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return DepotManifest.decryptFilenames$lambda$1$0(ref$ObjectRef5, (String) obj);
                        }
                    })) {
                        ArraysKt___ArraysJvmKt.fill$default((byte[]) ref$ObjectRef2.element, (byte) 0, 0, 0, 6, (Object) null);
                        ArraysKt___ArraysJvmKt.fill$default((byte[]) ref$ObjectRef.element, (byte) 0, 0, 0, 6, (Object) null);
                        return false;
                    }
                    String str2 = (String) ref$ObjectRef5.element;
                    if (str2 == null) {
                        str2 = "";
                    }
                    fileData.setFileName(str2);
                    final Ref$ObjectRef ref$ObjectRef7 = new Ref$ObjectRef();
                    String linkTarget = fileData.getLinkTarget();
                    if (linkTarget != null && linkTarget.length() != 0) {
                        String linkTarget2 = fileData.getLinkTarget();
                        Intrinsics.checkNotNull(linkTarget2);
                        if (!decryptFilenames$tryDecryptName(ref$ObjectRef2, ref$ObjectRef, cipher, secretKeySpec, cipher2, ref$IntRef3, linkTarget2, bArr3, new Function1() { // from class: in.dragonbra.javasteam.types.DepotManifest$$ExternalSyntheticLambda1
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                return DepotManifest.decryptFilenames$lambda$1$1(ref$ObjectRef7, (String) obj);
                            }
                        })) {
                            ArraysKt___ArraysJvmKt.fill$default((byte[]) ref$ObjectRef2.element, (byte) 0, 0, 0, 6, (Object) null);
                            ArraysKt___ArraysJvmKt.fill$default((byte[]) ref$ObjectRef.element, (byte) 0, 0, 0, 6, (Object) null);
                            return false;
                        }
                        fileData.setLinkTarget((String) ref$ObjectRef7.element);
                    }
                    ref$ObjectRef3 = ref$ObjectRef2;
                    ref$ObjectRef4 = ref$ObjectRef;
                    bArr = bArr3;
                    ref$IntRef = ref$IntRef3;
                } catch (Throwable th) {
                    th = th;
                    ArraysKt___ArraysJvmKt.fill$default((byte[]) ref$ObjectRef2.element, (byte) 0, 0, 0, 6, (Object) null);
                    ArraysKt___ArraysJvmKt.fill$default((byte[]) ref$ObjectRef.element, (byte) 0, 0, 0, 6, (Object) null);
                    throw th;
                }
            }
            ArraysKt___ArraysJvmKt.fill$default((byte[]) ref$ObjectRef3.element, (byte) 0, 0, 0, 6, (Object) null);
            ArraysKt___ArraysJvmKt.fill$default((byte[]) ref$ObjectRef4.element, (byte) 0, 0, 0, 6, (Object) null);
            ArrayList<FileData> arrayList = this.files;
            final Comparator<String> case_insensitive_order = StringsKt__StringsJVMKt.getCASE_INSENSITIVE_ORDER(StringCompanionObject.INSTANCE);
            CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new Comparator() { // from class: in.dragonbra.javasteam.types.DepotManifest$decryptFilenames$$inlined$compareBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return case_insensitive_order.compare(((FileData) t).getFileName(), ((FileData) t2).getFileName());
                }
            });
            this.filenamesEncrypted = false;
            return true;
        } catch (Throwable th2) {
            th = th2;
            ref$ObjectRef = ref$ObjectRef4;
            ref$ObjectRef2 = ref$ObjectRef3;
        }
    }

    /* JADX WARN: Type inference failed for: r4v18, types: [T, byte[]] */
    /* JADX WARN: Type inference failed for: r5v10, types: [T, byte[]] */
    private static final boolean decryptFilenames$tryDecryptName(Ref$ObjectRef<byte[]> ref$ObjectRef, Ref$ObjectRef<byte[]> ref$ObjectRef2, Cipher cipher, SecretKeySpec secretKeySpec, Cipher cipher2, Ref$IntRef ref$IntRef, String str, byte[] bArr, Function1<? super String, Unit> function1) {
        boolean z;
        boolean z2;
        byte[] bArrCopyOfRange;
        function1.invoke(null);
        int length = (str.length() / 4) * 3;
        if (length > ref$ObjectRef.element.length) {
            ref$ObjectRef.element = new byte[length];
            ref$ObjectRef2.element = new byte[length];
        }
        try {
            byte[] bArrDecode = Base64.getUrlDecoder().decode(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(str, '+', '-', false, 4, (Object) null), '/', '_', false, 4, (Object) null), "\n", "", false, 4, (Object) null), "\r", "", false, 4, (Object) null), " ", "", false, 4, (Object) null));
            if (bArrDecode.length <= ref$ObjectRef.element.length) {
                Intrinsics.checkNotNull(bArrDecode);
                ArraysKt___ArraysJvmKt.copyInto$default(bArrDecode, ref$ObjectRef.element, 0, 0, 0, 14, (Object) null);
                try {
                    bArrCopyOfRange = ArraysKt___ArraysJvmKt.copyOfRange(ref$ObjectRef.element, 0, bArrDecode.length);
                    cipher.init(2, secretKeySpec);
                    z2 = false;
                } catch (Exception e) {
                    e = e;
                    z2 = false;
                }
                try {
                    cipher.doFinal(bArrCopyOfRange, 0, bArr.length, bArr, 0);
                    cipher2.init(2, secretKeySpec, new IvParameterSpec(bArr));
                    byte[] bArrCopyOfRange2 = ArraysKt___ArraysJvmKt.copyOfRange(bArrCopyOfRange, bArr.length, bArrCopyOfRange.length);
                    int iDoFinal = cipher2.doFinal(bArrCopyOfRange2, 0, bArrCopyOfRange2.length, ref$ObjectRef2.element, 0);
                    ref$IntRef.element = iDoFinal;
                    if (iDoFinal > 0 && ref$ObjectRef2.element[iDoFinal - 1] == 0) {
                        ref$IntRef.element = iDoFinal - 1;
                    }
                    int i = ref$IntRef.element;
                    for (int i2 = 0; i2 < i; i2++) {
                        byte[] bArr2 = ref$ObjectRef2.element;
                        if (bArr2[i2] == 92) {
                            bArr2[i2] = (byte) File.separatorChar;
                        }
                    }
                    function1.invoke(new String(ref$ObjectRef2.element, 0, ref$IntRef.element, Charsets.UTF_8));
                    return true;
                } catch (Exception e2) {
                    e = e2;
                    logger.error("Failed to decrypt the filename.", e);
                    return z2;
                }
            }
            z = false;
            try {
                throw new IllegalArgumentException("Buffer too small");
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Exception e4) {
            e = e4;
            z = false;
        }
        logger.error("Failed to base64 decode the filename: " + e.getMessage(), e);
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit decryptFilenames$lambda$1$0(Ref$ObjectRef ref$ObjectRef, String str) {
        ref$ObjectRef.element = str;
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit decryptFilenames$lambda$1$1(Ref$ObjectRef ref$ObjectRef, String str) {
        ref$ObjectRef.element = str;
        return Unit.INSTANCE;
    }

    public final void saveToFile(String filename) throws IllegalAccessException, IOException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(filename, "filename");
        FileOutputStream fileOutputStream = new FileOutputStream(new File(filename));
        try {
            serialize(fileOutputStream);
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(fileOutputStream, null);
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void internalDeserialize(InputStream inputStream) throws IllegalAccessException, IOException, InvocationTargetException {
        BinaryReader binaryReader = new BinaryReader(inputStream);
        ContentManifest.ContentManifestPayload from = null;
        ContentManifest.ContentManifestMetadata from2 = null;
        ContentManifest.ContentManifestSignature from3 = null;
        while (true) {
            try {
                int i = binaryReader.readInt();
                if (i == PROTOBUF_ENDOFMANIFEST_MAGIC) {
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(binaryReader, null);
                    if (from == null || from2 == null || from3 == null) {
                        throw new NoSuchElementException("Missing ContentManifest sections required for parsing depot manifest");
                    }
                    parseProtobufManifestMetadata(from2);
                    parseProtobufManifestPayload(from);
                    return;
                }
                switch (i) {
                    case Steam3Manifest.MAGIC /* 372545409 */:
                        Steam3Manifest steam3Manifest = new Steam3Manifest();
                        steam3Manifest.deserialize$javasteam(binaryReader);
                        parseBinaryManifest(steam3Manifest);
                        if (binaryReader.readInt() != i) {
                            throw new NoSuchElementException("Unable to find end of message marker for depot manifest");
                        }
                        CloseableKt.closeFinally(binaryReader, null);
                        return;
                    case PROTOBUF_SIGNATURE_MAGIC /* 461486103 */:
                        from3 = ContentManifest.ContentManifestSignature.parseFrom(InputStreamCompatKt.readNBytesCompat(inputStream, binaryReader.readInt()));
                        break;
                    case PROTOBUF_METADATA_MAGIC /* 524817086 */:
                        from2 = ContentManifest.ContentManifestMetadata.parseFrom(InputStreamCompatKt.readNBytesCompat(inputStream, binaryReader.readInt()));
                        break;
                    case PROTOBUF_PAYLOAD_MAGIC /* 1911953360 */:
                        from = ContentManifest.ContentManifestPayload.parseFrom(InputStreamCompatKt.readNBytesCompat(inputStream, binaryReader.readInt()));
                        break;
                    default:
                        throw new NoSuchElementException("Unrecognized magic value " + HexExtensionsKt.toHexString$default(i, null, 1, null) + " in depot manifest.");
                }
            } finally {
            }
        }
    }

    private final void parseBinaryManifest(Steam3Manifest steam3Manifest) {
        this.files = new ArrayList<>(steam3Manifest.getMapping().size());
        this.filenamesEncrypted = steam3Manifest.getAreFileNamesEncrypted();
        this.depotID = steam3Manifest.getDepotID();
        this.manifestGID = steam3Manifest.getManifestGID();
        this.creationTime = steam3Manifest.getCreationTime();
        this.totalUncompressedSize = steam3Manifest.getTotalUncompressedSize();
        this.totalCompressedSize = steam3Manifest.getTotalCompressedSize();
        this.encryptedCRC = steam3Manifest.getEncryptedCRC();
        for (Steam3Manifest.FileMapping fileMapping : steam3Manifest.getMapping()) {
            String fileName = fileMapping.getFileName();
            Intrinsics.checkNotNull(fileName);
            byte[] hashFileName = fileMapping.getHashFileName();
            Intrinsics.checkNotNull(hashFileName);
            EnumSet<EDepotFileFlag> flags = fileMapping.getFlags();
            long totalSize = fileMapping.getTotalSize();
            byte[] hashContent = fileMapping.getHashContent();
            Intrinsics.checkNotNull(hashContent);
            FileData fileData = new FileData(fileName, hashFileName, flags, totalSize, hashContent, "", this.filenamesEncrypted, fileMapping.getChunks().length);
            for (Steam3Manifest.FileMapping.Chunk chunk : fileMapping.getChunks()) {
                byte[] chunkGID = chunk.getChunkGID();
                Intrinsics.checkNotNull(chunkGID);
                fileData.getChunks().add(new ChunkData(chunkGID, chunk.getChecksum(), chunk.getOffset(), chunk.getCompressedSize(), chunk.getDecompressedSize()));
            }
            this.files.add(fileData);
        }
    }

    private final void parseProtobufManifestPayload(ContentManifest.ContentManifestPayload contentManifestPayload) {
        this.files = new ArrayList<>(contentManifestPayload.getMappingsCount());
        List<ContentManifest.ContentManifestPayload.FileMapping> mappingsList = contentManifestPayload.getMappingsList();
        Intrinsics.checkNotNullExpressionValue(mappingsList, "getMappingsList(...)");
        for (ContentManifest.ContentManifestPayload.FileMapping fileMapping : mappingsList) {
            String filename = fileMapping.getFilename();
            Intrinsics.checkNotNullExpressionValue(filename, "getFilename(...)");
            byte[] byteArray = fileMapping.getShaFilename().toByteArray();
            Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
            EnumSet<EDepotFileFlag> enumSetFrom = EDepotFileFlag.from(fileMapping.getFlags());
            Intrinsics.checkNotNullExpressionValue(enumSetFrom, "from(...)");
            long size = fileMapping.getSize();
            byte[] byteArray2 = fileMapping.getShaContent().toByteArray();
            Intrinsics.checkNotNullExpressionValue(byteArray2, "toByteArray(...)");
            String linktarget = fileMapping.getLinktarget();
            Intrinsics.checkNotNullExpressionValue(linktarget, "getLinktarget(...)");
            FileData fileData = new FileData(filename, byteArray, enumSetFrom, size, byteArray2, linktarget, this.filenamesEncrypted, fileMapping.getChunksList().size());
            List<ContentManifest.ContentManifestPayload.FileMapping.ChunkData> chunksList = fileMapping.getChunksList();
            Intrinsics.checkNotNullExpressionValue(chunksList, "getChunksList(...)");
            for (ContentManifest.ContentManifestPayload.FileMapping.ChunkData chunkData : chunksList) {
                fileData.getChunks().add(new ChunkData(chunkData.getSha().toByteArray(), chunkData.getCrc(), chunkData.getOffset(), chunkData.getCbCompressed(), chunkData.getCbOriginal()));
            }
            this.files.add(fileData);
        }
    }

    private final void parseProtobufManifestMetadata(ContentManifest.ContentManifestMetadata contentManifestMetadata) {
        this.filenamesEncrypted = contentManifestMetadata.getFilenamesEncrypted();
        this.depotID = contentManifestMetadata.getDepotId();
        this.manifestGID = contentManifestMetadata.getGidManifest();
        Date dateFrom = Date.from(Instant.ofEpochSecond(contentManifestMetadata.getCreationTime()));
        Intrinsics.checkNotNullExpressionValue(dateFrom, "from(...)");
        this.creationTime = dateFrom;
        this.totalUncompressedSize = contentManifestMetadata.getCbDiskOriginal();
        this.totalCompressedSize = contentManifestMetadata.getCbDiskCompressed();
        this.encryptedCRC = contentManifestMetadata.getCrcEncrypted();
    }

    /* JADX INFO: compiled from: DepotManifest.kt */
    public static final class ByteArrayKey {
        private final byte[] byteArray;

        public ByteArrayKey(byte[] byteArray) {
            Intrinsics.checkNotNullParameter(byteArray, "byteArray");
            this.byteArray = byteArray;
        }

        public boolean equals(Object obj) {
            return (obj instanceof ByteArrayKey) && Arrays.equals(this.byteArray, ((ByteArrayKey) obj).byteArray);
        }

        public int hashCode() {
            byte[] bArr = this.byteArray;
            if (bArr.length >= 4) {
                return ((bArr[3] & 255) << 24) | (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16);
            }
            return Arrays.hashCode(bArr);
        }
    }

    public final void serialize(OutputStream output) throws NoSuchAlgorithmException, IOException, NoSuchProviderException {
        Intrinsics.checkNotNullParameter(output, "output");
        ContentManifest.ContentManifestPayload.Builder builderNewBuilder = ContentManifest.ContentManifestPayload.newBuilder();
        HashSet hashSet = new HashSet();
        MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1, CryptoHelper.SEC_PROV);
        for (FileData fileData : this.files) {
            ContentManifest.ContentManifestPayload.FileMapping.Builder builderNewBuilder2 = ContentManifest.ContentManifestPayload.FileMapping.newBuilder();
            builderNewBuilder2.setSize(fileData.getTotalSize());
            builderNewBuilder2.setFlags(EDepotFileFlag.code(fileData.getFlags()));
            if (this.filenamesEncrypted) {
                builderNewBuilder2.setFilename(fileData.getFileName());
                builderNewBuilder2.setShaFilename(ByteString.copyFrom(fileData.getFileNameHash()));
            } else {
                builderNewBuilder2.setFilename(StringsKt__StringsJVMKt.replace$default(fileData.getFileName(), '/', '\\', false, 4, (Object) null));
                String strReplace$default = StringsKt__StringsJVMKt.replace$default(fileData.getFileName(), '/', '\\', false, 4, (Object) null);
                Locale locale = Locale.getDefault();
                Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
                String lowerCase = strReplace$default.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                byte[] bytes = lowerCase.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                builderNewBuilder2.setShaFilename(ByteString.copyFrom(CryptoHelper.shaHash(bytes)));
            }
            builderNewBuilder2.setShaContent(ByteString.copyFrom(fileData.getFileHash()));
            String linkTarget = fileData.getLinkTarget();
            if (linkTarget != null && !StringsKt__StringsKt.isBlank(linkTarget)) {
                builderNewBuilder2.setLinktarget(fileData.getLinkTarget());
            }
            for (ChunkData chunkData : fileData.getChunks()) {
                ContentManifest.ContentManifestPayload.FileMapping.ChunkData.Builder builderNewBuilder3 = ContentManifest.ContentManifestPayload.FileMapping.ChunkData.newBuilder();
                builderNewBuilder3.setSha(ByteString.copyFrom(chunkData.getChunkID()));
                builderNewBuilder3.setCrc(chunkData.getChecksum());
                builderNewBuilder3.setOffset(chunkData.getOffset());
                builderNewBuilder3.setCbOriginal(chunkData.getUncompressedLength());
                builderNewBuilder3.setCbCompressed(chunkData.getCompressedLength());
                builderNewBuilder2.addChunks(builderNewBuilder3.build());
                byte[] chunkID = chunkData.getChunkID();
                Intrinsics.checkNotNull(chunkID);
                hashSet.add(new ByteArrayKey(chunkID));
            }
            builderNewBuilder.addMappings(builderNewBuilder2.build());
        }
        ContentManifest.ContentManifestMetadata.Builder builderNewBuilder4 = ContentManifest.ContentManifestMetadata.newBuilder();
        builderNewBuilder4.setDepotId(this.depotID);
        builderNewBuilder4.setGidManifest(this.manifestGID);
        builderNewBuilder4.setCreationTime((int) (this.creationTime.getTime() / ((long) DescriptorProtos.Edition.EDITION_2023_VALUE)));
        builderNewBuilder4.setFilenamesEncrypted(this.filenamesEncrypted);
        builderNewBuilder4.setCbDiskOriginal(this.totalUncompressedSize);
        builderNewBuilder4.setCbDiskCompressed(this.totalCompressedSize);
        builderNewBuilder4.setUniqueChunks(hashSet.size());
        MemoryStream memoryStream = new MemoryStream();
        builderNewBuilder.build().writeTo(memoryStream.asOutputStream());
        int length = (int) memoryStream.getLength();
        byte[] bArr = new byte[length + 4];
        System.arraycopy(new byte[]{(byte) (length & 255), (byte) ((length >> 8) & 255), (byte) ((length >> 16) & 255), (byte) ((length >> 24) & 255)}, 0, bArr, 0, 4);
        System.arraycopy(memoryStream.toByteArray(), 0, bArr, 4, length);
        int iCrc32 = (int) Utils.crc32(bArr);
        memoryStream.close();
        if (this.filenamesEncrypted) {
            builderNewBuilder4.setCrcEncrypted(iCrc32);
            builderNewBuilder4.setCrcClear(0);
        } else {
            builderNewBuilder4.setCrcEncrypted(this.encryptedCRC);
            builderNewBuilder4.setCrcClear(iCrc32);
        }
        BinaryWriter binaryWriter = new BinaryWriter(output);
        byte[] byteArray = builderNewBuilder.build().toByteArray();
        binaryWriter.writeInt(PROTOBUF_PAYLOAD_MAGIC);
        binaryWriter.writeInt(byteArray.length);
        binaryWriter.write(byteArray);
        byte[] byteArray2 = builderNewBuilder4.build().toByteArray();
        binaryWriter.writeInt(PROTOBUF_METADATA_MAGIC);
        binaryWriter.writeInt(byteArray2.length);
        binaryWriter.write(byteArray2);
        binaryWriter.writeInt(PROTOBUF_SIGNATURE_MAGIC);
        binaryWriter.writeInt(0);
        binaryWriter.writeInt(PROTOBUF_ENDOFMANIFEST_MAGIC);
        binaryWriter.close();
    }
}
