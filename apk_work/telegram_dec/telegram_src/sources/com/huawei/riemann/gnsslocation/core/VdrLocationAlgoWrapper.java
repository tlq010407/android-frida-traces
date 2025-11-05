package com.huawei.riemann.gnsslocation.core;

import android.content.Context;
import com.huawei.location.FB;
import com.huawei.riemann.gnsslocation.core.bean.DeviceInfo;
import com.huawei.riemann.gnsslocation.core.bean.eph.Ephemeris;
import com.huawei.riemann.gnsslocation.core.bean.obs.GnssClock;
import com.huawei.riemann.gnsslocation.core.bean.obs.Pvt;
import com.huawei.riemann.gnsslocation.core.bean.obs.SatelliteMeasurement;
import com.huawei.riemann.gnsslocation.core.bean.sensor.MotionSensors;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class VdrLocationAlgoWrapper {
    public static boolean FB = false;
    public static final Object Vw = new Object();
    public static volatile VdrLocationAlgoWrapper yn;

    public VdrLocationAlgoWrapper(Context context, String str) {
        FB = FB.Vw(context, "libVdr.so", str);
    }

    public static VdrLocationAlgoWrapper yn(Context context, String str) {
        if (yn == null) {
            synchronized (Vw) {
                try {
                    if (yn == null) {
                        yn = new VdrLocationAlgoWrapper(context, str);
                    }
                } finally {
                }
            }
        }
        return yn;
    }

    public native Pvt vdrProcess(Pvt pvt, GnssClock[] gnssClockArr, SatelliteMeasurement[] satelliteMeasurementArr, MotionSensors motionSensors, Pvt pvt2);

    public native int vdrStart(DeviceInfo deviceInfo, String str);

    public native int vdrStop();

    public native void vdrUpdateEphemeris(Ephemeris ephemeris);
}
