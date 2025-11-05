package com.huawei.location.lite.common.log.logwrite;

import android.text.TextUtils;
import android.util.Log;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final class LogWriteManager {
    private static final Object OBJECT_LOCK = new Object();
    private static LogWriteManager mInstance = new LogWriteManager();
    private volatile String logPath;
    private LogWrite logWrite;
    private int perFileSize = -1;
    private int fileMaxNum = -1;
    private int fileExpiredTime = -1;
    private final BlockingQueue blockingQueue = new ArrayBlockingQueue(256);
    private WriteWorker worker = new WriteWorker();
    private boolean isStarted = false;
    private boolean isInit = false;

    class WriteWorker extends Thread {
        WriteWorker() {
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x004e  */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            String str;
            String str2;
            LogWriteManager logWriteManager = LogWriteManager.this;
            synchronized (LogWriteManager.OBJECT_LOCK) {
                LogWriteManager.this.logWrite.init(logWriteManager.perFileSize, logWriteManager.logPath, logWriteManager.fileMaxNum, logWriteManager.fileExpiredTime);
            }
            while (logWriteManager.isStarted) {
                try {
                    LogWriteManager.this.write(logWriteManager);
                } catch (Error unused) {
                    str = "LogWriteManager";
                    str2 = "PrintWoker Error";
                    Log.i(str, str2);
                    Log.i("LogWriteManager", "PrintWoker end.");
                    if (LogWriteManager.this.logWrite != null) {
                    }
                    LogWriteManager.this.isStarted = false;
                } catch (InterruptedException unused2) {
                    str = "LogWriteManager";
                    str2 = "PrintWoker InterruptedException";
                    Log.i(str, str2);
                    Log.i("LogWriteManager", "PrintWoker end.");
                    if (LogWriteManager.this.logWrite != null) {
                    }
                    LogWriteManager.this.isStarted = false;
                } catch (Exception unused3) {
                    str = "LogWriteManager";
                    str2 = "PrintWoker IllegalMonitorStateException";
                    Log.i(str, str2);
                    Log.i("LogWriteManager", "PrintWoker end.");
                    if (LogWriteManager.this.logWrite != null) {
                    }
                    LogWriteManager.this.isStarted = false;
                }
            }
            Log.i("LogWriteManager", "PrintWoker end.");
            if (LogWriteManager.this.logWrite != null) {
                LogWriteManager.this.logWrite.writeToFile(new AppLog("I", "LogWriteManager", "PrintWoker end.", "log", null));
                LogWriteManager.this.logWrite.shutdown();
            }
            LogWriteManager.this.isStarted = false;
        }
    }

    private LogWriteManager() {
        Log.i("LogWriteManager", "LogWriteManager onCreate");
    }

    public static LogWriteManager getInstance() {
        return mInstance;
    }

    private void start() {
        String str;
        try {
            if (this.isStarted) {
                return;
            }
            this.isStarted = true;
            this.worker.setName("LogWriteThread");
            this.worker.start();
        } catch (IllegalThreadStateException unused) {
            str = "worker IllegalThreadStateException";
            Log.i("LogWriteManager", str);
            this.isStarted = false;
            this.isInit = false;
        } catch (Exception unused2) {
            str = "worker Exception";
            Log.i("LogWriteManager", str);
            this.isStarted = false;
            this.isInit = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void write(LogWriteManager logWriteManager) {
        AppLog appLog = (AppLog) logWriteManager.blockingQueue.poll(60L, TimeUnit.SECONDS);
        LogWrite logWrite = this.logWrite;
        if (logWrite != null) {
            if (appLog != null) {
                logWrite.writeToFile(appLog);
                return;
            }
            logWrite.shutdown();
            this.logWrite.writeToFile((AppLog) logWriteManager.blockingQueue.take());
        }
    }

    public boolean appendLog(AppLog appLog) {
        return this.blockingQueue.offer(appLog);
    }

    public void init(LogWriteParam logWriteParam) {
        synchronized (OBJECT_LOCK) {
            try {
                if (this.isInit) {
                    Log.i("LogWriteManager", "already init");
                } else {
                    Log.i("LogWriteManager", "first init");
                    if (TextUtils.isEmpty(logWriteParam.getLogPath())) {
                        Log.i("LogWriteManager", "logPath is empty");
                        return;
                    }
                    this.logPath = logWriteParam.getLogPath();
                    this.perFileSize = logWriteParam.getFileSize();
                    this.fileMaxNum = logWriteParam.getFileNum();
                    this.fileExpiredTime = logWriteParam.getFileExpiredTime();
                    this.logWrite = new LogWrite();
                    start();
                    this.isInit = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
