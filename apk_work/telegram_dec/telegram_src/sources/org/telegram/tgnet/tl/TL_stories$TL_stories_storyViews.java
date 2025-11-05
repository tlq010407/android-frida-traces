package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_stories_storyViews extends TLObject {
    public ArrayList views = new ArrayList();
    public ArrayList users = new ArrayList();

    public static TL_stories$TL_stories_storyViews TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-560009955 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_stories_storyViews", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stories$TL_stories_storyViews tL_stories$TL_stories_storyViews = new TL_stories$TL_stories_storyViews();
        tL_stories$TL_stories_storyViews.readParams(inputSerializedData, z);
        return tL_stories$TL_stories_storyViews;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.views = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_stories$TL_stories_storyViews$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.Vector.TLDeserializer
            public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                return TL_stories$StoryViews.TLdeserialize(inputSerializedData2, i, z2);
            }
        }, z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-560009955);
        Vector.serialize(outputSerializedData, this.views);
        Vector.serialize(outputSerializedData, this.users);
    }
}
