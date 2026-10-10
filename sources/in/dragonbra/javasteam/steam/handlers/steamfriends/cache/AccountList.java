package in.dragonbra.javasteam.steam.handlers.steamfriends.cache;

import in.dragonbra.javasteam.steam.handlers.steamfriends.cache.Account;
import in.dragonbra.javasteam.types.SteamID;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FriendCache.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AccountList<T extends Account> extends ConcurrentHashMap<SteamID, T> {
    private final Class<T> clazz;

    public AccountList(Class<T> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        this.clazz = clazz;
    }

    public /* bridge */ boolean containsKey(SteamID steamID) {
        return super.containsKey((Object) steamID);
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ boolean containsKey(Object obj) {
        if (obj instanceof SteamID) {
            return containsKey((SteamID) obj);
        }
        return false;
    }

    public /* bridge */ boolean containsValue(Account account) {
        return super.containsValue((Object) account);
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ boolean containsValue(Object obj) {
        if (obj instanceof Account) {
            return containsValue((Account) obj);
        }
        return false;
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Set<Map.Entry<SteamID, T>> entrySet() {
        return (Set<Map.Entry<SteamID, T>>) getEntries();
    }

    public /* bridge */ Account get(SteamID steamID) {
        return (Account) super.get((Object) steamID);
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ T get(Object obj) {
        if (obj instanceof SteamID) {
            return (T) get((SteamID) obj);
        }
        return null;
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Object get(Object obj) {
        if (obj instanceof SteamID) {
            return get((SteamID) obj);
        }
        return null;
    }

    public /* bridge */ Set<Map.Entry<SteamID, Account>> getEntries() {
        return super.entrySet();
    }

    public /* bridge */ ConcurrentHashMap.KeySetView<SteamID, Account> getKeys() {
        return super.keySet();
    }

    public /* bridge */ Account getOrDefault(SteamID steamID, Account account) {
        return (Account) super.getOrDefault((Object) steamID, account);
    }

    public final /* bridge */ T getOrDefault(Object obj, T t) {
        return !(obj instanceof SteamID) ? t : (T) getOrDefault((SteamID) obj, (Account) t);
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.Map, java.util.concurrent.ConcurrentMap
    public final /* bridge */ /* synthetic */ Object getOrDefault(Object obj, Object obj2) {
        return !(obj instanceof SteamID) ? obj2 : getOrDefault((SteamID) obj, (Account) obj2);
    }

    public /* bridge */ int getSize() {
        return super.size();
    }

    public /* bridge */ Collection<Account> getValues() {
        return super.values();
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ ConcurrentHashMap.KeySetView<SteamID, T> keySet() {
        return (ConcurrentHashMap.KeySetView<SteamID, T>) getKeys();
    }

    public /* bridge */ Account remove(SteamID steamID) {
        return (Account) super.remove((Object) steamID);
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ T remove(Object obj) {
        if (obj instanceof SteamID) {
            return (T) remove((SteamID) obj);
        }
        return null;
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Object remove(Object obj) {
        if (obj instanceof SteamID) {
            return remove((SteamID) obj);
        }
        return null;
    }

    public /* bridge */ boolean remove(SteamID steamID, Account account) {
        return super.remove((Object) steamID, (Object) account);
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.Map, java.util.concurrent.ConcurrentMap
    public final /* bridge */ boolean remove(Object obj, Object obj2) {
        if ((obj instanceof SteamID) && (obj2 instanceof Account)) {
            return remove((SteamID) obj, (Account) obj2);
        }
        return false;
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Collection<T> values() {
        return (Collection<T>) getValues();
    }

    public final List<T> getList() {
        Collection<T> collectionValues = values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "<get-values>(...)");
        return CollectionsKt___CollectionsKt.toList(collectionValues);
    }

    public final T getAccount(SteamID id) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(id, "id");
        T tNewInstance = get((Object) id);
        if (tNewInstance == null) {
            tNewInstance = this.clazz.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            tNewInstance.setSteamID(id);
            T tPutIfAbsent = putIfAbsent(id, tNewInstance);
            if (tPutIfAbsent != null) {
                tNewInstance = tPutIfAbsent;
            }
        }
        Intrinsics.checkNotNullExpressionValue(tNewInstance, "getOrPut(...)");
        return tNewInstance;
    }
}
