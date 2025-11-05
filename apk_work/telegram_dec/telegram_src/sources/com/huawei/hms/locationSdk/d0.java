package com.huawei.hms.locationSdk;

import android.app.PendingIntent;
import android.os.Looper;
import com.huawei.hms.location.LocationCallback;
import com.huawei.hms.location.LocationRequest;
import java.util.Objects;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class d0 extends a0 {
    private LocationRequest b;
    private PendingIntent c;
    private LocationCallback d;
    private int e;
    private String f;
    private Looper g;
    private int h;

    public d0(LocationRequest locationRequest, PendingIntent pendingIntent, LocationCallback locationCallback, Looper looper, String str, int i) {
        this.e = 0;
        this.b = locationRequest;
        this.c = pendingIntent;
        if (locationRequest != null) {
            this.e = locationRequest.getNumUpdates();
        }
        this.d = locationCallback;
        this.g = looper;
        if (locationCallback != null) {
            this.f = str;
        } else {
            this.f = null;
        }
        this.h = i;
        a(str);
    }

    public void a(int i) {
        this.e = i;
    }

    public boolean a(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d0.class != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.d, ((d0) obj).d);
    }

    public PendingIntent b() {
        return this.c;
    }

    public void b(String str) {
        this.f = str;
    }

    public boolean b(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d0.class != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.c, ((d0) obj).c);
    }

    public LocationCallback c() {
        return this.d;
    }

    public LocationRequest d() {
        return this.b;
    }

    public Looper e() {
        return this.g;
    }

    @Override // com.huawei.hms.locationSdk.a0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && d0.class == obj.getClass()) {
            if (c() != null) {
                return a(obj);
            }
            if (b() != null) {
                return b(obj);
            }
        }
        return false;
    }

    public int f() {
        return this.h;
    }

    public int g() {
        return this.e;
    }

    public String h() {
        return this.f;
    }

    public int hashCode() {
        return 0;
    }
}
