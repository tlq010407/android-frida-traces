package okio;

import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface BufferedSource extends Source, ReadableByteChannel {
    Buffer buffer();

    boolean exhausted();

    long indexOf(byte b);

    boolean rangeEquals(long j, ByteString byteString);

    byte readByte();

    byte[] readByteArray();

    byte[] readByteArray(long j);

    ByteString readByteString(long j);

    void readFully(byte[] bArr);

    long readHexadecimalUnsignedLong();

    int readInt();

    int readIntLe();

    short readShort();

    short readShortLe();

    String readString(Charset charset);

    String readUtf8LineStrict();

    String readUtf8LineStrict(long j);

    void require(long j);

    void skip(long j);
}
