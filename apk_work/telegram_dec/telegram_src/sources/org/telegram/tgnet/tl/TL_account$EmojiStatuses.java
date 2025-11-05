package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_account$EmojiStatuses extends TLObject {
    public long hash;
    public ArrayList statuses = new ArrayList();

    public static TL_account$EmojiStatuses TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_account$EmojiStatuses tL_account$TL_emojiStatuses;
        if (i == -1866176559) {
            tL_account$TL_emojiStatuses = new TL_account$TL_emojiStatuses();
        } else {
            if (i != -796072379) {
                if (z) {
                    throw new RuntimeException(String.format("can't parse magic %x in account_EmojiStatuses", Integer.valueOf(i)));
                }
                return null;
            }
            tL_account$TL_emojiStatuses = new TL_account$EmojiStatuses() { // from class: org.telegram.tgnet.tl.TL_account$TL_emojiStatusesNotModified
                @Override // org.telegram.tgnet.TLObject
                public void serializeToStream(OutputSerializedData outputSerializedData) {
                    outputSerializedData.writeInt32(-796072379);
                }
            };
        }
        tL_account$TL_emojiStatuses.readParams(inputSerializedData, z);
        return tL_account$TL_emojiStatuses;
    }
}
