package org.telegram.tgnet;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface InputSerializedData {
    boolean readBool(boolean z);

    byte readByte(boolean z);

    byte[] readByteArray(boolean z);

    NativeByteBuffer readByteBuffer(boolean z);

    double readDouble(boolean z);

    float readFloat(boolean z);

    int readInt32(boolean z);

    long readInt64(boolean z);

    String readString(boolean z);

    int remaining();
}
