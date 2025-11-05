package com.huawei.location.crowdsourcing;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import com.google.gson.JsonSyntaxException;
import com.huawei.hms.framework.common.StringUtils;
import com.huawei.location.crowdsourcing.Config;
import com.huawei.location.lite.common.grs.LocationNlpGrsHelper;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.APKUtil;
import com.huawei.location.lite.common.util.GsonUtil;
import com.huawei.location.lite.common.util.ROMUtil;
import com.huawei.location.lite.common.util.SystemPropertiesUtil;
import com.huawei.secure.android.common.encrypt.aes.AesGcm;
import com.huawei.secure.android.common.encrypt.aes.CipherUtil;
import com.huawei.secure.android.common.encrypt.rsa.RSAEncrypt;
import com.huawei.secure.android.common.encrypt.utils.EncryptUtil;
import com.huawei.secure.android.common.encrypt.utils.HexUtil;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import java.util.UUID;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import javax.crypto.Cipher;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
final class LW implements com.huawei.location.crowdsourcing.common.yn {
    private com.huawei.location.crowdsourcing.upload.entity.yn FB = com.huawei.location.crowdsourcing.upload.entity.yn.yn;
    private final Map LW = new TreeMap();
    private com.huawei.location.crowdsourcing.upload.entity.Vw Vw;
    private final File dC;
    private com.huawei.location.crowdsourcing.upload.entity.Vw yn;

    LW(String str) {
        this.dC = new File(str + File.separator + "crowdsourcing_upload");
        FB();
    }

