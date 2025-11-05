package com.huawei.location.tiles.store;

import android.text.TextUtils;
import com.google.gson.JsonSyntaxException;
import com.google.gson.reflect.TypeToken;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.ExecutorUtil;
import com.huawei.location.lite.common.util.GsonUtil;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class dC {
    private static double E5;
    private static final String FB;
    private static final String LW;
    private static final String Vw;
    private static double d2;
    private static String dC;
    public static final String yn;
    private com.huawei.location.tiles.store.Vw Ot;
    private com.huawei.location.tiles.store.yn oc;
    private int zp = 25;
    private int ut = 30;

    class FB extends TypeToken<com.huawei.location.tiles.store.Vw> {
        FB(dC dCVar) {
        }
    }

    class LW implements Runnable {
        final /* synthetic */ String yn;

        LW(String str) {
            this.yn = str;
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            Thread.currentThread().setName("SDM-TileStoreManager-" + hashCode());
            dC.yn(dC.this, this.yn);
        }
    }

    class Vw implements Runnable {
        final /* synthetic */ String FB;
        final /* synthetic */ String LW;
        final /* synthetic */ String Vw;
        final /* synthetic */ String yn;

        Vw(dC dCVar, String str, String str2, String str3, String str4) {
            this.yn = str;
            this.Vw = str2;
            this.FB = str3;
            this.LW = str4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Thread.currentThread().setName("SDM-TileStoreManager-" + hashCode());
            if (com.huawei.location.FB.yn(this.yn, this.Vw, this.FB, this.LW)) {
                return;
            }
            com.huawei.location.tiles.utils.FB.FB();
        }
    }

    class yn implements Runnable {
        yn() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Thread.currentThread().setName("SDM-TileStoreManager-" + hashCode());
            dC.yn(dC.this);
            dC.Vw(dC.this);
        }
    }

    static {
        String str;
        try {
            str = ContextUtil.getContext().getCacheDir().getCanonicalPath() + File.separator;
        } catch (IOException unused) {
            LogConsole.e("FileUtils", "Failed to obtain the store dir path.");
            str = null;
        }
        yn = str;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("CityAdmin");
        String str2 = File.separator;
        sb.append(str2);
        Vw = sb.toString();
        FB = str + "CityInfo" + str2;
        LW = str + "TileList" + str2;
        E5 = 0.0d;
        d2 = 0.0d;
    }

    public dC(int i, int i2) {
        Vw(i);
        yn(i2);
    }

    static void Vw(dC dCVar) {
        String str;
        String str2;
        synchronized (dCVar) {
            try {
                com.huawei.location.tiles.store.yn ynVar = dCVar.oc;
                if (ynVar != null) {
                    String strYn = ynVar.yn();
                    String strFB = dCVar.oc.FB();
                    String strVw = dCVar.oc.Vw();
                    String str3 = Vw;
                    String strYn2 = com.huawei.location.tiles.utils.yn.yn(str3, strYn);
                    if (TextUtils.isEmpty(strYn2) || TextUtils.isEmpty(strVw)) {
                        str = "TileStoreManager";
                        str2 = "The adminJson file data is abnormal.";
                    } else {
                        File file = new File(strYn2);
                        if (file.exists()) {
                            String strYn3 = com.huawei.location.tiles.utils.LW.yn(strYn2, strFB);
                            if (!TextUtils.isEmpty(strYn3) && strYn3.equals(strVw)) {
                                str = "TileStoreManager";
                                str2 = "The file is the latest version.";
                            } else if (file.getParentFile().delete()) {
                                LogConsole.e("TileStoreManager", "Failed to delete the file.");
                            }
                        }
                        if (com.huawei.location.FB.yn(strYn2, strYn, strFB, strVw) && !com.huawei.location.tiles.utils.yn.yn(strYn2, str3, file.getName().replace(".zip", ""))) {
                            LogConsole.e("TileStoreManager", "Failed to unzip the adminJson file.");
                        }
                    }
                    LogConsole.d(str, str2);
                }
            } finally {
            }
        }
    }

    private synchronized void Vw(String str) {
        LogConsole.i("TileStoreManager", "get cityInfo form cloud");
        ExecutorUtil.getInstance().execute(new LW(str));
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean Vw() throws IOException {
        boolean zYn;
        StringBuilder sb;
        String str;
        com.huawei.location.tiles.store.yn ynVar;
        String str2;
        if (this.oc == null) {
            String str3 = yn + "CityAdminJson";
            File file = new File(str3);
            if (file.exists()) {
                if (System.currentTimeMillis() - file.lastModified() > 604800000) {
                    if (file.delete()) {
                        str2 = "Failed to delete old adminJson file.";
                        LogConsole.e("TileStoreManager", str2);
                    }
                    ynVar = null;
                    this.oc = ynVar;
                    zYn = ynVar == null;
                    sb = new StringBuilder();
                    str = "hasAdminJson is: ";
                } else {
                    String strVw = com.huawei.location.tiles.utils.yn.Vw(str3);
                    if (TextUtils.isEmpty(strVw)) {
                        ynVar = null;
                    } else {
                        try {
                            ynVar = (com.huawei.location.tiles.store.yn) GsonUtil.getInstance().fromJson(strVw, com.huawei.location.tiles.store.yn.class);
                        } catch (JsonSyntaxException unused) {
                            str2 = "json syntax error";
                        }
                    }
                    this.oc = ynVar;
                    if (ynVar == null) {
                    }
                    sb = new StringBuilder();
                    str = "hasAdminJson is: ";
                }
            }
        } else {
            zYn = com.huawei.location.tiles.utils.yn.yn(yn + "CityAdminJson", 604800000L);
            sb = new StringBuilder();
            str = "adminJson is exist, checking local files are expired: ";
        }
        sb.append(str);
        sb.append(zYn);
        LogConsole.i("TileStoreManager", sb.toString());
        if (!zYn) {
            LogConsole.i("TileStoreManager", "set adminJson is null");
            this.oc = null;
            ExecutorUtil.getInstance().execute(new yn());
        }
        return zYn;
    }

    private com.huawei.location.tiles.store.FB yn(String str, List list) {
        if (!TextUtils.isEmpty(str) && list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                com.huawei.location.tiles.store.FB fb = (com.huawei.location.tiles.store.FB) it.next();
                if (fb != null) {
                    String strYn = fb.yn();
                    if (TextUtils.isEmpty(strYn)) {
                        continue;
                    } else {
                        if (strYn.endsWith(str + ".zip")) {
                            return fb;
                        }
                    }
                }
            }
        }
        return null;
    }

    private com.huawei.location.tiles.store.Vw yn(String str) {
        String str2;
        File file = new File(FB + str);
        if (!file.exists() || System.currentTimeMillis() - file.lastModified() >= 604800000) {
            return null;
        }
        try {
            return (com.huawei.location.tiles.store.Vw) GsonUtil.getInstance().fromJson(com.huawei.location.tiles.utils.yn.Vw(file.getCanonicalPath()), new FB(this).getType());
        } catch (JsonSyntaxException unused) {
            str2 = "json syntax error";
            LogConsole.e("TileStoreManager", str2);
            return null;
        } catch (IOException unused2) {
            str2 = "Invalid file path";
            LogConsole.e("TileStoreManager", str2);
            return null;
        }
    }

    static void yn(dC dCVar) {
        String str;
        String str2;
        synchronized (dCVar) {
            if (dCVar.oc == null) {
                String strVw = com.huawei.location.FB.Vw("CITYADMIN-WKT");
                if (TextUtils.isEmpty(strVw)) {
                    LogConsole.d("TileStoreManager", "get adminJson from cloud is fail");
                } else {
                    try {
                        List list = (List) GsonUtil.getInstance().fromJson(strVw, new d2(dCVar).getType());
                        if (list == null || list.size() == 0) {
                            str = "TileStoreManager";
                            str2 = "adminJsonList is null";
                        } else {
                            com.huawei.location.tiles.store.yn ynVar = (com.huawei.location.tiles.store.yn) list.get(0);
                            if (ynVar == null) {
                                str = "TileStoreManager";
                                str2 = "tempAdminJson is null";
                            } else {
                                dCVar.oc = ynVar;
                                com.huawei.location.tiles.utils.yn.yn(GsonUtil.getInstance().toJson(dCVar.oc), new File(yn + "CityAdminJson"));
                            }
                        }
                        LogConsole.d(str, str2);
                    } catch (JsonSyntaxException unused) {
                        LogConsole.e("TileStoreManager", "json syntax error");
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0069 A[Catch: JsonSyntaxException -> 0x006d, TRY_LEAVE, TryCatch #2 {JsonSyntaxException -> 0x006d, blocks: (B:16:0x0054, B:18:0x0069), top: B:33:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static void yn(dC dCVar, String str) throws IOException {
        List list;
        List list2;
        dCVar.getClass();
        ArrayList arrayList = new ArrayList();
        int i = 1;
        while (true) {
            try {
                list = (List) GsonUtil.getInstance().fromJson(com.huawei.location.FB.Vw(str + "_" + i), new zp(dCVar).getType());
                if (list != null) {
                    try {
                        arrayList.addAll(list);
                    } catch (JsonSyntaxException unused) {
                        LogConsole.e("TileStoreManager", "json syntax error");
                        if (list == null) {
                            break;
                        } else {
                            break;
                        }
                        list2 = (List) GsonUtil.getInstance().fromJson(com.huawei.location.FB.Vw(str), new ut(dCVar).getType());
                        if (list2 != null) {
                        }
                        if (arrayList.size() <= 0) {
                        }
                    }
                }
            } catch (JsonSyntaxException unused2) {
                list = null;
            }
            if (list == null || list.size() < 59) {
                break;
                break;
            }
            i++;
        }
        try {
            list2 = (List) GsonUtil.getInstance().fromJson(com.huawei.location.FB.Vw(str), new ut(dCVar).getType());
            if (list2 != null) {
                arrayList.addAll(list2);
            }
        } catch (JsonSyntaxException unused3) {
            LogConsole.e("TileStoreManager", "json syntax error");
        }
        if (arrayList.size() <= 0) {
            dCVar.Ot = new com.huawei.location.tiles.store.Vw(str, arrayList);
            String json = GsonUtil.getInstance().toJson(dCVar.Ot);
            File file = new File(FB + str);
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            com.huawei.location.tiles.utils.yn.yn(json, file);
        }
    }

    private void yn(String str, String str2, String str3, String str4) {
        if (com.huawei.location.tiles.utils.FB.Vw() >= this.zp) {
            LogConsole.i("TileStoreManager", "The maximum number of downloads per day is exceeded.");
            return;
        }
        com.huawei.location.tiles.utils.FB.yn();
        com.huawei.location.tiles.utils.yn.yn(LW, this.ut);
        ExecutorUtil.getInstance().execute(new Vw(this, str, str2, str3, str4));
    }

    public com.huawei.location.tiles.store.LW FB(String str) throws IOException {
        if (TextUtils.isEmpty(yn)) {
            LogConsole.i("TileStoreManager", "store dir is empty");
            return new com.huawei.location.tiles.store.LW(3, null);
        }
        if (TextUtils.isEmpty(dC)) {
            LogConsole.i("TileStoreManager", "Failed to get tile,currCityCode is empty");
            return new com.huawei.location.tiles.store.LW(3, null);
        }
        if (this.Ot == null) {
            this.Ot = yn(dC);
        }
        com.huawei.location.tiles.store.Vw vw = this.Ot;
        if (vw == null) {
            LogConsole.i("TileStoreManager", "Failed to get tile,cityInfo cache is null");
            Vw(dC);
            return new com.huawei.location.tiles.store.LW(2, null);
        }
        com.huawei.location.tiles.store.FB fbYn = yn(str, vw.Vw());
        if (fbYn == null) {
            LogConsole.d("TileStoreManager", "current location does not have tile info");
            return new com.huawei.location.tiles.store.LW(3, null);
        }
        String strYn = fbYn.yn();
        String strYn2 = com.huawei.location.tiles.utils.yn.yn(LW, strYn);
        String strFB = fbYn.FB();
        String strVw = fbYn.Vw();
        if (TextUtils.isEmpty(strYn2)) {
            LogConsole.d("TileStoreManager", "get filePath from downloadUrl error");
            return new com.huawei.location.tiles.store.LW(3, null);
        }
        File file = new File(strYn2);
        if (!file.exists()) {
            LogConsole.i("TileStoreManager", "tile zip file does not exist");
            yn(strYn2, strYn, strFB, strVw);
            return new com.huawei.location.tiles.store.LW(2, null);
        }
        String strYn3 = com.huawei.location.tiles.utils.LW.yn(strYn2, strFB);
        if (!TextUtils.isEmpty(strYn3) && strYn3.equals(strVw)) {
            LogConsole.i("TileStoreManager", "get tilePath success from the tileStore.");
            return new com.huawei.location.tiles.store.LW(1, strYn2);
        }
        LogConsole.i("TileStoreManager", "The signature information is incorrect.");
        if (file.delete()) {
            LogConsole.e("TileStoreManager", "Failed to delete the file.");
        }
        yn(strYn2, strYn, strFB, strVw);
        return new com.huawei.location.tiles.store.LW(2, null);
    }

    public void Vw(int i) {
        if (i > 0) {
            this.zp = i;
        } else {
            LogConsole.i("TileStoreManager", "tileDailyMaxNum is Invalid.");
        }
    }

    public com.huawei.location.tiles.utils.d2 yn() {
        return new com.huawei.location.tiles.utils.d2(d2, E5);
    }

    public void yn(int i) {
        if (i > 0) {
            this.ut = i;
        } else {
            LogConsole.i("TileStoreManager", "storeFileMaxNum is Invalid.");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0131  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean yn(double d, double d3) throws IOException {
        com.huawei.location.tiles.store.yn ynVar;
        E5 = d;
        d2 = d3;
        boolean z = false;
        if (TextUtils.isEmpty(yn)) {
            LogConsole.i("TileStoreManager", "store dir is empty");
            return false;
        }
        if (Vw() && (ynVar = this.oc) != null) {
            String strYn = ynVar.yn();
            String str = Vw;
            String strYn2 = com.huawei.location.tiles.utils.yn.yn(str, strYn);
            String strFB = this.oc.FB();
            String strVw = this.oc.Vw();
            if (TextUtils.isEmpty(strYn2)) {
                LogConsole.i("TileStoreManager", "The local compressed file path does not exist.");
            } else {
                File file = new File(strYn2);
                String strYn3 = com.huawei.location.tiles.utils.LW.yn(strYn2, strFB);
                if (file.exists() && !TextUtils.isEmpty(strYn3) && strYn3.equals(strVw)) {
                    String strReplace = file.getName().replace(".zip", "");
                    if (new File(str + strReplace).exists() || com.huawei.location.tiles.utils.yn.yn(strYn2, str, strReplace)) {
                        LogConsole.i("TileStoreManager", "The local cityAdmin file exists.");
                        com.huawei.location.tiles.store.yn ynVar2 = this.oc;
                        if (ynVar2 == null) {
                            LogConsole.i("TileStoreManager", "adminJson is null");
                            return false;
                        }
                        String strYn4 = com.huawei.location.tiles.utils.yn.yn(str, ynVar2.yn());
                        if (TextUtils.isEmpty(strYn4)) {
                            LogConsole.i("TileStoreManager", "Invalid zip file path.");
                            return false;
                        }
                        String strYn5 = com.huawei.location.tiles.utils.yn.yn(str + new File(strYn4).getName().replace(".zip", ""), d, d3);
                        if (TextUtils.isEmpty(strYn5)) {
                            LogConsole.i("TileStoreManager", "The cityCode is not found.");
                            return false;
                        }
                        if (!Pattern.compile("[a-zA-Z0-9\\.\\-\\_]+").matcher(strYn5).matches()) {
                            LogConsole.i("TileStoreManager", "The cityCode contains invalid characters.");
                            return false;
                        }
                        dC = strYn5;
                        com.huawei.location.tiles.store.Vw vw = this.Ot;
                        if (vw == null || !strYn5.equals(vw.yn())) {
                            com.huawei.location.tiles.store.Vw vwYn = yn(strYn5);
                            this.Ot = vwYn;
                            if (vwYn == null) {
                                Vw(strYn5);
                            } else if (yn(String.valueOf(com.huawei.location.FB.yn(d, d3, 15)), this.Ot.Vw()) != null) {
                                z = true;
                            }
                        } else {
                            if (!com.huawei.location.tiles.utils.yn.yn(FB + strYn5, 604800000L)) {
                            }
                        }
                        LogConsole.i("TileStoreManager", "check city Support is：" + z);
                        return z;
                    }
                    LogConsole.e("TileStoreManager", "Failed to unzip the file.");
                } else {
                    ExecutorUtil.getInstance().execute(new E5(this));
                }
            }
        }
        LogConsole.d("TileStoreManager", "do not have adminJson or adminFile");
        return false;
    }
}
