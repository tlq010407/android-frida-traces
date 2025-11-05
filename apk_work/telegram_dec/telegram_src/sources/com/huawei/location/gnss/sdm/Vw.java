package com.huawei.location.gnss.sdm;

import android.location.Location;
import android.location.LocationListener;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.ReflectionUtils;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class Vw {
    private FB yn;
    private final CopyOnWriteArrayList Vw = new CopyOnWriteArrayList();
    private boolean FB = false;

    private static class yn {
        private final LocationListener FB;
        private final float Vw;
        private final long yn;
        private long LW = 0;
        private C0020yn dC = new C0020yn();

        /* renamed from: com.huawei.location.gnss.sdm.Vw$yn$yn, reason: collision with other inner class name */
        private static class C0020yn {
            private final double Vw;
            private final double yn;

            C0020yn() {
                this(0.0d, 0.0d);
            }

            C0020yn(double d, double d2) {
                this.yn = d;
                this.Vw = d2;
            }

            static float yn(C0020yn c0020yn, C0020yn c0020yn2) {
                float[] fArr = new float[1];
                double d = c0020yn.yn;
                double d2 = c0020yn2.Vw;
                Location.distanceBetween(d, d2, c0020yn2.yn, d2, fArr);
                return fArr[0];
            }
        }

        yn(long j, float f, LocationListener locationListener) {
            this.yn = j;
            this.Vw = f;
            this.FB = locationListener;
        }

        void yn(Location location) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jAbs = Math.abs(jCurrentTimeMillis - this.LW);
            if (jAbs < this.yn) {
                LogConsole.d("SdmProvider", "not need, interval check failed. timeDiff:" + jAbs);
                return;
            }
            C0020yn c0020yn = new C0020yn(location.getLatitude(), location.getLongitude());
            float fYn = C0020yn.yn(this.dC, c0020yn);
            if (fYn >= this.Vw) {
                this.LW = jCurrentTimeMillis;
                this.dC = c0020yn;
                this.FB.onLocationChanged(location);
            } else {
                LogConsole.d("SdmProvider", "not need, distance check failed. distanceDiff:" + fYn);
            }
        }
    }

    public Vw() {
        this.yn = null;
        if (yn()) {
            this.yn = new FB();
        }
    }

    static void yn(Vw vw, Location location) {
        Iterator it = vw.Vw.iterator();
        while (it.hasNext()) {
            ((yn) it.next()).yn(location);
        }
    }

    private static boolean yn() {
        if (ReflectionUtils.isSupportClass("com.huawei.location.sdm.Sdm")) {
            LogConsole.i("SdmProvider", "support sdm");
            return true;
        }
        LogConsole.w("SdmProvider", "not support sdm");
        return false;
    }

    private boolean yn(LocationListener locationListener) {
        Iterator it = this.Vw.iterator();
        yn ynVar = null;
        while (it.hasNext()) {
            yn ynVar2 = (yn) it.next();
            if (ynVar2.FB == locationListener) {
                ynVar = ynVar2;
            }
        }
        if (ynVar == null) {
            return false;
        }
        return this.Vw.remove(ynVar);
    }

    public void Vw(LocationListener locationListener) {
        if (!yn(locationListener)) {
            LogConsole.d("SdmProvider", "not need remove");
            return;
        }
        if (this.FB && this.Vw.isEmpty()) {
            this.yn.yn();
            this.FB = false;
        }
        LogConsole.i("SdmProvider", "remove success");
    }

    public boolean yn(long j, float f, LocationListener locationListener) {
        boolean zYn;
        FB fb = this.yn;
        if (fb == null) {
            LogConsole.d("SdmProvider", "not support sdm");
            zYn = false;
        } else {
            zYn = fb.yn(j, f);
        }
        if (!zYn) {
            return false;
        }
        if (yn(locationListener)) {
            LogConsole.w("SdmProvider", "duplicate request");
        }
        this.Vw.add(new yn(j, f, locationListener));
        if (!this.FB && !this.Vw.isEmpty()) {
            this.yn.yn(new com.huawei.location.gnss.sdm.yn(this));
            this.FB = true;
        }
        LogConsole.i("SdmProvider", "request success");
        return true;
    }
}
