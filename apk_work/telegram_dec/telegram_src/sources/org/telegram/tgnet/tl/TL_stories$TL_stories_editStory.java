package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_stories_editStory extends TLObject {
    public String caption;
    public int flags;
    public int id;
    public TLRPC.InputMedia media;
    public TLRPC.InputPeer peer;
    public ArrayList media_areas = new ArrayList();
    public ArrayList entities = new ArrayList();
    public ArrayList privacy_rules = new ArrayList();

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Updates.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1249658298);
        outputSerializedData.writeInt32(this.flags);
        this.peer.serializeToStream(outputSerializedData);
        outputSerializedData.writeInt32(this.id);
        if ((this.flags & 1) != 0) {
            this.media.serializeToStream(outputSerializedData);
        }
        if ((this.flags & 8) != 0) {
            Vector.serialize(outputSerializedData, this.media_areas);
        }
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeString(this.caption);
        }
        if ((this.flags & 2) != 0) {
            Vector.serialize(outputSerializedData, this.entities);
        }
        if ((this.flags & 4) != 0) {
            Vector.serialize(outputSerializedData, this.privacy_rules);
        }
    }
}
