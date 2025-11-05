package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_stories_sendStory extends TLObject {
    public String caption;
    public int flags;
    public TLRPC.InputPeer fwd_from_id;
    public int fwd_from_story;
    public boolean fwd_modified;
    public TLRPC.InputMedia media;
    public boolean noforwards;
    public TLRPC.InputPeer peer;
    public int period;
    public boolean pinned;
    public long random_id;
    public ArrayList media_areas = new ArrayList();
    public ArrayList entities = new ArrayList();
    public ArrayList privacy_rules = new ArrayList();

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Updates.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-454661813);
        int i = this.pinned ? this.flags | 4 : this.flags & (-5);
        this.flags = i;
        int i2 = this.noforwards ? i | 16 : i & (-17);
        this.flags = i2;
        int i3 = this.fwd_modified ? i2 | 128 : i2 & (-129);
        this.flags = i3;
        outputSerializedData.writeInt32(i3);
        this.peer.serializeToStream(outputSerializedData);
        this.media.serializeToStream(outputSerializedData);
        if ((this.flags & 32) != 0) {
            Vector.serialize(outputSerializedData, this.media_areas);
        }
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeString(this.caption);
        }
        if ((this.flags & 2) != 0) {
            Vector.serialize(outputSerializedData, this.entities);
        }
        Vector.serialize(outputSerializedData, this.privacy_rules);
        outputSerializedData.writeInt64(this.random_id);
        if ((this.flags & 8) != 0) {
            outputSerializedData.writeInt32(this.period);
        }
        if ((this.flags & 64) != 0) {
            this.fwd_from_id.serializeToStream(outputSerializedData);
        }
        if ((this.flags & 64) != 0) {
            outputSerializedData.writeInt32(this.fwd_from_story);
        }
    }
}
