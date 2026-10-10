package com.gmodvr.flat;

import in.dragonbra.javasteam.types.ChunkData;
import in.dragonbra.javasteam.types.FileData;
import in.dragonbra.javasteam.util.Adler32;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.Semaphore;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* JADX INFO: loaded from: classes.dex */
final class SteamTransfer implements AutoCloseable {
    private static final int PARALLEL_CHUNKS = 4;
    private static final int PARALLEL_FILES = 4;
    private final ExecutorService chunks = Executors.newFixedThreadPool(4);
    private final Semaphore chunkSlots = new Semaphore(4, true);

    public interface Progress {
        void advance(long j, String str) throws Exception;
    }

    public interface Source {
        byte[] fetch(ChunkData chunkData) throws Exception;
    }

    public static final class Request {
        final FileData data;
        final String name;
        final Source source;

        public Request(String str, FileData fileData, Source source) {
            this.name = str;
            this.data = fileData;
            this.source = source;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x009d, code lost:
    
        throw new java.lang.InterruptedException();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void download(final java.io.File r11, java.lang.Iterable<com.gmodvr.flat.SteamTransfer.Request> r12, final com.gmodvr.flat.SteamTransfer.Progress r13) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 217
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gmodvr.flat.SteamTransfer.download(java.io.File, java.lang.Iterable, com.gmodvr.flat.SteamTransfer$Progress):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$download$0(Object obj, Progress progress, long j, String str) throws Exception {
        synchronized (obj) {
            try {
                if (Thread.currentThread().isInterrupted()) {
                    throw new InterruptedException();
                }
                progress.advance(j, str);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void lambda$download$1(File file, Request request, Progress progress) throws Exception {
        download(file, request.name, request.data, request.source, progress);
        return null;
    }

    private static <T> T result(Future<T> future) throws Exception {
        try {
            return future.get();
        } catch (ExecutionException e) {
            if (e.getCause() instanceof Exception) {
                throw ((Exception) e.getCause());
            }
            if (e.getCause() instanceof Error) {
                throw ((Error) e.getCause());
            }
            throw e;
        }
    }

    public static final class Downloaded {
        final byte[] bytes;
        final ChunkData chunk;

        public Downloaded(ChunkData chunkData, byte[] bArr) {
            this.chunk = chunkData;
            this.bytes = bArr;
        }
    }

    public void download(File file, String str, FileData fileData, Source source, final Progress progress) throws Exception {
        validate(fileData);
        File fileInside = SteamFiles.inside(file, str);
        SteamFiles.mkdir(fileInside.getParentFile());
        if (SteamFiles.matches(fileInside, fileData.getTotalSize(), fileData.getFileHash())) {
            progress.advance(fileData.getTotalSize(), str);
            return;
        }
        File fileInside2 = SteamFiles.inside(file, str + ".steam-" + SteamFiles.hex(fileData.getFileHash()) + ".part");
        final long[] jArr = {0};
        for (int i = 0; i < 2; i++) {
            if (Thread.currentThread().isInterrupted()) {
                throw new InterruptedException();
            }
            final long[] jArr2 = {0};
            writePartial(fileInside2, str, fileData, source, new Progress() { // from class: com.gmodvr.flat.SteamTransfer$$ExternalSyntheticLambda4
                @Override // com.gmodvr.flat.SteamTransfer.Progress
                public final void advance(long j, String str2) throws Exception {
                    SteamTransfer.lambda$download$2(jArr2, progress, jArr, j, str2);
                }
            });
            if (SteamFiles.matches(fileInside2, fileData.getTotalSize(), fileData.getFileHash())) {
                SteamFiles.move(fileInside2, fileInside);
                return;
            }
            Files.deleteIfExists(fileInside2.toPath());
        }
        throw new IOException("Steam file failed SHA-1 verification after a fresh download: " + str + ". Resume to retry. If it keeps failing, report this filename.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$download$2(long[] jArr, Progress progress, long[] jArr2, long j, String str) throws Exception {
        long j2 = jArr[0] + j;
        jArr[0] = j2;
        progress.advance(Math.max(0L, j2 - jArr2[0]), str);
        jArr2[0] = Math.max(jArr2[0], jArr[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x01ad A[LOOP:3: B:81:0x01a7->B:83:0x01ad, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void writePartial(java.io.File r17, java.lang.String r18, in.dragonbra.javasteam.types.FileData r19, final com.gmodvr.flat.SteamTransfer.Source r20, com.gmodvr.flat.SteamTransfer.Progress r21) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 446
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gmodvr.flat.SteamTransfer.writePartial(java.io.File, java.lang.String, in.dragonbra.javasteam.types.FileData, com.gmodvr.flat.SteamTransfer$Source, com.gmodvr.flat.SteamTransfer$Progress):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Downloaded lambda$writePartial$3(ChunkData chunkData, Source source) throws Exception {
        return new Downloaded(chunkData, source.fetch(chunkData));
    }

    public static boolean matchesChunk(ChunkData chunkData, byte[] bArr) throws NoSuchAlgorithmException {
        return bArr != null && bArr.length == chunkData.getUncompressedLength() && Adler32.calculate(bArr) == chunkData.getChecksum() && MessageDigest.isEqual(MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1).digest(bArr), chunkData.getChunkID());
    }

    public static void validate(FileData fileData) throws IOException {
        long jAddExact = 0;
        if (fileData.getTotalSize() < 0 || fileData.getFileHash().length != 20) {
            throw new IOException("Invalid Steam file metadata");
        }
        ArrayList<ChunkData> arrayList = new ArrayList(fileData.getChunks());
        arrayList.sort(Comparator.comparingLong(new SteamTransfer$$ExternalSyntheticLambda2()));
        for (ChunkData chunkData : arrayList) {
            if (chunkData.getOffset() != jAddExact || chunkData.getUncompressedLength() <= 0 || chunkData.getUncompressedLength() > 16777216 || chunkData.getCompressedLength() <= 0 || chunkData.getCompressedLength() > 16777216 || chunkData.getChunkID() == null || chunkData.getChunkID().length != 20) {
                throw new IOException("Invalid Steam chunk layout");
            }
            jAddExact = Math.addExact(jAddExact, chunkData.getUncompressedLength());
        }
        if (jAddExact != fileData.getTotalSize()) {
            throw new IOException("Steam chunks do not cover the file");
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.chunks.shutdownNow();
    }
}
