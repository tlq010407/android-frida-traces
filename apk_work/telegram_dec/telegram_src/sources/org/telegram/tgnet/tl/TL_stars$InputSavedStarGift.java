package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_stars$InputSavedStarGift extends TLObject {
    public static TL_stars$InputSavedStarGift TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stars$InputSavedStarGift tL_stars$TL_inputSavedStarGiftUser = i != -251549057 ? i != 545636920 ? i != 1764202389 ? null : new TL_stars$TL_inputSavedStarGiftUser() : new TL_stars$TL_inputSavedStarGiftSlug() : new TL_stars$TL_inputSavedStarGiftChat();
        if (tL_stars$TL_inputSavedStarGiftUser == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in InputSavedStarGift", Integer.valueOf(i)));
        }
        if (tL_stars$TL_inputSavedStarGiftUser != null) {
            tL_stars$TL_inputSavedStarGiftUser.readParams(inputSerializedData, z);
        }
        return tL_stars$TL_inputSavedStarGiftUser;
    }
}
