package in.dragonbra.javasteam.steam.handlers.steammatchmaking;

import in.dragonbra.javasteam.types.SteamID;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LobbyCache.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class LobbyCache {
    private final ConcurrentHashMap<Integer, ConcurrentHashMap<SteamID, Lobby>> lobbies = new ConcurrentHashMap<>();

    public final Lobby getLobby(int i, long j) {
        return getLobby(i, new SteamID(j));
    }

    public final Lobby getLobby(int i, SteamID lobbySteamId) {
        Intrinsics.checkNotNullParameter(lobbySteamId, "lobbySteamId");
        return getAppLobbies(i).get(lobbySteamId);
    }

    public final void cacheLobby(int i, Lobby lobby) {
        Intrinsics.checkNotNullParameter(lobby, "lobby");
        getAppLobbies(i).put(lobby.getSteamID(), lobby);
    }

    public final Member addLobbyMember(int i, Lobby lobby, long j, String personaName) {
        Intrinsics.checkNotNullParameter(lobby, "lobby");
        Intrinsics.checkNotNullParameter(personaName, "personaName");
        return addLobbyMember(i, lobby, new SteamID(j), personaName);
    }

    public final Member addLobbyMember(int i, Lobby lobby, SteamID memberId, String personaName) {
        Object next;
        Intrinsics.checkNotNullParameter(lobby, "lobby");
        Intrinsics.checkNotNullParameter(memberId, "memberId");
        Intrinsics.checkNotNullParameter(personaName, "personaName");
        Iterator<T> it = lobby.getMembers().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(((Member) next).getSteamID(), memberId)) {
                break;
            }
        }
        if (((Member) next) != null) {
            return null;
        }
        Member member = new Member(memberId, personaName, null, 4, null);
        ArrayList arrayList = new ArrayList(lobby.getMembers().size() + 1);
        arrayList.addAll(lobby.getMembers());
        arrayList.add(member);
        updateLobbyMembers(i, lobby, arrayList);
        return member;
    }

    public final Member removeLobbyMember(int i, Lobby lobby, long j) {
        Intrinsics.checkNotNullParameter(lobby, "lobby");
        return removeLobbyMember(i, lobby, new SteamID(j));
    }

    public final Member removeLobbyMember(int i, Lobby lobby, SteamID memberId) {
        Object next;
        Intrinsics.checkNotNullParameter(lobby, "lobby");
        Intrinsics.checkNotNullParameter(memberId, "memberId");
        Iterator<T> it = lobby.getMembers().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(((Member) next).getSteamID(), memberId)) {
                break;
            }
        }
        Member member = (Member) next;
        if (member == null) {
            return null;
        }
        List<Member> members = lobby.getMembers();
        ArrayList arrayList = new ArrayList();
        for (Object obj : members) {
            if (!Intrinsics.areEqual((Member) obj, member)) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            updateLobbyMembers(i, lobby, arrayList);
        } else {
            deleteLobby(i, lobby.getSteamID());
        }
        return member;
    }

    public final void clearLobbyMembers(int i, long j) {
        clearLobbyMembers(i, new SteamID(j));
    }

    public final void clearLobbyMembers(int i, SteamID lobbySteamId) {
        Intrinsics.checkNotNullParameter(lobbySteamId, "lobbySteamId");
        Lobby lobby = getLobby(i, lobbySteamId);
        if (lobby != null) {
            updateLobbyMembers(i, lobby, null, null);
        }
    }

    public final void updateLobbyOwner(int i, long j, long j2) {
        updateLobbyOwner(i, new SteamID(j), new SteamID(j2));
    }

    public final void updateLobbyOwner(int i, SteamID lobbySteamId, SteamID ownerSteamId) {
        Intrinsics.checkNotNullParameter(lobbySteamId, "lobbySteamId");
        Intrinsics.checkNotNullParameter(ownerSteamId, "ownerSteamId");
        Lobby lobby = getLobby(i, lobbySteamId);
        if (lobby != null) {
            updateLobbyMembers(i, lobby, ownerSteamId, lobby.getMembers());
        }
    }

    public final void updateLobbyMembers(int i, Lobby lobby, List<Member> members) {
        Intrinsics.checkNotNullParameter(lobby, "lobby");
        Intrinsics.checkNotNullParameter(members, "members");
        updateLobbyMembers(i, lobby, lobby.getOwnerSteamID(), members);
    }

    public final void clear() {
        this.lobbies.clear();
    }

    private final void updateLobbyMembers(int i, Lobby lobby, SteamID steamID, List<Member> list) {
        cacheLobby(i, new Lobby(lobby.getSteamID(), lobby.getLobbyType(), lobby.getLobbyFlags(), steamID, lobby.getMetadata(), lobby.getMaxMembers(), lobby.getNumMembers(), list == null ? CollectionsKt__CollectionsKt.emptyList() : list, lobby.getDistance(), lobby.getWeight()));
    }

    private final ConcurrentHashMap<SteamID, Lobby> getAppLobbies(int i) {
        ConcurrentHashMap<Integer, ConcurrentHashMap<SteamID, Lobby>> concurrentHashMap = this.lobbies;
        Integer numValueOf = Integer.valueOf(i);
        final Function1 function1 = new Function1() { // from class: in.dragonbra.javasteam.steam.handlers.steammatchmaking.LobbyCache$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LobbyCache.getAppLobbies$lambda$0((Integer) obj);
            }
        };
        ConcurrentHashMap<SteamID, Lobby> concurrentHashMapComputeIfAbsent = concurrentHashMap.computeIfAbsent(numValueOf, new Function() { // from class: in.dragonbra.javasteam.steam.handlers.steammatchmaking.LobbyCache$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return LobbyCache.getAppLobbies$lambda$1(function1, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(concurrentHashMapComputeIfAbsent, "computeIfAbsent(...)");
        return concurrentHashMapComputeIfAbsent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ConcurrentHashMap getAppLobbies$lambda$0(Integer it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return new ConcurrentHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ConcurrentHashMap getAppLobbies$lambda$1(Function1 function1, Object obj) {
        return (ConcurrentHashMap) function1.invoke(obj);
    }

    private final Lobby deleteLobby(int i, SteamID steamID) {
        ConcurrentHashMap<SteamID, Lobby> concurrentHashMap = this.lobbies.get(Integer.valueOf(i));
        if (concurrentHashMap == null) {
            return null;
        }
        return concurrentHashMap.remove(steamID);
    }
}
