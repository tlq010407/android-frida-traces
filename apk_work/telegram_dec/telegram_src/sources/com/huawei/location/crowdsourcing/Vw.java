package com.huawei.location.crowdsourcing;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import com.huawei.hms.support.api.location.common.LocationConstant;
import com.huawei.location.crowdsourcing.Config;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.PermissionUtil;
import com.huawei.location.lite.common.util.ROMUtil;
import com.huawei.secure.android.common.intent.SafeBundle;
import com.huawei.secure.android.common.intent.SafeIntent;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final class Vw {
    private static Context Vw = null;
    private static boolean yn = false;
    private long E5;
    private C0017Vw FB;
    private final FB G3;
    private LW LW;
    private com.huawei.location.crowdsourcing.FB Ot;
    private double d2;
    private final List dC = new ArrayList();
    private com.huawei.location.crowdsourcing.yn oc;
    private dC ut;
    private double zp;

    private class FB extends Handler {
        FB(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) throws IOException {
            String str;
            String str2;
            int i = message.what;
            if (i == 1) {
                LogConsole.i("Crowdsourcing", "handleMessage: LOCATION_CHANGED");
                Object obj = message.obj;
                if (obj instanceof Location) {
                    Vw.yn(Vw.this, (Location) obj);
                    return;
                } else {
                    LogConsole.e("Crowdsourcing", "handleMessage not location obj");
                    return;
                }
            }
            if (i == 0) {
                LogConsole.i("Crowdsourcing", "begin init");
                if (Vw.yn(Vw.this, getLooper())) {
                    str2 = "init finished";
                    LogConsole.i("Crowdsourcing", str2);
                } else {
                    str = "init failed";
                    LogConsole.e("Crowdsourcing", str);
                    Vw.yn(Vw.this);
                    getLooper().quitSafely();
                }
            }
            if (i != 2) {
                LogConsole.e("Crowdsourcing", "unknown msg:" + message.what);
                return;
            }
            if (Config.FB.yn.yn(com.huawei.location.crowdsourcing.common.util.dC.Vw(Vw.Vw()))) {
                str2 = "check mcc success";
                LogConsole.i("Crowdsourcing", str2);
            } else {
                str = "check mcc failed";
                LogConsole.e("Crowdsourcing", str);
                Vw.yn(Vw.this);
                getLooper().quitSafely();
            }
        }
    }

    private class LW extends BroadcastReceiver {
        private LW() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = new SafeIntent(intent).getAction();
            if (action == null) {
                LogConsole.e("Crowdsourcing", "get null action");
                return;
            }
            if (!action.equals("android.intent.action.SIM_STATE_CHANGED")) {
                LogConsole.e("Crowdsourcing", "receive unknown action,action:" + action);
                return;
            }
            LogConsole.d("Crowdsourcing", "onReceive action=" + action);
            Vw.this.G3.obtainMessage(2).sendToTarget();
        }
    }

    /* renamed from: com.huawei.location.crowdsourcing.Vw$Vw, reason: collision with other inner class name */
    private class C0017Vw implements LocationListener {
        private C0017Vw() {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            if (location == null) {
                LogConsole.e("Crowdsourcing", "location null");
                return;
            }
            SafeBundle safeBundle = new SafeBundle(location.getExtras());
            if (safeBundle.getBundle() != null && safeBundle.getInt("accuracyType") == 1 && ROMUtil.isHuaweiPlatformDevice()) {
                LogConsole.d("Crowdsourcing", "approximate not collect");
            } else {
                Vw.this.G3.obtainMessage(1, location).sendToTarget();
            }
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
            LogConsole.d("Crowdsourcing", "onProviderDisabled");
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            LogConsole.d("Crowdsourcing", "onProviderEnabled");
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
            LogConsole.d("Crowdsourcing", "onStatusChanged");
        }
    }

    private Vw(Looper looper) {
        this.G3 = new FB(looper);
    }

    private boolean FB() {
        String str;
        LW lw = new LW();
        this.LW = lw;
        Vw().registerReceiver(lw, new IntentFilter("android.intent.action.SIM_STATE_CHANGED"));
        LogConsole.i("Crowdsourcing", "sim state change register success");
        C0017Vw c0017Vw = new C0017Vw();
        this.FB = c0017Vw;
        if (FB(this)) {
            Object systemService = Vw.getSystemService("location");
            if (systemService instanceof LocationManager) {
                try {
                    ((LocationManager) systemService).requestLocationUpdates("passive", 0L, BitmapDescriptorFactory.HUE_RED, c0017Vw);
                    LogConsole.i("Crowdsourcing", "location listener register success");
                    return true;
                } catch (IllegalArgumentException unused) {
                    str = "LocationManager requestLocationUpdates throw IllegalArgumentException";
                } catch (SecurityException unused2) {
                    str = "LocationManager requestLocationUpdates throw SecurityException";
                } catch (Exception unused3) {
                    str = "LocationManager requestLocationUpdates throw other exception";
                }
            } else {
                str = "not get LocationManager";
            }
        } else {
            str = "check permission failed";
        }
        LogConsole.e("Crowdsourcing", str);
        return false;
    }

    static boolean FB(Vw vw) {
        vw.getClass();
        if (Build.VERSION.SDK_INT >= 29 && !PermissionUtil.checkSelfPermission(Vw, LocationConstant.BACKGROUND_PERMISSION)) {
            LogConsole.w("Crowdsourcing", "can not access background location");
        }
        return PermissionUtil.checkSelfPermission(Vw, "android.permission.ACCESS_FINE_LOCATION") && PermissionUtil.checkSelfPermission(Vw, "android.permission.ACCESS_COARSE_LOCATION");
    }

    static Context Vw() {
        return Vw;
    }

    public static void yn(Context context) {
        if (yn) {
            LogConsole.d("Crowdsourcing", "double start");
            return;
        }
        if (context == null) {
            LogConsole.e("Crowdsourcing", "context is null");
            return;
        }
        synchronized (Vw.class) {
            try {
                if (yn) {
                    LogConsole.d("Crowdsourcing", "double start");
                    return;
                }
                LogConsole.i("Crowdsourcing", "start");
                Vw = context.getApplicationContext();
                HandlerThread handlerThread = new HandlerThread("Crowdsourcing");
                handlerThread.start();
                new Vw(handlerThread.getLooper()).G3.obtainMessage(0).sendToTarget();
                yn = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    static void yn(Vw vw) {
        vw.getClass();
        LogConsole.w("Crowdsourcing", "Stop");
        C0017Vw c0017Vw = vw.FB;
        if (c0017Vw != null) {
            Object systemService = Vw.getSystemService("location");
            if (systemService instanceof LocationManager) {
                ((LocationManager) systemService).removeUpdates(c0017Vw);
            } else {
                LogConsole.e("Crowdsourcing", "not get LocationManager");
            }
        }
        LW lw = vw.LW;
        if (lw != null) {
            Vw().unregisterReceiver(lw);
        }
        Iterator it = vw.dC.iterator();
        while (it.hasNext()) {
            ((com.huawei.location.crowdsourcing.common.yn) it.next()).yn();
        }
        com.huawei.location.crowdsourcing.FB fb = vw.Ot;
        if (fb != null) {
            fb.Vw();
        }
    }

    static void yn(Vw vw, Location location) throws IOException {
        String string;
        StringBuilder sb;
        vw.getClass();
        long jAbs = Math.abs(System.currentTimeMillis() - vw.E5);
        if (jAbs < Config.FB.yn.ut()) {
            sb = new StringBuilder();
            sb.append("not need collect, collect interval check failed. timeDiff:");
            sb.append(jAbs);
        } else {
            float[] fArr = new float[1];
            Location.distanceBetween(location.getLatitude(), location.getLongitude(), vw.d2, vw.zp, fArr);
            float f = fArr[0];
            if (f >= Config.FB.yn.zp()) {
                LogConsole.d("Crowdsourcing", "collect");
                List listVw = vw.ut.Vw();
                List listVw2 = vw.oc.Vw();
                if (listVw == null && listVw2 == null) {
                    string = "no wifi and no cell, not collect";
                    LogConsole.d("Crowdsourcing", string);
                } else {
                    vw.Ot.yn(location, listVw, listVw2);
                    vw.E5 = System.currentTimeMillis();
                    vw.d2 = location.getLatitude();
                    vw.zp = location.getLongitude();
                    return;
                }
            }
            sb = new StringBuilder();
            sb.append("not need collect, collect distance check failed. distanceDiff:");
            sb.append(f);
        }
        string = sb.toString();
        LogConsole.d("Crowdsourcing", string);
    }

    static boolean yn(Vw vw, Looper looper) {
        String str;
        vw.getClass();
        Config config = Config.FB.yn;
        vw.dC.add(config);
        if (!config.yn(Vw, looper)) {
            str = "config init failed";
        } else if (config.SI()) {
            str = "switch is closed";
        } else {
            dC dCVar = new dC(looper);
            vw.ut = dCVar;
            vw.dC.add(dCVar);
            com.huawei.location.crowdsourcing.yn ynVar = new com.huawei.location.crowdsourcing.yn();
            vw.oc = ynVar;
            vw.dC.add(ynVar);
            try {
                com.huawei.location.crowdsourcing.FB fb = new com.huawei.location.crowdsourcing.FB(looper, Vw.getFilesDir().getCanonicalPath());
                vw.Ot = fb;
                vw.dC.add(fb);
                vw.ut.FB();
                vw.oc.getClass();
                if (!PermissionUtil.checkSelfPermission(Vw(), "android.permission.ACCESS_FINE_LOCATION")) {
                    str = "cellCollector init failed";
                } else {
                    if (vw.Ot.FB()) {
                        return vw.FB();
                    }
                    str = "recorder init failed";
                }
            } catch (IOException unused) {
                str = "get folder path failed";
            }
        }
        LogConsole.e("Crowdsourcing", str);
        return false;
    }
}
