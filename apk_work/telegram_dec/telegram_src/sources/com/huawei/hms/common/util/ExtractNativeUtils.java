package com.huawei.hms.common.util;

import android.content.Context;
import android.os.Build;
import com.huawei.hms.feature.dynamic.ModuleCopy;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.telegram.messenger.LiteMode;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class ExtractNativeUtils {
    public static final String a = "ExtractNativeUtils";
    public static final int b = 0;
    public static final int c = -1;
    public static final int d = 50;
    public static final int e = 52428800;
    public static Pattern f = Pattern.compile("lib/([^/]+)/(.*\\.so)$");

    public static class b {
        public String a;
        public ZipEntry b;
        public String c;

        public b(ZipEntry zipEntry, String str, String str2) {
            this.b = zipEntry;
            this.a = str;
            this.c = str2;
        }
    }

    public static int a(File file, String str) throws Throwable {
        ZipFile zipFile;
        Logger.i(a, "begin extractNativeLibrary");
        int i = 0;
        ZipFile zipFile2 = null;
        try {
            try {
                zipFile = new ZipFile(file);
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            try {
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                HashMap map = new HashMap();
                int iA = a(enumerationEntries, (HashMap<String, HashSet<b>>) map, 0);
                if (iA == -1) {
                    Logger.e(a, "Unsafe zip name!");
                    try {
                        zipFile.close();
                    } catch (IOException e3) {
                        Logger.e(a, "IOException:", e3);
                    }
                    return -1;
                }
                if (iA > 50) {
                    Logger.e(a, "the total number is larger than the max");
                    try {
                        zipFile.close();
                    } catch (IOException e4) {
                        Logger.e(a, "IOException:", e4);
                    }
                    return -1;
                }
                Iterator it = map.keySet().iterator();
                int iA2 = 0;
                while (it.hasNext()) {
                    try {
                        Set<b> set = (Set) map.get((String) it.next());
                        if (set == null) {
                            Logger.e(a, "Get nativeZipEntries failed.");
                            try {
                                zipFile.close();
                            } catch (IOException e5) {
                                Logger.e(a, "IOException:", e5);
                            }
                            return -1;
                        }
                        for (b bVar : set) {
                            String str2 = str + File.separator + bVar.c;
                            ModuleCopy.makeDirectory(str2);
                            new File(str2).setExecutable(true, false);
                            iA2 = a(zipFile, bVar, str2);
                            if (iA2 != 0) {
                                try {
                                    zipFile.close();
                                } catch (IOException e6) {
                                    Logger.e(a, "IOException:", e6);
                                }
                                return iA2;
                            }
                            new File(str2, bVar.a).setReadable(true, false);
                        }
                    } catch (IOException e7) {
                        e = e7;
                        i = iA2;
                        zipFile2 = zipFile;
                        Logger.e(a, "catch IOException ", e);
                        if (zipFile2 != null) {
                            try {
                                zipFile2.close();
                            } catch (IOException e8) {
                                e = e8;
                                iA2 = i;
                                Logger.e(a, "IOException:", e);
                                return iA2;
                            }
                        }
                        return i;
                    }
                }
                try {
                    zipFile.close();
                    return iA2;
                } catch (IOException e9) {
                    e = e9;
                    Logger.e(a, "IOException:", e);
                    return iA2;
                }
            } catch (IOException e10) {
                e = e10;
            }
        } catch (Throwable th2) {
            th = th2;
            zipFile2 = zipFile;
            if (zipFile2 != null) {
                try {
                    zipFile2.close();
                } catch (IOException e11) {
                    Logger.e(a, "IOException:", e11);
                }
            }
            throw th;
        }
    }

    public static int a(Enumeration enumeration, HashMap<String, HashSet<b>> map, int i) {
        while (enumeration.hasMoreElements()) {
            Object objNextElement = enumeration.nextElement();
            if (objNextElement != null && (objNextElement instanceof ZipEntry)) {
                ZipEntry zipEntry = (ZipEntry) objNextElement;
                String name = zipEntry.getName();
                if (name.contains("../")) {
                    Logger.e(a, "Unsafe zip name!");
                    return -1;
                }
                Matcher matcher = f.matcher(name);
                if (matcher.matches()) {
                    String strGroup = matcher.group(1);
                    String strGroup2 = matcher.group(2);
                    HashSet<b> hashSet = map.get(strGroup);
                    if (hashSet == null) {
                        hashSet = new HashSet<>();
                        map.put(strGroup, hashSet);
                    }
                    hashSet.add(new b(zipEntry, strGroup2, strGroup));
                    i++;
                }
            }
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002d, code lost:
    
        com.huawei.hms.common.util.Logger.e(com.huawei.hms.common.util.ExtractNativeUtils.a, "so file too big , " + r10.c + " , " + r10.a);
     */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00b8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:? A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x00a4 -> B:79:0x00a7). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int a(ZipFile zipFile, b bVar, String str) throws Throwable {
        InputStream inputStream;
        InputStream inputStream2;
        byte[] bArr;
        FileOutputStream fileOutputStream;
        int i = -1;
        FileOutputStream fileOutputStream2 = null;
        inputStream = null;
        inputStream = null;
        InputStream inputStream3 = null;
        fileOutputStream2 = null;
        fileOutputStream2 = null;
        try {
            try {
                bArr = new byte[LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM];
                fileOutputStream = new FileOutputStream(new File(str, bVar.a));
            } catch (IOException e2) {
                Logger.e(a, "IOException", e2);
            }
        } catch (FileNotFoundException unused) {
            inputStream2 = null;
        } catch (IOException e3) {
            e = e3;
            inputStream = null;
        } catch (Throwable th) {
            th = th;
            inputStream = null;
        }
        try {
            inputStream3 = zipFile.getInputStream(bVar.b);
            int i2 = 0;
            while (true) {
                int i3 = inputStream3.read(bArr);
                if (i3 <= 0) {
                    i = 0;
                    break;
                }
                i2 += i3;
                if (i2 > 52428800) {
                    break;
                }
                fileOutputStream.write(bArr, 0, i3);
            }
            try {
                fileOutputStream.close();
            } catch (IOException e4) {
                Logger.e(a, "IOException", e4);
            }
            inputStream3.close();
        } catch (FileNotFoundException unused2) {
            inputStream2 = inputStream3;
            fileOutputStream2 = fileOutputStream;
            try {
                Logger.e(a, "FileNotFoundException");
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e5) {
                        Logger.e(a, "IOException", e5);
                    }
                }
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                return i;
            } catch (Throwable th2) {
                inputStream = inputStream2;
                th = th2;
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e6) {
                        Logger.e(a, "IOException", e6);
                    }
                }
                if (inputStream == null) {
                    throw th;
                }
                try {
                    inputStream.close();
                    throw th;
                } catch (IOException e7) {
                    Logger.e(a, "IOException", e7);
                    throw th;
                }
            }
        } catch (IOException e8) {
            e = e8;
            inputStream = inputStream3;
            fileOutputStream2 = fileOutputStream;
            try {
                Logger.e(a, "IOException", e);
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e9) {
                        Logger.e(a, "IOException", e9);
                    }
                }
                if (inputStream != null) {
                    inputStream.close();
                }
                return i;
            } catch (Throwable th3) {
                th = th3;
                if (fileOutputStream2 != null) {
                }
                if (inputStream == null) {
                }
            }
        } catch (Throwable th4) {
            th = th4;
            inputStream = inputStream3;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
            }
            if (inputStream == null) {
            }
        }
        return i;
    }

    public static boolean a(Context context, String str) {
        if (Build.VERSION.SDK_INT <= 23) {
            Logger.i(a, "The android version is below android 6.");
            return true;
        }
        try {
            if ((context.getPackageManager().getPackageArchiveInfo(str, 128).applicationInfo.flags & 268435456) == 268435456) {
                Logger.i(a, "The extract-native-flag has set, need to extract.");
                return true;
            }
            Logger.i(a, "The extract-native-flag has not set, No need to extract.");
            return false;
        } catch (Exception unused) {
            Logger.w(a, "Get package name failed: name not found.");
            return true;
        }
    }
}
