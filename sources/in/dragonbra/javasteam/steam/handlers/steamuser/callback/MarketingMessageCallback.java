package in.dragonbra.javasteam.steam.handlers.steamuser.callback;

import in.dragonbra.javasteam.base.ClientMsg;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EMarketingMessageFlags;
import in.dragonbra.javasteam.generated.MsgClientMarketingMessageUpdate2;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.GlobalID;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Date;
import java.util.EnumSet;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MarketingMessageCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class MarketingMessageCallback extends CallbackMsg {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(MarketingMessageCallback.class);
    private final List<Message> messages;
    private final Date updateTime;

    public MarketingMessageCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsg clientMsg = new ClientMsg(MsgClientMarketingMessageUpdate2.class, packetMsg);
        MsgClientMarketingMessageUpdate2 msgClientMarketingMessageUpdate2 = (MsgClientMarketingMessageUpdate2) clientMsg.getBody();
        this.updateTime = new Date(((long) msgClientMarketingMessageUpdate2.getMarketingMessageUpdateTime()) * 1000);
        ArrayList arrayList = new ArrayList();
        try {
            BinaryReader binaryReader = new BinaryReader(clientMsg.getPayload());
            try {
                int count = msgClientMarketingMessageUpdate2.getCount();
                for (int i = 0; i < count; i++) {
                    arrayList.add(new Message(binaryReader.readBytes(binaryReader.readInt() - 4)));
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(binaryReader, null);
            } finally {
            }
        } catch (Exception e) {
            logger.error("Failed to get marketing messages", e);
        }
        this.messages = CollectionsKt___CollectionsKt.toList(arrayList);
    }

    /* JADX INFO: compiled from: MarketingMessageCallback.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final Date getUpdateTime() {
        return this.updateTime;
    }

    public final List<Message> getMessages() {
        return this.messages;
    }

    /* JADX INFO: compiled from: MarketingMessageCallback.kt */
    public static final class Message {
        private EnumSet<EMarketingMessageFlags> flags;
        private GlobalID id;
        private String url;

        public Message(byte[] bArr) {
            try {
                BinaryReader binaryReader = new BinaryReader(new MemoryStream(bArr));
                try {
                    this.id = new GlobalID(binaryReader.readLong());
                    this.url = binaryReader.readNullTermString(StandardCharsets.UTF_8);
                    this.flags = EMarketingMessageFlags.from(binaryReader.readInt());
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(binaryReader, null);
                } finally {
                }
            } catch (Exception e) {
                MarketingMessageCallback.logger.error("Failed to parse marketing messages", e);
            }
        }

        public final GlobalID getId() {
            return this.id;
        }

        public final String getUrl() {
            return this.url;
        }

        public final EnumSet<EMarketingMessageFlags> getFlags() {
            return this.flags;
        }
    }
}
