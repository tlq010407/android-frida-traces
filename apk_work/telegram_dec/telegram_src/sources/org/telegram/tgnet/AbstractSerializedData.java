package org.telegram.tgnet;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class AbstractSerializedData implements InputSerializedData, OutputSerializedData {
    @Override // org.telegram.tgnet.InputSerializedData
    public abstract boolean readBool(boolean z);

    @Override // org.telegram.tgnet.InputSerializedData
    public abstract byte readByte(boolean z);

    @Override // org.telegram.tgnet.InputSerializedData
    public abstract double readDouble(boolean z);

    @Override // org.telegram.tgnet.InputSerializedData
    public abstract float readFloat(boolean z);

    @Override // org.telegram.tgnet.InputSerializedData
    public abstract int readInt32(boolean z);

    @Override // org.telegram.tgnet.InputSerializedData
    public abstract long readInt64(boolean z);

    @Override // org.telegram.tgnet.InputSerializedData
    public abstract String readString(boolean z);

    @Override // org.telegram.tgnet.InputSerializedData
    public abstract int remaining();

    @Override // org.telegram.tgnet.OutputSerializedData
    public abstract void writeBool(boolean z);

    @Override // org.telegram.tgnet.OutputSerializedData
    public abstract void writeByte(byte b);

    @Override // org.telegram.tgnet.OutputSerializedData
    public abstract void writeFloat(float f);

    @Override // org.telegram.tgnet.OutputSerializedData
    public abstract void writeInt32(int i);

    @Override // org.telegram.tgnet.OutputSerializedData
    public abstract void writeInt64(long j);

    @Override // org.telegram.tgnet.OutputSerializedData
    public abstract void writeString(String str);
}
