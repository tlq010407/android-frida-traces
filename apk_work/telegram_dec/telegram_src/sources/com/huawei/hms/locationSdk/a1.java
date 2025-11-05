package com.huawei.hms.locationSdk;

import android.annotation.SuppressLint;
import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.location.HWLocation;
import com.huawei.hms.location.LocationResult;
import com.huawei.hms.support.api.location.common.HMSLocationLog;
import com.huawei.hms.ui.SafeBundle;
import com.huawei.location.lite.common.util.ExecutorUtil;
import com.huawei.location.vdr.VdrManager;
import com.huawei.location.vdr.control.VDRControl;
import com.huawei.location.vdr.listener.IVdrLocationListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;

@SuppressLint({"NewApi"})
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class a1 extends z0 implements IVdrLocationListener {
    private VdrManager d;
    private long e;
    private final String f;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            HMSLocationLog.i("RequestLocationExVdrUpdatesTaskApiCall", a1.this.a, "new thread to judge vdr config");
            if (new VDRControl().isSupport(a1.this.f)) {
                a1.this.d = new VdrManager();
                a1.this.d.registerVdrLocationLis(a1.this);
                f0.b().a(new e0(a1.this.b.c(), a1.this.d));
            }
        }
    }

    public a1(String str, String str2, String str3, d0 d0Var, Looper looper, String str4, String str5) throws ApiException {
        super(str, str2, str3, d0Var, looper, str4);
        this.f = str5;
    }

    private boolean a(int i) {
        return i >= 8 && ((i >> 3) & 1) == 1;
    }

    private boolean a(Location location) {
        if (location == null) {
            return false;
        }
        return a(new SafeBundle(location.getExtras()).getInt("SourceType", -1));
    }

    public static HWLocation b(Location location) {
        if (location == null) {
            return null;
        }
        HWLocation hWLocation = new HWLocation();
        hWLocation.setTime(location.getTime());
        int i = Build.VERSION.SDK_INT;
        hWLocation.setElapsedRealtimeNanos(location.getElapsedRealtimeNanos());
        hWLocation.setLatitude(location.getLatitude());
        hWLocation.setLongitude(location.getLongitude());
        hWLocation.setAltitude(location.getAltitude());
        hWLocation.setSpeed(location.getSpeed());
        hWLocation.setBearing(location.getBearing());
        hWLocation.setAccuracy(location.getAccuracy());
        if (i >= 26) {
            hWLocation.setVerticalAccuracyMeters(location.getVerticalAccuracyMeters());
            hWLocation.setSpeedAccuracyMetersPerSecond(location.getSpeedAccuracyMetersPerSecond());
            hWLocation.setBearingAccuracyDegrees(location.getBearingAccuracyDegrees());
        }
        HashMap map = new HashMap();
        Bundle extras = location.getExtras();
        if (extras != null && extras.containsKey("LocationSource")) {
            map.put("LocationSource", extras.get("LocationSource"));
        }
        hWLocation.setExtraInfo(map);
        return hWLocation;
    }

    @Override // com.huawei.hms.locationSdk.z0
    protected void a(LocationResult locationResult) {
        VdrManager vdrManager = this.d;
        if (vdrManager == null || !vdrManager.isVdrIntervalStart()) {
            this.b.c().onLocationResult(locationResult);
            return;
        }
        HMSLocationLog.d("RequestLocationExVdrUpdatesTaskApiCall", this.a, "vdr sync location");
        if (a(locationResult.getLastLocation())) {
            this.e = locationResult.getLastLocation().getElapsedRealtimeNanos();
            this.b.c().onLocationResult(locationResult);
        }
        this.d.syncLocation(locationResult.getLastLocation());
    }

    @Override // com.huawei.hms.locationSdk.z0
    protected void a(boolean z) {
        super.a(z);
        if (z) {
            ExecutorUtil.getInstance().execute(new a());
            return;
        }
        VdrManager vdrManager = this.d;
        if (vdrManager != null) {
            vdrManager.unRegisterVdrLocationLis();
            this.d = null;
        }
    }

    @Override // com.huawei.location.vdr.listener.IVdrLocationListener
    public void onVdrLocationChanged(Location location) {
        HMSLocationLog.i("RequestLocationExVdrUpdatesTaskApiCall", this.a, "onVdrLocationChanged");
        if (location != null && location.getElapsedRealtimeNanos() - this.e >= TimeUnit.MILLISECONDS.toNanos(this.b.d().getFastestInterval() + 100)) {
            HWLocation hWLocationB = b(location);
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(hWLocationB);
            LocationResult locationResultCreate = LocationResult.create(arrayList);
            Message messageObtain = Message.obtain();
            messageObtain.what = 3;
            messageObtain.obj = locationResultCreate;
            this.c.sendMessage(messageObtain);
        }
    }
}
