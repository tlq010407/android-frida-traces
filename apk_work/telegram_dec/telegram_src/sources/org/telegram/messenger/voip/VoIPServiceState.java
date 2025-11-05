package org.telegram.messenger.voip;

import java.util.ArrayList;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_phone$PhoneCall;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface VoIPServiceState {

    /* renamed from: org.telegram.messenger.voip.VoIPServiceState$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static long $default$getCallDuration(VoIPServiceState voIPServiceState) {
            return 0L;
        }
    }

    void acceptIncomingCall();

    void declineIncomingCall();

    long getCallDuration();

    int getCallState();

    TLRPC.GroupCall getGroupCall();

    ArrayList<TLRPC.GroupCallParticipant> getGroupParticipants();

    TL_phone$PhoneCall getPrivateCall();

    TLRPC.User getUser();

    boolean isCallingVideo();

    boolean isConference();

    boolean isOutgoing();

    void stopRinging();
}
