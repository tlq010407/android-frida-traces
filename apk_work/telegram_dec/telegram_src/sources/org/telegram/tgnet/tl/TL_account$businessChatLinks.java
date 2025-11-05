package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$businessChatLinks extends TLObject {
    public ArrayList links = new ArrayList();
    public ArrayList chats = new ArrayList();
    public ArrayList users = new ArrayList();

    public static TL_account$businessChatLinks TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-331111727 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_account_businessChatLinks", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$businessChatLinks tL_account$businessChatLinks = new TL_account$businessChatLinks();
        tL_account$businessChatLinks.readParams(inputSerializedData, z);
        return tL_account$businessChatLinks;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.links = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_account$businessChatLinks$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.Vector.TLDeserializer
            public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                return TL_account$TL_businessChatLink.TLdeserialize(inputSerializedData2, i, z2);
            }
        }, z);
        this.chats = Vector.deserialize(inputSerializedData, new TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1(), z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-331111727);
        Vector.serialize(outputSerializedData, this.links);
        Vector.serialize(outputSerializedData, this.chats);
        Vector.serialize(outputSerializedData, this.users);
    }
}
