package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EVoiceCallState {
    None(0),
    ScheduledInitiate(1),
    RequestedMicAccess(2),
    LocalMicOnly(3),
    CreatePeerConnection(4),
    InitatedWebRTCSession(5),
    UpdatingWebRTCSession(6),
    WebRTCConnectedWaitingOnIceConnected(7),
    RequestedPermission(8),
    NotifyingVoiceChatOfWebRTCSession(9),
    Connected(10);

    private final int code;

    EVoiceCallState(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EVoiceCallState from(int i) {
        for (EVoiceCallState eVoiceCallState : values()) {
            if (eVoiceCallState.code == i) {
                return eVoiceCallState;
            }
        }
        return null;
    }
}
