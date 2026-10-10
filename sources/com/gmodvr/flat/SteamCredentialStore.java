package com.gmodvr.flat;

import android.content.Context;
import android.security.keystore.KeyGenParameterSpec;
import android.util.Base64;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.KeyStore;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class SteamCredentialStore {
    private static final String ALIAS = "sourceandroid_steam_session_v1";
    private final Context context;

    public SteamCredentialStore(Context context) {
        this.context = context;
    }

    public String username() {
        String string;
        synchronized (SteamCredentialStore.class) {
            string = this.context.getSharedPreferences(ALIAS, 0).getString("account", "");
        }
        return string;
    }

    public boolean hasSavedSession() {
        boolean z;
        synchronized (SteamCredentialStore.class) {
            try {
                z = false;
                if (!username().isEmpty() && this.context.getSharedPreferences(ALIAS, 0).contains("sealed")) {
                    z = true;
                }
            } finally {
            }
        }
        return z;
    }

    public String token(String str) throws Exception {
        synchronized (SteamCredentialStore.class) {
            try {
                if (!str.equals(username())) {
                    return null;
                }
                String string = this.context.getSharedPreferences(ALIAS, 0).getString("sealed", null);
                if (string == null) {
                    return null;
                }
                try {
                    JSONObject jSONObject = new JSONObject(string);
                    Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                    cipher.init(2, key(), new GCMParameterSpec(128, Base64.decode(jSONObject.getString("iv"), 2)));
                    Charset charset = StandardCharsets.UTF_8;
                    cipher.updateAAD(str.getBytes(charset));
                    return new String(cipher.doFinal(Base64.decode(jSONObject.getString("token"), 2)), charset);
                } catch (Exception unused) {
                    clear();
                    throw new IOException("Saved Steam session expired or became unreadable. Enter your password again.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void save(String str, String str2) throws Exception {
        synchronized (SteamCredentialStore.class) {
            try {
                Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                cipher.init(1, key());
                Charset charset = StandardCharsets.UTF_8;
                cipher.updateAAD(str.getBytes(charset));
                if (!this.context.getSharedPreferences(ALIAS, 0).edit().putString("account", str).putString("sealed", new JSONObject().put("iv", Base64.encodeToString(cipher.getIV(), 2)).put("token", Base64.encodeToString(cipher.doFinal(str2.getBytes(charset)), 2)).toString()).commit()) {
                    throw new IOException("Could not save Steam session");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void clear() {
        synchronized (SteamCredentialStore.class) {
            this.context.getSharedPreferences(ALIAS, 0).edit().clear().commit();
        }
    }

    private SecretKey key() throws Exception {
        KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
        keyStore.load(null);
        if (!keyStore.containsAlias(ALIAS)) {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
            keyGenerator.init(new KeyGenParameterSpec.Builder(ALIAS, 3).setBlockModes("GCM").setEncryptionPaddings("NoPadding").build());
            keyGenerator.generateKey();
        }
        return (SecretKey) keyStore.getKey(ALIAS, null);
    }
}
