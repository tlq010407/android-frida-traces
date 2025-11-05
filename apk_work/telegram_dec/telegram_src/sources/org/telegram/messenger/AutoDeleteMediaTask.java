package org.telegram.messenger;

import android.util.SparseArray;
import com.huawei.hms.push.constant.RemoteMessageConst;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Set;
import org.telegram.messenger.AutoDeleteMediaTask;
import org.telegram.messenger.CacheByChatsController;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class AutoDeleteMediaTask {
    public static Set<String> usingFilePaths = Collections.newSetFromMap(new ConcurrentHashMap());

    /* JADX INFO: Access modifiers changed from: private */
    static class FileInfoInternal extends CacheByChatsController.KeepMediaFile {
        final long lastUsageDate;

        private FileInfoInternal(File file) {
            super(file);
            this.lastUsageDate = Utilities.getLastUsageFileTime(file.getAbsolutePath());
        }
    }

    private static void fillFilesRecursive(File file, ArrayList<FileInfoInternal> arrayList) {
        File[] fileArrListFiles;
        if (file == null || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                fillFilesRecursive(file2, arrayList);
            } else if (!file2.getName().equals(".nomedia") && !usingFilePaths.contains(file2.getAbsolutePath())) {
                arrayList.add(new FileInfoInternal(file2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$run$0(FileInfoInternal fileInfoInternal, FileInfoInternal fileInfoInternal2) {
        long j = fileInfoInternal2.lastUsageDate;
        long j2 = fileInfoInternal.lastUsageDate;
        if (j > j2) {
            return -1;
        }
        return j < j2 ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0101 A[Catch: all -> 0x00e8, LOOP:4: B:60:0x00fb->B:62:0x0101, LOOP_END, TryCatch #4 {all -> 0x00e8, blocks: (B:49:0x00d2, B:58:0x00f3, B:52:0x00dd, B:60:0x00fb, B:62:0x0101, B:64:0x010e, B:66:0x0114, B:68:0x011e, B:85:0x015a, B:89:0x016f, B:69:0x012a, B:73:0x013a, B:84:0x0157, B:74:0x013f, B:76:0x0143), top: B:170:0x00d2 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0114 A[Catch: all -> 0x00e8, TryCatch #4 {all -> 0x00e8, blocks: (B:49:0x00d2, B:58:0x00f3, B:52:0x00dd, B:60:0x00fb, B:62:0x0101, B:64:0x010e, B:66:0x0114, B:68:0x011e, B:85:0x015a, B:89:0x016f, B:69:0x012a, B:73:0x013a, B:84:0x0157, B:74:0x013f, B:76:0x0143), top: B:170:0x00d2 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0157 A[Catch: all -> 0x00e8, TryCatch #4 {all -> 0x00e8, blocks: (B:49:0x00d2, B:58:0x00f3, B:52:0x00dd, B:60:0x00fb, B:62:0x0101, B:64:0x010e, B:66:0x0114, B:68:0x011e, B:85:0x015a, B:89:0x016f, B:69:0x012a, B:73:0x013a, B:84:0x0157, B:74:0x013f, B:76:0x0143), top: B:170:0x00d2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void lambda$run$1(int i, File file) {
        int i2;
        int i3;
        int i4;
        long j;
        int i5;
        int i6;
        int[] iArr;
        long j2;
        int i7;
        int i8;
        boolean z;
        long daysInSeconds;
        long daysInSeconds2;
        ArrayList<? extends CacheByChatsController.KeepMediaFile> arrayList;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (BuildVars.LOGS_ENABLED) {
            FileLog.d("checkKeepMedia start task");
        }
        ArrayList arrayList2 = new ArrayList();
        int i9 = 0;
        boolean z2 = false;
        while (true) {
            i2 = 4;
            i3 = 1;
            if (i9 >= 4) {
                break;
            }
            if (UserConfig.getInstance(i9).isClientActivated()) {
                CacheByChatsController cacheByChatsController = UserConfig.getInstance(i9).getMessagesController().getCacheByChatsController();
                arrayList2.add(cacheByChatsController);
                if (cacheByChatsController.getKeepMediaExceptionsByDialogs().size() > 0) {
                    z2 = true;
                }
            }
            i9++;
        }
        int[] iArr2 = new int[4];
        long j3 = Long.MAX_VALUE;
        boolean z3 = true;
        for (int i10 = 0; i10 < 4; i10++) {
            int i11 = SharedConfig.getPreferences().getInt("keep_media_type_" + i10, CacheByChatsController.getDefault(i10));
            iArr2[i10] = i11;
            if (i11 != CacheByChatsController.KEEP_MEDIA_FOREVER) {
                z3 = false;
            }
            long daysInSeconds3 = CacheByChatsController.getDaysInSeconds(i11);
            if (daysInSeconds3 < j3) {
                j3 = daysInSeconds3;
            }
        }
        if (z2) {
            z3 = false;
        }
        SparseArray<File> sparseArrayCreateMediaPaths = ImageLoader.getInstance().createMediaPaths();
        int i12 = 0;
        int i13 = 0;
        long length = 0;
        while (i12 < sparseArrayCreateMediaPaths.size()) {
            if (z3 && (sparseArrayCreateMediaPaths.keyAt(i12) == i3 || sparseArrayCreateMediaPaths.keyAt(i12) == 3)) {
                iArr = iArr2;
                j2 = j3;
            } else {
                boolean z4 = sparseArrayCreateMediaPaths.keyAt(i12) == i2;
                try {
                    File[] fileArrListFiles = sparseArrayCreateMediaPaths.valueAt(i12).listFiles();
                    ArrayList<? extends CacheByChatsController.KeepMediaFile> arrayList3 = new ArrayList<>();
                    if (fileArrListFiles != null) {
                        int i14 = 0;
                        while (i14 < fileArrListFiles.length) {
                            try {
                                if (fileArrListFiles[i14].isDirectory()) {
                                    j2 = j3;
                                } else {
                                    j2 = j3;
                                    try {
                                        if (!usingFilePaths.contains(fileArrListFiles[i14].getAbsolutePath())) {
                                            arrayList3.add(new CacheByChatsController.KeepMediaFile(fileArrListFiles[i14]));
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        iArr = iArr2;
                                        FileLog.e(th);
                                        i12++;
                                        j3 = j2;
                                        iArr2 = iArr;
                                        i2 = 4;
                                        i3 = 1;
                                    }
                                }
                                i14++;
                                j3 = j2;
                            } catch (Throwable th2) {
                                th = th2;
                                j2 = j3;
                            }
                        }
                        j2 = j3;
                        for (i7 = 0; i7 < arrayList2.size(); i7++) {
                            ((CacheByChatsController) arrayList2.get(i7)).lookupFiles(arrayList3);
                        }
                        i8 = 0;
                        while (i8 < arrayList3.size()) {
                            CacheByChatsController.KeepMediaFile keepMediaFile = (CacheByChatsController.KeepMediaFile) arrayList3.get(i8);
                            if (keepMediaFile.isStory) {
                                z = z4;
                                daysInSeconds2 = i - CacheByChatsController.getDaysInSeconds(iArr2[3]);
                            } else {
                                z = z4;
                                int i15 = keepMediaFile.keepMedia;
                                if (i15 != CacheByChatsController.KEEP_MEDIA_FOREVER) {
                                    if (i15 < 0) {
                                        int i16 = keepMediaFile.dialogType;
                                        if (i16 >= 0) {
                                            i15 = iArr2[i16];
                                        } else if (!z) {
                                            daysInSeconds = j2;
                                            if (daysInSeconds == Long.MAX_VALUE) {
                                                daysInSeconds2 = i - daysInSeconds;
                                            }
                                        }
                                    }
                                    daysInSeconds = CacheByChatsController.getDaysInSeconds(i15);
                                    if (daysInSeconds == Long.MAX_VALUE) {
                                    }
                                }
                                arrayList = arrayList3;
                                iArr = iArr2;
                                i8++;
                                z4 = z;
                                arrayList3 = arrayList;
                                iArr2 = iArr;
                            }
                            long lastUsageFileTime = Utilities.getLastUsageFileTime(keepMediaFile.file.getAbsolutePath());
                            if (lastUsageFileTime <= 316000000 || lastUsageFileTime >= daysInSeconds2) {
                                arrayList = arrayList3;
                                iArr = iArr2;
                            } else {
                                arrayList = arrayList3;
                                iArr = iArr2;
                                try {
                                    if (!usingFilePaths.contains(keepMediaFile.file.getPath())) {
                                        try {
                                            if (BuildVars.LOGS_ENABLED) {
                                                i13++;
                                                length += keepMediaFile.file.length();
                                            }
                                            if (BuildVars.DEBUG_PRIVATE_VERSION) {
                                                FileLog.d("delete file " + keepMediaFile.file.getPath() + " last_usage_time=" + lastUsageFileTime + " time_local=" + daysInSeconds2 + " story=" + keepMediaFile.isStory);
                                            }
                                            keepMediaFile.file.delete();
                                        } catch (Exception e) {
                                            FileLog.e(e);
                                        }
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    FileLog.e(th);
                                    i12++;
                                    j3 = j2;
                                    iArr2 = iArr;
                                    i2 = 4;
                                    i3 = 1;
                                }
                            }
                            i8++;
                            z4 = z;
                            arrayList3 = arrayList;
                            iArr2 = iArr;
                        }
                        iArr = iArr2;
                    } else {
                        j2 = j3;
                        while (i7 < arrayList2.size()) {
                        }
                        i8 = 0;
                        while (i8 < arrayList3.size()) {
                        }
                        iArr = iArr2;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    iArr = iArr2;
                    j2 = j3;
                }
            }
            i12++;
            j3 = j2;
            iArr2 = iArr;
            i2 = 4;
            i3 = 1;
        }
        int i17 = SharedConfig.getPreferences().getInt("cache_limit", Integer.MAX_VALUE);
        if (i17 == Integer.MAX_VALUE) {
            i4 = i13;
            j = 0;
            i5 = 0;
            i6 = 0;
        } else {
            long j4 = i17 == 1 ? 314572800L : i17 * 1048576000;
            long dirSize = 0;
            for (int i18 = 0; i18 < sparseArrayCreateMediaPaths.size(); i18++) {
                dirSize += Utilities.getDirSize(sparseArrayCreateMediaPaths.valueAt(i18).getAbsolutePath(), 0, true);
            }
            if (dirSize > j4) {
                ArrayList<? extends CacheByChatsController.KeepMediaFile> arrayList4 = new ArrayList<>();
                for (int i19 = 0; i19 < sparseArrayCreateMediaPaths.size(); i19++) {
                    fillFilesRecursive(sparseArrayCreateMediaPaths.valueAt(i19), arrayList4);
                }
                for (int i20 = 0; i20 < arrayList2.size(); i20++) {
                    ((CacheByChatsController) arrayList2.get(i20)).lookupFiles(arrayList4);
                }
                Collections.sort(arrayList4, new Comparator() { // from class: org.telegram.messenger.AutoDeleteMediaTask$$ExternalSyntheticLambda1
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return AutoDeleteMediaTask.lambda$run$0((AutoDeleteMediaTask.FileInfoInternal) obj, (AutoDeleteMediaTask.FileInfoInternal) obj2);
                    }
                });
                i5 = 0;
                i6 = 0;
                int i21 = 0;
                long j5 = 0;
                while (true) {
                    if (i21 >= arrayList4.size()) {
                        i4 = i13;
                        break;
                    }
                    if (((FileInfoInternal) arrayList4.get(i21)).keepMedia != CacheByChatsController.KEEP_MEDIA_FOREVER) {
                        i4 = i13;
                        if (((FileInfoInternal) arrayList4.get(i21)).lastUsageDate > 0) {
                            long length2 = ((FileInfoInternal) arrayList4.get(i21)).file.length();
                            dirSize -= length2;
                            i5++;
                            j5 += length2;
                            try {
                                ((FileInfoInternal) arrayList4.get(i21)).file.delete();
                            } catch (Exception unused) {
                            }
                            if (dirSize < j4) {
                                break;
                            }
                        } else {
                            i6++;
                        }
                    } else {
                        i4 = i13;
                    }
                    i21++;
                    i13 = i4;
                }
                j = j5;
            }
        }
        File file2 = new File(file, "acache");
        if (file2.exists()) {
            try {
                Utilities.clearDir(file2.getAbsolutePath(), 0, i - RemoteMessageConst.DEFAULT_TTL, false);
            } catch (Throwable th5) {
                FileLog.e(th5);
            }
        }
        MessagesController.getGlobalMainSettings().edit().putInt("lastKeepMediaCheckTime", SharedConfig.lastKeepMediaCheckTime).apply();
        if (BuildVars.LOGS_ENABLED) {
            FileLog.d("checkKeepMedia task end time " + (System.currentTimeMillis() - jCurrentTimeMillis) + " auto deleted info: files " + i4 + " size " + AndroidUtilities.formatFileSize(length) + "   deleted by size limit info: files " + i5 + " size " + AndroidUtilities.formatFileSize(j) + " unknownTimeFiles " + i6);
        }
    }

    public static void lockFile(File file) {
        if (file == null) {
            return;
        }
        lockFile(file.getAbsolutePath());
    }

    public static void lockFile(String str) {
        if (str == null) {
            return;
        }
        usingFilePaths.add(str);
    }

    public static void run() {
        final int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        if (Math.abs(iCurrentTimeMillis - SharedConfig.lastKeepMediaCheckTime) < 86400) {
            return;
        }
        SharedConfig.lastKeepMediaCheckTime = iCurrentTimeMillis;
        final File fileCheckDirectory = FileLoader.checkDirectory(4);
        Utilities.cacheClearQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.AutoDeleteMediaTask$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AutoDeleteMediaTask.lambda$run$1(iCurrentTimeMillis, fileCheckDirectory);
            }
        });
    }

    public static void unlockFile(File file) {
        if (file == null) {
            return;
        }
        unlockFile(file.getAbsolutePath());
    }

    public static void unlockFile(String str) {
        if (str == null) {
            return;
        }
        usingFilePaths.remove(str);
    }
}
