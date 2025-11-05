package org.telegram.ui.Stories;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stories$StoryItem;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public abstract class StoryCustomParamsHelper {

    private static class Params_v1 extends TLObject {
        int flags;
        final TL_stories$StoryItem storyItem;

        private Params_v1(TL_stories$StoryItem tL_stories$StoryItem) {
            this.flags = 0;
            this.storyItem = tL_stories$StoryItem;
            boolean z = tL_stories$StoryItem.translated;
            this.flags = z ? 1 : 0;
            int i = (z ? 1 : 0) + (tL_stories$StoryItem.detectedLng != null ? 2 : 0);
            this.flags = i;
            int i2 = i + (tL_stories$StoryItem.translatedText != null ? 4 : 0);
            this.flags = i2;
            this.flags = i2 + (tL_stories$StoryItem.translatedLng != null ? 8 : 0);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(true);
            this.flags = int32;
            TL_stories$StoryItem tL_stories$StoryItem = this.storyItem;
            tL_stories$StoryItem.translated = (int32 & 1) != 0;
            if ((int32 & 2) != 0) {
                tL_stories$StoryItem.detectedLng = inputSerializedData.readString(z);
            }
            if ((this.flags & 4) != 0) {
                this.storyItem.translatedText = TLRPC.TL_textWithEntities.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            }
            if ((this.flags & 8) != 0) {
                this.storyItem.translatedLng = inputSerializedData.readString(z);
            }
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(1);
            outputSerializedData.writeInt32(this.flags);
            if ((this.flags & 2) != 0) {
                outputSerializedData.writeString(this.storyItem.detectedLng);
            }
            if ((this.flags & 4) != 0) {
                this.storyItem.translatedText.serializeToStream(outputSerializedData);
            }
            if ((this.flags & 8) != 0) {
                outputSerializedData.writeString(this.storyItem.translatedLng);
            }
        }
    }

    public static boolean isEmpty(TL_stories$StoryItem tL_stories$StoryItem) {
        return tL_stories$StoryItem.detectedLng == null && tL_stories$StoryItem.translatedLng == null && !tL_stories$StoryItem.translated && tL_stories$StoryItem.translatedText == null;
    }

    public static void readLocalParams(TL_stories$StoryItem tL_stories$StoryItem, NativeByteBuffer nativeByteBuffer) {
        if (nativeByteBuffer == null) {
            return;
        }
        int int32 = nativeByteBuffer.readInt32(true);
        if (int32 == 1) {
            new Params_v1(tL_stories$StoryItem).readParams(nativeByteBuffer, true);
            return;
        }
        throw new RuntimeException("(story) can't read params version = " + int32);
    }

    public static NativeByteBuffer writeLocalParams(TL_stories$StoryItem tL_stories$StoryItem) {
        if (isEmpty(tL_stories$StoryItem)) {
            return null;
        }
        Params_v1 params_v1 = new Params_v1(tL_stories$StoryItem);
        try {
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(params_v1.getObjectSize());
            params_v1.serializeToStream(nativeByteBuffer);
            return nativeByteBuffer;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
