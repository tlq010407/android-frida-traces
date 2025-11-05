package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_stories$StoryViews extends TLObject {
    public int flags;
    public int forwards_count;
    public boolean has_viewers;
    public int reactions_count;
    public int views_count;
    public ArrayList recent_viewers = new ArrayList();
    public ArrayList reactions = new ArrayList();

    public static TL_stories$StoryViews TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stories$StoryViews tL_stories$TL_storyViews = i != -1923523370 ? i != -968094825 ? i != -748199729 ? null : new TL_stories$StoryViews() { // from class: org.telegram.tgnet.tl.TL_stories$TL_storyViews_layer160
            @Override // org.telegram.tgnet.TLObject
            public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                this.flags = inputSerializedData2.readInt32(z2);
                this.views_count = inputSerializedData2.readInt32(z2);
                if ((this.flags & 1) != 0) {
                    this.recent_viewers = Vector.deserializeLong(inputSerializedData2, z2);
                }
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(-748199729);
                outputSerializedData.writeInt32(this.flags);
                outputSerializedData.writeInt32(this.views_count);
                if ((this.flags & 1) != 0) {
                    Vector.serializeLong(outputSerializedData, this.recent_viewers);
                }
            }
        } : new TL_stories$StoryViews() { // from class: org.telegram.tgnet.tl.TL_stories$TL_storyViews_layer161
            @Override // org.telegram.tgnet.TLObject
            public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                this.flags = inputSerializedData2.readInt32(z2);
                this.views_count = inputSerializedData2.readInt32(z2);
                this.reactions_count = inputSerializedData2.readInt32(z2);
                if ((this.flags & 1) != 0) {
                    this.recent_viewers = Vector.deserializeLong(inputSerializedData2, z2);
                }
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(-968094825);
                outputSerializedData.writeInt32(this.flags);
                outputSerializedData.writeInt32(this.views_count);
                outputSerializedData.writeInt32(this.reactions_count);
                if ((this.flags & 1) != 0) {
                    Vector.serializeLong(outputSerializedData, this.recent_viewers);
                }
            }
        } : new TL_stories$TL_storyViews();
        if (tL_stories$TL_storyViews == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in StoryViews", Integer.valueOf(i)));
        }
        if (tL_stories$TL_storyViews != null) {
            tL_stories$TL_storyViews.readParams(inputSerializedData, z);
        }
        return tL_stories$TL_storyViews;
    }
}
