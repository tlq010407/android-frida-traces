package com.huawei.location.lite.common.report;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.huawei.hms.framework.network.grs.GrsApp;
import com.huawei.hms.hatool.HmsHiAnalyticsUtils;
import com.huawei.location.lite.common.agc.AGCManager;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.grs.LocationNlpGrsHelper;
import com.huawei.location.lite.common.log.LogConsole;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class Tracker {
    private static final byte[] SYNC_LOCK = new byte[0];
    private static volatile Tracker instance;
    private LocationReportHandler reportHandler;
    private AtomicBoolean isInitialized = new AtomicBoolean(false);
    private final Map maintenanceCacheEventId = new HashMap(16, 0.85f);
    private final Map operatjionCacheEventId = new HashMap(16, 0.85f);
    private volatile boolean reportTask = false;

    private class LocationReportHandler extends Handler {
        LocationReportHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            if (i != 1) {
                if (i != 2) {
                    return;
                }
                Tracker.this.initHiAnalytics();
            } else {
                LogConsole.d("LocationTracker", "handleMessage case 1, begin to report");
                Tracker.this.onReport();
                Tracker.this.reportTask = false;
            }
        }
    }

    private Tracker() {
        HandlerThread handlerThread = new HandlerThread("Location-Full-LocationTracker");
        handlerThread.start();
        this.reportHandler = new LocationReportHandler(handlerThread.getLooper());
        LogConsole.i("LocationTracker", "LocationTracker init");
    }

    private boolean checkUninitializedAnalytics(int i, String str, LinkedHashMap linkedHashMap) {
        if (this.isInitialized.get()) {
            return false;
        }
        LogConsole.d("LocationTracker", "checkUninitializedAnalytics not initialized");
        if (i == 0) {
            synchronized (this.operatjionCacheEventId) {
                try {
                    if (this.operatjionCacheEventId.size() > 100) {
                        this.operatjionCacheEventId.clear();
                        LogConsole.d("LocationTracker", "out of size clear cache");
                    }
                    this.operatjionCacheEventId.put(encodeKey(str, i), linkedHashMap);
                } finally {
                }
            }
        } else if (1 == i) {
            synchronized (this.maintenanceCacheEventId) {
                try {
                    if (this.maintenanceCacheEventId.size() > 100) {
                        this.maintenanceCacheEventId.clear();
                        LogConsole.d("LocationTracker", "out of size clear cache");
                    }
                    this.maintenanceCacheEventId.put(encodeKey(str, i), linkedHashMap);
                } finally {
                }
            }
        } else {
            LogConsole.d("LocationTracker", "onEvent type =" + i);
        }
        init();
        return true;
    }

    private String decodeKeyForEventId(String str) {
        return TextUtils.isEmpty(str) ? str : str.split("\\|")[0];
    }

    private String decodeKeyForType(String str) {
        return TextUtils.isEmpty(str) ? str : str.split("\\|")[1];
    }

    private void doReport() {
        LocationReportHandler locationReportHandler;
        if (this.reportTask || (locationReportHandler = this.reportHandler) == null) {
            return;
        }
        locationReportHandler.sendEmptyMessageDelayed(1, 3600000L);
        this.reportTask = true;
    }

    private String encodeKey(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        return str + "|" + i + "|" + UUID.randomUUID().toString();
    }

    public static Tracker getInstance() {
        if (instance == null) {
            synchronized (SYNC_LOCK) {
                try {
                    if (instance == null) {
                        instance = new Tracker();
                    }
                } finally {
                }
            }
        }
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initHiAnalytics() {
        if (this.isInitialized.get()) {
            return;
        }
        String grsHostAddress = LocationNlpGrsHelper.getGrsHostAddress(GrsApp.getInstance().getIssueCountryCode(ContextUtil.getContext()), "com.huawei.cloud.opensdkhianalytics");
        LogConsole.d("LocationTracker", "hiAnalyticsUrl:" + grsHostAddress);
        if (TextUtils.isEmpty(grsHostAddress)) {
            LogConsole.i("LocationTracker", "initHiAnalytics  hiAnalyticsUrl is empty.");
            this.isInitialized.set(false);
            return;
        }
        LogConsole.i("LocationTracker", "initHiAnalytics begin.");
        HmsHiAnalyticsUtils.init(ContextUtil.getContext(), false, false, false, grsHostAddress, AGCManager.getInstance().getAppId());
        if (HmsHiAnalyticsUtils.getInitFlag()) {
            this.isInitialized.set(true);
        }
        processUnreportedData();
    }

    private void processUnreportedData() {
        processUnreportedDataUtil(this.operatjionCacheEventId);
        processUnreportedDataUtil(this.maintenanceCacheEventId);
    }

    private void processUnreportedDataUtil(Map map) {
        synchronized (map) {
            try {
                if (!map.isEmpty()) {
                    for (Map.Entry entry : map.entrySet()) {
                        if (TextUtils.isEmpty((CharSequence) entry.getKey())) {
                            LogConsole.e("LocationTracker", "mapEntry.getKey() == null");
                        } else {
                            onEvent(Integer.parseInt(decodeKeyForType((String) entry.getKey())), decodeKeyForEventId((String) entry.getKey()), (LinkedHashMap) entry.getValue());
                        }
                    }
                    map.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void init() {
        if (this.isInitialized.get()) {
            return;
        }
        this.reportHandler.sendEmptyMessage(2);
    }

    public synchronized void onEvent(int i, String str, LinkedHashMap linkedHashMap) {
        if (checkUninitializedAnalytics(i, str, linkedHashMap)) {
            return;
        }
        if (!HmsHiAnalyticsUtils.getInitFlag()) {
            LogConsole.d("LocationTracker", "onEvent HA init is false");
        } else {
            LogConsole.d("LocationTracker", "analyticsInstance.onEvent");
            HmsHiAnalyticsUtils.onEvent(i, str, (LinkedHashMap<String, String>) linkedHashMap);
        }
    }

    public void onMaintEvent(ReportBuilder reportBuilder) {
        LogConsole.i("LocationTracker", "onMaintEvent:" + reportBuilder.build().toString());
        onEvent(1, reportBuilder.getEventId(), reportBuilder.build());
        doReport();
    }

    public void onOperationEvent(ReportBuilder reportBuilder) {
        onEvent(0, reportBuilder.getEventId(), reportBuilder.build());
    }

    public void onReport() {
        if (HmsHiAnalyticsUtils.getInitFlag()) {
            LogConsole.d("LocationTracker", "analyticsInstance.onReport");
            HmsHiAnalyticsUtils.onReport();
        }
    }
}
