package com.huawei.wisesecurity.ucs.credential.nativelib;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import com.huawei.wisesecurity.ucs.common.log.LogUcs;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class UcsLib {
    public static volatile boolean FLAG = false;
    public static final String LIB_NAME = "ucs-credential";
    public static final long NATIVE_VERIFY_SIGNATURE_FAIL = 60000;
    public static final String TAG = "UcsLib";
    public static volatile boolean updateRootKeyFlag = false;
    public static final Charset UTF_8 = StandardCharsets.UTF_8;
    public static final Object CA_LOCK = new Object();

    public static class OutputParam {
        public byte[] bytes = null;
        public byte[] secondBytes = null;
    }

    public static void checkNativeLibrary() throws UcsException {
        if (FLAG) {
            return;
        }
        String strLoadLibrary = loadLibrary();
        if (FLAG) {
            return;
        }
        throw new UcsException(1004L, "UCS load library error : " + strLoadLibrary);
    }

    public static boolean checkPkgNameCertFP(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        Charset charset = StandardCharsets.UTF_8;
        return nativeCheckPkgNameCertFP(context, str.getBytes(charset), str2.getBytes(charset)) == 0;
    }

    public static byte[] decryptKek(byte[] bArr, int i) throws UcsException {
        OutputParam outputParamNewOutputParam = newOutputParam();
        long jNativeDecryptKek = nativeDecryptKek(bArr, i, outputParamNewOutputParam);
        if (jNativeDecryptKek == 0) {
            return outputParamNewOutputParam.bytes;
        }
        String str = "Fail to decryptKek， result : " + jNativeDecryptKek;
        LogUcs.e(TAG, str, new Object[0]);
        throw new UcsException(jNativeDecryptKek, str);
    }

    public static byte[] genReqJws(Context context, String str, String str2, int i, int i2) throws UcsException {
        if (str == null) {
            str = "";
        }
        if (context == null) {
            throw new UcsException(1001L, "context cannot empty..");
        }
        if (TextUtils.isEmpty(str2)) {
            throw new UcsException(1001L, "packageName cannot empty..");
        }
        String strValueOf = String.valueOf(i2);
        OutputParam outputParamNewOutputParam = newOutputParam();
        Charset charset = StandardCharsets.UTF_8;
        long jNativeGenReqJws = nativeGenReqJws(context, str.getBytes(charset), str2.getBytes(charset), i, strValueOf.getBytes(charset), outputParamNewOutputParam);
        if (jNativeGenReqJws == 0) {
            return outputParamNewOutputParam.bytes;
        }
        String str3 = "Fail to genReqJws， result : " + jNativeGenReqJws;
        LogUcs.e(TAG, str3, new Object[0]);
        throw new UcsException(jNativeGenReqJws, str3);
    }

    public static List<String> getPkgNameCertFP(Context context) throws UcsException {
        ArrayList arrayList = new ArrayList();
        OutputParam outputParamNewOutputParam = newOutputParam();
        long jNativeGetPkgNameCertFP = nativeGetPkgNameCertFP(context, outputParamNewOutputParam);
        if (jNativeGetPkgNameCertFP == 0) {
            byte[] bArr = outputParamNewOutputParam.bytes;
            Charset charset = StandardCharsets.UTF_8;
            arrayList.add(new String(bArr, charset));
            arrayList.add(new String(outputParamNewOutputParam.secondBytes, charset));
            return arrayList;
        }
        String str = "Fail to getPkgNameCertFP， result : " + jNativeGetPkgNameCertFP;
        LogUcs.e(TAG, str, new Object[0]);
        throw new UcsException(jNativeGetPkgNameCertFP, str);
    }

    public static native long getSoVersion();

    public static boolean isRootKeyUpdated() {
        return updateRootKeyFlag;
    }

    public static synchronized String loadLibrary() {
        String str;
        str = "";
        if (!FLAG) {
            try {
                System.loadLibrary(LIB_NAME);
                LogUcs.i(TAG, "load lib {0} success", LIB_NAME);
                FLAG = true;
            } catch (Throwable th) {
                str = "load lib ucs-credential error : " + th.getMessage();
                LogUcs.e(TAG, str, new Object[0]);
            }
        }
        return str;
    }

    public static native long nativeCheckPkgNameCertFP(Context context, byte[] bArr, byte[] bArr2);

    public static native long nativeDecryptKek(byte[] bArr, int i, OutputParam outputParam);

    public static native long nativeGenReqJws(Context context, byte[] bArr, byte[] bArr2, long j, byte[] bArr3, OutputParam outputParam);

    public static native long nativeGetPkgNameCertFP(Context context, OutputParam outputParam);

    public static OutputParam newOutputParam() {
        return new OutputParam();
    }

    public static long ucsGetSoVersion() {
        return getSoVersion();
    }

    public static void ucsUpdateRootKey(byte[] bArr, int i) throws UcsException {
        synchronized (CA_LOCK) {
            try {
                long jUpdateRootKey = updateRootKey(bArr, i);
                updateRootKeyFlag = jUpdateRootKey == 0;
                if (jUpdateRootKey != 0) {
                    String str = "Fail to updateRootKey， result : " + jUpdateRootKey;
                    LogUcs.e(TAG, str, new Object[0]);
                    throw new UcsException(1009L, str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static native long updateRootKey(byte[] bArr, int i);
}
