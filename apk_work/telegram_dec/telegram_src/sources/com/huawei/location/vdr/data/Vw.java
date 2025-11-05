package com.huawei.location.vdr.data;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.riemann.gnsslocation.core.bean.sensor.MotionSensors;
import com.huawei.riemann.gnsslocation.core.bean.sensor.SensorAccInput;
import com.huawei.riemann.gnsslocation.core.bean.sensor.SensorGyroInput;
import com.huawei.riemann.gnsslocation.core.bean.sensor.SensorGyroUncalInput;
import java.util.NavigableMap;
import java.util.TreeMap;
import java.util.concurrent.TimeUnit;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class Vw {
    Handler E5;
    SensorManager d2;
    HandlerThread dC;
    private final Object yn = new Object();
    NavigableMap Vw = new TreeMap();
    NavigableMap FB = new TreeMap();
    NavigableMap LW = new TreeMap();
    private SensorEventListener zp = new yn();

    class yn implements SensorEventListener {
        yn() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            Vw.this.yn(sensorEvent);
        }
    }

    public Vw() {
        yn();
    }

    private void yn() {
        HandlerThread handlerThread = new HandlerThread("Loc-Vdr-sensor");
        this.dC = handlerThread;
        handlerThread.start();
        this.E5 = new Handler(this.dC.getLooper());
        Object systemService = ContextUtil.getContext().getSystemService("sensor");
        if (systemService instanceof SensorManager) {
            SensorManager sensorManager = (SensorManager) systemService;
            this.d2 = sensorManager;
            sensorManager.registerListener(this.zp, sensorManager.getDefaultSensor(1), 10000, this.E5);
            SensorManager sensorManager2 = this.d2;
            sensorManager2.registerListener(this.zp, sensorManager2.getDefaultSensor(4), 10000, this.E5);
            SensorManager sensorManager3 = this.d2;
            sensorManager3.registerListener(this.zp, sensorManager3.getDefaultSensor(16), 10000, this.E5);
        }
        LogConsole.i("SensorProvider", "RegisterMeasurements success.");
    }

    public void Vw() {
        SensorManager sensorManager = this.d2;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this.zp);
        }
        HandlerThread handlerThread = this.dC;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
        this.E5 = null;
    }

    public MotionSensors yn(long j, long j2) {
        synchronized (this.yn) {
            try {
                if (this.Vw.isEmpty() && this.FB.isEmpty() && this.LW.isEmpty()) {
                    LogConsole.i("SensorProvider", "sensor info is not ready!");
                    return null;
                }
                if (j > j2) {
                    LogConsole.e("SensorProvider", "TimeStamp input illegal.");
                    return null;
                }
                SensorAccInput[] sensorAccInputArr = (SensorAccInput[]) this.Vw.subMap(Long.valueOf(j), false, Long.valueOf(j2), true).values().toArray(new SensorAccInput[0]);
                SensorGyroInput[] sensorGyroInputArr = (SensorGyroInput[]) this.FB.subMap(Long.valueOf(j), false, Long.valueOf(j2), true).values().toArray(new SensorGyroInput[0]);
                SensorGyroUncalInput[] sensorGyroUncalInputArr = (SensorGyroUncalInput[]) this.LW.subMap(Long.valueOf(j), false, Long.valueOf(j2), true).values().toArray(new SensorGyroUncalInput[0]);
                LogConsole.i("SensorProvider", "vdr sensor info acc: " + sensorAccInputArr.length + ", gyro: " + sensorGyroInputArr.length + ", uncal: " + sensorGyroUncalInputArr.length);
                return MotionSensors.Builder.aSensor().withAccInputs(sensorAccInputArr).withGyroInputs(sensorGyroInputArr).withGyroUncalInputs(sensorGyroUncalInputArr).build();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void yn(SensorEvent sensorEvent) {
        NavigableMap navigableMap;
        Long lValueOf;
        Object objBuild;
        synchronized (this.yn) {
            try {
                int type = sensorEvent.sensor.getType();
                float[] fArr = sensorEvent.values;
                long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
                if (type != 1) {
                    if (type != 4) {
                        if (type == 16) {
                            if (fArr.length < 6) {
                                return;
                            }
                            if (this.LW.size() > 1000) {
                                NavigableMap navigableMap2 = this.LW;
                                navigableMap2.remove(navigableMap2.firstKey());
                            }
                            this.LW.put(Long.valueOf(jElapsedRealtimeNanos), SensorGyroUncalInput.Builder.aSensorGyroUncalInput().withUgx(fArr[0]).withUgy(fArr[1]).withUgz(fArr[2]).withBiasx(fArr[3]).withBiasy(fArr[4]).withBiasz(fArr[5]).withBt(TimeUnit.NANOSECONDS.toMillis(jElapsedRealtimeNanos)).build());
                        }
                    }
                    if (fArr.length < 3) {
                        return;
                    }
                    if (this.FB.size() > 1000) {
                        NavigableMap navigableMap3 = this.FB;
                        navigableMap3.remove(navigableMap3.firstKey());
                    }
                    navigableMap = this.FB;
                    lValueOf = Long.valueOf(jElapsedRealtimeNanos);
                    objBuild = SensorGyroInput.Builder.aSensorGyroInput().withGx(fArr[0]).withGy(fArr[1]).withGz(fArr[2]).withBootTime(TimeUnit.NANOSECONDS.toMillis(jElapsedRealtimeNanos)).build();
                } else {
                    if (fArr.length < 3) {
                        return;
                    }
                    if (this.Vw.size() > 1000) {
                        NavigableMap navigableMap4 = this.Vw;
                        navigableMap4.remove(navigableMap4.firstKey());
                    }
                    navigableMap = this.Vw;
                    lValueOf = Long.valueOf(jElapsedRealtimeNanos);
                    objBuild = SensorAccInput.Builder.aSensorAccInput().withAx(fArr[0]).withAy(fArr[1]).withAz(fArr[2]).withBootTime(TimeUnit.NANOSECONDS.toMillis(jElapsedRealtimeNanos)).build();
                }
                navigableMap.put(lValueOf, objBuild);
            } finally {
            }
        }
    }
}
