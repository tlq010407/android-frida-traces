package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_stories_allStoriesNotModified extends TL_stories$stories_AllStories {
    public int flags;
    public String state;
    public TL_stories$TL_storiesStealthMode stealth_mode;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.state = inputSerializedData.readString(z);
        this.stealth_mode = TL_stories$TL_storiesStealthMode.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(291044926);
        outputSerializedData.writeInt32(this.flags);
        outputSerializedData.writeString(this.state);
        this.stealth_mode.serializeToStream(outputSerializedData);
    }
}
