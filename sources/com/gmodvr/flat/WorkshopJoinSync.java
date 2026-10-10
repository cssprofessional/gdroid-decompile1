package com.gmodvr.flat;

import com.gmodvr.flat.GmodAddons;
import com.gmodvr.flat.WorkshopCollection;
import com.gmodvr.flat.WorkshopIntegrity;
import com.gmodvr.flat.WorkshopQueue;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import in.dragonbra.javasteam.types.SteamID;
import java.io.File;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
final class WorkshopJoinSync {

    public interface Backend extends WorkshopCollection.Fetch {
        void install(SteammessagesPublishedfileSteamclient.PublishedFileDetails publishedFileDetails, long j, WorkshopIntegrity.Progress progress) throws Exception;
    }

    public static final class Requirement {
        final long crc;
        final long id;
        final long time;

        public Requirement(long j, long j2, long j3) {
            this.id = j;
            this.time = j2;
            this.crc = j3;
        }
    }

    public interface Progress {
        void failed(String str, String str2);

        void ready(String str);

        void status(int i, int i2, String str, long j, long j2);

        default void skipped(String str, String str2) {
            failed(str, str2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6, types: [java.util.List, java.util.List<com.gmodvr.flat.WorkshopJoinSync$Requirement>] */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v9 */
    public static List<Requirement> parse(String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (str == null) {
            str = "";
        }
        String[] strArrSplit = str.split(",");
        int length = strArrSplit.length;
        int i = 0;
        ?? EmptyList = strArrSplit;
        while (i < length) {
            String[] strArrSplit2 = EmptyList[i].trim().split(":", -1);
            if (strArrSplit2.length == 1 || strArrSplit2.length == 3) {
                try {
                    if (strArrSplit2[0].matches("[0-9]{1,20}")) {
                        long unsignedLong = Long.parseUnsignedLong(strArrSplit2[0]);
                        long j = strArrSplit2.length == 3 ? Long.parseLong(strArrSplit2[1]) : 0L;
                        long j2 = strArrSplit2.length == 3 ? Long.parseLong(strArrSplit2[2]) : 0L;
                        if (unsignedLong != 0 && j >= 0 && j <= SteamID.ACCOUNT_ID_MASK && j2 >= 0 && j2 <= SteamID.ACCOUNT_ID_MASK) {
                            if (linkedHashMap.size() >= 10000 && !linkedHashMap.containsKey(Long.valueOf(unsignedLong))) {
                                EmptyList = Collections.emptyList();
                                return EmptyList;
                            }
                            linkedHashMap.putIfAbsent(Long.valueOf(unsignedLong), new Requirement(unsignedLong, j, j2));
                        }
                    }
                } catch (NumberFormatException unused) {
                    continue;
                }
            }
            i++;
            EmptyList = EmptyList;
        }
        return new ArrayList(linkedHashMap.values());
    }

    /* JADX WARN: Removed duplicated region for block: B:152:0x0383  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x022e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void run(java.io.File r26, java.util.List<com.gmodvr.flat.WorkshopJoinSync.Requirement> r27, final com.gmodvr.flat.WorkshopJoinSync.Backend r28, final com.gmodvr.flat.WorkshopJoinSync.Progress r29) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 935
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gmodvr.flat.WorkshopJoinSync.run(java.io.File, java.util.List, com.gmodvr.flat.WorkshopJoinSync$Backend, com.gmodvr.flat.WorkshopJoinSync$Progress):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$run$0(Progress progress, int i) {
        progress.status(0, i, "Checking Workshop dependencies (" + i + " items)", 0L, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$run$1(Backend backend, Progress progress, int i, WorkshopQueue workshopQueue, String str, String str2, long j, long j2) throws Exception {
        backend.check();
        progress.status(i, workshopQueue.entries.size(), "Verifying " + str, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$run$2(WorkshopQueue.Entry entry, SteammessagesPublishedfileSteamclient.PublishedFileDetails publishedFileDetails) {
        return publishedFileDetails.getPublishedfileid() == entry.id;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ IOException lambda$run$3() {
        return new IOException("Steam returned no details");
    }

    private static WorkshopCollection.Fetch pinnedGraph(final Map<Long, Requirement> map, final Map<Long, GmodAddons.Addon> map2, final Backend backend) {
        final HashSet hashSet = new HashSet();
        return new WorkshopCollection.Fetch() { // from class: com.gmodvr.flat.WorkshopJoinSync.2
            @Override // com.gmodvr.flat.WorkshopCollection.Fetch
            public void check() throws Exception {
                backend.check();
            }

            @Override // com.gmodvr.flat.WorkshopCollection.Fetch
            public List<SteammessagesPublishedfileSteamclient.PublishedFileDetails> get(List<Long> list) throws Exception {
                long jOptLong;
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (Long l : list) {
                    long jLongValue = l.longValue();
                    check();
                    Requirement requirement = (Requirement) map.get(l);
                    GmodAddons.Addon addon = (GmodAddons.Addon) map2.get(l);
                    if (requirement != null) {
                        jOptLong = requirement.time;
                    } else {
                        jOptLong = (!hashSet.contains(l) || addon == null) ? 0L : addon.meta.optLong("time", 0L);
                    }
                    JSONArray jSONArrayOptJSONArray = addon == null ? null : addon.meta.optJSONArray("required");
                    if (addon != null && !addon.conflict && jOptLong <= SteamID.ACCOUNT_ID_MASK && jSONArrayOptJSONArray != null) {
                        if (WorkshopJoinSync.matches(addon, jOptLong, requirement == null ? 0L : requirement.crc)) {
                            SteammessagesPublishedfileSteamclient.PublishedFileDetails.Builder title = SteammessagesPublishedfileSteamclient.PublishedFileDetails.newBuilder().setPublishedfileid(jLongValue).setResult(1).setConsumerAppid(4000).setFileType(0).setTimeUpdated((int) jOptLong).setTitle(addon.title());
                            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                                String strOptString = jSONArrayOptJSONArray.optString(i, "");
                                try {
                                    if (!strOptString.matches("[0-9]{1,20}")) {
                                        throw new NumberFormatException();
                                    }
                                    long unsignedLong = Long.parseUnsignedLong(strOptString);
                                    if (unsignedLong == 0) {
                                        throw new NumberFormatException();
                                    }
                                    title.addChildrenBuilder().setPublishedfileid(unsignedLong);
                                    hashSet.add(Long.valueOf(unsignedLong));
                                    if (hashSet.size() > 10000) {
                                        throw new IOException("Server requires too many Workshop dependencies");
                                    }
                                } catch (NumberFormatException unused) {
                                    throw new IOException("Invalid cached Workshop dependencies; reinstall addon " + Long.toUnsignedString(jLongValue));
                                }
                            }
                            arrayList.add(title.build());
                        }
                    }
                    arrayList2.add(l);
                }
                if (!arrayList2.isEmpty()) {
                    arrayList.addAll(backend.get(arrayList2));
                }
                return arrayList;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean matches(GmodAddons.Addon addon, long j, long j2) {
        return j > 0 && addon.meta.optLong("time", 0L) == j && (j2 == 0 || addon.meta.optLong("gma_crc", 0L) == j2);
    }

    public static boolean useInstalled(File file, final List<Requirement> list, final Progress progress) throws Exception {
        final GmodAddons.Addon addon;
        HashMap map = new HashMap();
        Iterator<Requirement> it = list.iterator();
        while (true) {
            long j = 0;
            if (!it.hasNext()) {
                HashMap map2 = new HashMap();
                for (GmodAddons.Addon addon2 : GmodAddons.list(file)) {
                    map2.put(Long.valueOf(Long.parseUnsignedLong(addon2.id)), addon2);
                }
                final ArrayDeque arrayDeque = new ArrayDeque(map.keySet());
                final LinkedHashSet linkedHashSet = new LinkedHashSet();
                HashSet hashSet = new HashSet(map.keySet());
                while (!arrayDeque.isEmpty()) {
                    if (Thread.currentThread().isInterrupted()) {
                        throw new InterruptedException();
                    }
                    Long l = (Long) arrayDeque.removeFirst();
                    long jLongValue = l.longValue();
                    if (!linkedHashSet.contains(l)) {
                        if (linkedHashSet.size() < 10000 && (addon = (GmodAddons.Addon) map2.get(l)) != null && !addon.conflict) {
                            Requirement requirement = (Requirement) map.getOrDefault(l, new Requirement(jLongValue, addon.meta.optLong("time", j), 0L));
                            JSONArray jSONArrayOptJSONArray = addon.meta.optJSONArray("required");
                            if (jSONArrayOptJSONArray == null || !matches(addon, requirement.time, requirement.crc) || !WorkshopIntegrity.verifyInstalled(addon, new WorkshopIntegrity.Progress() { // from class: com.gmodvr.flat.WorkshopJoinSync$$ExternalSyntheticLambda4
                                @Override // com.gmodvr.flat.WorkshopIntegrity.Progress
                                public final void update(String str, long j2, long j3) throws Exception {
                                    WorkshopJoinSync.lambda$useInstalled$4(progress, linkedHashSet, list, arrayDeque, addon, str, j2, j3);
                                }
                            })) {
                                return false;
                            }
                            linkedHashSet.add(l);
                            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                                String strOptString = jSONArrayOptJSONArray.optString(i, "");
                                if (!strOptString.matches("[0-9]{1,20}")) {
                                    return false;
                                }
                                try {
                                    long unsignedLong = Long.parseUnsignedLong(strOptString);
                                    if (unsignedLong == 0) {
                                        return false;
                                    }
                                    if (hashSet.add(Long.valueOf(unsignedLong))) {
                                        arrayDeque.addLast(Long.valueOf(unsignedLong));
                                    }
                                    if (hashSet.size() > 10000) {
                                        return false;
                                    }
                                } catch (NumberFormatException unused) {
                                    return false;
                                }
                            }
                            j = 0;
                        }
                        return false;
                    }
                }
                if (Thread.currentThread().isInterrupted()) {
                    throw new InterruptedException();
                }
                Iterator it2 = linkedHashSet.iterator();
                while (it2.hasNext()) {
                    progress.ready(Long.toUnsignedString(((Long) it2.next()).longValue()));
                }
                return true;
            }
            Requirement next = it.next();
            if (next.time == 0) {
                return false;
            }
            map.put(Long.valueOf(next.id), next);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$useInstalled$4(Progress progress, Set set, List list, Deque deque, GmodAddons.Addon addon, String str, long j, long j2) throws Exception {
        progress.status(set.size() + 1, Math.max(list.size(), set.size() + deque.size() + 1), "Verifying " + addon.title(), j, j2);
    }
}
