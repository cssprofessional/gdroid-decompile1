package in.dragonbra.javasteam.steam.discovery;

import in.dragonbra.javasteam.networking.steam3.ProtocolTypes;
import in.dragonbra.javasteam.protobufs.steam.discovery.BasicServerListProtos;
import in.dragonbra.javasteam.steam.discovery.ServerRecord;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.time.Instant;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: FileServerListProvider.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FileServerListProvider implements IServerListProvider {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(FileServerListProvider.class);
    private final Path file;

    public FileServerListProvider(Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        this.file = file;
        if (StringsKt__StringsKt.isBlank(file.getFileName().toString())) {
            throw new IllegalArgumentException("FileName must not be blank");
        }
    }

    public final Path getFile() {
        return this.file;
    }

    /* JADX INFO: compiled from: FileServerListProvider.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public FileServerListProvider(File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        Path path = file.toPath();
        Intrinsics.checkNotNullExpressionValue(path, "toPath(...)");
        this(path);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public FileServerListProvider(String filename) {
        Intrinsics.checkNotNullParameter(filename, "filename");
        Path pathOf = Path.of(filename, new String[0]);
        Intrinsics.checkNotNullExpressionValue(pathOf, "of(...)");
        this(pathOf);
    }

    @Override // in.dragonbra.javasteam.steam.discovery.IServerListProvider
    public Instant getLastServerListRefresh() {
        try {
            Instant instant = Files.getLastModifiedTime(this.file, new LinkOption[0]).toInstant();
            Intrinsics.checkNotNull(instant);
            return instant;
        } catch (Exception unused) {
            Instant instant2 = Instant.MIN;
            Intrinsics.checkNotNull(instant2);
            return instant2;
        }
    }

    @Override // in.dragonbra.javasteam.steam.discovery.IServerListProvider
    public List<ServerRecord> fetchServerList() {
        Object objM8149constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            InputStream inputStreamNewInputStream = Files.newInputStream(this.file, new OpenOption[0]);
            try {
                BasicServerListProtos.BasicServerList from = BasicServerListProtos.BasicServerList.parseFrom(inputStreamNewInputStream);
                int serversCount = from.getServersCount();
                ArrayList arrayList = new ArrayList(serversCount);
                for (int i = 0; i < serversCount; i++) {
                    BasicServerListProtos.BasicServer servers = from.getServers(i);
                    Intrinsics.checkNotNullExpressionValue(servers, "getServers(...)");
                    ServerRecord.Companion companion2 = ServerRecord.Companion;
                    String address = servers.getAddress();
                    Intrinsics.checkNotNullExpressionValue(address, "getAddress(...)");
                    int port = servers.getPort();
                    EnumSet<ProtocolTypes> enumSetFrom = ProtocolTypes.from(servers.getProtocol());
                    Intrinsics.checkNotNullExpressionValue(enumSetFrom, "from(...)");
                    arrayList.add(companion2.createServer(address, port, enumSetFrom));
                }
                CloseableKt.closeFinally(inputStreamNewInputStream, null);
                objM8149constructorimpl = Result.m8149constructorimpl(arrayList);
            } finally {
            }
        } catch (Throwable th) {
            Result.Companion companion3 = Result.Companion;
            objM8149constructorimpl = Result.m8149constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM8150exceptionOrNullimpl = Result.m8150exceptionOrNullimpl(objM8149constructorimpl);
        if (thM8150exceptionOrNullimpl == null) {
            return (List) objM8149constructorimpl;
        }
        if (thM8150exceptionOrNullimpl instanceof NoSuchFileException) {
            Logger.debug$default(logger, "File doesn't exist", null, 2, null);
        } else {
            logger.error("Unknown error occurred", thM8150exceptionOrNullimpl);
        }
        return CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // in.dragonbra.javasteam.steam.discovery.IServerListProvider
    public void updateServerList(List<ServerRecord> endpoints) throws IllegalAccessException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(endpoints, "endpoints");
        BasicServerListProtos.BasicServerList.Builder builderNewBuilder = BasicServerListProtos.BasicServerList.newBuilder();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(endpoints, 10));
        for (ServerRecord serverRecord : endpoints) {
            arrayList.add(BasicServerListProtos.BasicServer.newBuilder().setAddress(serverRecord.getHost()).setPort(serverRecord.getPort()).setProtocol(ProtocolTypes.code(serverRecord.getProtocolTypes())).build());
        }
        builderNewBuilder.addAllServers(arrayList);
        try {
            OutputStream outputStreamNewOutputStream = Files.newOutputStream(this.file, new OpenOption[0]);
            try {
                builderNewBuilder.build().writeTo(outputStreamNewOutputStream);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(outputStreamNewOutputStream, null);
            } finally {
            }
        } catch (IOException e) {
            logger.error("Failed to write servers to file " + this.file.getFileName(), e);
        }
    }
}
