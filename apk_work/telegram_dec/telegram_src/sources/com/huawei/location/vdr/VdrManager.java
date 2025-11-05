package com.huawei.location.vdr;

import android.location.Location;
import android.os.Bundle;
import android.os.SystemClock;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.ExecutorUtil;
import com.huawei.location.lite.common.util.GsonUtil;
import com.huawei.location.vdr.data.LW;
import com.huawei.location.vdr.listener.FB;
import com.huawei.location.vdr.listener.IVdrLocationListener;
import com.huawei.location.vdr.listener.Vw;
import com.huawei.riemann.gnsslocation.api.vdr.VdrLocationClient;
import com.huawei.riemann.gnsslocation.core.bean.eph.Ephemeris;
import com.huawei.riemann.gnsslocation.core.bean.obs.Pvt;
import com.huawei.secure.android.common.intent.SafeBundle;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class VdrManager implements Vw, FB {
    private static final String EPH_THREAD_NAME = "Loc-Vdr-EphUpdate";
    private static final long EPH_UPDATE_TIME = 30;
    private static final String TAG = "VdrManager";
    private Ephemeris currentEphemeris;
    private long ephExpiredTime = 0;
    private com.huawei.location.vdr.data.ephemeris.yn ephProvider;
    private final AtomicBoolean isVdrStart;
    private final AtomicBoolean updateEphemeris;
    private LW vdrDataManager;
    private VdrLocationClient vdrLocationClient;
    private IVdrLocationListener vdrLocationListener;

    class yn implements Runnable {
        yn() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Thread.currentThread().setName(VdrManager.EPH_THREAD_NAME + hashCode());
            VdrManager vdrManager = VdrManager.this;
            vdrManager.currentEphemeris = vdrManager.ephProvider.Vw();
            if (VdrManager.this.currentEphemeris != null) {
                VdrManager vdrManager2 = VdrManager.this;
                vdrManager2.ephExpiredTime = vdrManager2.ephProvider.FB();
                VdrManager.this.updateEphemeris.set(true);
            }
        }
    }

    public VdrManager() {
        LogConsole.i(TAG, "VdrManager init");
        this.isVdrStart = new AtomicBoolean(false);
        this.updateEphemeris = new AtomicBoolean(false);
        loadVdrFile();
    }

    private boolean checkAndUpdateEphemeris() {
        com.huawei.location.vdr.data.ephemeris.Vw vw = new com.huawei.location.vdr.data.ephemeris.Vw(System.currentTimeMillis());
        updateEphemeris(vw.Vw());
        if (this.updateEphemeris.get() && this.currentEphemeris != null) {
            LogConsole.i(TAG, "updateEphemeris GpsEphemeris:" + GsonUtil.getInstance().toJson(this.currentEphemeris.getGpsEphemeris()));
            this.vdrLocationClient.updateEphemeris(this.currentEphemeris);
            this.updateEphemeris.set(false);
        }
        return vw.Vw() < this.ephExpiredTime;
    }

    private boolean checkFirstRequestDataIsValid(com.huawei.location.vdr.data.FB fb) {
        return (fb.Vw() == null || fb.yn() == null || fb.FB() == null) ? false : true;
    }

    private void clearVdr() {
        LW lw = this.vdrDataManager;
        if (lw != null) {
            lw.Vw();
            this.vdrDataManager = null;
        }
        VdrLocationClient vdrLocationClient = this.vdrLocationClient;
        if (vdrLocationClient != null) {
            vdrLocationClient.stopLocation();
            this.vdrLocationClient = null;
        }
    }

    private void handlerNativeLocationToVdr() {
        LW lw = this.vdrDataManager;
        if (lw == null || lw.yn() == null) {
            return;
        }
        this.vdrLocationListener.onVdrLocationChanged(this.vdrDataManager.yn());
    }

    private void handlerVdrLocation(com.huawei.location.vdr.data.FB fb) {
        Location locationVw = fb.Vw();
        Pvt pvtBuild = locationVw != null ? Pvt.Builder.aPvt().withAccuracy(locationVw.getAccuracy()).withAltitude(locationVw.getAltitude()).withLatitude(locationVw.getLatitude()).withLongitude(locationVw.getLongitude()).withBearing(locationVw.getBearing()).withSpeed(locationVw.getSpeed()).withTime(locationVw.getTime()).build() : null;
        LogConsole.d(TAG, "process vdr start");
        Pvt pvtProcess = this.vdrLocationClient.process(pvtBuild, fb.yn(), fb.FB(), null);
        if (pvtProcess == null || pvtProcess.getLatitude() == 0.0d || pvtProcess.getLongitude() == 0.0d) {
            handlerNativeLocationToVdr();
            return;
        }
        IVdrLocationListener iVdrLocationListener = this.vdrLocationListener;
        if (locationVw == null) {
            locationVw = new Location("GPS");
        }
        locationVw.setTime(System.currentTimeMillis());
        locationVw.setElapsedRealtimeNanos(SystemClock.elapsedRealtimeNanos());
        locationVw.setLongitude(pvtProcess.getLongitude());
        locationVw.setLatitude(pvtProcess.getLatitude());
        locationVw.setAltitude(pvtProcess.getAltitude());
        locationVw.setAccuracy(pvtProcess.getAccuracy());
        locationVw.setBearing(pvtProcess.getBearing());
        locationVw.setSpeed(pvtProcess.getSpeed());
        Bundle extras = locationVw.getExtras();
        SafeBundle safeBundle = new SafeBundle(extras);
        if (pvtProcess.getErrCode() == 1) {
            if (safeBundle.containsKey("LocationSource")) {
                safeBundle.putInt("LocationSource", extras.getInt("LocationSource") | 2);
            } else {
                safeBundle.putInt("LocationSource", 2);
            }
        }
        locationVw.setExtras(safeBundle.getBundle());
        iVdrLocationListener.onVdrLocationChanged(locationVw);
    }

    private void initVdrDataManager() {
        LW lw = new LW();
        this.vdrDataManager = lw;
        lw.yn(this);
        this.ephProvider = new com.huawei.location.vdr.data.ephemeris.yn();
    }

    private void loadVdrFile() {
        new com.huawei.location.vdr.file.yn().yn(this);
    }

    private synchronized void processVdrData(com.huawei.location.vdr.data.FB fb) {
        if (this.vdrLocationListener == null) {
            LogConsole.e(TAG, "vdr listener is null");
            return;
        }
        if (this.vdrLocationClient == null) {
            LogConsole.e(TAG, "vdrLocationClient init failed");
            handlerNativeLocationToVdr();
            return;
        }
        if (fb == null) {
            LogConsole.e(TAG, "vdr data is null");
            handlerNativeLocationToVdr();
            return;
        }
        if (!checkAndUpdateEphemeris()) {
            LogConsole.i(TAG, "checkAndUpdateEphemeris failed,stop algo");
            if (this.isVdrStart.get()) {
                this.vdrLocationClient.stopLocation();
            }
            this.isVdrStart.set(false);
            handlerNativeLocationToVdr();
            return;
        }
        if (!this.isVdrStart.get()) {
            if (!checkFirstRequestDataIsValid(fb)) {
                LogConsole.d(TAG, "first requestData is not valid,dropping it!");
                handlerNativeLocationToVdr();
                return;
            }
            int iStartLocation = this.vdrLocationClient.startLocation(com.huawei.location.FB.Vw());
            LogConsole.i(TAG, "processGnssLocation startLocation status:" + iStartLocation);
            if (iStartLocation != 0) {
                this.isVdrStart.set(false);
                handlerNativeLocationToVdr();
                return;
            }
            this.isVdrStart.set(true);
        }
        handlerVdrLocation(fb);
    }

    private void startVdrAlgo() throws IOException {
        VdrLocationClient vdrLocationClient = new VdrLocationClient(ContextUtil.getContext(), com.huawei.location.vdr.util.FB.Vw);
        this.vdrLocationClient = vdrLocationClient;
        this.isVdrStart.set(vdrLocationClient.startLocation(com.huawei.location.FB.Vw()) == 0);
        Ephemeris ephemerisYn = this.ephProvider.yn();
        if (ephemerisYn != null) {
            this.ephExpiredTime = this.ephProvider.FB();
            LogConsole.i(TAG, "updateEphemeris GpsEphemeris:" + GsonUtil.getInstance().toJson(ephemerisYn.getGpsEphemeris()));
            this.vdrLocationClient.updateEphemeris(ephemerisYn);
        }
    }

    private void updateEphemeris(long j) {
        LogConsole.i(TAG, "currentGpsTime is : " + j + ", ephExpiredTime is : " + this.ephExpiredTime);
        if (j + EPH_UPDATE_TIME < this.ephExpiredTime) {
            return;
        }
        ExecutorUtil.getInstance().execute(new yn());
    }

    @Override // com.huawei.location.vdr.listener.FB
    public synchronized void handleLoadResult(boolean z) {
        if (z) {
            initVdrDataManager();
            startVdrAlgo();
        }
    }

    public boolean isVdrIntervalStart() {
        return this.vdrDataManager != null;
    }

    @Override // com.huawei.location.vdr.listener.Vw
    public synchronized void onVdrDataReceived(com.huawei.location.vdr.data.FB fb) {
        processVdrData(fb);
    }

    public synchronized void registerVdrLocationLis(IVdrLocationListener iVdrLocationListener) {
        this.vdrLocationListener = iVdrLocationListener;
    }

    public synchronized void syncLocation(Location location) {
        LW lw = this.vdrDataManager;
        if (lw != null) {
            lw.yn(location);
        }
    }

    public synchronized void unRegisterVdrLocationLis() {
        this.vdrLocationListener = null;
        clearVdr();
        LogConsole.i(TAG, "stop vdr manager");
    }
}
