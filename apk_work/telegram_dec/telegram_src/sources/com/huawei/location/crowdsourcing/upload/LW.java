package com.huawei.location.crowdsourcing.upload;

import com.huawei.location.crowdsourcing.upload.entity.FB;
import com.huawei.location.lite.common.log.LogConsole;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.telegram.messenger.LiteMode;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class LW {
    private void yn(FileInputStream fileInputStream, BufferedOutputStream bufferedOutputStream, long j, byte[] bArr) throws IOException {
        int i = fileInputStream.read(bArr, 0, (int) j);
        if (i != -1) {
            bufferedOutputStream.write(bArr, 0, i);
        }
    }

    private boolean yn(File file) {
        String[] list;
        if (file.isDirectory() && (list = file.list()) != null) {
            for (String str : list) {
                if (!yn(new File(file, str))) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00ca A[LOOP:2: B:39:0x00c4->B:41:0x00ca, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e8 A[LOOP:0: B:3:0x0006->B:44:0x00e8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00ed A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean yn(List list, String str, FileInputStream fileInputStream) throws IOException {
        String str2;
        com.huawei.location.crowdsourcing.upload.http.LW lwVw;
        BufferedOutputStream bufferedOutputStream;
        BufferedOutputStream bufferedOutputStream2;
        boolean z = false;
        int i = 0;
        while (i < list.size()) {
            FB.yn ynVar = (FB.yn) list.get(i);
            String str3 = str + String.format(Locale.ENGLISH, ".%02d", Integer.valueOf(i));
            byte[] bArr = new byte[LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM];
            try {
                BufferedOutputStream bufferedOutputStream3 = new BufferedOutputStream(new FileOutputStream(str3));
                try {
                    long j = ynVar.Vw;
                    long j2 = LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM;
                    if (j > j2) {
                        long j3 = j / j2;
                        long j4 = j % j2;
                        int i2 = 0;
                        while (i2 < j3) {
                            long j5 = j2;
                            bufferedOutputStream = bufferedOutputStream3;
                            try {
                                yn(fileInputStream, bufferedOutputStream3, j5, bArr);
                                i2++;
                                j2 = j5;
                                bufferedOutputStream3 = bufferedOutputStream;
                            } catch (Throwable th) {
                                th = th;
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        }
                        bufferedOutputStream2 = bufferedOutputStream3;
                        if (j4 > 0) {
                            yn(fileInputStream, bufferedOutputStream2, j4, bArr);
                        }
                    } else {
                        bufferedOutputStream2 = bufferedOutputStream3;
                        yn(fileInputStream, bufferedOutputStream2, j, bArr);
                    }
                    bufferedOutputStream2.flush();
                    bufferedOutputStream2.close();
                } catch (Throwable th2) {
                    th = th2;
                    bufferedOutputStream = bufferedOutputStream3;
                }
            } catch (FileNotFoundException unused) {
                str2 = "FileNotFoundException";
                LogConsole.e("UploadFile", str2);
                lwVw = new com.huawei.location.crowdsourcing.upload.http.LW(ynVar.yn).Vw(str3);
                while (r6.hasNext()) {
                }
                if (lwVw.yn(com.huawei.location.crowdsourcing.upload.http.yn.class) == null) {
                }
            } catch (IOException unused2) {
                str2 = "IOException";
                LogConsole.e("UploadFile", str2);
                lwVw = new com.huawei.location.crowdsourcing.upload.http.LW(ynVar.yn).Vw(str3);
                while (r6.hasNext()) {
                }
                if (lwVw.yn(com.huawei.location.crowdsourcing.upload.http.yn.class) == null) {
                }
            }
            lwVw = new com.huawei.location.crowdsourcing.upload.http.LW(ynVar.yn).Vw(str3);
            for (Map.Entry entry : ynVar.FB.entrySet()) {
                lwVw.yn((String) entry.getKey(), (String) entry.getValue());
            }
            if (lwVw.yn(com.huawei.location.crowdsourcing.upload.http.yn.class) == null) {
                return false;
            }
            i++;
            z = true;
        }
        return z;
    }

    public boolean yn(List list, String str) throws IOException {
        File file = new File(str);
        String name = file.getName();
        StringBuilder sb = new StringBuilder();
        sb.append(file.getParent());
        String str2 = File.separator;
        sb.append(str2);
        sb.append("split");
        File file2 = new File(sb.toString());
        yn(file2);
        boolean zYn = false;
        if (!file2.mkdir()) {
            LogConsole.e("UploadFile", "make split dir failed");
            return false;
        }
        String str3 = file2.getPath() + str2 + name;
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                zYn = yn(list, str3, fileInputStream);
                fileInputStream.close();
            } finally {
            }
        } catch (IOException unused) {
            LogConsole.i("UploadFile", "IOException:....fileinputstream.");
        }
        yn(file2);
        return zYn;
    }
}
