package com.google.android.exoplayer2.extractor.avi;

import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableIterator;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class ListChunk implements AviChunk {
    public final ImmutableList children;
    private final int type;

    private ListChunk(int i, ImmutableList immutableList) {
        this.type = i;
        this.children = immutableList;
    }

    private static AviChunk createBox(int i, int i2, ParsableByteArray parsableByteArray) {
        if (i == 1718776947) {
            return StreamFormatChunk.parseFrom(i2, parsableByteArray);
        }
        if (i == 1751742049) {
            return AviMainHeaderChunk.parseFrom(parsableByteArray);
        }
        if (i == 1752331379) {
            return AviStreamHeaderChunk.parseFrom(parsableByteArray);
        }
        if (i != 1852994675) {
            return null;
        }
        return StreamNameChunk.parseFrom(parsableByteArray);
    }

    public static ListChunk parseFrom(int i, ParsableByteArray parsableByteArray) {
        ImmutableList.Builder builder = new ImmutableList.Builder();
        int iLimit = parsableByteArray.limit();
        int trackType = -2;
        while (parsableByteArray.bytesLeft() > 8) {
            int littleEndianInt = parsableByteArray.readLittleEndianInt();
            int position = parsableByteArray.getPosition() + parsableByteArray.readLittleEndianInt();
            parsableByteArray.setLimit(position);
            AviChunk from = littleEndianInt == 1414744396 ? parseFrom(parsableByteArray.readLittleEndianInt(), parsableByteArray) : createBox(littleEndianInt, trackType, parsableByteArray);
            if (from != null) {
                if (from.getType() == 1752331379) {
                    trackType = ((AviStreamHeaderChunk) from).getTrackType();
                }
                builder.add((Object) from);
            }
            parsableByteArray.setPosition(position);
            parsableByteArray.setLimit(iLimit);
        }
        return new ListChunk(i, builder.build());
    }

    public AviChunk getChild(Class cls) {
        UnmodifiableIterator it = this.children.iterator();
        while (it.hasNext()) {
            AviChunk aviChunk = (AviChunk) it.next();
            if (aviChunk.getClass() == cls) {
                return aviChunk;
            }
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.extractor.avi.AviChunk
    public int getType() {
        return this.type;
    }
}
