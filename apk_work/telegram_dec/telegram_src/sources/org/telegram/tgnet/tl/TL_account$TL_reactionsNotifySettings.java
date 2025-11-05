package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$TL_reactionsNotifySettings extends TLObject {
    public int flags;
    public TL_account$ReactionNotificationsFrom messages_notify_from;
    public boolean show_previews;
    public TLRPC.NotificationSound sound;
    public TL_account$ReactionNotificationsFrom stories_notify_from;

    public static TL_account$TL_reactionsNotifySettings TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (1457736048 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_reactionsNotifySettings", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$TL_reactionsNotifySettings tL_account$TL_reactionsNotifySettings = new TL_account$TL_reactionsNotifySettings();
        tL_account$TL_reactionsNotifySettings.readParams(inputSerializedData, z);
        return tL_account$TL_reactionsNotifySettings;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        if ((int32 & 1) != 0) {
            this.messages_notify_from = TL_account$ReactionNotificationsFrom.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
        if ((this.flags & 2) != 0) {
            this.stories_notify_from = TL_account$ReactionNotificationsFrom.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
        this.sound = TLRPC.NotificationSound.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.show_previews = inputSerializedData.readBool(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1457736048);
        outputSerializedData.writeInt32(this.flags);
        if ((this.flags & 1) != 0) {
            this.messages_notify_from.serializeToStream(outputSerializedData);
        }
        if ((this.flags & 2) != 0) {
            this.stories_notify_from.serializeToStream(outputSerializedData);
        }
        this.sound.serializeToStream(outputSerializedData);
        outputSerializedData.writeBool(this.show_previews);
    }
}
