package com.huawei.riemann.common.api.location;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.huawei.location.Vw;
import com.huawei.riemann.location.SdmLocationAlgoWrapper;
import com.huawei.riemann.location.bean.DeviceInfo;
import com.huawei.riemann.location.bean.eph.Ephemeris;
import com.huawei.riemann.location.bean.obs.GnssClock;
import com.huawei.riemann.location.bean.obs.GnssRawObservation;
import com.huawei.riemann.location.bean.obs.Pvt;
import com.huawei.riemann.location.bean.obs.SatelliteMeasurement;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class SdmLocationClient {
    public static final String TAG = "SdmLocationClient";
    public Context mContext;
    public Vw mSdmLocManager;

    public SdmLocationClient(Context context, Intent intent, String str) {
        try {
            if (context == null) {
                throw new IllegalArgumentException("Context can not be null");
            }
            Context applicationContext = context.getApplicationContext();
            this.mContext = applicationContext;
            this.mSdmLocManager = new Vw(applicationContext, intent, str);
        } catch (IllegalArgumentException e) {
            Log.e(TAG, e.getMessage() != null ? e.getMessage() : "IllegalArgumentException2");
        }
    }

    public SdmLocationClient(Context context, Looper looper, String str) {
        try {
            if (context == null) {
                throw new IllegalArgumentException("Context can not be null");
            }
            Context applicationContext = context.getApplicationContext();
            this.mContext = applicationContext;
            this.mSdmLocManager = new Vw(applicationContext, looper, str);
        } catch (IllegalArgumentException e) {
            Log.e(TAG, e.getMessage() != null ? e.getMessage() : "IllegalArgumentException3");
        }
    }

    public SdmLocationClient(Context context, String str) {
        try {
            if (context == null) {
                throw new IllegalArgumentException("Context can not be null");
            }
            Context applicationContext = context.getApplicationContext();
            this.mContext = applicationContext;
            this.mSdmLocManager = new Vw(applicationContext, str);
        } catch (IllegalArgumentException e) {
            Log.e(TAG, e.getMessage() != null ? e.getMessage() : "IllegalArgumentException1");
        }
    }

    public Pvt process(Pvt pvt, GnssRawObservation[] gnssRawObservationArr) {
        String str;
        String str2;
        Vw vw = this.mSdmLocManager;
        if (vw == null) {
            Log.e(TAG, "proc n");
            return pvt;
        }
        if (pvt == null) {
            str2 = "pvt null";
        } else {
            if (gnssRawObservationArr != null) {
                SdmLocationAlgoWrapper sdmLocationAlgoWrapper = vw.G3;
                if (sdmLocationAlgoWrapper == null || !sdmLocationAlgoWrapper.FB) {
                    str = "wp is null";
                } else {
                    GnssClock[] gnssClockArr = new GnssClock[gnssRawObservationArr.length];
                    SatelliteMeasurement[] satelliteMeasurementArr = new SatelliteMeasurement[gnssRawObservationArr.length];
                    for (int i = 0; i < gnssRawObservationArr.length; i++) {
                        gnssClockArr[i] = gnssRawObservationArr[i].getGnssClock();
                        satelliteMeasurementArr[i] = gnssRawObservationArr[i].getSatelliteMeasurement();
                    }
                    pvt = vw.G3.sdmProcess(pvt, gnssClockArr, satelliteMeasurementArr);
                    Log.v("SdmLocationManager", "p lph null");
                    if (vw.zp != null) {
                        return pvt;
                    }
                    str = "p ops null";
                }
                Log.e("SdmLocationManager", str);
                return pvt;
            }
            str2 = "obs null";
        }
        Log.e("SdmLocationManager", str2);
        return null;
    }

    public int startLocation(DeviceInfo deviceInfo, CityTileCallback cityTileCallback) {
        String str;
        Vw vw = this.mSdmLocManager;
        if (vw == null) {
            Log.e(TAG, "start n");
            return -1;
        }
        if (vw.dW) {
            str = "already started";
        } else {
            vw.yn(null);
            Vw.LW lw = vw.zp;
            if (lw != null) {
                vw.h1 = cityTileCallback;
                vw.Yx = new Vw.C0012Vw(lw, cityTileCallback);
            } else {
                vw.Yx = new Vw.C0012Vw(new Handler(Looper.getMainLooper()), cityTileCallback);
            }
            Log.v("SdmLocationManager", "lph is null");
            SdmLocationAlgoWrapper sdmLocationAlgoWrapper = vw.G3;
            if (sdmLocationAlgoWrapper != null && sdmLocationAlgoWrapper.FB) {
                sdmLocationAlgoWrapper.sdmStart(deviceInfo, vw.Yx, "");
                vw.dW = true;
                return 0;
            }
            str = "wp is null";
        }
        Log.e("SdmLocationManager", str);
        vw.dW = true;
        return 0;
    }

    public void stopLocation() {
        Vw vw = this.mSdmLocManager;
        if (vw == null) {
            Log.e(TAG, "stop n");
            return;
        }
        if (vw.dW) {
            SdmLocationAlgoWrapper sdmLocationAlgoWrapper = vw.G3;
            if (sdmLocationAlgoWrapper == null || !sdmLocationAlgoWrapper.FB) {
                Log.e("SdmLocationManager", "wp is null");
            } else {
                sdmLocationAlgoWrapper.sdmStop();
            }
            vw.h1 = null;
            vw.Yx = null;
            if (vw.Ot) {
                Vw.dC dCVar = vw.E5;
                if (dCVar != null) {
                    dCVar.removeCallbacksAndMessages(null);
                }
                Vw.LW lw = vw.zp;
                if (lw != null) {
                    lw.removeCallbacksAndMessages(null);
                }
                Vw.FB fb = vw.d2;
                if (fb != null) {
                    fb.quitSafely();
                }
                vw.E5 = null;
                vw.zp = null;
                vw.d2 = null;
            }
            vw.Ot = false;
            Log.v("SdmLocationManager", "lph is null");
        } else {
            Log.e("SdmLocationManager", "already stopped");
        }
        vw.dW = false;
    }

    public void updateEphemeris(Ephemeris ephemeris) {
        Vw vw = this.mSdmLocManager;
        if (vw == null) {
            Log.e(TAG, "eph n");
            return;
        }
        SdmLocationAlgoWrapper sdmLocationAlgoWrapper = vw.G3;
        if (sdmLocationAlgoWrapper == null || !sdmLocationAlgoWrapper.FB) {
            Log.e("SdmLocationManager", "wp is null");
            return;
        }
        Log.v("SdmLocationManager", "e lph null");
        if (vw.zp == null) {
            Log.e("SdmLocationManager", "e ops null");
        }
        vw.G3.sdmUpdateEphemeris(ephemeris);
    }
}
