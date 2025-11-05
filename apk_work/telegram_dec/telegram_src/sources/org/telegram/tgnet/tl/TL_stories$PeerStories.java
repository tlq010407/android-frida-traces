package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_stories$PeerStories extends TLObject {
    public boolean checkedExpired;
    public int flags;
    public int max_read_id;
    public TLRPC.Peer peer;
    public ArrayList stories = new ArrayList();

    public static TL_stories$PeerStories TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stories$TL_peerStories tL_stories$TL_peerStories = i != -2045664768 ? i != -1707742823 ? null : new TL_stories$TL_peerStories() : new TL_stories$TL_peerStories() { // from class: org.telegram.tgnet.tl.TL_stories$TL_peerStories_layer162
            @Override // org.telegram.tgnet.tl.TL_stories$TL_peerStories, org.telegram.tgnet.TLObject
            public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                this.flags = inputSerializedData2.readInt32(z2);
                long int64 = inputSerializedData2.readInt64(z2);
                TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                this.peer = tL_peerUser;
                tL_peerUser.user_id = int64;
                if ((this.flags & 1) != 0) {
                    this.max_read_id = inputSerializedData2.readInt32(z2);
                }
                this.stories = Vector.deserialize(inputSerializedData2, new TL_stories$TL_peerStories$$ExternalSyntheticLambda0(), z2);
            }

            @Override // org.telegram.tgnet.tl.TL_stories$TL_peerStories, org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(-2045664768);
                outputSerializedData.writeInt32(this.flags);
                outputSerializedData.writeInt64(this.peer.user_id);
                if ((this.flags & 1) != 0) {
                    outputSerializedData.writeInt32(this.max_read_id);
                }
                Vector.serialize(outputSerializedData, this.stories);
            }
        };
        if (tL_stories$TL_peerStories == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in PeerStories", Integer.valueOf(i)));
        }
        if (tL_stories$TL_peerStories != null) {
            tL_stories$TL_peerStories.readParams(inputSerializedData, z);
        }
        return tL_stories$TL_peerStories;
    }
}
