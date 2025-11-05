package com.huawei.location.gnss.api;

import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.huawei.hms.location.LocationRequest;
import com.huawei.hms.support.api.entity.location.updates.RequestLocationUpdatesRequest;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.PermissionUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class yn {
    private static volatile yn Vw;
    private static final byte[] yn = new byte[0];
    private com.huawei.location.gnss.sdm.Vw E5;
    private LocationManager FB;
    private List LW = null;
    private HandlerThread dC;

    private yn() {
        HandlerThread handlerThread = new HandlerThread("Loc-GNSS");
        this.dC = handlerThread;
        handlerThread.start();
        Object systemService = ContextUtil.getContext().getSystemService("location");
        if (systemService instanceof LocationManager) {
            this.FB = (LocationManager) systemService;
        }
    }

    public static yn yn() {
        if (Vw == null) {
            synchronized (yn) {
                try {
                    if (Vw == null) {
                        Vw = new yn();
                    }
                } finally {
                }
            }
        }
        return Vw;
    }

    public synchronized Location yn(String str) {
        Location lastKnownLocation;
        try {
            lastKnownLocation = this.FB.getLastKnownLocation(str);
        } catch (SecurityException unused) {
            LogConsole.e("GnssClient", "getLastKnownLocation, security exception");
            lastKnownLocation = null;
        }
        return lastKnownLocation;
    }

    public synchronized void yn(LocationListener locationListener) {
        LogConsole.i("GnssClient", "removeLocationUpdates");
        if (!PermissionUtil.checkSelfPermission(ContextUtil.getContext(), "android.permission.ACCESS_FINE_LOCATION")) {
            LogConsole.e("GnssClient", "checkSelfPermission fail");
            return;
        }
        List list = this.LW;
        if (list == null || !list.remove(locationListener)) {
            this.FB.removeUpdates(locationListener);
        } else {
            this.E5.Vw(locationListener);
        }
    }

    public synchronized void yn(RequestLocationUpdatesRequest requestLocationUpdatesRequest, LocationListener locationListener) {
        String str;
        String str2;
        String str3;
        if (!PermissionUtil.checkSelfPermission(ContextUtil.getContext(), "android.permission.ACCESS_FINE_LOCATION")) {
            LogConsole.e("GnssClient", "checkSelfPermission fail");
            return;
        }
        LocationRequest locationRequest = requestLocationUpdatesRequest.getLocationRequest();
        if (!TextUtils.isEmpty(requestLocationUpdatesRequest.getTid()) && locationRequest != null) {
            LogConsole.i("GnssClient", "requestLocationUpdates, priority is " + locationRequest.getPriority() + ", interval is " + locationRequest.getInterval() + ", smallestDisplacement is " + locationRequest.getSmallestDisplacement());
            if (locationRequest.getPriority() == 100 || locationRequest.getPriority() == 200) {
                str = "gps";
            } else {
                if (locationRequest.getPriority() != 105) {
                    LogConsole.e("GnssClient", "priority is invalid");
                    return;
                }
                str = "passive";
            }
            String str4 = str;
            if (str4.equals("gps")) {
                Map<String, String> extras = locationRequest.getExtras();
                if (extras == null ? false : "1".equals(extras.get("SuperGnssEnable"))) {
                    if (this.LW == null) {
                        this.LW = new ArrayList();
                    }
                    if (this.E5 == null) {
                        this.E5 = new com.huawei.location.gnss.sdm.Vw();
                    }
                    if (this.E5.yn(locationRequest.getInterval(), locationRequest.getSmallestDisplacement(), locationListener)) {
                        this.LW.remove(locationListener);
                        this.LW.add(locationListener);
                        return;
                    }
                }
            }
            if (this.dC == null) {
                HandlerThread handlerThread = new HandlerThread("Loc-GNSS");
                this.dC = handlerThread;
                handlerThread.start();
            }
            try {
                this.FB.requestLocationUpdates(str4, locationRequest.getInterval(), locationRequest.getSmallestDisplacement(), locationListener, this.dC.getLooper());
            } catch (IllegalArgumentException unused) {
                str2 = "GnssClient";
                str3 = "LocationManager requestLocationUpdates throw IllegalArgumentException";
                LogConsole.e(str2, str3);
                return;
            } catch (SecurityException unused2) {
                str2 = "GnssClient";
                str3 = "LocationManager requestLocationUpdates throw SecurityException";
                LogConsole.e(str2, str3);
                return;
            } catch (Exception unused3) {
                str2 = "GnssClient";
                str3 = "LocationManager requestLocationUpdates throw other exception";
                LogConsole.e(str2, str3);
                return;
            }
            return;
        }
        LogConsole.e("GnssClient", "requestLocationUpdatesRequest is invalid");
    }
}
