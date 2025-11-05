package com.huawei.location.crowdsourcing.upload;

import android.util.Pair;
import com.google.gson.annotations.SerializedName;
import com.huawei.location.crowdsourcing.upload.entity.FB;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.GsonUtil;
import com.huawei.secure.android.common.util.HexUtil;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class Vw {

    /* renamed from: com.huawei.location.crowdsourcing.upload.Vw$Vw, reason: collision with other inner class name */
    private static class C0018Vw extends com.huawei.location.crowdsourcing.upload.http.yn {

        @SerializedName("patchPolicyList")
        com.huawei.location.crowdsourcing.upload.entity.yn E5;

        @SerializedName("reason")
        String yn = "";

        @SerializedName("resCode")
        int Vw = -1;

        @SerializedName("fileUniqueFlag")
        String FB = "";

        @SerializedName("currentTime")
        String LW = "";

        @SerializedName("uploadInfoList")
        List<yn> dC = new ArrayList();

        /* renamed from: com.huawei.location.crowdsourcing.upload.Vw$Vw$yn */
        static class yn {

            @SerializedName("uploadUrl")
            String yn = "";

            @SerializedName("method")
            String Vw = "";

            @SerializedName("objectId")
            String FB = "";

            @SerializedName("headers")
            Map<String, String> LW = new HashMap();

            yn() {
            }

            public String toString() {
                return "UploadInfo{method='" + this.Vw + '}';
            }
        }

        private C0018Vw() {
        }

        public String toString() {
            return "Resp{reason='" + this.yn + "', resCode='" + this.Vw + "', fileUniqueFlag='" + this.FB + "', currentTime='" + this.LW + "', uploadInfoList=" + this.dC + ", patchPolicyList=" + this.E5 + '}';
        }
    }

    private static class yn {

        @SerializedName("fileSize")
        final long FB;

        @SerializedName("fileSha256")
        final String Vw;

        @SerializedName("fileMd5")
        final String yn = "";

        yn(String str, long j) {
            this.Vw = str;
            this.FB = j;
        }
    }

    private static long yn(com.huawei.location.crowdsourcing.upload.entity.yn ynVar, long j) {
        long jVw = ynVar.Vw();
        double d = j;
        double dYn = ynVar.yn();
        Double.isNaN(d);
        Double.isNaN(dYn);
        long jCeil = (long) Math.ceil(d / dYn);
        return jCeil > ynVar.Vw() ? jCeil : jVw;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x005c A[Catch: all -> 0x0036, LOOP:0: B:4:0x000c->B:34:0x005c, LOOP_END, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x0036, blocks: (B:5:0x000d, B:7:0x0015, B:16:0x0028, B:20:0x0030, B:24:0x003a, B:34:0x005c, B:25:0x003e, B:28:0x0045), top: B:47:0x000d, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0058 A[EDGE_INSN: B:54:0x0058->B:32:0x0058 BREAK  A[LOOP:0: B:4:0x000c->B:34:0x005c], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static List yn(File file, long j) throws IOException {
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            while (true) {
                yn ynVar = null;
                try {
                    try {
                        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                        byte[] bArr = new byte[1024];
                        long j2 = j;
                        while (j2 > 0) {
                            try {
                                int i = fileInputStream.read(bArr, 0, j2 < ((long) 1024) ? (int) j2 : 1024);
                                if (i == -1) {
                                    break;
                                }
                                messageDigest.update(bArr, 0, i);
                                j2 -= i;
                            } catch (IOException unused) {
                                str = "read file error";
                                LogConsole.e("GetUploadInfo", str);
                                if (ynVar != null) {
                                }
                            }
                        }
                        long j3 = j - j2;
                        if (j3 > 0) {
                            ynVar = new yn(HexUtil.byteArray2HexStr(messageDigest.digest()), j3);
                        }
                    } catch (NoSuchAlgorithmException unused2) {
                        str = "NoSuchAlgorithmException SHA-256";
                    }
                    if (ynVar != null) {
                        break;
                    }
                    arrayList.add(ynVar);
                } finally {
                }
            }
            fileInputStream.close();
        } catch (IOException unused3) {
            LogConsole.e("GetUploadInfo", "IOException");
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0112 A[PHI: r0 r1 r8
      0x0112: PHI (r0v4 com.huawei.location.crowdsourcing.upload.entity.yn) = (r0v3 com.huawei.location.crowdsourcing.upload.entity.yn), (r0v7 com.huawei.location.crowdsourcing.upload.entity.yn) binds: [B:11:0x00bc, B:16:0x010c] A[DONT_GENERATE, DONT_INLINE]
      0x0112: PHI (r1v2 java.util.List) = (r1v1 java.util.List), (r1v8 java.util.List) binds: [B:11:0x00bc, B:16:0x010c] A[DONT_GENERATE, DONT_INLINE]
      0x0112: PHI (r8v16 com.huawei.location.crowdsourcing.upload.Vw$Vw) = (r8v15 com.huawei.location.crowdsourcing.upload.Vw$Vw), (r8v19 com.huawei.location.crowdsourcing.upload.Vw$Vw) binds: [B:11:0x00bc, B:16:0x010c] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Pair yn(com.huawei.location.crowdsourcing.upload.entity.Vw vw, String str, Map map, String str2, com.huawei.location.crowdsourcing.upload.entity.yn ynVar) throws IOException {
        com.huawei.location.crowdsourcing.upload.entity.FB fb;
        String str3;
        File file = new File(str);
        if (file.exists()) {
            long length = file.length();
            com.huawei.location.crowdsourcing.upload.http.FB fb2 = new com.huawei.location.crowdsourcing.upload.http.FB(vw.yn, "/v2/getUploadInfo");
            fb2.yn(map).FB("logType", "0").FB("fileName", file.getName()).FB("fileSize", String.valueOf(length)).FB("encryptKey", "0").FB("others", "others").dC(vw.Vw, str2).Vw("appID", str2);
            com.huawei.location.crowdsourcing.upload.entity.yn ynVar2 = ynVar;
            long jYn = yn(ynVar2, length);
            List listYn = yn(file, jYn);
            C0018Vw c0018Vw = (C0018Vw) fb2.LW("fileHashList", GsonUtil.getInstance().toJsonTree(listYn, listYn.getClass()).getAsJsonArray().toString()).FB("patchSize", String.valueOf(jYn)).FB("patchNum", String.valueOf(((ArrayList) listYn).size())).FB("patchVer", ynVar.FB()).yn(C0018Vw.class);
            if (c0018Vw == null) {
                str3 = "server return null";
            } else if (c0018Vw.Vw == 200009) {
                ynVar2 = c0018Vw.E5;
                if (ynVar2 == null) {
                    str3 = "200009 without patchPolicy";
                } else {
                    long jYn2 = yn(ynVar2, length);
                    listYn = yn(file, jYn2);
                    c0018Vw = (C0018Vw) fb2.LW("fileHashList", GsonUtil.getInstance().toJsonTree(listYn, listYn.getClass()).getAsJsonArray().toString()).FB("patchSize", String.valueOf(jYn2)).FB("patchNum", String.valueOf(((ArrayList) listYn).size())).FB("patchVer", ynVar2.FB()).yn(C0018Vw.class);
                    if (c0018Vw == null) {
                        str3 = "redo failed";
                    }
                }
            } else {
                if (com.huawei.location.FB.Vw(c0018Vw.Vw)) {
                    if (c0018Vw.dC == null || listYn.size() != c0018Vw.dC.size()) {
                        LogConsole.e("GetUploadInfo", "size diff");
                        fb = null;
                    } else {
                        String str4 = c0018Vw.FB;
                        if (str4 == null) {
                            str4 = "";
                        }
                        String str5 = c0018Vw.LW;
                        if (str5 == null) {
                            str5 = "";
                        }
                        fb = new com.huawei.location.crowdsourcing.upload.entity.FB(str4, str5);
                        for (int i = 0; i < listYn.size(); i++) {
                            C0018Vw.yn ynVar3 = c0018Vw.dC.get(i);
                            String str6 = ynVar3.yn;
                            if (str6 == null) {
                                str6 = "";
                            }
                            Map map2 = ynVar3.LW;
                            if (map2 == null) {
                                map2 = new HashMap();
                            }
                            fb.FB.add(new FB.yn(str6, ((yn) listYn.get(i)).FB, map2));
                        }
                    }
                    if (fb == null) {
                        return null;
                    }
                    return new Pair(ynVar2, fb);
                }
                str3 = "server return not success. error info:" + com.huawei.location.FB.yn(c0018Vw.Vw);
            }
        } else {
            str3 = "file not exist";
        }
        LogConsole.e("GetUploadInfo", str3);
        return null;
    }
}
