package com.gmodvr.flat;

import java.io.IOException;
import java.net.URI;
import java.util.Locale;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class UpdateRelease {
    static final String ABI_METADATA = "com.gmodvr.UPDATE_ABI";
    static final String API = "https://api.github.com/repos/tinsarfal/GDroid/releases/latest";
    static final long MAX_APK_BYTES = 536870912;
    static final String REPOSITORY = "https://github.com/tinsarfal/GDroid";
    final JSONObject release;
    final String tag;
    private static final Pattern HASH = Pattern.compile("[0-9a-f]{64}");
    private static final Pattern NAME = Pattern.compile("[A-Za-z0-9][A-Za-z0-9._-]{0,159}\\.apk");
    private static final Pattern VERSION = Pattern.compile("[vV]?\\d{1,9}(\\.\\d{1,9}){1,3}");

    public UpdateRelease(String str) throws IOException {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.release = jSONObject;
            if (jSONObject.getBoolean("draft") || jSONObject.getBoolean("prerelease")) {
                throw new IOException("Only published stable releases are supported.");
            }
            String string = jSONObject.getString("tag_name");
            this.tag = string;
            if (VERSION.matcher(string).matches()) {
                return;
            }
            throw new IOException("The latest GitHub release is tagged \"" + string + "\", which is not a version number. Open releases to install it manually.");
        } catch (JSONException e) {
            throw new IOException("Invalid GitHub release metadata.", e);
        }
    }

    public static String assetName(String str, String str2) {
        String strReplaceFirst = str2.replaceFirst("^[vV]", "");
        if ("armeabi-v7a".equals(str)) {
            return "GDroid-" + strReplaceFirst + "-armv7.apk";
        }
        if (!BuildConfig.UPDATE_ABI.equals(str)) {
            throw new IllegalArgumentException("Unsupported update ABI: " + str);
        }
        return "GDroid-" + strReplaceFirst + ".apk";
    }

    public static int compareVersions(String str, String str2) {
        Pattern pattern = VERSION;
        if (!pattern.matcher(str).matches() || !pattern.matcher(str2).matches()) {
            throw new IllegalArgumentException("Not a version number: " + str + " / " + str2);
        }
        String[] strArrSplit = str.replaceFirst("^[vV]", "").split("\\.");
        String[] strArrSplit2 = str2.replaceFirst("^[vV]", "").split("\\.");
        int i = 0;
        while (i < Math.max(strArrSplit.length, strArrSplit2.length)) {
            long j = i < strArrSplit.length ? Long.parseLong(strArrSplit[i]) : 0L;
            long j2 = i < strArrSplit2.length ? Long.parseLong(strArrSplit2[i]) : 0L;
            if (j != j2) {
                return j < j2 ? -1 : 1;
            }
            i++;
        }
        return 0;
    }

    public Candidate select(String str, String str2) throws IOException {
        if (!VERSION.matcher(str2).matches()) {
            throw new IOException("This build does not carry a release number, so it cannot be compared with GitHub. Open releases to update it manually.");
        }
        if (compareVersions(this.tag, str2) <= 0) {
            return null;
        }
        try {
            String strAssetName = assetName(str, this.tag);
            JSONObject jSONObjectAsset = asset(strAssetName);
            if (jSONObjectAsset == null && "armeabi-v7a".equals(str)) {
                strAssetName = "GDroid-" + this.tag.replaceFirst("^[vV]", "") + ".armv7.apk";
                jSONObjectAsset = asset(strAssetName);
            }
            String str3 = strAssetName;
            if (jSONObjectAsset == null) {
                throw new IOException("GDroid " + this.tag + " has no " + str3 + " yet, so there is no update for the " + str + " variant. Your current games remain available.");
            }
            String strGithubDigest = githubDigest(jSONObjectAsset);
            if (strGithubDigest.isEmpty()) {
                throw new IOException("GitHub has not published a checksum for " + str3 + " yet. Try again later.");
            }
            return new Candidate(this.tag, str, str3, jSONObjectAsset.getString("browser_download_url"), strGithubDigest, integer(jSONObjectAsset, "size"), optional(this.release, "body"));
        } catch (IllegalArgumentException | JSONException e) {
            throw new IOException("Invalid GitHub release metadata.", e);
        }
    }

    private JSONObject asset(String str) throws JSONException, IOException {
        JSONArray jSONArray = this.release.getJSONArray("assets");
        JSONObject jSONObject = null;
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            if (str.equals(jSONObject2.getString("name"))) {
                if (jSONObject != null) {
                    throw new IOException("Duplicate release asset: " + str);
                }
                jSONObject = jSONObject2;
            }
        }
        return jSONObject;
    }

    public static String optional(JSONObject jSONObject, String str) {
        return jSONObject.isNull(str) ? "" : jSONObject.optString(str, "");
    }

    public static String githubDigest(JSONObject jSONObject) throws IOException {
        String strOptional = optional(jSONObject, "digest");
        if (strOptional.isEmpty()) {
            return "";
        }
        if (!strOptional.startsWith("sha256:")) {
            throw new IOException("Unsupported GitHub asset digest.");
        }
        return hash(strOptional.substring(7));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long integer(JSONObject jSONObject, String str) throws JSONException, IOException {
        Object obj = jSONObject.get(str);
        if (!(obj instanceof Integer) && !(obj instanceof Long)) {
            throw new IOException("GitHub release metadata needs an integer " + str + ".");
        }
        return ((Number) obj).longValue();
    }

    public static String hash(String str) throws IOException {
        String lowerCase = str.toLowerCase(Locale.ROOT);
        if (HASH.matcher(lowerCase).matches()) {
            return lowerCase;
        }
        throw new IOException("Invalid SHA-256 digest.");
    }

    public static String downloadUrl(String str) throws IOException {
        try {
            URI uriCreate = URI.create(str);
            if ("https".equals(uriCreate.getScheme()) && "github.com".equals(uriCreate.getHost()) && uriCreate.getPort() == -1 && uriCreate.getUserInfo() == null && uriCreate.getFragment() == null && uriCreate.getQuery() == null && uriCreate.getRawPath().startsWith("/tinsarfal/GDroid/releases/download/") && !uriCreate.getRawPath().contains("/../")) {
                return str;
            }
            throw new IOException("The APK must be hosted in tinsarfal/GDroid releases.");
        } catch (IllegalArgumentException e) {
            throw new IOException("Invalid release download address.", e);
        }
    }

    public static final class Candidate {
        final String abi;
        final String name;
        final String notes;
        final String sha256;
        final long size;
        final String tag;
        final String url;

        public Candidate(String str, String str2, String str3, String str4, String str5, long j, String str6) throws IOException {
            if (!UpdateRelease.VERSION.matcher(str).matches() || !UpdateRelease.NAME.matcher(str3).matches() || j <= 0 || j > UpdateRelease.MAX_APK_BYTES || (!BuildConfig.UPDATE_ABI.equals(str2) && !"armeabi-v7a".equals(str2))) {
                throw new IOException("Invalid update artifact.");
            }
            this.tag = str;
            this.abi = str2;
            this.name = str3;
            this.url = UpdateRelease.downloadUrl(str4);
            this.sha256 = UpdateRelease.hash(str5);
            this.size = j;
            this.notes = str6.substring(0, Math.min(str6.length(), 6000));
        }

        public boolean newerThan(String str) {
            return UpdateRelease.VERSION.matcher(str).matches() && UpdateRelease.compareVersions(this.tag, str) > 0;
        }

        public String encode() throws JSONException {
            return new JSONObject().put("tag", this.tag).put("abi", this.abi).put("name", this.name).put("url", this.url).put("sha256", this.sha256).put("size", this.size).put("notes", this.notes).toString();
        }

        public static Candidate decode(String str) throws JSONException, IOException {
            JSONObject jSONObject = new JSONObject(str);
            return new Candidate(jSONObject.getString("tag"), jSONObject.getString("abi"), jSONObject.getString("name"), jSONObject.getString("url"), jSONObject.getString("sha256"), UpdateRelease.integer(jSONObject, "size"), jSONObject.optString("notes", ""));
        }
    }
}
