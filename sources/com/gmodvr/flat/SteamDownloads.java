package com.gmodvr.flat;

import com.gmodvr.flat.SteamSession;
import com.gmodvr.flat.SteamTransfer;
import com.gmodvr.flat.WorkshopCollection;
import com.gmodvr.flat.WorkshopIntegrity;
import com.gmodvr.flat.WorkshopQueue;
import in.dragonbra.javasteam.enums.EDepotFileFlag;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import in.dragonbra.javasteam.types.ChunkData;
import in.dragonbra.javasteam.types.DepotManifest;
import in.dragonbra.javasteam.types.FileData;
import in.dragonbra.javasteam.types.KeyValue;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.function.LongConsumer;
import java.util.function.ToIntFunction;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import org.bouncycastle.i18n.MessageBundle;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class SteamDownloads {
    private static final long RESERVE = 536870912;
    private long done;
    private final Progress progress;
    private final SteamSession steam;
    private long total;

    public interface Progress {
        void update(String str, long j, long j2);
    }

    public SteamDownloads(SteamSession steamSession, Progress progress) {
        this.steam = steamSession;
        this.progress = progress;
    }

    public static final class Planned {
        final SteamSession.Depot depot;
        final FileData file;
        final String name;

        public Planned(SteamSession.Depot depot, FileData fileData, String str) {
            this.depot = depot;
            this.file = fileData;
            this.name = str;
        }
    }

    public List<String> game(GameContentProfile gameContentProfile, String str, File file, File file2) throws Exception {
        final String str2 = str;
        int iAppId = SteamCatalog.appId(gameContentProfile);
        this.progress.update("Reading Steam depots for " + gameContentProfile.displayName + "…", 0L, 0L);
        ArrayList arrayList = new ArrayList();
        List<ContentComponent> listStagedDepots = SteamInstallBridge.stagedDepots(gameContentProfile, file2, arrayList);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList<KeyValue> arrayList2 = new ArrayList(this.steam.app(iAppId).get("depots").getChildren());
        arrayList2.sort(Comparator.comparingInt(new ToIntFunction() { // from class: com.gmodvr.flat.SteamDownloads$$ExternalSyntheticLambda4
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return SteamDownloads.lambda$game$0(str2, (KeyValue) obj);
            }
        }));
        for (KeyValue keyValue : arrayList2) {
            if (keyValue.getName() != null && keyValue.getName().matches("[0-9]+") && SteamCatalog.depotMatches(keyValue, str2)) {
                if (SteamCatalog.proxyWanted(gameContentProfile, keyValue)) {
                    int i = Integer.parseInt(keyValue.getName());
                    this.progress.update("Reading Steam depot " + i + "…", 0L, 0L);
                    SteamSession.Depot depot = this.steam.depot(iAppId, i, 0L);
                    if (depot == null) {
                        continue;
                    } else {
                        for (FileData fileData : this.steam.manifest(depot).getFiles()) {
                            String strGamePath = SteamCatalog.gamePath(listStagedDepots, fileData.getFileName());
                            if (strGamePath != null && !fileData.getFlags().contains(EDepotFileFlag.Directory) && (gameContentProfile != GameContentProfile.GARRYSMOD || !SteamCatalog.providedByHalfLife2(file2, strGamePath))) {
                                if (fileData.getFlags().contains(EDepotFileFlag.Symlink)) {
                                    throw new IOException("Steam content contains an unsupported symbolic link");
                                }
                                SteamTransfer.validate(fileData);
                                linkedHashMap.put(strGamePath.toLowerCase(Locale.ROOT), new Planned(depot, fileData, strGamePath));
                            }
                        }
                    }
                } else {
                    continue;
                }
            }
            str2 = str;
        }
        if (linkedHashMap.isEmpty()) {
            throw new IOException("Steam returned no game files for this profile");
        }
        download(linkedHashMap.values(), file);
        prune(file, file, linkedHashMap.keySet());
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$game$0(String str, KeyValue keyValue) {
        return str.equals(SteamCatalog.value(keyValue.get("config").get("language"))) ? 1 : 0;
    }

    private void download(Collection<Planned> collection, File file) throws Exception {
        SteamFiles.mkdir(file);
        long jAddExact = 0;
        this.done = 0L;
        this.total = 0L;
        for (Planned planned : collection) {
            this.total = Math.addExact(this.total, planned.file.getTotalSize());
            File fileInside = SteamFiles.inside(file, planned.name);
            if (!fileInside.isFile() || fileInside.length() != planned.file.getTotalSize()) {
                jAddExact = Math.addExact(jAddExact, planned.file.getTotalSize());
            }
        }
        if (jAddExact > file.getUsableSpace() - RESERVE) {
            throw new IOException("Not enough free storage. The download needs " + (jAddExact / 1048576) + " MiB more, plus 512 MiB free.");
        }
        SteamTransfer steamTransfer = new SteamTransfer();
        try {
            ArrayList arrayList = new ArrayList(collection.size());
            for (final Planned planned2 : collection) {
                this.steam.check();
                arrayList.add(new SteamTransfer.Request(planned2.name, planned2.file, new SteamTransfer.Source() { // from class: com.gmodvr.flat.SteamDownloads$$ExternalSyntheticLambda2
                    @Override // com.gmodvr.flat.SteamTransfer.Source
                    public final byte[] fetch(ChunkData chunkData) {
                        return this.f$0.lambda$download$1(planned2, chunkData);
                    }
                }));
            }
            steamTransfer.download(file, arrayList, new SteamTransfer.Progress() { // from class: com.gmodvr.flat.SteamDownloads$$ExternalSyntheticLambda3
                @Override // com.gmodvr.flat.SteamTransfer.Progress
                public final void advance(long j, String str) throws Exception {
                    this.f$0.lambda$download$2(j, str);
                }
            });
            steamTransfer.close();
        } catch (Throwable th) {
            try {
                steamTransfer.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ byte[] lambda$download$1(Planned planned, ChunkData chunkData) throws Exception {
        return this.steam.chunk(planned.depot, chunkData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$download$2(long j, String str) throws Exception {
        this.steam.check();
        this.done += j;
        this.progress.update("Downloading " + str, this.done, this.total);
    }

    public static final class WorkshopItem {
        final List<WorkshopIntegrity.Entry> checksums;
        final File folder;
        final long id;
        final JSONObject metadata;
        final String title;

        public WorkshopItem(long j, String str, File file) {
            this(j, str, file, null);
        }

        public WorkshopItem(long j, String str, File file, JSONObject jSONObject) {
            this(j, str, file, jSONObject, null);
        }

        public WorkshopItem(long j, String str, File file, JSONObject jSONObject, List<WorkshopIntegrity.Entry> list) {
            this.id = j;
            this.title = str;
            this.folder = file;
            this.metadata = jSONObject;
            this.checksums = list == null ? null : new ArrayList(list);
        }
    }

    public WorkshopQueue resolve(GameContentProfile gameContentProfile, long j, String str, WorkshopCollection.Progress progress) throws Exception {
        final int iAppId = SteamCatalog.appId(gameContentProfile);
        return new WorkshopCollection(gameContentProfile, new WorkshopCollection.Fetch() { // from class: com.gmodvr.flat.SteamDownloads.1
            @Override // com.gmodvr.flat.WorkshopCollection.Fetch
            public List<SteammessagesPublishedfileSteamclient.PublishedFileDetails> get(List<Long> list) throws Exception {
                return SteamDownloads.this.steam.workshopBatch(iAppId, list);
            }

            @Override // com.gmodvr.flat.WorkshopCollection.Fetch
            public void check() throws Exception {
                SteamDownloads.this.steam.check();
            }
        }, new SteamDownloads$$ExternalSyntheticLambda0(), progress).resolve(j, str);
    }

    public List<WorkshopItem> workshop(GameContentProfile gameContentProfile, long j, File file) throws Exception {
        WorkshopQueue workshopQueueResolve = resolve(gameContentProfile, j, "probe", null);
        ArrayList arrayList = new ArrayList();
        for (WorkshopQueue.Entry entry : workshopQueueResolve.entries) {
            if (entry.downloadable() && !entry.linked) {
                this.steam.check();
                arrayList.add(item(gameContentProfile, this.steam.workshop(SteamCatalog.appId(gameContentProfile), entry.id), file, workshopQueueResolve.collectionsJson(entry)));
            }
        }
        if (arrayList.isEmpty()) {
            throw new IOException("This Workshop collection has no downloadable items");
        }
        return arrayList;
    }

    public WorkshopItem item(GameContentProfile gameContentProfile, SteammessagesPublishedfileSteamclient.PublishedFileDetails publishedFileDetails, File file, JSONArray jSONArray) throws Exception {
        JSONObject jSONObjectPut;
        String unsignedString = Long.toUnsignedString(publishedFileDetails.getPublishedfileid());
        this.progress.update("Downloading Workshop: " + publishedFileDetails.getTitle(), 0L, 0L);
        File fileInside = SteamFiles.inside(file, unsignedString + "/raw");
        SteamFiles.mkdir(fileInside);
        if (!publishedFileDetails.getFileUrl().isEmpty()) {
            String filename = publishedFileDetails.getFilename();
            if (filename.isEmpty()) {
                filename = "content.bin";
            }
            String strRelative = SteamFiles.relative(filename);
            webFile(publishedFileDetails.getFileUrl(), SteamFiles.inside(fileInside, strRelative), publishedFileDetails.getFileSize());
            prune(fileInside, fileInside, Collections.singleton(strRelative.toLowerCase(Locale.ROOT)));
        } else {
            long hcontentFile = publishedFileDetails.getHcontentFile();
            if (hcontentFile == 0 || hcontentFile == -1) {
                throw new IOException("Workshop item has no downloadable content");
            }
            int consumerAppid = publishedFileDetails.getConsumerAppid();
            String strValue = SteamCatalog.value(this.steam.app(consumerAppid).get("depots").get("workshopdepot"));
            SteamSession.Depot depot = this.steam.depot(consumerAppid, strValue.isEmpty() ? consumerAppid : Integer.parseInt(strValue), hcontentFile);
            DepotManifest depotManifestManifest = this.steam.manifest(depot);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (FileData fileData : depotManifestManifest.getFiles()) {
                String strRelative2 = SteamFiles.relative(fileData.getFileName());
                if (!fileData.getFlags().contains(EDepotFileFlag.Directory)) {
                    if (fileData.getFlags().contains(EDepotFileFlag.Symlink)) {
                        throw new IOException("Workshop symbolic links are unsupported");
                    }
                    SteamTransfer.validate(fileData);
                    if (linkedHashMap.put(strRelative2.toLowerCase(Locale.ROOT), new Planned(depot, fileData, strRelative2)) != null) {
                        throw new IOException("Duplicate Workshop content path");
                    }
                }
            }
            if (linkedHashMap.isEmpty()) {
                throw new IOException("Workshop item has no downloadable files");
            }
            download(linkedHashMap.values(), fileInside);
            prune(fileInside, fileInside, linkedHashMap.keySet());
        }
        final String str = "Unpacking Workshop: " + publishedFileDetails.getTitle();
        this.progress.update(str, 0L, 0L);
        File fileInside2 = SteamFiles.inside(file, unsignedString + "/prepared");
        SteamFiles.deleteTree(fileInside2);
        final long[] jArr = {0, System.nanoTime()};
        SteamWorkshop steamWorkshop = new SteamWorkshop(gameContentProfile, new LongConsumer() { // from class: com.gmodvr.flat.SteamDownloads$$ExternalSyntheticLambda1
            @Override // java.util.function.LongConsumer
            public final void accept(long j) {
                this.f$0.lambda$item$3(jArr, str, j);
            }
        });
        steamWorkshop.unpack(fileInside, fileInside2);
        SteamFiles.deleteTree(fileInside);
        if (gameContentProfile == GameContentProfile.GARRYSMOD) {
            ArrayList arrayList = new ArrayList();
            Iterator<SteammessagesPublishedfileSteamclient.PublishedFileDetails.Tag> it = publishedFileDetails.getTagsList().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getTag());
            }
            jSONObjectPut = GmodAddons.metadata(unsignedString, publishedFileDetails.getTitle(), Integer.toUnsignedLong(publishedFileDetails.getTimeUpdated()), arrayList, steamWorkshop.gmaInfo(), 0L);
            JSONArray jSONArray2 = new JSONArray();
            Iterator<SteammessagesPublishedfileSteamclient.PublishedFileDetails.Child> it2 = publishedFileDetails.getChildrenList().iterator();
            while (it2.hasNext()) {
                jSONArray2.put(Long.toUnsignedString(it2.next().getPublishedfileid()));
            }
            jSONObjectPut.put("required", jSONArray2);
        } else {
            jSONObjectPut = new JSONObject().put("id", unsignedString).put(MessageBundle.TITLE_ENTRY, publishedFileDetails.getTitle()).put("time", publishedFileDetails.getTimeUpdated());
        }
        if (jSONArray != null && jSONArray.length() > 0) {
            jSONObjectPut.put("collections", jSONArray);
        }
        return new WorkshopItem(publishedFileDetails.getPublishedfileid(), publishedFileDetails.getTitle(), fileInside2, jSONObjectPut, gameContentProfile == GameContentProfile.GARRYSMOD ? steamWorkshop.checksums() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$item$3(long[] jArr, String str, long j) {
        jArr[0] = Math.addExact(jArr[0], j);
        long jNanoTime = System.nanoTime();
        if (jNanoTime - jArr[1] >= 250000000) {
            jArr[1] = jNanoTime;
            this.progress.update(str, jArr[0], 0L);
        }
    }

    private void webFile(String str, File file, long j) throws Exception {
        HttpUrl httpUrl = HttpUrl.get(str);
        String lowerCase = httpUrl.host().toLowerCase(Locale.ROOT);
        if (!httpUrl.isHttps() || !httpUrl.username().isEmpty() || !httpUrl.password().isEmpty() || (!lowerCase.endsWith(".steamusercontent.com") && !lowerCase.endsWith(".steamcontent.com") && !lowerCase.endsWith(".steamstatic.com") && !lowerCase.endsWith(".akamaihd.net"))) {
            throw new IOException("Steam returned an unsupported Workshop download address");
        }
        long j2 = 0;
        if (j <= 0 || j > 107374182400L) {
            throw new IOException("Workshop file has an invalid size");
        }
        SteamFiles.mkdir(file.getParentFile());
        if (j > file.getParentFile().getUsableSpace() - RESERVE) {
            throw new IOException("Not enough storage for the Workshop file");
        }
        File fileInside = SteamFiles.inside(file.getParentFile(), file.getName() + ".part");
        Response responseExecute = this.steam.http.newBuilder().followRedirects(false).callTimeout(0L, TimeUnit.SECONDS).build().newCall(new Request.Builder().url(httpUrl).build()).execute();
        try {
            if (!responseExecute.isSuccessful() || responseExecute.body() == null) {
                throw new IOException("Workshop server returned HTTP " + responseExecute.code());
            }
            long jContentLength = responseExecute.body().contentLength();
            if (jContentLength >= 0 && jContentLength != j) {
                throw new IOException("Workshop download size differs from Steam metadata");
            }
            InputStream inputStreamByteStream = responseExecute.body().byteStream();
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(fileInside);
                try {
                    byte[] bArr = new byte[131072];
                    while (true) {
                        int i = inputStreamByteStream.read(bArr);
                        if (i != -1) {
                            this.steam.check();
                            j2 += (long) i;
                            if (j2 > j) {
                                throw new IOException("Workshop download exceeded its expected size");
                            }
                            fileOutputStream.write(bArr, 0, i);
                            this.progress.update("Downloading Workshop file", j2, j);
                        } else {
                            fileOutputStream.getFD().sync();
                            fileOutputStream.close();
                            inputStreamByteStream.close();
                            if (j2 != j) {
                                throw new IOException("Workshop download was truncated");
                            }
                            responseExecute.close();
                            SteamFiles.move(fileInside, file);
                            return;
                        }
                    }
                } finally {
                }
            } finally {
            }
        } finally {
        }
    }

    private static void prune(File file, File file2, Set<String> set) throws IOException {
        File[] fileArrListFiles = file2.listFiles();
        if (fileArrListFiles == null) {
            throw new IOException("Cannot read Steam staging files");
        }
        for (File file3 : fileArrListFiles) {
            String strReplace = file.toPath().relativize(file3.toPath()).toString().replace('\\', '/');
            SteamFiles.inside(file, strReplace);
            if (file3.isDirectory()) {
                prune(file, file3, set);
                String[] list = file3.list();
                if (list != null && list.length == 0) {
                    Files.delete(file3.toPath());
                }
            } else if (!set.contains(strReplace.toLowerCase(Locale.ROOT))) {
                Files.delete(file3.toPath());
            }
        }
    }
}
