package com.huawei.location.tiles.utils;

import android.text.TextUtils;
import com.huawei.location.lite.common.log.LogConsole;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class yn {
    public static String Vw(String str) throws IOException {
        try {
            FileInputStream fileInputStream = new FileInputStream(yn(str));
            try {
                byte[] bArr = new byte[1024];
                StringBuilder sb = new StringBuilder();
                while (true) {
                    int i = fileInputStream.read(bArr);
                    if (i == -1) {
                        String string = sb.toString();
                        fileInputStream.close();
                        return string;
                    }
                    sb.append(new String(bArr, 0, i, StandardCharsets.UTF_8));
                }
            } finally {
            }
        } catch (IOException e) {
            LogConsole.e("FileUtils", "read failed:" + e.getMessage());
            return null;
        }
    }

    public static String yn(String str) {
        if (str == null || "".equals(str.trim())) {
            return str;
        }
        if (str.contains("../")) {
            str = str.trim().replaceAll("\\.\\./", "");
        }
        return str.contains("..\\") ? str.trim().replaceAll("\\.\\.\\\\", "") : str;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0100  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String yn(String str, double d, double d2) throws IOException {
        String str2;
        Iterator it;
        long j;
        long j2;
        long j3;
        long j4;
        ArrayList arrayList = new ArrayList();
        try {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(yn(str)));
            try {
                byte[] bArr = new byte[8];
                int i = 0;
                if (dataInputStream.read(bArr, 0, 8) > 0) {
                    yn(bArr);
                    long j5 = ByteBuffer.wrap(bArr).getLong();
                    long j6 = 0;
                    if (j5 > 0) {
                        while (j6 < j5) {
                            Vw vw = new Vw();
                            byte[] bArr2 = new byte[16];
                            if (dataInputStream.read(bArr2, i, 16) <= 0) {
                                j = j5;
                                j2 = j6;
                            } else {
                                vw.yn(new String(bArr2, StandardCharsets.UTF_8).trim());
                                byte[] bArr3 = new byte[4];
                                if (dataInputStream.read(bArr3, i, 4) > 0) {
                                    yn(bArr3);
                                    int i2 = ByteBuffer.wrap(bArr3).getInt();
                                    if (i2 > 0) {
                                        int i3 = 0;
                                        while (i3 < i2) {
                                            int i4 = i2;
                                            byte[] bArr4 = new byte[8];
                                            if (dataInputStream.read(bArr4, i, 8) <= 0) {
                                                j3 = j5;
                                            } else {
                                                yn(bArr4);
                                                j3 = j5;
                                                double d3 = ByteBuffer.wrap(bArr4).getDouble();
                                                byte[] bArr5 = new byte[8];
                                                if (dataInputStream.read(bArr5, 0, 8) > 0) {
                                                    yn(bArr5);
                                                    j4 = j6;
                                                    vw.yn(new d2(ByteBuffer.wrap(bArr5).getDouble(), d3));
                                                    i3++;
                                                    i2 = i4;
                                                    j5 = j3;
                                                    j6 = j4;
                                                    i = 0;
                                                }
                                            }
                                            j4 = j6;
                                            i3++;
                                            i2 = i4;
                                            j5 = j3;
                                            j6 = j4;
                                            i = 0;
                                        }
                                        j = j5;
                                        j2 = j6;
                                        arrayList.add(vw);
                                    }
                                }
                                j = j5;
                                j2 = j6;
                            }
                            j6 = j2 + 1;
                            j5 = j;
                            i = 0;
                        }
                    }
                }
                dataInputStream.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } finally {
                }
            }
        } catch (FileNotFoundException unused) {
            str2 = "Failed to read file: FileNotFoundException";
            LogConsole.e("CityAdminUtils", str2);
            it = arrayList.iterator();
            String strYn = null;
            while (it.hasNext()) {
            }
            return strYn;
        } catch (IOException unused2) {
            str2 = "Failed to parse file: IOException ";
            LogConsole.e("CityAdminUtils", str2);
            it = arrayList.iterator();
            String strYn2 = null;
            while (it.hasNext()) {
            }
            return strYn2;
        }
        it = arrayList.iterator();
        String strYn22 = null;
        while (it.hasNext()) {
            Vw vw2 = (Vw) it.next();
            boolean zYn = vw2.yn(d, d2);
            boolean zVw = vw2.Vw(d, d2);
            if (zYn || zVw) {
                strYn22 = vw2.yn();
            }
        }
        return strYn22;
    }

    public static String yn(String str, String str2) {
        String str3;
        if (TextUtils.isEmpty(str)) {
            str3 = "Failed to combine paths, the local dir is empty";
        } else if (TextUtils.isEmpty(str2)) {
            str3 = "Failed to combine paths, the download Url is empty";
        } else {
            int iLastIndexOf = str2.lastIndexOf(File.separator);
            if (iLastIndexOf < 0 || iLastIndexOf == str2.length() - 1) {
                str3 = "Failed to combine paths, The download url is abnormal.";
            } else {
                String strSubstring = str2.substring(iLastIndexOf + 1);
                if (Pattern.compile("[a-zA-Z0-9\\.\\-\\_]+").matcher(strSubstring).matches()) {
                    return str + strSubstring;
                }
                str3 = "Failed to combine paths, The file path contains invalid characters.";
            }
        }
        LogConsole.i("FileUtils", str3);
        return null;
    }

    public static void yn(String str, int i) {
        String str2;
        File file = new File(str);
        if (file.exists()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length >= i) {
                Arrays.sort(fileArrListFiles, new dC());
                for (int i2 = i - 1; i2 < fileArrListFiles.length; i2++) {
                    if (!fileArrListFiles[i2].delete()) {
                        LogConsole.d("FileUtils", "file delete fail");
                    }
                }
                return;
            }
            str2 = "The number of files does not exceed the limit.";
        } else {
            str2 = "The directory does not exist.";
        }
        LogConsole.e("FileUtils", str2);
    }

    public static void yn(String str, File file) throws IOException {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str.getBytes(StandardCharsets.UTF_8));
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i = byteArrayInputStream.read(bArr);
                        if (i == -1) {
                            fileOutputStream.close();
                            byteArrayInputStream.close();
                            return;
                        }
                        fileOutputStream.write(bArr, 0, i);
                    }
                } finally {
                }
            } finally {
            }
        } catch (IOException e) {
            LogConsole.e("FileUtils", "write failed:" + e.getMessage());
        }
    }

    private static void yn(byte[] bArr) {
        for (int i = 0; i < bArr.length / 2; i++) {
            byte b = bArr[i];
            bArr[i] = bArr[(bArr.length - i) - 1];
            bArr[(bArr.length - i) - 1] = b;
        }
    }

    private static boolean yn(File file, ZipInputStream zipInputStream) throws IOException {
        byte[] bArr = new byte[1024];
        if (file.exists() || !file.createNewFile()) {
            return false;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                int i = zipInputStream.read(bArr);
                boolean z = false;
                while (i != -1) {
                    fileOutputStream.write(bArr, 0, i);
                    i = zipInputStream.read(bArr);
                    z = true;
                }
                fileOutputStream.close();
                return z;
            } finally {
            }
        } catch (IOException unused) {
            LogConsole.e("FileUtils", "zip fos error is: ");
            return false;
        }
    }

    public static boolean yn(String str, long j) {
        if (str == null) {
            return false;
        }
        File file = new File(str);
        return file.exists() && System.currentTimeMillis() - file.lastModified() <= j;
    }

    /* JADX WARN: Not initialized variable reg: 5, insn: 0x0055: MOVE (r4 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r5 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:25:0x0055 */
    public static boolean yn(String str, String str2, String str3) throws IOException {
        String str4;
        boolean z;
        boolean z2;
        File file = new File(str2);
        boolean z3 = false;
        if (!file.exists() && !file.mkdirs()) {
            LogConsole.d("FileUtils", " not exists!!!");
            return false;
        }
        try {
            try {
                try {
                    FileInputStream fileInputStream = new FileInputStream(new File(yn(str)));
                    try {
                        try {
                            ZipInputStream zipInputStream = new ZipInputStream(fileInputStream);
                            try {
                                boolean zYn = false;
                                for (ZipEntry nextEntry = zipInputStream.getNextEntry(); nextEntry != null; nextEntry = zipInputStream.getNextEntry()) {
                                    try {
                                        String name = nextEntry.getName();
                                        if (name.contains("../")) {
                                            LogConsole.e("FileUtils", " is not security!!!");
                                            z2 = false;
                                        } else {
                                            z2 = true;
                                        }
                                        if (!z2) {
                                            zipInputStream.close();
                                            fileInputStream.close();
                                            return false;
                                        }
                                        if (nextEntry.isDirectory()) {
                                            File file2 = new File(yn(str2 + File.separator + name));
                                            if (file2.exists() || file2.mkdirs()) {
                                                zYn = false;
                                            } else {
                                                LogConsole.d("FileUtils", " not exists!!!");
                                                zYn = true;
                                            }
                                        } else {
                                            zYn = yn(new File(yn(str2 + File.separator + str3)), zipInputStream);
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        try {
                                            throw th;
                                        } finally {
                                        }
                                    }
                                }
                                zipInputStream.close();
                                fileInputStream.close();
                                z3 = zYn;
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            try {
                                throw th;
                            } catch (Throwable th4) {
                                try {
                                    fileInputStream.close();
                                } catch (Throwable th5) {
                                    th.addSuppressed(th5);
                                }
                                throw th4;
                            }
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        throw th;
                    }
                } catch (FileNotFoundException unused) {
                    z3 = z;
                    str4 = "zip error: file not found";
                    LogConsole.e("FileUtils", str4);
                    LogConsole.i("FileUtils", "The unzip file is decompressed: " + z3);
                    return z3;
                }
            } catch (FileNotFoundException unused2) {
                str4 = "zip error: file not found";
                LogConsole.e("FileUtils", str4);
                LogConsole.i("FileUtils", "The unzip file is decompressed: " + z3);
                return z3;
            }
        } catch (IOException unused3) {
            str4 = "zip error";
            LogConsole.e("FileUtils", str4);
            LogConsole.i("FileUtils", "The unzip file is decompressed: " + z3);
            return z3;
        }
        LogConsole.i("FileUtils", "The unzip file is decompressed: " + z3);
        return z3;
    }
}
