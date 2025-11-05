package com.huawei.location.lite.common.util.unzip;

import android.text.TextUtils;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.ReflectionUtils;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.Normalizer;
import java.util.List;
import org.apache.commons.compress.archivers.sevenz.SevenZArchiveEntry;
import org.apache.commons.compress.archivers.sevenz.SevenZFile;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class Un7Z implements IUnzip {
    private boolean isHasUn7ZCoreMethod = isHasCoreMethod();

    private void createFile(String str, SevenZArchiveEntry sevenZArchiveEntry, SevenZFile sevenZFile, List list, List list2) throws IOException {
        File file = new File(str, sevenZArchiveEntry.getName());
        File parentFile = file.getParentFile();
        if (list != null && !list.contains(parentFile.getName())) {
            return;
        }
        if (list2 != null && !list2.contains(sevenZArchiveEntry.getName())) {
            return;
        }
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int i = sevenZFile.read(bArr);
                if (i == -1) {
                    bufferedOutputStream.close();
                    return;
                }
                bufferedOutputStream.write(bArr, 0, i);
            }
        } finally {
        }
    }

    private void createFileDir(String str, SevenZArchiveEntry sevenZArchiveEntry, List list) {
        File file = new File(str, sevenZArchiveEntry.getName());
        if ((list == null || list.contains(sevenZArchiveEntry.getName())) && !file.exists()) {
            file.mkdirs();
        }
    }

    private static boolean isContainInvalidStr(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str.contains("../") || str.contains("..\\") || str.contains("..") || str.contains("./") || str.contains(".\\.\\") || str.contains("%00");
        }
        LogConsole.e("Un7Z", "isContainInvalidStr: name is null");
        return true;
    }

    private static boolean isFileOrDirSafe(String str, String str2) {
        String str3;
        if (TextUtils.isEmpty(str) || isContainInvalidStr(str)) {
            str3 = "zip file is not valid";
        } else {
            if (!TextUtils.isEmpty(str2) && !isContainInvalidStr(str2)) {
                return true;
            }
            str3 = "target directory is not valid";
        }
        LogConsole.e("Un7Z", str3);
        return false;
    }

    private boolean isHasCoreMethod() {
        return ReflectionUtils.getMethod(ReflectionUtils.getClass("java.io.File"), "toPath", new Class[0]) != null;
    }

    @Override // com.huawei.location.lite.common.util.unzip.IUnzip
    public boolean doUnzip(String str, String str2) {
        return doUnzip(str, str2, null, null);
    }

    public boolean doUnzip(String str, String str2, List list, List list2) {
        boolean z;
        String str3;
        if (!isSupportUnZip(str)) {
            str3 = "Decompress7zFromPath:  path or inputFile not support";
        } else if (isFileOrDirSafe(str, str2)) {
            String str4 = File.separator;
            if (str2.endsWith(str4) && str2.length() > str4.length()) {
                str2 = str2.substring(0, str2.length() - str4.length());
            }
            File file = new File(str);
            if (file.exists()) {
                z = true;
            } else {
                LogConsole.e("Un7Z", "Decompress7zFromPath: has no .7zfile");
                z = false;
            }
            try {
                SevenZFile sevenZFile = new SevenZFile(file);
                while (true) {
                    SevenZArchiveEntry nextEntry = sevenZFile.getNextEntry();
                    if (nextEntry == null) {
                        return z;
                    }
                    String name = nextEntry.getName();
                    if (!TextUtils.isEmpty(name)) {
                        String strNormalize = Normalizer.normalize(name.replaceAll("\\\\", "/"), Normalizer.Form.NFKC);
                        if (isContainInvalidStr(strNormalize)) {
                            LogConsole.e("Un7Z", "zipPath is a invalid path: " + strNormalize);
                            return false;
                        }
                        if (nextEntry.isDirectory()) {
                            createFileDir(str2, nextEntry, list);
                        } else {
                            createFile(str2, nextEntry, sevenZFile, list, list2);
                        }
                    }
                }
            } catch (IOException unused) {
                LogConsole.e("Un7Z", "decompress7zFromPath : IOException");
                return false;
            }
        } else {
            str3 = "Decompress7zFromPath:  path or inputFile invalid";
        }
        LogConsole.e("Un7Z", str3);
        return false;
    }

    public boolean isSupportUnZip(String str) {
        return str.contains(".7z") && this.isHasUn7ZCoreMethod;
    }
}
