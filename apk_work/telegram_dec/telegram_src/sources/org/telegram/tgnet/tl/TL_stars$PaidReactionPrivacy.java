package org.telegram.tgnet.tl;

import org.telegram.messenger.DialogObject;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_stars$PaidReactionPrivacy extends TLObject {
    public TLRPC.InputPeer peer;

    public static TL_stars$PaidReactionPrivacy TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stars$PaidReactionPrivacy tL_stars$paidReactionPrivacyDefault = i != -596837136 ? i != 520887001 ? i != 543872158 ? null : new TL_stars$paidReactionPrivacyDefault() : new TL_stars$paidReactionPrivacyAnonymous() : new TL_stars$paidReactionPrivacyPeer();
        if (tL_stars$paidReactionPrivacyDefault == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in PaidReactionPrivacy", Integer.valueOf(i)));
        }
        if (tL_stars$paidReactionPrivacyDefault != null) {
            tL_stars$paidReactionPrivacyDefault.readParams(inputSerializedData, z);
        }
        return tL_stars$paidReactionPrivacyDefault;
    }

    public long getDialogId() {
        if (this instanceof TL_stars$paidReactionPrivacyDefault) {
            return 0L;
        }
        if (this instanceof TL_stars$paidReactionPrivacyAnonymous) {
            return UserObject.ANONYMOUS;
        }
        if (this instanceof TL_stars$paidReactionPrivacyPeer) {
            return DialogObject.getPeerDialogId(this.peer);
        }
        return 0L;
    }
}
