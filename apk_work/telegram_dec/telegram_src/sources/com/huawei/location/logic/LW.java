package com.huawei.location.logic;

import android.location.Location;
import android.os.Handler;
import android.os.HandlerThread;
import android.provider.Settings;
import android.text.TextUtils;
import com.huawei.hms.location.HwLocationResult;
import com.huawei.hms.location.LocationProviderCallback;
import com.huawei.hms.location.LocationRequest;
import com.huawei.hms.support.api.entity.location.updates.RequestLocationUpdatesRequest;
import com.huawei.hms.support.api.location.common.exception.LocationStatusCode;
import com.huawei.location.callback.Ot;
import com.huawei.location.callback.oc;
import com.huawei.location.callback.ut;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.exception.LocationServiceException;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.LocationUtil;
import com.huawei.location.lite.common.util.NetworkUtil;
import com.huawei.location.lite.common.util.PermissionUtil;
import com.huawei.location.lite.common.util.ROMUtil;
import com.huawei.location.logic.d2;
import java.util.Iterator;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class LW {
    private static volatile LW FB;
    private com.huawei.location.provider.yn E5 = new com.huawei.location.provider.yn();
    private dC LW;
    private Handler dC;
    private static final boolean yn = ROMUtil.isGmsRom();
    private static final byte[] Vw = new byte[0];

    class Vw implements Runnable {
        final /* synthetic */ com.huawei.location.callback.d2 yn;

        Vw(LW lw, com.huawei.location.callback.d2 d2Var) {
            this.yn = d2Var;
        }

        @Override // java.lang.Runnable
        public void run() throws Settings.SettingNotFoundException {
            this.yn.yn(LocationUtil.isLocationEnabled(ContextUtil.getContext()), NetworkUtil.isNetworkAvailable(ContextUtil.getContext()));
        }
    }

    class yn implements LocationProviderCallback {
        yn() {
        }

        @Override // com.huawei.hms.location.LocationProviderCallback
        public void onLocationChanged(HwLocationResult hwLocationResult) {
            if (PermissionUtil.checkSelfPermission(ContextUtil.getContext(), "android.permission.ACCESS_FINE_LOCATION") || PermissionUtil.checkSelfPermission(ContextUtil.getContext(), "android.permission.ACCESS_COARSE_LOCATION")) {
                LW.yn(LW.this, hwLocationResult);
            } else {
                LogConsole.i("HwLocationManager", "dispatchCallback fail, location permission is denied");
            }
        }
    }

    private LW() {
        com.huawei.location.nlp.api.yn.yn().yn(new yn());
        com.huawei.location.crowdsourcing.Vw.yn(ContextUtil.getContext());
    }

    private void Vw(com.huawei.location.cache.Vw vw) {
        if (vw.dC() == null) {
            return;
        }
        if (yn) {
            this.E5.yn(vw);
        } else {
            com.huawei.location.nlp.api.yn.yn().yn(vw.dC());
        }
    }

    private com.huawei.location.callback.d2 yn(com.huawei.location.cache.Vw vw, oc ocVar) {
        if (yn) {
            Ot ot = new Ot(vw.dC(), ocVar);
            ot.Vw(yn(vw, ot));
            vw.yn(ot);
            com.huawei.location.cache.yn.Vw().yn(vw);
            this.E5.Vw(vw);
            return ot;
        }
        com.huawei.location.callback.zp zpVar = new com.huawei.location.callback.zp(vw.dC(), ocVar);
        zpVar.Vw(yn(vw, zpVar));
        vw.yn(zpVar);
        com.huawei.location.cache.yn.Vw().yn(vw);
        com.huawei.location.nlp.api.yn.yn().Vw(vw.dC());
        return zpVar;
    }

    public static LW yn() {
        if (FB == null) {
            synchronized (Vw) {
                try {
                    if (FB == null) {
                        FB = new LW();
                    }
                } finally {
                }
            }
        }
        return FB;
    }

    private void yn(com.huawei.location.cache.Vw vw) {
        dC dCVar;
        RequestLocationUpdatesRequest requestLocationUpdatesRequestDC = vw.dC();
        d2.Vw.yn.yn(vw, requestLocationUpdatesRequestDC.getTid());
        String strLW = vw.LW();
        LogConsole.i("HwLocationManager", "handlerRemoveRequest, uuid is " + requestLocationUpdatesRequestDC.getUuid() + ", provider is " + strLW);
        if (TextUtils.equals(strLW, "network")) {
            Vw(vw);
        } else if (TextUtils.equals(strLW, "fused")) {
            com.huawei.location.gnss.api.yn.yn().yn(vw.yn());
            Vw(vw);
        } else {
            if (!TextUtils.equals(strLW, "passive") && !TextUtils.equals(strLW, "gps")) {
                LogConsole.i("HwLocationManager", "handlerRemoveRequest fail");
                return;
            }
            com.huawei.location.gnss.api.yn.yn().yn(vw.yn());
        }
        int iFB = vw.FB();
        if (this.LW != null && yn(iFB)) {
            this.LW.unRegisterNetworkObserve();
        }
        if (!com.huawei.location.cache.yn.Vw().yn().isEmpty() || (dCVar = this.LW) == null) {
            return;
        }
        dCVar.unRegisterAllObserve();
        this.LW = null;
    }

    private void yn(com.huawei.location.callback.d2 d2Var) {
        if (this.dC == null) {
            HandlerThread handlerThread = new HandlerThread("FullSDK-hwLocationManager-HwLocationManager");
            handlerThread.start();
            this.dC = new Handler(handlerThread.getLooper());
        }
        this.dC.postDelayed(new Vw(this, d2Var), 100L);
    }

    static void yn(LW lw, HwLocationResult hwLocationResult) {
        lw.getClass();
        Iterator it = com.huawei.location.cache.yn.Vw().yn().entrySet().iterator();
        while (it.hasNext()) {
            com.huawei.location.cache.Vw vw = (com.huawei.location.cache.Vw) ((Map.Entry) it.next()).getValue();
            if (vw == null) {
                LogConsole.i("HwLocationManager", "dispatchCallback fail, wrapLocationRequest is null");
            } else if (vw.yn() == null || TextUtils.isEmpty(vw.d2()) || !com.huawei.location.FB.yn(vw.dC())) {
                LogConsole.i("HwLocationManager", "dispatchCallback fail, request is invalid");
                it.remove();
                lw.yn(vw);
            } else {
                int iFB = vw.FB();
                if (iFB == 102 || iFB == 104 || iFB == 300 || iFB == 100) {
                    vw.yn().LW(hwLocationResult);
                }
            }
        }
    }

    private boolean yn(int i) {
        return i == 300 || i == 102 || i == 104;
    }

    private boolean yn(com.huawei.location.cache.Vw vw, com.huawei.location.callback.d2 d2Var) {
        LocationRequest locationRequestVw = vw.Vw();
        boolean z = false;
        if (locationRequestVw == null) {
            return false;
        }
        long maxWaitTime = locationRequestVw.getMaxWaitTime();
        if (maxWaitTime != 0) {
            if (maxWaitTime >= locationRequestVw.getInterval() * 2) {
                LogConsole.i("HwLocationManager", "maxWaitTime is enable , add to MaxWaitTimeQueue");
                d2.Vw.yn.yn(d2Var, vw.E5(), locationRequestVw.getMaxWaitTime(), locationRequestVw);
                z = true;
            }
            locationRequestVw.setMaxWaitTime(0L);
        }
        return z;
    }

    public synchronized void FB(com.huawei.location.cache.Vw vw, oc ocVar) {
        com.huawei.location.callback.d2 d2VarYn;
        if (com.huawei.location.cache.yn.Vw().yn(vw.d2())) {
            try {
                yn(vw.d2());
            } catch (LocationServiceException unused) {
                LogConsole.e("HwLocationManager", "requestLocationUpdatesEx throw locationServiceException");
            }
        }
        int iFB = vw.FB();
        RequestLocationUpdatesRequest requestLocationUpdatesRequestDC = vw.dC();
        LogConsole.i("HwLocationManager", "requestLocationUpdatesEx priority = " + iFB);
        if (iFB == 300) {
            d2VarYn = yn(vw, ocVar);
        } else {
            if (iFB != 200) {
                Vw(vw, ocVar);
                return;
            }
            com.huawei.location.callback.E5 e5 = new com.huawei.location.callback.E5(requestLocationUpdatesRequestDC, ocVar);
            e5.Vw(yn(vw, e5));
            vw.yn(e5);
            com.huawei.location.cache.yn.Vw().yn(vw);
            com.huawei.location.gnss.api.yn.yn().yn(requestLocationUpdatesRequestDC, e5);
            d2VarYn = e5;
        }
        d2VarYn.yn.yn();
        yn(d2VarYn);
        int iFB2 = vw.FB();
        if (this.LW == null) {
            this.LW = new dC();
        }
        if (yn(iFB2)) {
            this.LW.registerNetworkObserve();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Location Vw() {
        if (!LocationUtil.isLocationEnabled(ContextUtil.getContext())) {
            LogConsole.i("HwLocationManager", "location unable");
            return null;
        }
        Location locationYn = com.huawei.location.gnss.api.yn.yn().yn("gps");
        Location locationYn2 = com.huawei.location.gnss.api.yn.yn().yn("network");
        Location locationFB = com.huawei.location.cache.yn.Vw().FB();
        if (locationYn2 != null) {
            if (locationFB == null) {
                LogConsole.i("HwLocationManager", "cacheLocation loacation is null,use native network");
            } else {
                long elapsedRealtimeNanos = locationYn2.getElapsedRealtimeNanos();
                long elapsedRealtimeNanos2 = locationFB.getElapsedRealtimeNanos();
                LogConsole.i("HwLocationManager", "nativeLocTime:" + elapsedRealtimeNanos + ",cacheLocTime:" + elapsedRealtimeNanos2);
                if (elapsedRealtimeNanos - elapsedRealtimeNanos2 <= 60000000000L) {
                }
            }
            if (locationYn != null) {
                LogConsole.i("HwLocationManager", "return netBestLoc");
                return locationYn2;
            }
            if (locationYn2 == null) {
                LogConsole.i("HwLocationManager", "return nativeGPSLoc");
                return locationYn;
            }
            long elapsedRealtimeNanos3 = locationYn.getElapsedRealtimeNanos();
            long elapsedRealtimeNanos4 = locationYn2.getElapsedRealtimeNanos();
            if (Math.abs(elapsedRealtimeNanos3 - elapsedRealtimeNanos4) < 11000000000L) {
                if (locationYn.getAccuracy() < locationYn2.getAccuracy()) {
                    LogConsole.i("HwLocationManager", "return nativeGPSLoc");
                    return locationYn;
                }
                LogConsole.i("HwLocationManager", "return netBestLoc");
                return locationYn2;
            }
            if (elapsedRealtimeNanos3 > elapsedRealtimeNanos4) {
                LogConsole.i("HwLocationManager", "return nativeGPSLoc");
                return locationYn;
            }
            LogConsole.i("HwLocationManager", "return netBestLoc");
            return locationYn2;
        }
        LogConsole.i("HwLocationManager", "native network is null,use cache network");
        locationYn2 = locationFB;
        if (locationYn != null) {
        }
    }

    public synchronized void Vw(com.huawei.location.cache.Vw vw, oc ocVar) {
        com.huawei.location.callback.d2 utVar;
        com.huawei.location.gnss.api.yn ynVarYn;
        RequestLocationUpdatesRequest requestLocationUpdatesRequestDC;
        if (com.huawei.location.cache.yn.Vw().yn(vw.d2())) {
            try {
                yn(vw.d2());
            } catch (LocationServiceException unused) {
                LogConsole.e("HwLocationManager", "requestLocationUpdates throw locationServiceException");
            }
        }
        RequestLocationUpdatesRequest requestLocationUpdatesRequestDC2 = vw.dC();
        if (TextUtils.equals(vw.LW(), "network")) {
            utVar = yn(vw, ocVar);
        } else if (TextUtils.equals(vw.LW(), "fused")) {
            if (yn) {
                utVar = new com.huawei.location.callback.dC(vw.dC(), ocVar);
                utVar.Vw(yn(vw, utVar));
                vw.yn(utVar);
                com.huawei.location.cache.yn.Vw().yn(vw);
                this.E5.Vw(vw);
                ynVarYn = com.huawei.location.gnss.api.yn.yn();
                requestLocationUpdatesRequestDC = vw.dC();
            } else {
                utVar = new ut(vw.dC(), ocVar);
                utVar.Vw(yn(vw, utVar));
                vw.yn(utVar);
                com.huawei.location.cache.yn.Vw().yn(vw);
                com.huawei.location.nlp.api.yn.yn().Vw(vw.dC());
                ynVarYn = com.huawei.location.gnss.api.yn.yn();
                requestLocationUpdatesRequestDC = vw.dC();
            }
            ynVarYn.yn(requestLocationUpdatesRequestDC, utVar);
        } else {
            if (!TextUtils.equals(vw.LW(), "passive")) {
                LogConsole.i("HwLocationManager", "end");
                return;
            }
            com.huawei.location.callback.zp zpVar = new com.huawei.location.callback.zp(requestLocationUpdatesRequestDC2, ocVar);
            zpVar.Vw(yn(vw, zpVar));
            vw.yn(zpVar);
            com.huawei.location.cache.yn.Vw().yn(vw);
            com.huawei.location.gnss.api.yn.yn().yn(requestLocationUpdatesRequestDC2, zpVar);
            utVar = zpVar;
        }
        ocVar.yn();
        yn(utVar);
        int iFB = vw.FB();
        if (this.LW == null) {
            this.LW = new dC();
        }
        if (yn(iFB)) {
            this.LW.registerNetworkObserve();
        }
    }

    public void yn(String str) {
        com.huawei.location.cache.Vw Vw2 = com.huawei.location.cache.yn.Vw().Vw(str);
        if (Vw2 == null || TextUtils.isEmpty(Vw2.LW())) {
            throw new LocationServiceException(LocationStatusCode.NO_MATCHED_CALLBACK, LocationStatusCode.getStatusCodeString(LocationStatusCode.NO_MATCHED_CALLBACK));
        }
        yn(Vw2);
    }
}
