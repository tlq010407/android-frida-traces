package com.huawei.location.crowdsourcing.upload.http;

import com.huawei.location.crowdsourcing.upload.http.Vw;
import com.huawei.location.lite.common.log.LogConsole;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class LW extends Vw {
    private File E5;

    public LW(String str) {
        super(Vw.yn.PUT, str);
        this.E5 = new File("");
    }

    @Override // com.huawei.location.crowdsourcing.upload.http.Vw
    protected InputStream LW() {
        if (!this.E5.exists()) {
            LogConsole.e("UploadRequest", "file not exist");
            return null;
        }
        try {
            return new FileInputStream(this.E5);
        } catch (FileNotFoundException unused) {
            LogConsole.e("UploadRequest", "file open failed");
            return null;
        }
    }

    public LW Vw(String str) {
        this.E5 = new File(str);
        return this;
    }
}
