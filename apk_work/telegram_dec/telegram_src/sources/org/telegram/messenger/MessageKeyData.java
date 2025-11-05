package org.telegram.messenger;

import java.io.IOException;
import org.telegram.tgnet.SerializedData;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class MessageKeyData {
    public byte[] aesIv;
    public byte[] aesKey;

    public static MessageKeyData generateMessageKeyData(byte[] bArr, byte[] bArr2, boolean z, int i) throws IOException {
        SerializedData serializedData;
        MessageKeyData messageKeyData = new MessageKeyData();
        if (bArr == null || bArr.length == 0) {
            messageKeyData.aesIv = null;
            messageKeyData.aesKey = null;
            return messageKeyData;
        }
        int i2 = z ? 8 : 0;
        if (i != 1) {
            if (i == 2) {
                SerializedData serializedData2 = new SerializedData();
                serializedData2.writeBytes(bArr2, 0, 16);
                serializedData2.writeBytes(bArr, i2, 36);
                byte[] bArrComputeSHA256 = Utilities.computeSHA256(serializedData2.toByteArray());
                serializedData2.cleanup();
                SerializedData serializedData3 = new SerializedData();
                serializedData3.writeBytes(bArr, i2 + 40, 36);
                serializedData3.writeBytes(bArr2, 0, 16);
                byte[] bArrComputeSHA2562 = Utilities.computeSHA256(serializedData3.toByteArray());
                serializedData3.cleanup();
                SerializedData serializedData4 = new SerializedData();
                serializedData4.writeBytes(bArrComputeSHA256, 0, 8);
                serializedData4.writeBytes(bArrComputeSHA2562, 8, 16);
                serializedData4.writeBytes(bArrComputeSHA256, 24, 8);
                messageKeyData.aesKey = serializedData4.toByteArray();
                serializedData4.cleanup();
                serializedData = new SerializedData();
                serializedData.writeBytes(bArrComputeSHA2562, 0, 8);
                serializedData.writeBytes(bArrComputeSHA256, 8, 16);
                serializedData.writeBytes(bArrComputeSHA2562, 24, 8);
                messageKeyData.aesIv = serializedData.toByteArray();
            }
            return messageKeyData;
        }
        SerializedData serializedData5 = new SerializedData();
        serializedData5.writeBytes(bArr2);
        serializedData5.writeBytes(bArr, i2, 32);
        byte[] bArrComputeSHA1 = Utilities.computeSHA1(serializedData5.toByteArray());
        serializedData5.cleanup();
        SerializedData serializedData6 = new SerializedData();
        serializedData6.writeBytes(bArr, i2 + 32, 16);
        serializedData6.writeBytes(bArr2);
        serializedData6.writeBytes(bArr, i2 + 48, 16);
        byte[] bArrComputeSHA12 = Utilities.computeSHA1(serializedData6.toByteArray());
        serializedData6.cleanup();
        SerializedData serializedData7 = new SerializedData();
        serializedData7.writeBytes(bArr, i2 + 64, 32);
        serializedData7.writeBytes(bArr2);
        byte[] bArrComputeSHA13 = Utilities.computeSHA1(serializedData7.toByteArray());
        serializedData7.cleanup();
        SerializedData serializedData8 = new SerializedData();
        serializedData8.writeBytes(bArr2);
        serializedData8.writeBytes(bArr, i2 + 96, 32);
        byte[] bArrComputeSHA14 = Utilities.computeSHA1(serializedData8.toByteArray());
        serializedData8.cleanup();
        SerializedData serializedData9 = new SerializedData();
        serializedData9.writeBytes(bArrComputeSHA1, 0, 8);
        serializedData9.writeBytes(bArrComputeSHA12, 8, 12);
        serializedData9.writeBytes(bArrComputeSHA13, 4, 12);
        messageKeyData.aesKey = serializedData9.toByteArray();
        serializedData9.cleanup();
        serializedData = new SerializedData();
        serializedData.writeBytes(bArrComputeSHA1, 8, 12);
        serializedData.writeBytes(bArrComputeSHA12, 0, 8);
        serializedData.writeBytes(bArrComputeSHA13, 16, 4);
        serializedData.writeBytes(bArrComputeSHA14, 0, 8);
        messageKeyData.aesIv = serializedData.toByteArray();
        serializedData.cleanup();
        return messageKeyData;
    }
}
