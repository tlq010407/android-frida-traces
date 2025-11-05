package com.huawei.location.lite.common.log.logwrite;

import android.text.TextUtils;
import android.util.Log;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.location.base.activity.constant.ActivityRecognitionConstants;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.util.PermissionUtil;
import com.huawei.location.lite.common.util.RouterComponentType;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Serializable;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.telegram.messenger.FileLoaderPriorityQueue;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final class LogWrite {
    private static boolean enableWriteLog = false;
    private Map fileInfoMap = new ConcurrentHashMap();
    private String logDirPath = null;
    private long maxFileExpired;
    private int maxFileNum;
    private int maxFileSize;

    private static class FileComparator implements Comparator, Serializable {
        private FileComparator() {
        }

        @Override // java.util.Comparator
        public int compare(File file, File file2) {
            return (int) (file.lastModified() - file2.lastModified());
        }
    }

    private void beforeWriteCheck(FileParam fileParam, String str) {
        String fileName = fileParam.getFileName();
        String fileDirPath = fileParam.getFileDirPath();
        if (!TextUtils.isEmpty(fileName)) {
            if (new File(fileDirPath, fileName).exists()) {
                return;
            } else {
                Log.i("LogWrite", "writeToFile file is not exit");
            }
        }
        File file = new File(fileDirPath);
        if (file.exists()) {
            pathExistsDeal(file, fileParam, str);
            return;
        }
        Log.i("LogWrite", "beforeWriteCheck None of the paths exist--Create a path--Create a file");
        fileParam.setNeedCheck(false);
        creatFolder(fileDirPath);
        createNewLogFile(fileParam, makeLogFileName(str), str);
    }

    private void creatFolder(String str) {
        boolean zMkdirs;
        File file = new File(str);
        if (file.exists()) {
            return;
        }
        try {
            zMkdirs = file.mkdirs();
        } catch (SecurityException unused) {
            Log.e("LogWrite", "createFolder SecurityException:");
            zMkdirs = false;
        }
        if (zMkdirs) {
            Log.i("LogWrite", "createFolder success");
        } else {
            Log.e("LogWrite", "createFolder fail");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0048 A[Catch: all -> 0x002a, TryCatch #0 {, blocks: (B:10:0x0026, B:15:0x0033, B:17:0x0048, B:18:0x004b, B:20:0x0058, B:22:0x0062, B:24:0x0076, B:25:0x008a, B:14:0x002c), top: B:31:0x0024, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void createNewLogFile(FileParam fileParam, String str, String str2) {
        String fileDirPath = fileParam.getFileDirPath();
        BufferedWriter writer = fileParam.getWriter();
        if (TextUtils.isEmpty(fileDirPath) || TextUtils.isEmpty(str)) {
            Log.e("LogWrite", "createNewLogFile Exception");
            return;
        }
        File file = new File(fileDirPath, str);
        FileOutputStream fileOutputStream = new FileOutputStream(file, true);
        synchronized (LogWrite.class) {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException unused) {
                    Log.e("LogWrite", "createNewLogFile IOException");
                }
                fileParam.setWriter(new BufferedWriter(new OutputStreamWriter(fileOutputStream, StandardCharsets.UTF_8)));
                if (fileParam.isNeedCheck()) {
                    filesNumAndUsefulCheck(fileDirPath, str2);
                }
                fileParam.setFileName(str);
                enableWriteLog = true;
                if (str2.equals("location") && file.length() == 0) {
                    fileParam.getWriter().append((CharSequence) getCSVFileHeader());
                    fileParam.getWriter().flush();
                }
                Log.i("LogWrite", "createNewLogFile:File creation complete logFileName:" + str);
            } else {
                fileParam.setWriter(new BufferedWriter(new OutputStreamWriter(fileOutputStream, StandardCharsets.UTF_8)));
                if (fileParam.isNeedCheck()) {
                }
                fileParam.setFileName(str);
                enableWriteLog = true;
                if (str2.equals("location")) {
                    fileParam.getWriter().append((CharSequence) getCSVFileHeader());
                    fileParam.getWriter().flush();
                }
                Log.i("LogWrite", "createNewLogFile:File creation complete logFileName:" + str);
            }
        }
    }

    private boolean deleteFiles(File[] fileArr, int i) {
        if (fileArr != null && fileArr.length > 0) {
            try {
                if (i == -1) {
                    for (int length = fileArr.length - 1; length >= 0; length--) {
                        if (!fileArr[length].delete()) {
                            Log.e("LogWrite", "deleteFiles result false");
                            return false;
                        }
                    }
                } else {
                    for (int i2 = i - 1; i2 >= 0; i2--) {
                        if (!fileArr[i2].delete()) {
                            Log.e("LogWrite", "deleteFiles result false");
                            return false;
                        }
                    }
                }
                return true;
            } catch (SecurityException unused) {
                Log.e("LogWrite", "deleteFiles SecurityException");
            }
        }
        return false;
    }

    private void doWrite(AppLog appLog, FileParam fileParam) throws IOException {
        String msgByFileType = getMsgByFileType(appLog);
        BufferedWriter writer = fileParam.getWriter();
        if (writer != null) {
            writer.append((CharSequence) msgByFileType);
            writer.flush();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void filesNumAndUsefulCheck(String str, String str2) {
        String str3;
        int length;
        int i;
        File[] existedFiles = getExistedFiles(new File(str), str2);
        if (existedFiles == null || existedFiles.length <= 0) {
            return;
        }
        try {
            Arrays.sort(existedFiles, new FileComparator());
        } catch (IllegalArgumentException unused) {
            Log.e("LogWrite", "Arrays sort IllegalArgumentException");
        }
        try {
            if (System.currentTimeMillis() - getFileSavaTimeMill(existedFiles[existedFiles.length - 1]) > this.maxFileExpired) {
                Log.i("LogWrite", "filesNumAndUsefulCheck:The latest saved files are more than maxFileExpired delete all files");
                deleteFiles(existedFiles, -1);
            } else {
                for (int length2 = existedFiles.length - 1; length2 >= 0; length2--) {
                    if (System.currentTimeMillis() - getFileSavaTimeMill(existedFiles[length2]) > this.maxFileExpired) {
                        Log.i("LogWrite", "filesNumAndUsefulCheck:delete the exceed file:" + existedFiles[length2].getName());
                        if (!existedFiles[length2].delete()) {
                            Log.e("LogWrite", "filesNumAndUsefulCheck:delete the exceed file result false");
                        }
                    }
                }
            }
        } catch (SecurityException unused2) {
            str3 = "filesNumAndUsefulCheck:SecurityException";
            Log.i("LogWrite", str3);
            length = existedFiles.length;
            i = this.maxFileNum;
            if (length >= i) {
            }
        } catch (Exception unused3) {
            str3 = "filesNumAndUsefulCheck:Exception";
            Log.i("LogWrite", str3);
            length = existedFiles.length;
            i = this.maxFileNum;
            if (length >= i) {
            }
        }
        length = existedFiles.length;
        i = this.maxFileNum;
        if (length >= i) {
            int length3 = existedFiles.length - i;
            Log.i("LogWrite", "createNewLogFile Exceeded the maximum number of files--Delete the earliest file.");
            deleteFiles(existedFiles, length3);
        }
    }

    private static String getCSVFileHeader() {
        return "writeTime," + HiAnalyticsConstant.HaKey.BI_KEY_TRANSID + ",provider,latitude,longitude,accuracy,locationTime,speed,sessionId,sourceType,locateType,vendorType,src,switchHd,floor,floorAcc,buildingId" + System.lineSeparator();
    }

    private File[] getExistedFiles(File file, String str) {
        return file.listFiles(str.equals("location") ? new FilenameFilter() { // from class: com.huawei.location.lite.common.log.logwrite.LogWrite$$ExternalSyntheticLambda0
            @Override // java.io.FilenameFilter
            public final boolean accept(File file2, String str2) {
                return LogWrite.lambda$getExistedFiles$0(file2, str2);
            }
        } : new FilenameFilter() { // from class: com.huawei.location.lite.common.log.logwrite.LogWrite$$ExternalSyntheticLambda1
            @Override // java.io.FilenameFilter
            public final boolean accept(File file2, String str2) {
                return LogWrite.lambda$getExistedFiles$1(file2, str2);
            }
        });
    }

    private FileParam getFileInfo(String str) {
        if (this.fileInfoMap.containsKey(str)) {
            return (FileParam) this.fileInfoMap.get(str);
        }
        FileParam fileParam = new FileParam();
        String str2 = this.logDirPath;
        if (!str.equals("log") && str.equals("location")) {
            str2 = this.logDirPath + LogWriteConstants.DEBUG_PATH + LogWriteConstants.LOCATION_PATH;
        }
        fileParam.setFileDirPath(str2);
        this.fileInfoMap.put(str, fileParam);
        return fileParam;
    }

    private long getFileSavaTimeMill(File file) {
        return file.lastModified();
    }

    private String getMsgByFileType(AppLog appLog) {
        if (appLog.getFileType().equals("location")) {
            return String.format(Locale.ENGLISH, "%s", appLog.getMsg() + System.lineSeparator());
        }
        return String.format(Locale.ENGLISH, "%s: %s/%s: %s", getNow(), appLog.getLevel(), appLog.getTag(), appLog.getMsg() + System.lineSeparator() + Log.getStackTraceString(appLog.getTr()));
    }

    private String getNow() {
        return DateUtil.formate(Calendar.getInstance().getTime(), "yy-MM-dd HH:mm:ss.SSS");
    }

    public static boolean isEnableWriteLog() {
        return enableWriteLog;
    }

    private boolean isFileFull(String str, String str2, String str3) {
        File file = new File(str2, str3);
        boolean zEquals = str.equals("location");
        long length = file.length();
        return zEquals ? length > ((long) FileLoaderPriorityQueue.PRIORITY_VALUE_MAX) : length > ((long) this.maxFileSize);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getExistedFiles$0(File file, String str) {
        return str.startsWith(ActivityRecognitionConstants.LOCATION_MODULE) && str.endsWith(".csv") && str.length() == 28 && "_".equals(String.valueOf(str.charAt(17)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getExistedFiles$1(File file, String str) {
        return str.startsWith(ActivityRecognitionConstants.LOCATION_MODULE) && str.endsWith(".log") && str.length() == 28 && "_".equals(String.valueOf(str.charAt(17)));
    }

    private String makeLogFileName(String str) {
        String str2 = str.equals("location") ? ".csv" : ".log";
        return "Location." + new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.getDefault()).format(Calendar.getInstance().getTime()) + str2;
    }

    private void openLogFile(FileParam fileParam) {
        BufferedWriter writer = fileParam.getWriter();
        String fileDirPath = fileParam.getFileDirPath();
        String fileName = fileParam.getFileName();
        if (writer == null) {
            if (TextUtils.isEmpty(fileDirPath) || TextUtils.isEmpty(fileName)) {
                Log.e("LogWrite", "openLogFile Exception");
                return;
            }
            FileOutputStream fileOutputStream = new FileOutputStream(new File(fileDirPath, fileName), true);
            synchronized (LogWrite.class) {
                fileParam.setWriter(new BufferedWriter(new OutputStreamWriter(fileOutputStream, StandardCharsets.UTF_8)));
            }
        }
    }

    private void pathExistsDeal(File file, FileParam fileParam, String str) {
        boolean zIsFirstWrite = fileParam.isFirstWrite();
        String fileDirPath = fileParam.getFileDirPath();
        if (zIsFirstWrite) {
            filesNumAndUsefulCheck(fileDirPath, str);
            fileParam.setNeedCheck(false);
        }
        File[] existedFiles = getExistedFiles(file, str);
        if (existedFiles == null) {
            Log.e("LogWrite", "beforeWriteCheck  existedFiles is null");
            return;
        }
        if (existedFiles.length == 0) {
            Log.i("LogWrite", "beforeWriteCheck  Path Exist -- No File -- Create File");
            fileParam.setNeedCheck(false);
            createNewLogFile(fileParam, makeLogFileName(str), str);
        } else {
            try {
                Arrays.sort(existedFiles, new FileComparator());
            } catch (IllegalArgumentException unused) {
                Log.e("LogWrite", "beforeWriteCheck Arrays sort IllegalArgumentException");
            }
            fileParam.setFileName(existedFiles[existedFiles.length - 1].getName());
        }
    }

    public static void setEnableWriteLog(boolean z) {
        enableWriteLog = z;
    }

    public void init(int i, String str, int i2, int i3) {
        boolean z;
        this.maxFileSize = i > 0 ? Math.min(i, 2) * FileLoaderPriorityQueue.PRIORITY_VALUE_MAX : 2097152;
        this.maxFileNum = i2 > 0 ? Math.min(i2, 20) : 20;
        this.maxFileExpired = i3 > 0 ? Math.min(i3, 5) * 86400000 : 432000000L;
        if (str != null) {
            this.logDirPath = str;
            z = true;
        } else {
            z = false;
        }
        setEnableWriteLog(z);
        Log.i("LogWrite", "LogWrite init complete");
    }

    public boolean permissionCheck(String str) {
        String str2;
        if (str.startsWith("/data/user/") || str.startsWith("/data/data/") || str.startsWith("data/data/") || str.startsWith("data/user/")) {
            return true;
        }
        if (!PermissionUtil.checkSelfPermission(ContextUtil.getContext(), "android.permission.READ_EXTERNAL_STORAGE")) {
            str2 = "READ_EXTERNAL_PERMISSION Permission check unPass";
        } else {
            if (PermissionUtil.checkSelfPermission(ContextUtil.getContext(), "android.permission.WRITE_EXTERNAL_STORAGE")) {
                return true;
            }
            str2 = "WRITE_EXTERNAL_PERMISSION Permission check unPass";
        }
        Log.e("LogWrite", str2);
        return false;
    }

    public void shutdown() {
        synchronized (LogWrite.class) {
            Iterator it = this.fileInfoMap.entrySet().iterator();
            while (it.hasNext()) {
                FileParam fileParam = (FileParam) ((Map.Entry) it.next()).getValue();
                if (fileParam != null && fileParam.getWriter() != null) {
                    try {
                        fileParam.getWriter().close();
                    } catch (IOException unused) {
                        Log.e("LogWrite", "shutdown IOException");
                    }
                    fileParam.setWriter(null);
                }
            }
        }
    }

    public void writeToFile(AppLog appLog) {
        FileParam fileInfo;
        if (enableWriteLog) {
            String fileType = appLog.getFileType();
            synchronized (LogWrite.class) {
                try {
                    fileInfo = getFileInfo(fileType);
                } catch (IOException unused) {
                    Log.e("LogWrite", "writeToFile IOException");
                }
                if (RouterComponentType.getComponentType() != 0 || permissionCheck(this.logDirPath)) {
                    beforeWriteCheck(fileInfo, fileType);
                    if (TextUtils.isEmpty(fileInfo.getFileName())) {
                        return;
                    }
                    if (isFileFull(fileType, fileInfo.getFileDirPath(), fileInfo.getFileName())) {
                        fileInfo.setNeedCheck(true);
                        createNewLogFile(fileInfo, makeLogFileName(fileType), fileType);
                    } else {
                        openLogFile(fileInfo);
                    }
                    doWrite(appLog, fileInfo);
                }
            }
        }
    }
}