    private void FB() {
        String strG3 = Config.FB.yn.G3();
        if (!strG3.isEmpty()) {
            LogConsole.i("Uploader", "read patch policy");
            try {
                this.FB = (com.huawei.location.crowdsourcing.upload.entity.yn) GsonUtil.getInstance().fromJson(strG3, com.huawei.location.crowdsourcing.upload.entity.yn.class);
            } catch (JsonSyntaxException unused) {
                LogConsole.e("Uploader", "read patch policy failed");
            }
        }
        if (this.FB == null) {
            this.FB = com.huawei.location.crowdsourcing.upload.entity.yn.yn;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x019a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void LW() throws IOException {
        boolean z;
        String str;
        Pair pairYn;
        boolean zYn;
        String str2;
        String str3;
        String str4;
        com.huawei.location.crowdsourcing.upload.entity.Vw vw;
        File[] fileArrListFiles = this.dC.listFiles();
        if (fileArrListFiles == null) {
            LogConsole.e("Uploader", "upload folder not valid");
            return;
        }
        if (fileArrListFiles.length == 0) {
            LogConsole.e("Uploader", "files length is 0");
            return;
        }
        Object systemService = Vw.Vw().getSystemService("connectivity");
        if (systemService instanceof ConnectivityManager) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
                LogConsole.e("Uploader", "network not available");
                return;
            }
        } else {
            LogConsole.e("Uploader", "not get CONNECTIVITY_SERVICE, treat as connected");
        }
        int length = fileArrListFiles.length;
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= length) {
                z = true;
                break;
            }
            File file = fileArrListFiles[i];
            try {
                String canonicalPath = file.getCanonicalPath();
                String strVw = com.huawei.location.crowdsourcing.common.util.dC.Vw(Vw.Vw());
                com.huawei.location.crowdsourcing.upload.entity.FB fb = null;
                if (!TextUtils.equals((String) this.LW.get("countryCode"), strVw)) {
                    LogConsole.d("Uploader", "update mcc:" + strVw);
                    this.LW.put("countryCode", strVw);
                    this.yn = null;
                }
                if (this.yn == null) {
                    this.Vw = null;
                    LogConsole.i("Uploader", "get log server");
                    String grsHostAddress = LocationNlpGrsHelper.getGrsHostAddress("com.huawei.cloud.logservice");
                    if (TextUtils.isEmpty(grsHostAddress)) {
                        str4 = "not get log server domain";
                    } else {
                        Uri uri = Uri.parse(grsHostAddress);
                        String scheme = uri.getScheme();
                        if (scheme == null || !scheme.toLowerCase(Locale.ENGLISH).equals("https")) {
                            str4 = "not https";
                        } else {
                            String authority = uri.getAuthority();
                            if (TextUtils.isEmpty(authority)) {
                                str4 = "not get domain";
                            } else {
                                vw = new com.huawei.location.crowdsourcing.upload.entity.Vw(authority, Config.FB.yn.Ot());
                                this.yn = vw;
                                if (vw != null) {
                                    str3 = "not get log server";
                                    LogConsole.e("Uploader", str3);
                                    z2 = false;
                                    if (!z2) {
                                        str = "upload cloud failed";
                                        break;
                                    } else {
                                        if (!file.delete()) {
                                            str = "delete file failed";
                                            break;
                                        }
                                        i++;
                                    }
                                } else {
                                    LogConsole.i("Uploader", "get log server");
                                    if (this.Vw == null) {
                                        com.huawei.location.crowdsourcing.upload.entity.Vw vwYn = new com.huawei.location.crowdsourcing.upload.yn().yn(this.yn, this.LW, "1063");
                                        this.Vw = vwYn;
                                        if (vwYn == null) {
                                            str3 = "not get server domain";
                                            LogConsole.e("Uploader", str3);
                                            z2 = false;
                                            if (!z2) {
                                            }
                                        } else {
                                            LogConsole.i("Uploader", "got server domain");
                                        }
                                    }
                                    com.huawei.location.crowdsourcing.upload.entity.Vw vw2 = this.Vw;
                                    String strFB = this.FB.FB();
                                    pairYn = new com.huawei.location.crowdsourcing.upload.Vw().yn(vw2, canonicalPath, this.LW, "1063", this.FB);
                                    if (pairYn != null) {
                                        com.huawei.location.crowdsourcing.upload.entity.yn ynVar = (com.huawei.location.crowdsourcing.upload.entity.yn) pairYn.first;
                                        this.FB = ynVar;
                                        if (!TextUtils.equals(ynVar.FB(), strFB)) {
                                            LogConsole.i("Uploader", "save policy");
                                            Config.FB.yn.Vw(GsonUtil.getInstance().toJson(this.FB));
                                        }
                                        fb = (com.huawei.location.crowdsourcing.upload.entity.FB) pairYn.second;
                                    }
                                    if (fb != null) {
                                        str2 = "not get upload info";
                                    } else {
                                        LogConsole.i("Uploader", "got upload info");
                                        if (new com.huawei.location.crowdsourcing.upload.LW().yn(fb.FB, canonicalPath)) {
                                            LogConsole.i("Uploader", "upload file");
                                            com.huawei.location.crowdsourcing.upload.entity.Vw vw3 = this.Vw;
                                            String str5 = fb.yn;
                                            String str6 = fb.Vw;
                                            if (str5 == null || str6 == null) {
                                                LogConsole.e("Uploader", "param check failed");
                                                zYn = false;
                                            } else {
                                                zYn = new com.huawei.location.crowdsourcing.upload.FB().yn(this.LW, vw3, "1063", str5, str6);
                                            }
                                            if (zYn) {
                                                LogConsole.i("Uploader", "notify success finish");
                                                if (!z2) {
                                                }
                                            } else {
                                                str2 = "notify success failed";
                                            }
                                        } else {
                                            str2 = "upload file failed";
                                        }
                                    }
                                    LogConsole.e("Uploader", str2);
                                    z2 = false;
                                    if (!z2) {
                                    }
                                }
                            }
                        }
                    }
                    LogConsole.e("Uploader", str4);
                    vw = null;
                    this.yn = vw;
                    if (vw != null) {
                    }
                } else {
                    if (this.Vw == null) {
                    }
                    com.huawei.location.crowdsourcing.upload.entity.Vw vw22 = this.Vw;
                    String strFB2 = this.FB.FB();
                    pairYn = new com.huawei.location.crowdsourcing.upload.Vw().yn(vw22, canonicalPath, this.LW, "1063", this.FB);
                    if (pairYn != null) {
                    }
                    if (fb != null) {
                    }
                    LogConsole.e("Uploader", str2);
                    z2 = false;
                    if (!z2) {
                    }
                }
            } catch (IOException unused) {
                str = "get path failed";
            }
        }
        LogConsole.e("Uploader", str);
        z = false;
        if (!z) {
            Config.FB.yn.kN();
        } else {
            LogConsole.i("Uploader", "upload cloud success");
            Config.FB.yn.lS();
        }
    }

    private static String yn(String str) {
        return str.replaceAll("[^a-zA-Z0-9().]", "-");
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c8, code lost:
    
        r11 = "HexUtil.hexStr2ByteArray Exception";
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0123  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean yn(byte[] bArr, String str, String str2) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, IOException {
        String str3;
        String str4;
        byte[] bArr2;
        boolean z;
        boolean z2;
        boolean z3;
        File file = new File(str);
        File file2 = new File(str2);
        byte[] bArrGenerateSecureRandom = EncryptUtil.generateSecureRandom(16);
        byte[] bArrHexStr2ByteArray = HexUtil.hexStr2ByteArray(Config.oc());
        byte[] bArrEncrypt = RSAEncrypt.encrypt(HexUtil.hexStr2ByteArray(Config.oc()), EncryptUtil.getPublicKey(Config.FB.yn.dW()));
        boolean z4 = false;
        if (bArrEncrypt == null || bArrEncrypt.length != 384) {
            str3 = "encrypt key get error";
        } else {
            if (bArrHexStr2ByteArray != null && bArrHexStr2ByteArray.length != 0) {
                Cipher aesGcmEncryptCipher = CipherUtil.getAesGcmEncryptCipher(bArrHexStr2ByteArray, bArrGenerateSecureRandom);
                if (aesGcmEncryptCipher == null) {
                    LogConsole.e("Uploader", "get cipher failed");
                    return false;
                }
                LogConsole.i("Uploader", "get cipher success. file");
                try {
                    try {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), StandardCharsets.UTF_8));
                        try {
                            try {
                                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                                try {
                                    try {
                                        ZipOutputStream zipOutputStream = new ZipOutputStream(new CipherOutputStream(fileOutputStream, aesGcmEncryptCipher));
                                        try {
                                            fileOutputStream.write(bArrEncrypt);
                                            fileOutputStream.write(bArrGenerateSecureRandom);
                                            zipOutputStream.putNextEntry(new ZipEntry(file.getName()));
                                            zipOutputStream.write(bArr);
                                            zipOutputStream.write(StringUtils.getBytes(System.lineSeparator()));
                                            while (true) {
                                                String line = bufferedReader.readLine();
                                                z2 = true;
                                                if (line == null) {
                                                    z3 = true;
                                                    break;
                                                }
                                                byte[] bArrHexStr2ByteArray2 = HexUtil.hexStr2ByteArray(line);
                                                if (bArrHexStr2ByteArray2 != null && bArrHexStr2ByteArray2.length > 0) {
                                                    byte[] bArrDecrypt = AesGcm.decrypt(bArrHexStr2ByteArray2, bArrHexStr2ByteArray);
                                                    if (bArrDecrypt == null || bArrDecrypt.length == 0) {
                                                        break;
                                                    }
                                                    zipOutputStream.write(bArrDecrypt, 0, bArrDecrypt.length);
                                                    zipOutputStream.write(StringUtils.getBytes(System.lineSeparator()));
                                                } else {
                                                    break;
                                                }
                                                LogConsole.e("Uploader", str);
                                                z3 = false;
                                            }
                                            String str5 = "AesGcm.decrypt Exception";
                                            LogConsole.e("Uploader", str5);
                                            z3 = false;
                                            boolean z5 = !z3;
                                            zipOutputStream.finish();
                                            if (z5) {
                                                LogConsole.e("Uploader", "compress error, key or file has been illegal changed!");
                                                z2 = false;
                                            } else {
                                                try {
                                                    LogConsole.i("Uploader", "compress success");
                                                } catch (Throwable th) {
                                                    th = th;
                                                    try {
                                                        throw th;
                                                    } finally {
                                                    }
                                                }
                                            }
                                            zipOutputStream.close();
                                            fileOutputStream.close();
                                            bufferedReader.close();
                                            z4 = z5;
                                            z = z2;
                                        } catch (Throwable th2) {
                                            th = th2;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        try {
                                            throw th;
                                        } finally {
                                        }
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    throw th;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                try {
                                    throw th;
                                } catch (Throwable th6) {
                                    try {
                                        bufferedReader.close();
                                    } catch (Throwable th7) {
                                        th.addSuppressed(th7);
                                    }
                                    throw th6;
                                }
                            }
                        } catch (Throwable th8) {
                            th = th8;
                            throw th;
                        }
                    } catch (FileNotFoundException unused) {
                        str4 = "compress FileNotFoundException";
                        bArr2 = bArrGenerateSecureRandom;
                        LogConsole.e("Uploader", str4);
                        z = bArr2;
                        if (z4) {
                        }
                        return z;
                    } catch (IOException unused2) {
                        str4 = "compress IOException";
                        bArr2 = bArrGenerateSecureRandom;
                        LogConsole.e("Uploader", str4);
                        z = bArr2;
                        if (z4) {
                        }
                        return z;
                    }
                } catch (FileNotFoundException unused3) {
                    bArrGenerateSecureRandom = null;
                    str4 = "compress FileNotFoundException";
                    bArr2 = bArrGenerateSecureRandom;
                    LogConsole.e("Uploader", str4);
                    z = bArr2;
                    if (z4) {
                    }
                    return z;
                } catch (IOException unused4) {
                    bArrGenerateSecureRandom = null;
                    str4 = "compress IOException";
                    bArr2 = bArrGenerateSecureRandom;
                    LogConsole.e("Uploader", str4);
                    z = bArr2;
                    if (z4) {
                    }
                    return z;
                }
                if (z4) {
                    file.delete();
                }
                return z;
            }
            str3 = "store get aes key error";
        }
        LogConsole.e("Uploader", str3);
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    boolean Vw() {
        String str;
        String str2;
        File file = this.dC;
        if (file.exists()) {
            if (file.isDirectory()) {
                if (!file.canWrite()) {
                    str2 = "folder can not write";
                    LogConsole.e("FileUtil", str2);
                    str = "regularize folder failed";
                }
                if (this.dC.exists()) {
                }
                this.LW.put("shaSN", Config.FB.yn.Yx());
                this.LW.put("model", Build.PRODUCT);
                this.LW.put("romVersion", SystemPropertiesUtil.getVersion());
                this.LW.put("emuiVersion", SystemPropertiesUtil.getEMUIVersion());
                this.LW.put("osVersion", SystemPropertiesUtil.getAndroidVersion());
                return true;
            }
            if (!file.delete()) {
                str2 = "folder delete failed";
                LogConsole.e("FileUtil", str2);
                str = "regularize folder failed";
            }
            if (this.dC.exists()) {
            }
            this.LW.put("shaSN", Config.FB.yn.Yx());
            this.LW.put("model", Build.PRODUCT);
            this.LW.put("romVersion", SystemPropertiesUtil.getVersion());
            this.LW.put("emuiVersion", SystemPropertiesUtil.getEMUIVersion());
            this.LW.put("osVersion", SystemPropertiesUtil.getAndroidVersion());
            return true;
        }
        if (!this.dC.exists() || this.dC.mkdir()) {
            this.LW.put("shaSN", Config.FB.yn.Yx());
            this.LW.put("model", Build.PRODUCT);
            this.LW.put("romVersion", SystemPropertiesUtil.getVersion());
            this.LW.put("emuiVersion", SystemPropertiesUtil.getEMUIVersion());
            this.LW.put("osVersion", SystemPropertiesUtil.getAndroidVersion());
            return true;
        }
        str = "create folder failed";
        LogConsole.e("Uploader", str);
        return false;
    }

    boolean Vw(String str) throws IOException {
        String str2;
        String str3;
        LogConsole.i("Uploader", "packageName is " + Vw.Vw().getPackageName());
        if (!Config.FB.yn.Eu()) {
            LogConsole.d("Uploader", "not reach upload interval");
            return false;
        }
        LogConsole.i("Uploader", "start upload");
        if (!this.dC.isDirectory()) {
            LogConsole.e("Uploader", "not folder");
            return false;
        }
        File[] fileArrListFiles = this.dC.listFiles();
        if (fileArrListFiles == null) {
            LogConsole.e("Uploader", "upload folder not valid");
        } else {
            for (File file : fileArrListFiles) {
                if (file.isFile()) {
                    long jAbs = Math.abs(System.currentTimeMillis() - file.lastModified());
                    Config unused = Config.FB.yn;
                    if (jAbs >= 2592000000L) {
                        if (file.delete()) {
                            LogConsole.i("Uploader", "delete expired success");
                        } else {
                            str2 = "delete expired failed";
                        }
                    }
                } else {
                    str2 = file.delete() ? "delete invalid success" : "delete invalid failed";
                }
                LogConsole.e("Uploader", str2);
            }
        }
        LW();
        LogConsole.i("Uploader", "first upload end");
        String[] list = this.dC.list();
        if (list == null) {
            LogConsole.e("Uploader", "upload folder not valid");
        } else {
            if (list.length != 0) {
                str3 = "upload folder not empty, can not compress";
            } else {
                try {
                    String canonicalPath = this.dC.getCanonicalPath();
                    String string = UUID.randomUUID().toString();
                    StringBuilder sb = new StringBuilder();
                    sb.append(canonicalPath);
                    sb.append(File.separator);
                    String str4 = Build.PRODUCT;
                    sb.append(String.format(Locale.ENGLISH, "%s_%s_%s_%s.zip", yn(str4), yn(SystemPropertiesUtil.getVersion()), string, new SimpleDateFormat("yyyyMMddHHmmssSSS", Locale.US).format(new Date(System.currentTimeMillis()))));
                    String string2 = sb.toString();
                    String strValueOf = String.valueOf('\r');
                    String strValueOf2 = String.valueOf('\n');
                    String strYn = yn(str4);
                    String strYn2 = yn(SystemPropertiesUtil.getVersion());
                    String packageName = Vw.Vw().getPackageName();
                    String emuiVerName = ROMUtil.getEmuiVerName();
                    if (TextUtils.isEmpty(emuiVerName)) {
                        emuiVerName = Build.VERSION.RELEASE;
                    }
                    if (emuiVerName == null) {
                        emuiVerName = "";
                    }
                    if (yn(("{\"LogVersion\":\"002\",\"LogSubversion\":\"101\",\"ProductName\":\"" + strYn + "\",\"ProductVersion\":\"" + strYn2 + "\",\"hms\":\"true\",\"S1\":\"" + string + "\",\"VERSION\":\"" + APKUtil.getVersionName() + "\",\"PVer\":\"\",\"package_name\":\"" + packageName + "\",\"Os_version\":\"" + emuiVerName + "\",\"Product_info\":\"" + (Build.BRAND + " " + Build.MODEL) + "\"}" + strValueOf + strValueOf2).getBytes(StandardCharsets.UTF_8), str, string2)) {
                        LW();
                        return true;
                    }
                    LogConsole.e("Uploader", "compress file failed");
                    if (new File(string2).delete()) {
                        LogConsole.i("Uploader", "delete failed file success");
                    }
                } catch (IOException unused2) {
                    str3 = "get path failed";
                }
            }
            LogConsole.e("Uploader", str3);
        }
        return false;
    }

    @Override // com.huawei.location.crowdsourcing.common.yn
    public void yn() {
        LogConsole.w("Uploader", "Stop");
    }
}
