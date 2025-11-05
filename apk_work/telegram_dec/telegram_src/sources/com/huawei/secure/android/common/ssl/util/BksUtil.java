package com.huawei.secure.android.common.ssl.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.huawei.hms.common.PackageConstants;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class BksUtil {
    private static final Uri f = Uri.parse("content://com.huawei.hwid");
    private static final String[] p = {"B92825C2BD5D6D6D1E7F39EECD17843B7D9016F611136B75441BC6F4D3F00F05", "E49D5C2C0E11B3B1B96CA56C6DE2A14EC7DAB5CCC3B5F300D03E5B4DBA44F539"};

    private static int a(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        File file = new File(str);
        if (file.exists()) {
            g.e("BksUtil", "The directory  has already exists");
            return 1;
        }
        if (file.mkdirs()) {
            g.a("BksUtil", "create directory  success");
            return 0;
        }
        g.b("BksUtil", "create directory  failed");
        return -1;
    }

    private static String a(Context context) {
        StringBuilder sb;
        Context applicationContext;
        if (Build.VERSION.SDK_INT >= 24) {
            sb = new StringBuilder();
            applicationContext = context.createDeviceProtectedStorageContext();
        } else {
            sb = new StringBuilder();
            applicationContext = context.getApplicationContext();
        }
        sb.append(applicationContext.getFilesDir());
        sb.append(File.separator);
        sb.append("aegis");
        return sb.toString();
    }

    private static String a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                sb.append('0');
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    private static void a(InputStream inputStream, Context context) throws Throwable {
        FileOutputStream fileOutputStream;
        if (inputStream == null || context == null) {
            return;
        }
        String strA = a(context);
        if (!new File(strA).exists()) {
            a(strA);
        }
        File file = new File(strA, "hmsrootcas.bks");
        if (file.exists()) {
            file.delete();
        }
        ?? r7 = 0;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                g.c("BksUtil", "write output stream ");
                fileOutputStream = new FileOutputStream(file);
                r7 = 2048;
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException unused) {
        }
        try {
            byte[] bArr = new byte[2048];
            while (true) {
                int i = inputStream.read(bArr, 0, 2048);
                if (i == -1) {
                    break;
                } else {
                    fileOutputStream.write(bArr, 0, i);
                }
            }
            f.a((OutputStream) fileOutputStream);
        } catch (IOException unused2) {
            fileOutputStream2 = fileOutputStream;
            g.b("BksUtil", " IOException");
            f.a((OutputStream) fileOutputStream2);
            r7 = fileOutputStream2;
        } catch (Throwable th2) {
            th = th2;
            r7 = fileOutputStream;
            f.a((OutputStream) r7);
            throw th;
        }
    }

    private static byte[] a(Context context, String str) {
        StringBuilder sb;
        String str2;
        PackageInfo packageInfo;
        if (context == null || TextUtils.isEmpty(str)) {
            Log.e("BksUtil", "packageName is null or context is null");
            return new byte[0];
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (packageInfo = packageManager.getPackageInfo(str, 64)) != null) {
                return packageInfo.signatures[0].toByteArray();
            }
        } catch (PackageManager.NameNotFoundException e) {
            e = e;
            sb = new StringBuilder();
            str2 = "PackageManager.NameNotFoundException : ";
            sb.append(str2);
            sb.append(e.getMessage());
            Log.e("BksUtil", sb.toString());
            return new byte[0];
        } catch (Exception e2) {
            e = e2;
            sb = new StringBuilder();
            str2 = "get pm exception : ";
            sb.append(str2);
            sb.append(e.getMessage());
            Log.e("BksUtil", sb.toString());
            return new byte[0];
        }
        return new byte[0];
    }

    private static String b(Context context) {
        return a(context) + File.separator + "hmsrootcas.bks";
    }

    private static String b(byte[] bArr) throws NoSuchAlgorithmException {
        if (bArr == null) {
            return "";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(bArr);
            return a(messageDigest.digest());
        } catch (NoSuchAlgorithmException unused) {
            g.b("BksUtil", "inputstraem exception");
            return "";
        }
    }

    private static boolean b(Context context, String str) {
        return "E49D5C2C0E11B3B1B96CA56C6DE2A14EC7DAB5CCC3B5F300D03E5B4DBA44F539".equalsIgnoreCase(c(a(context, str)));
    }

    private static boolean b(String str) throws NumberFormatException {
        int i;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        g.c("BksUtil", "hms version code is : " + str);
        String[] strArrSplit = str.split("\\.");
        String[] strArrSplit2 = "4.0.2.300".split("\\.");
        int length = strArrSplit.length;
        int length2 = strArrSplit2.length;
        int iMax = Math.max(length, length2);
        int i2 = 0;
        while (i2 < iMax) {
            if (i2 < length) {
                try {
                    i = Integer.parseInt(strArrSplit[i2]);
                } catch (Exception e) {
                    g.b("BksUtil", " exception : " + e.getMessage());
                    return i2 >= length2;
                }
            } else {
                i = 0;
            }
            int i3 = i2 < length2 ? Integer.parseInt(strArrSplit2[i2]) : 0;
            if (i < i3) {
                return false;
            }
            if (i > i3) {
                return true;
            }
            i2++;
        }
        return true;
    }

    private static String c(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        try {
            return a(MessageDigest.getInstance("SHA-256").digest(bArr));
        } catch (NoSuchAlgorithmException e) {
            Log.e("BksUtil", "NoSuchAlgorithmException" + e.getMessage());
            return "";
        }
    }

    private static boolean c(Context context) {
        return new File(a(context) + File.separator + "hmsrootcas.bks").exists();
    }

    private static boolean c(Context context, String str) {
        byte[] bArrA = a(context, str);
        for (String str2 : p) {
            if (str2.equalsIgnoreCase(c(bArrA))) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.io.ByteArrayOutputStream, java.io.OutputStream] */
    public static synchronized InputStream getBksFromTss(Context context) {
        InputStream inputStreamOpenInputStream;
        ByteArrayInputStream byteArrayInputStream;
        try {
            g.c("BksUtil", "get bks from tss begin");
            if (context != null) {
                c.a(context);
            }
            Context contextA = c.a();
            ByteArrayInputStream byteArrayInputStream2 = null;
            if (contextA == null) {
                g.b("BksUtil", "context is null");
                return null;
            }
            if (!b(h.a("com.huawei.hwid")) && !b(h.a(PackageConstants.SERVICES_PACKAGE_ALL_SCENE))) {
                g.b("BksUtil", "hms version code is too low : " + h.a("com.huawei.hwid"));
                return null;
            }
            boolean zC = c(contextA, "com.huawei.hwid");
            ?? byteArrayOutputStream = zC;
            if (!zC) {
                boolean zB = b(contextA, PackageConstants.SERVICES_PACKAGE_ALL_SCENE);
                byteArrayOutputStream = zB;
                if (!zB) {
                    g.b("BksUtil", "hms sign error");
                    return null;
                }
            }
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    inputStreamOpenInputStream = contextA.getContentResolver().openInputStream(Uri.withAppendedPath(f, "files/hmsrootcas.bks"));
                    try {
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int i = inputStreamOpenInputStream.read(bArr);
                            if (i <= -1) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr, 0, i);
                        }
                        byteArrayOutputStream.flush();
                        byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                    } catch (Exception unused) {
                    }
                } catch (Exception unused2) {
                    inputStreamOpenInputStream = null;
                } catch (Throwable th) {
                    th = th;
                    inputStreamOpenInputStream = null;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                String strA = i.a("bks_hash", "", contextA);
                String strB = b(byteArrayOutputStream.toByteArray());
                if (c(contextA) && strA.equals(strB)) {
                    g.c("BksUtil", "bks not update");
                } else {
                    g.c("BksUtil", "update bks and sp");
                    a(byteArrayInputStream, contextA);
                    i.b("bks_hash", strB, contextA);
                }
                f.a(inputStreamOpenInputStream);
                f.a((OutputStream) byteArrayOutputStream);
                f.a((InputStream) byteArrayInputStream);
            } catch (Exception unused3) {
                byteArrayInputStream2 = byteArrayInputStream;
                g.b("BksUtil", "Get bks from HMS_VERSION_CODE exception : No content provider");
                f.a(inputStreamOpenInputStream);
                f.a((OutputStream) byteArrayOutputStream);
                f.a((InputStream) byteArrayInputStream2);
                return getFilesBksIS(contextA);
            } catch (Throwable th3) {
                th = th3;
                byteArrayInputStream2 = byteArrayInputStream;
                f.a(inputStreamOpenInputStream);
                f.a((OutputStream) byteArrayOutputStream);
                f.a((InputStream) byteArrayInputStream2);
                throw th;
            }
            return getFilesBksIS(contextA);
        } catch (Throwable th4) {
            throw th4;
        }
    }

    public static InputStream getFilesBksIS(Context context) {
        if (!c(context)) {
            return null;
        }
        g.c("BksUtil", "getFilesBksIS ");
        try {
            return new FileInputStream(b(context));
        } catch (FileNotFoundException unused) {
            g.b("BksUtil", "FileNotFoundExceptio: ");
            return null;
        }
    }
}
