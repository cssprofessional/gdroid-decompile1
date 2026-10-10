package com.gmodvr.flat;

import com.gmodvr.flat.WorkshopQueue;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.ToLongFunction;

/* JADX INFO: loaded from: classes.dex */
final class WorkshopCollection {
    static final int ATTEMPTS = 5;
    static final int BATCH = 100;
    static final int MAX_DEPTH = 16;
    static final int MAX_ITEMS = 10000;
    static final long REQUEST_GAP_MS = 100;
    private final Fetch fetch;
    private final GameContentProfile profile;
    private final Progress progress;
    private int requests;
    private final Sleep sleep;
    private boolean truncated;
    private final Map<Long, Node> nodes = new HashMap();
    private final Set<Long> scheduled = new HashSet();

    public interface Progress {
        void resolved(int i);
    }

    public interface Sleep {
        void sleep(long j) throws InterruptedException;
    }

    private static boolean content(int i) {
        return i == 0 || i == 15;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$0(int i) {
    }

    public interface Fetch {
        List<SteammessagesPublishedfileSteamclient.PublishedFileDetails> get(List<Long> list) throws Exception;

        default void check() throws Exception {
            if (Thread.currentThread().isInterrupted()) {
                throw new InterruptedException();
            }
        }
    }

    public static final class Node {
        final int app;
        final long[] children;
        final long id;
        final int result;
        final long size;
        final long time;
        final String title;
        final int type;

        public Node(SteammessagesPublishedfileSteamclient.PublishedFileDetails publishedFileDetails) {
            this.id = publishedFileDetails.getPublishedfileid();
            this.result = publishedFileDetails.getResult();
            this.type = publishedFileDetails.getFileType();
            this.app = publishedFileDetails.getConsumerAppid();
            this.title = publishedFileDetails.getTitle();
            this.size = publishedFileDetails.getFileSize();
            this.time = Integer.toUnsignedLong(publishedFileDetails.getTimeUpdated());
            this.children = new long[publishedFileDetails.getChildrenCount()];
            int i = 0;
            while (true) {
                long[] jArr = this.children;
                if (i >= jArr.length) {
                    return;
                }
                jArr[i] = publishedFileDetails.getChildren(i).getPublishedfileid();
                i++;
            }
        }

        public Node(long j) {
            this.id = j;
            this.result = -1;
            this.type = 0;
            this.app = 0;
            this.title = "";
            this.size = 0L;
            this.time = 0L;
            this.children = new long[0];
        }

        public boolean ok() {
            return this.result == 1;
        }

        public boolean collection() {
            return ok() && this.type == 2;
        }
    }

    public WorkshopCollection(GameContentProfile gameContentProfile, Fetch fetch, Sleep sleep, Progress progress) {
        this.profile = gameContentProfile;
        this.fetch = fetch;
        this.sleep = sleep == null ? new SteamDownloads$$ExternalSyntheticLambda0() : sleep;
        this.progress = progress == null ? new Progress() { // from class: com.gmodvr.flat.WorkshopCollection$$ExternalSyntheticLambda1
            @Override // com.gmodvr.flat.WorkshopCollection.Progress
            public final void resolved(int i) {
                WorkshopCollection.lambda$new$0(i);
            }
        } : progress;
    }

    public int requests() {
        return this.requests;
    }

    public WorkshopQueue resolveRequired(List<Long> list, String str) throws Exception {
        if (list.isEmpty()) {
            throw new IOException("Server supplied no Workshop items");
        }
        ArrayList arrayList = new ArrayList();
        schedule(list.stream().mapToLong(new ToLongFunction() { // from class: com.gmodvr.flat.WorkshopCollection$$ExternalSyntheticLambda0
            @Override // java.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return ((Long) obj).longValue();
            }
        }).toArray(), arrayList);
        while (!arrayList.isEmpty()) {
            ArrayList arrayList2 = new ArrayList();
            for (Node node : fetchAll(arrayList, true)) {
                if (node.collection()) {
                    throw new IOException("Server requires a Workshop collection instead of an addon: " + Long.toUnsignedString(node.id));
                }
                expand(node, arrayList2, null);
            }
            arrayList = arrayList2;
        }
        WorkshopQueue workshopQueue = new WorkshopQueue(str, 0L, "Server Workshop content", false);
        emit(workshopQueue, list.stream().mapToLong(new ToLongFunction() { // from class: com.gmodvr.flat.WorkshopCollection$$ExternalSyntheticLambda0
            @Override // java.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return ((Long) obj).longValue();
            }
        }).toArray(), false, Collections.emptyList(), 0L);
        return workshopQueue;
    }

    public WorkshopQueue resolve(long j, String str) throws Exception {
        this.scheduled.add(Long.valueOf(j));
        Node node = fetchAll(Collections.singletonList(Long.valueOf(j)), true).get(0);
        String str2 = "Workshop item " + Long.toUnsignedString(j);
        int i = node.result;
        if (i == 9) {
            throw new IOException(str2 + " was not found (Steam result 9: FileNotFound). Check the Workshop link and that the item is visible to this Steam account.");
        }
        if (i == 15) {
            throw new IOException(str2 + " is private, friends-only or removed (Steam result 15: AccessDenied).");
        }
        if (!node.ok()) {
            throw new IOException(str2 + " lookup failed (Steam result " + node.result + "). Check the item's availability for this Steam account.");
        }
        if (!SteamCatalog.workshopApp(this.profile, node.app)) {
            throw new IOException("Workshop item belongs to another game (Steam app " + node.app + "). Select its matching game.");
        }
        if (!node.collection() && !content(node.type)) {
            throw new IOException("This Workshop item type is not downloadable game content");
        }
        WorkshopQueue workshopQueue = new WorkshopQueue(str, j, node.title, node.collection());
        if (node.collection()) {
            workshopQueue.collections.put(Long.valueOf(j), new WorkshopQueue.Collection(j, node.title, false));
        }
        ArrayList<Long> arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (node.collection()) {
            schedule(node.children, arrayList2);
        } else {
            expand(node, arrayList2, null);
        }
        int i2 = 1;
        while (true) {
            if (arrayList2.isEmpty()) {
                break;
            }
            if (i2 > 16) {
                this.truncated = true;
                break;
            }
            ArrayList arrayList3 = new ArrayList();
            for (Node node2 : fetchAll(arrayList2, true)) {
                if (node2.collection()) {
                    arrayList.add(Long.valueOf(node2.id));
                } else {
                    expand(node2, arrayList3, null);
                }
            }
            i2++;
            arrayList2 = arrayList3;
        }
        HashMap map = new HashMap();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList(arrayList);
        for (Long l : arrayList) {
            l.longValue();
            map.put(l, 1);
        }
        for (Long l2 : arrayList) {
            l2.longValue();
            schedule(this.nodes.get(l2).children, arrayList4, map, 2);
        }
        while (!arrayList4.isEmpty() && !this.truncated) {
            List<Long> arrayList6 = new ArrayList<>();
            for (Long l3 : arrayList4) {
                l3.longValue();
                if (map.getOrDefault(l3, 17).intValue() <= 16) {
                    arrayList6.add(l3);
                } else {
                    this.truncated = true;
                }
            }
            int size = 10000 - this.nodes.size();
            if (arrayList6.size() > size) {
                this.truncated = true;
                arrayList6 = arrayList6.subList(0, Math.max(0, size));
            }
            arrayList4 = new ArrayList();
            for (Node node3 : fetchAll(arrayList6, false)) {
                int iIntValue = map.get(Long.valueOf(node3.id)).intValue();
                if (node3.collection()) {
                    arrayList5.add(Long.valueOf(node3.id));
                    schedule(node3.children, arrayList4, map, iIntValue + 1);
                } else {
                    expand(node3, arrayList4, map);
                }
            }
        }
        build(workshopQueue, node, arrayList5);
        workshopQueue.truncated = this.truncated;
        if (workshopQueue.entries.isEmpty()) {
            throw new IOException(node.collection() ? "This Workshop collection is empty" : "Workshop item has no downloadable content");
        }
        return workshopQueue;
    }

    private boolean addon(Node node) {
        return node.ok() && content(node.type) && SteamCatalog.workshopApp(this.profile, node.app);
    }

    private void expand(Node node, List<Long> list, Map<Long, Integer> map) {
        if (this.profile == GameContentProfile.GARRYSMOD && addon(node)) {
            if (map == null) {
                schedule(node.children, list);
            } else {
                schedule(node.children, list, map, map.get(Long.valueOf(node.id)).intValue() + 1);
            }
        }
    }

    private void schedule(long[] jArr, List<Long> list) {
        for (long j : jArr) {
            if (this.scheduled.add(Long.valueOf(j))) {
                list.add(Long.valueOf(j));
            }
        }
    }

    private void schedule(long[] jArr, List<Long> list, Map<Long, Integer> map, int i) {
        for (long j : jArr) {
            if (this.scheduled.add(Long.valueOf(j))) {
                list.add(Long.valueOf(j));
                map.put(Long.valueOf(j), Integer.valueOf(i));
            }
        }
    }

    private List<Node> fetchAll(List<Long> list, boolean z) throws Exception {
        if (z && this.nodes.size() + list.size() > MAX_ITEMS) {
            throw new IOException("This Workshop collection has more than 10000 items, which is more than can be downloaded at once");
        }
        ArrayList arrayList = new ArrayList(list.size());
        int i = 0;
        while (i < list.size()) {
            int i2 = i + 100;
            List<Long> listSubList = list.subList(i, Math.min(list.size(), i2));
            HashMap map = new HashMap();
            List<SteammessagesPublishedfileSteamclient.PublishedFileDetails> listRequest = request(listSubList);
            for (int i3 = 0; i3 < listRequest.size(); i3++) {
                SteammessagesPublishedfileSteamclient.PublishedFileDetails publishedFileDetailsBuild = listRequest.get(i3);
                if (publishedFileDetailsBuild.getPublishedfileid() == 0 && listRequest.size() == listSubList.size()) {
                    publishedFileDetailsBuild = publishedFileDetailsBuild.toBuilder().setPublishedfileid(listSubList.get(i3).longValue()).build();
                }
                map.putIfAbsent(Long.valueOf(publishedFileDetailsBuild.getPublishedfileid()), new Node(publishedFileDetailsBuild));
            }
            for (Long l : listSubList) {
                long jLongValue = l.longValue();
                Node node = (Node) map.get(l);
                if (node == null) {
                    node = new Node(jLongValue);
                }
                this.nodes.put(l, node);
                arrayList.add(node);
            }
            this.progress.resolved(this.nodes.size());
            i = i2;
        }
        return arrayList;
    }

    private List<SteammessagesPublishedfileSteamclient.PublishedFileDetails> request(List<Long> list) throws Exception {
        Exception e = null;
        int i = 0;
        while (i < 5) {
            this.fetch.check();
            if (this.requests > 0) {
                this.sleep.sleep(i == 0 ? REQUEST_GAP_MS : 1000 << (i - 1));
            }
            this.fetch.check();
            this.requests++;
            try {
                return this.fetch.get(new ArrayList(list));
            } catch (InterruptedException e2) {
                throw e2;
            } catch (Exception e3) {
                e = e3;
                i++;
            }
        }
        if (!(e instanceof IOException) || e.getMessage() == null || e.getMessage().contains("://")) {
            throw new IOException("Could not read Workshop details from Steam. Check the connection and retry.", e);
        }
        throw e;
    }

    private void build(WorkshopQueue workshopQueue, Node node, List<Long> list) {
        ArrayList arrayList = new ArrayList();
        if (node.collection()) {
            arrayList.add(Long.valueOf(node.id));
        }
        emit(workshopQueue, node.collection() ? node.children : new long[]{node.id}, false, arrayList, 0L);
        for (Long l : list) {
            long jLongValue = l.longValue();
            Node node2 = this.nodes.get(l);
            if (node2 != null && jLongValue != node.id) {
                workshopQueue.collections.put(l, new WorkshopQueue.Collection(jLongValue, node2.title, true));
            }
        }
        for (Long l2 : list) {
            long jLongValue2 = l2.longValue();
            Node node3 = this.nodes.get(l2);
            if (node3 != null && jLongValue2 != node.id) {
                ArrayList arrayList2 = new ArrayList(arrayList);
                arrayList2.add(l2);
                emit(workshopQueue, node3.children, true, arrayList2, 0L);
            }
        }
    }

    private void emit(WorkshopQueue workshopQueue, long[] jArr, boolean z, List<Long> list, long j) {
        char c;
        int i;
        WorkshopQueue.Kind kind;
        String str;
        int i2 = -1;
        char c2 = 0;
        ArrayDeque arrayDeque = new ArrayDeque();
        for (int length = jArr.length - 1; length >= 0; length--) {
            arrayDeque.push(new long[]{jArr[length], j});
        }
        while (!arrayDeque.isEmpty()) {
            long[] jArr2 = (long[]) arrayDeque.pop();
            long j2 = jArr2[c2];
            WorkshopQueue.Entry entry = workshopQueue.get(j2);
            if (entry != null) {
                for (Long l : list) {
                    l.longValue();
                    if (!entry.sources.contains(l)) {
                        entry.sources.add(l);
                    }
                }
            } else {
                Node node = this.nodes.get(Long.valueOf(j2));
                if (node == null) {
                    c = c2;
                    i = i2;
                } else if (!node.collection()) {
                    if (!node.ok()) {
                        kind = WorkshopQueue.Kind.UNAVAILABLE;
                        int i3 = node.result;
                        if (i3 == 9) {
                            str = "Removed or not found (Steam result 9)";
                        } else if (i3 == 15) {
                            str = "Private, friends-only or removed (Steam result 15)";
                        } else if (i3 == i2) {
                            str = "Steam returned no details";
                        } else {
                            str = "Unavailable (Steam result " + node.result + ")";
                        }
                    } else if (!SteamCatalog.workshopApp(this.profile, node.app)) {
                        kind = WorkshopQueue.Kind.OTHER_GAME;
                        str = "Belongs to another game (Steam app " + node.app + ")";
                    } else if (!content(node.type)) {
                        kind = WorkshopQueue.Kind.NOT_CONTENT;
                        str = "Not a downloadable addon (Workshop file type " + node.type + ")";
                    } else {
                        kind = WorkshopQueue.Kind.ADDON;
                        str = "";
                    }
                    WorkshopQueue.Kind kind2 = kind;
                    workshopQueue.add(new WorkshopQueue.Entry(j2, node.title, node.size, node.time, kind2, str, z, jArr2[1])).sources.addAll(list);
                    if (kind2 == WorkshopQueue.Kind.ADDON && this.profile == GameContentProfile.GARRYSMOD) {
                        for (int length2 = node.children.length - 1; length2 >= 0; length2--) {
                            arrayDeque.push(new long[]{node.children[length2], j2});
                        }
                    }
                    i = -1;
                    c = 0;
                }
                i2 = i;
                c2 = c;
            }
        }
    }
}
