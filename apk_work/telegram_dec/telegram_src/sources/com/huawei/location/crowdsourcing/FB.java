package com.huawei.location.crowdsourcing;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.huawei.location.crowdsourcing.Config;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.GsonUtil;
import com.huawei.secure.android.common.encrypt.aes.AesGcm;
import com.huawei.secure.android.common.encrypt.utils.HexUtil;
import com.huawei.secure.android.common.intent.SafeIntent;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Locale;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
final class FB implements com.huawei.location.crowdsourcing.common.yn {
    private static int yn;
    private byte[] E5;
    private final LW FB;
    private int LW;
    private final Vw Vw;
    private C0016FB d2;
    private final File dC;

    /* renamed from: com.huawei.location.crowdsourcing.FB$FB, reason: collision with other inner class name */
    private class C0016FB extends BroadcastReceiver {
        private C0016FB() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            SafeIntent safeIntent = new SafeIntent(intent);
            String action = safeIntent.getAction();
            if (action == null) {
                LogConsole.e("Recorder", "get null action");
                return;
            }
            if (!action.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                LogConsole.e("Recorder", "receive unknown action,action:" + action);
                return;
            }
            LogConsole.i("Recorder", "onReceive action=" + action);
            NetworkInfo networkInfo = (NetworkInfo) safeIntent.getParcelableExtra("networkInfo");
            if (networkInfo == null) {
                LogConsole.e("Recorder", "no EXTRA_NETWORK_INFO");
            } else if (networkInfo.isConnected() && networkInfo.getType() == 1) {
                FB.this.Vw.obtainMessage(0).sendToTarget();
            }
        }
    }

    private class Vw extends Handler {
        Vw(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) throws IOException {
            if (message.what == 0) {
                FB.yn(FB.this);
                return;
            }
            LogConsole.e("Recorder", "unknown msg:" + message.what);
        }
    }

    FB(Looper looper, String str) {
        this.Vw = new Vw(looper);
        this.FB = new LW(str);
        this.dC = new File(str + File.separator + "crowdsourcing_record");
    }

    private void LW() throws IOException {
        if (!this.dC.exists()) {
            LogConsole.i("Recorder", "file not exists, not upload");
            return;
        }
        try {
            if (!this.FB.Vw(this.dC.getCanonicalPath())) {
                LogConsole.i("Recorder", "not upload file");
            } else if (!this.dC.delete()) {
                LogConsole.e("Recorder", "upload file success but delete file failed");
            } else {
                LogConsole.i("Recorder", "upload file success and delete file success");
                this.LW = 0;
            }
        } catch (IOException unused) {
            LogConsole.e("Recorder", "get path failed");
        }
    }

    static void yn(FB fb) throws IOException {
        fb.getClass();
        LogConsole.i("Recorder", "wifi connected, try upload");
        fb.LW();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    boolean FB() {
        String str;
        String str2;
        File file = this.dC;
        if (file.exists()) {
            if (file.isFile()) {
                if (!file.canWrite()) {
                    str2 = "file can not write";
                    LogConsole.e("FileUtil", str2);
                    str = "regularize file failed";
                }
                if (this.FB.Vw()) {
                }
            } else {
                if (!file.delete()) {
                    str2 = "file delete failed";
                    LogConsole.e("FileUtil", str2);
                    str = "regularize file failed";
                }
                if (this.FB.Vw()) {
                }
            }
        } else {
            if (this.FB.Vw()) {
                C0016FB c0016fb = new C0016FB();
                this.d2 = c0016fb;
                com.huawei.location.crowdsourcing.Vw.Vw().registerReceiver(c0016fb, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                LogConsole.i("Recorder", "wifi connect register success");
                return true;
            }
            str = "uploader init failed";
        }
        LogConsole.e("Recorder", str);
        return false;
    }

    public void Vw() {
        if (this.dC.delete()) {
            LogConsole.w("Recorder", "clear file success");
            this.LW = 0;
        }
    }

    @Override // com.huawei.location.crowdsourcing.common.yn
    public void yn() {
        LogConsole.w("Recorder", "Stop");
        C0016FB c0016fb = this.d2;
        if (c0016fb != null) {
            com.huawei.location.crowdsourcing.Vw.Vw().unregisterReceiver(c0016fb);
        }
        this.FB.getClass();
        LogConsole.w("Uploader", "Stop");
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0102  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void yn(Location location, List list, List list2) throws IOException {
        boolean z;
        String str;
        String str2;
        String str3;
        com.huawei.location.crowdsourcing.record.yn ynVar = new com.huawei.location.crowdsourcing.record.yn();
        ynVar.yn(location);
        if (list != null) {
            ynVar.yn(list, com.huawei.location.crowdsourcing.Vw.Vw());
            z = true;
        } else {
            z = false;
        }
        if (list2 != null) {
            ynVar.yn(list2);
            z = true;
        }
        if (!z) {
            LogConsole.e("Recorder", "record not filled cell or wifi");
        }
        String json = GsonUtil.getInstance().toJson(ynVar);
        StringBuilder sb = new StringBuilder();
        sb.append("generate record.w:");
        sb.append(list == null ? 0 : list.size());
        sb.append(" c:");
        sb.append(list2 == null ? 0 : list2.size());
        LogConsole.i("Recorder", sb.toString());
        if (yn == 0) {
            int length = json.getBytes(StandardCharsets.UTF_8).length;
            if (length == 0) {
                LogConsole.w("Recorder", "calcLocalNum first record bytes empty.");
                length = json.length();
            }
            if (length == 0) {
                str3 = "calcLocalNum first record empty.";
            } else {
                yn = length;
                if (this.dC.exists()) {
                    long length2 = this.dC.length();
                    if (length2 <= 0) {
                        str3 = "calcLocalNum file exist, but size is abnormal." + length2;
                    } else {
                        this.LW = ((int) (length2 / yn)) + 1;
                        Config config = Config.FB.yn;
                        if (length2 >= config.dC()) {
                            this.LW += config.h1();
                        }
                        str2 = String.format(Locale.ENGLISH, "calcLocalNum file size:%d, one record size:%d, num:%d", Long.valueOf(length2), Integer.valueOf(yn), Integer.valueOf(this.LW));
                    }
                } else {
                    str2 = "calcLocalNum no file";
                }
                LogConsole.i("Recorder", str2);
            }
            LogConsole.e("Recorder", str3);
        }
        if (this.E5 == null) {
            byte[] bArrHexStr2ByteArray = HexUtil.hexStr2ByteArray(Config.oc());
            this.E5 = bArrHexStr2ByteArray;
            if (bArrHexStr2ByteArray == null || bArrHexStr2ByteArray.length == 0) {
                str = "store get aes key error";
            } else {
                if (this.dC.length() >= ((long) Config.FB.yn.dC())) {
                    str = "local cache too big, can not write";
                } else {
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(this.dC, true);
                        try {
                            String strEncrypt = AesGcm.encrypt(json, this.E5);
                            Charset charset = StandardCharsets.UTF_8;
                            fileOutputStream.write(strEncrypt.getBytes(charset));
                            fileOutputStream.write(System.lineSeparator().getBytes(charset));
                            this.LW++;
                            fileOutputStream.close();
                        } finally {
                        }
                    } catch (FileNotFoundException unused) {
                        str = "local cache open failed";
                    } catch (IOException unused2) {
                        str = "local cache IO or close failed";
                    }
                }
            }
            LogConsole.e("Recorder", str);
        }
        if (this.LW >= Config.FB.yn.h1()) {
            LW();
        } else {
            LogConsole.d("Recorder", "not reach upload num");
        }
    }
}
