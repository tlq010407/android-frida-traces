package com.huawei.hms.framework.common.hianalytics;

import com.huawei.hms.framework.common.Logger;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.RejectedExecutionException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class InitReport {
    private static final int EVENT_LIMIT = 10;
    private static final String TAG = "HaReport";
    private static List<Runnable> eventsToReport = new CopyOnWriteArrayList();
    private static boolean hasConnectNet = false;

    public static void enableConnectNet() {
        String str;
        hasConnectNet = true;
        try {
            HianalyticsHelper.getInstance().getReportExecutor().submit(new Runnable() { // from class: com.huawei.hms.framework.common.hianalytics.InitReport.1
                @Override // java.lang.Runnable
                public void run() {
                    InitReport.submitAllEvents();
                }
            });
        } catch (RejectedExecutionException unused) {
            str = "the thread submit has rejectedExecutionException!";
            Logger.e(TAG, str);
        } catch (Throwable unused2) {
            str = "the thread submit has fatal error!";
            Logger.e(TAG, str);
        }
    }

    public static void reportWhenInit(Runnable runnable) {
        String str;
        if (!hasConnectNet) {
            if (eventsToReport.size() > 10) {
                Logger.e("TAG", "the event to be report when init exceed the limit!");
                return;
            } else {
                eventsToReport.add(runnable);
                return;
            }
        }
        try {
            HianalyticsHelper.getInstance().getReportExecutor().execute(runnable);
        } catch (RejectedExecutionException unused) {
            str = "the thread submit has rejectedExecutionException!";
            Logger.e(TAG, str);
        } catch (Throwable unused2) {
            str = "the thread submit has fatal error!";
            Logger.e(TAG, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void submitAllEvents() {
        String str;
        try {
            Iterator<Runnable> it = eventsToReport.iterator();
            while (it.hasNext()) {
                HianalyticsHelper.getInstance().getReportExecutor().submit(it.next());
            }
            eventsToReport.clear();
        } catch (NullPointerException unused) {
            str = "event is null occured";
            Logger.e(TAG, str);
        } catch (RejectedExecutionException unused2) {
            str = "submit failed of rejected execution exception";
            Logger.e(TAG, str);
        } catch (Exception unused3) {
            str = "submit failed because of some exception";
            Logger.e(TAG, str);
        }
    }
}
