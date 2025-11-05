package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$getSavedStarGifts extends TLObject {
    public boolean exclude_limited;
    public boolean exclude_saved;
    public boolean exclude_unique;
    public boolean exclude_unlimited;
    public boolean exclude_unsaved;
    public int flags;
    public int limit;
    public String offset;
    public TLRPC.InputPeer peer;
    public boolean sort_by_value;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_stars$TL_payments_savedStarGifts.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(595791337);
        int i = this.exclude_unsaved ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.exclude_saved ? i | 2 : i & (-3);
        this.flags = i2;
        int i3 = this.exclude_unlimited ? i2 | 4 : i2 & (-5);
        this.flags = i3;
        int i4 = this.exclude_limited ? i3 | 8 : i3 & (-9);
        this.flags = i4;
        int i5 = this.exclude_unique ? i4 | 16 : i4 & (-17);
        this.flags = i5;
        int i6 = this.sort_by_value ? i5 | 32 : i5 & (-33);
        this.flags = i6;
        outputSerializedData.writeInt32(i6);
        this.peer.serializeToStream(outputSerializedData);
        outputSerializedData.writeString(this.offset);
        outputSerializedData.writeInt32(this.limit);
    }
}
