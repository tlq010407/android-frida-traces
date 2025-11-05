package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_account$ReactionNotificationsFrom extends TLObject {
    public static TL_account$ReactionNotificationsFrom TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_account$ReactionNotificationsFrom tL_account$TL_reactionNotificationsFromAll = i != -1161583078 ? i != 1268654752 ? null : new TL_account$TL_reactionNotificationsFromAll() : new TL_account$TL_reactionNotificationsFromContacts();
        if (tL_account$TL_reactionNotificationsFromAll == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in ReactionNotificationsFrom", Integer.valueOf(i)));
        }
        if (tL_account$TL_reactionNotificationsFromAll != null) {
            tL_account$TL_reactionNotificationsFromAll.readParams(inputSerializedData, z);
        }
        return tL_account$TL_reactionNotificationsFromAll;
    }
}
