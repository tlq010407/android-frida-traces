package com.huawei.location.tiles.cache;

import com.huawei.location.FB;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.tiles.store.LW;
import com.huawei.location.tiles.store.dC;
import com.huawei.location.tiles.utils.d2;
import com.huawei.location.tiles.utils.zp;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class Vw {
    private static final String yn = ContextUtil.getContext().getCacheDir().getAbsolutePath() + File.separator + "tileFile";
    private int FB;
    private int LW;
    private dC Vw;

    public Vw(int i, int i2) {
        this.FB = i;
        this.LW = i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x017d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public byte[] yn(long j) throws IOException {
        String str;
        String str2;
        byte[] bArr;
        LogConsole.d("TileCacheManager", "tileId: " + j);
        if (this.Vw == null) {
            this.Vw = new dC(this.FB, this.LW);
        }
        LogConsole.i("TileCacheManager", "Get files from the TileCache");
        long jCurrentTimeMillis = System.currentTimeMillis();
        File[] fileArrListFiles = new File(yn).listFiles();
        if (fileArrListFiles == null) {
            str = null;
        } else {
            str = null;
            for (File file : fileArrListFiles) {
                if (file.isDirectory()) {
                    break;
                }
                String name = file.getName();
                if (name.equals(String.valueOf(j))) {
                    str = yn + File.separator + name;
                } else if (jCurrentTimeMillis - file.lastModified() > 2592000000L && !file.delete()) {
                    LogConsole.d("TileCacheManager", "file delete fail");
                }
            }
        }
        if (str == null) {
            LogConsole.i("TileCacheManager", "Get files from the StoreCache");
            LW lwFB = this.Vw.FB(String.valueOf(j));
            if (lwFB.yn() == 2) {
                LogConsole.i("TileCacheManager", "tile downloading.");
                return null;
            }
            if (lwFB.yn() == 3) {
                LogConsole.i("TileCacheManager", "tile not exists.");
                return new byte[0];
            }
            String strVw = lwFB.Vw();
            File[] fileArrListFiles2 = new File(yn).listFiles();
            if (fileArrListFiles2 != null && fileArrListFiles2.length >= 4) {
                Arrays.sort(fileArrListFiles2, new yn(this));
                for (int i = 0; i < fileArrListFiles2.length; i++) {
                    if (i >= 3 && !fileArrListFiles2[i].delete()) {
                        LogConsole.d("TileCacheManager", "file delete fail");
                    }
                }
            }
            String str3 = yn + File.separator;
            if (!com.huawei.location.tiles.utils.yn.yn(strVw, str3, String.valueOf(j))) {
                LogConsole.e("TileCacheManager", "Failed to unzip the file.");
            }
            str = str3 + j;
        }
        d2 d2VarYn = this.Vw.yn();
        double d = d2VarYn.yn;
        if (d != 0.0d) {
            double d2 = d2VarYn.Vw;
            if (d2 == 0.0d) {
                str2 = "lat lon is null";
            } else if (j != FB.yn(d2, d, 15)) {
                str2 = "no preloading is required.";
            } else {
                Long[] lArrYn = new zp(Long.valueOf(j), d2VarYn).yn();
                dC dCVar = this.Vw;
                dCVar.getClass();
                if (lArrYn.length <= 0) {
                    LogConsole.i("TileStoreManager", "tileIdList is empty");
                } else {
                    LogConsole.i("TileStoreManager", "start preDownload Tile Zip File");
                    for (Long l : lArrYn) {
                        dCVar.FB(String.valueOf(l.longValue()));
                    }
                }
            }
            LogConsole.d("TileCacheManager", str2);
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            try {
                bArr = new byte[fileInputStream.available()];
                if (fileInputStream.read(bArr) == 0) {
                    bArr = new byte[0];
                }
                fileInputStream.close();
            } finally {
            }
        } catch (IOException unused) {
            LogConsole.e("FileUtils", "getByteFrom IOException");
            bArr = new byte[0];
        }
        LogConsole.i("TileCacheManager", "get tile byte length is: " + bArr.length);
        return bArr;
    }
}
