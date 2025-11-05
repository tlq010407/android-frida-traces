package org.tukaani.xz.rangecoder;

import java.io.DataInputStream;
import java.io.InputStream;
import org.tukaani.xz.CorruptedInputException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public final class RangeDecoderFromStream extends RangeDecoder {
    private final DataInputStream inData;

    public RangeDecoderFromStream(InputStream inputStream) throws CorruptedInputException {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.inData = dataInputStream;
        if (dataInputStream.readUnsignedByte() != 0) {
            throw new CorruptedInputException();
        }
        this.code = dataInputStream.readInt();
        this.range = -1;
    }

    public boolean isFinished() {
        return this.code == 0;
    }

    @Override // org.tukaani.xz.rangecoder.RangeDecoder
    public void normalize() {
        if ((this.range & (-16777216)) == 0) {
            this.code = (this.code << 8) | this.inData.readUnsignedByte();
            this.range <<= 8;
        }
    }
}
