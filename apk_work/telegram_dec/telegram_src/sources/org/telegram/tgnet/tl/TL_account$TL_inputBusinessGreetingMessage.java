package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$TL_inputBusinessGreetingMessage extends TLObject {
    public int no_activity_days;
    public TL_account$TL_inputBusinessRecipients recipients;
    public int shortcut_id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.shortcut_id = inputSerializedData.readInt32(z);
        this.recipients = TL_account$TL_inputBusinessRecipients.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.no_activity_days = inputSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(26528571);
        outputSerializedData.writeInt32(this.shortcut_id);
        this.recipients.serializeToStream(outputSerializedData);
        outputSerializedData.writeInt32(this.no_activity_days);
    }
}
