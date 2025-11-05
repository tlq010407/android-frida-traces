package org.telegram.tgnet;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface OutputSerializedData {
    void writeBool(boolean z);

    void writeByte(byte b);

    void writeByteArray(byte[] bArr);

    void writeByteBuffer(NativeByteBuffer nativeByteBuffer);

    void writeBytes(byte[] bArr);

    void writeDouble(double d);

    void writeFloat(float f);

    void writeInt32(int i);

    void writeInt64(long j);

    void writeString(String str);
}
