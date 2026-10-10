package com.gmodvr.flat;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Process;
import in.dragonbra.javasteam.steam.handlers.steamuser.LogOnDetails;
import java.io.IOException;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes.dex */
public final class SteamIdentityProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public Bundle call(String str, String str2, Bundle bundle) {
        if (Binder.getCallingUid() != Process.myUid()) {
            throw new SecurityException("Private Steam session");
        }
        if (!"identity".equals(str) && !"status".equals(str)) {
            throw new IllegalArgumentException("Unknown Steam session request");
        }
        Bundle bundle2 = new Bundle();
        synchronized (SteamCredentialStore.class) {
            try {
                SteamCredentialStore steamCredentialStore = new SteamCredentialStore(getContext());
                String strUsername = steamCredentialStore.username();
                try {
                    String str3 = strUsername.isEmpty() ? null : steamCredentialStore.token(strUsername);
                    boolean z = (str3 == null || str3.isEmpty()) ? false : true;
                    bundle2.putString("status", z ? "available" : "missing");
                    if (z && "identity".equals(str)) {
                        bundle2.putString("account", strUsername);
                        bundle2.putString("access_token", str3);
                    }
                } catch (Exception unused) {
                    bundle2.putString("status", "unreadable");
                    bundle2.putString("error", "Saved Steam session could not be read. Sign in again in Download from Steam.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return bundle2;
    }

    private static Bundle read(Context context, String str) throws IOException {
        try {
            Bundle bundleCall = context.getContentResolver().call(Uri.parse("content://" + context.getPackageName() + ".steam_identity"), str, (String) null, (Bundle) null);
            if (bundleCall != null) {
                return bundleCall;
            }
            throw new IOException("Steam sign-in could not be read from the launcher. Restart the app.");
        } catch (RuntimeException unused) {
            throw new IOException("Steam sign-in could not be read from the launcher. Restart the app.");
        }
    }

    public static LogOnDetails savedIdentity(Context context) throws IOException {
        Bundle bundle = read(context, "identity");
        String string = bundle.getString("error");
        if (string != null) {
            throw new IOException(string);
        }
        String string2 = bundle.getString("account", "");
        String string3 = bundle.getString("access_token");
        if (string2.isEmpty() || string3 == null || string3.isEmpty()) {
            return null;
        }
        LogOnDetails logOnDetails = new LogOnDetails();
        logOnDetails.setUsername(string2);
        logOnDetails.setAccessToken(string3);
        logOnDetails.setShouldRememberPassword(true);
        logOnDetails.setLoginID(Integer.valueOf(new SecureRandom().nextInt(2147483646) + 1));
        return logOnDetails;
    }

    public static String sessionStatus(Context context) throws IOException {
        return read(context, "status").getString("status", "unavailable");
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }
}
