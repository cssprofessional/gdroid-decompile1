package in.dragonbra.javasteam.types;

import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.tukaani.xz.common.Util;

/* JADX INFO: compiled from: PubFile.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PublishedFileID extends UInt64Handle {
    public static final Companion Companion = new Companion(null);

    public PublishedFileID(long j) {
        super(ULong.m8189constructorimpl(j), null);
    }

    public /* synthetic */ PublishedFileID(long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Util.VLI_MAX : j);
    }

    /* JADX INFO: compiled from: PubFile.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean equals(PublishedFileID publishedFileID, PublishedFileID publishedFileID2) {
            if (publishedFileID == publishedFileID2) {
                return true;
            }
            return (publishedFileID == null || publishedFileID2 == null || publishedFileID.m8079getValuesVKNKU() != publishedFileID2.m8079getValuesVKNKU()) ? false : true;
        }

        public final boolean notEquals(PublishedFileID publishedFileID, PublishedFileID publishedFileID2) {
            return !equals(publishedFileID, publishedFileID2);
        }
    }
}
