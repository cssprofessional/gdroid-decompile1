package in.dragonbra.javasteam.enums;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;

/* JADX INFO: loaded from: classes.dex */
public enum EDRMBlobDownloadErrorDetail {
    None(0),
    DownloadFailed(1),
    TargetLocked(2),
    OpenZip(3),
    ReadZipDirectory(4),
    UnexpectedZipEntry(5),
    UnzipFullFile(6),
    UnknownBlobType(7),
    UnzipStrips(8),
    UnzipMergeGuid(9),
    UnzipSignature(10),
    ApplyStrips(11),
    ApplyMergeGuid(12),
    ApplySignature(13),
    AppIdMismatch(14),
    AppIdUnexpected(15),
    AppliedSignatureCorrupt(16),
    ApplyValveSignatureHeader(17),
    UnzipValveSignatureHeader(18),
    PathManipulationError(19),
    TargetLocked_Base(Enums.EProtoAppType.k_EAppTypeBeta_VALUE),
    TargetLocked_Max(131071),
    NextBase(131072);

    private final int code;

    EDRMBlobDownloadErrorDetail(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EDRMBlobDownloadErrorDetail from(int i) {
        for (EDRMBlobDownloadErrorDetail eDRMBlobDownloadErrorDetail : values()) {
            if (eDRMBlobDownloadErrorDetail.code == i) {
                return eDRMBlobDownloadErrorDetail;
            }
        }
        return null;
    }
}
