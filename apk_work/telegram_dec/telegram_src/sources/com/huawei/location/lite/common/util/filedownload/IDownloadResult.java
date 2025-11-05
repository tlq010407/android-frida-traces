package com.huawei.location.lite.common.util.filedownload;

import java.io.File;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface IDownloadResult {
    void onFail(int i, String str);

    void onSuccess(DownLoadFileBean downLoadFileBean, File file);
}
