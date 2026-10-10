package in.dragonbra.javasteam.steam.handlers.steamapps;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverAppinfo;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.KeyValue;
import in.dragonbra.javasteam.util.Strings;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.URI;
import java.util.Arrays;
import java.util.Locale;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: PICSProductInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PICSProductInfo extends CallbackMsg {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(PICSProductInfo.class);
    private final int changeNumber;
    private String httpHost;
    private final int id;
    private final boolean isMissingToken;
    private boolean isOnlyPublic;
    private boolean isUseHttp;
    private final KeyValue keyValues;
    private final byte[] shaHash;

    /* JADX INFO: compiled from: PICSProductInfo.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final int getId() {
        return this.id;
    }

    public final int getChangeNumber() {
        return this.changeNumber;
    }

    public final boolean isMissingToken() {
        return this.isMissingToken;
    }

    public final byte[] getShaHash() {
        return this.shaHash;
    }

    public final KeyValue getKeyValues() {
        return this.keyValues;
    }

    public final boolean isOnlyPublic() {
        return this.isOnlyPublic;
    }

    public final boolean isUseHttp() {
        return this.isUseHttp;
    }

    public final URI getHttpUri() {
        if (!getHasValidHttpUri()) {
            return null;
        }
        String hex = Strings.toHex(this.shaHash);
        Intrinsics.checkNotNullExpressionValue(hex, "toHex(...)");
        String strReplace$default = StringsKt__StringsJVMKt.replace$default(hex, "-", "", false, 4, (Object) null);
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        String lowerCase = strReplace$default.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format("https://%s/appinfo/%d/sha/%s.txt.gz", Arrays.copyOf(new Object[]{this.httpHost, Integer.valueOf(this.id), lowerCase}, 3));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return URI.create(str);
    }

    private final boolean getHasValidHttpUri() {
        String str;
        byte[] bArr = this.shaHash;
        if (bArr != null) {
            return ((bArr.length == 0) || (str = this.httpHost) == null || str.length() == 0) ? false : true;
        }
        return false;
    }

    public PICSProductInfo(SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.Builder parentResponse, SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.AppInfo appInfo) throws IllegalAccessException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(parentResponse, "parentResponse");
        Intrinsics.checkNotNullParameter(appInfo, "appInfo");
        this.id = appInfo.getAppid();
        this.changeNumber = appInfo.getChangeNumber();
        this.isMissingToken = appInfo.getMissingToken();
        this.shaHash = appInfo.getSha().toByteArray();
        KeyValue keyValue = new KeyValue(null, null, 3, null);
        this.keyValues = keyValue;
        if (appInfo.hasBuffer() && !appInfo.getBuffer().isEmpty()) {
            try {
                MemoryStream memoryStream = new MemoryStream(appInfo.getBuffer().toByteArray(), 0, appInfo.getBuffer().size() - 1);
                try {
                    keyValue.readAsText(memoryStream);
                    CloseableKt.closeFinally(memoryStream, null);
                } finally {
                }
            } catch (IOException e) {
                logger.error("failed to read buffer", e);
            }
        }
        this.isOnlyPublic = appInfo.getOnlyPublic();
        this.httpHost = parentResponse.getHttpHost();
        this.isUseHttp = getHttpUri() != null && appInfo.getSize() >= parentResponse.getHttpMinSize();
    }

    public PICSProductInfo(SteammessagesClientserverAppinfo.CMsgClientPICSProductInfoResponse.PackageInfo packageInfo) throws IllegalAccessException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(packageInfo, "packageInfo");
        this.id = packageInfo.getPackageid();
        this.changeNumber = packageInfo.getChangeNumber();
        this.isMissingToken = packageInfo.getMissingToken();
        this.shaHash = packageInfo.getSha().toByteArray();
        KeyValue keyValue = new KeyValue(null, null, 3, null);
        this.keyValues = keyValue;
        if (!packageInfo.hasBuffer()) {
            return;
        }
        try {
            BinaryReader binaryReader = new BinaryReader(new ByteArrayInputStream(packageInfo.getBuffer().toByteArray()));
            try {
                binaryReader.readInt();
                keyValue.tryReadAsBinary(binaryReader);
                CloseableKt.closeFinally(binaryReader, null);
            } finally {
            }
        } catch (IOException e) {
            logger.error("failed to read buffer", e);
        }
    }
}
