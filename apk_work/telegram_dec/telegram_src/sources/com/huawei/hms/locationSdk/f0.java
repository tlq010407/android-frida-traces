package com.huawei.hms.locationSdk;

import com.huawei.hms.location.LocationCallback;
import com.huawei.hms.support.api.location.common.CollectionsUtil;
import com.huawei.hms.support.api.location.common.HMSLocationLog;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class f0 extends b0 {
    private static volatile f0 c;
    private static final byte[] d = new byte[0];
    private List<e0> b = new ArrayList(10);

    public static f0 b() {
        if (c == null) {
            synchronized (d) {
                try {
                    if (c == null) {
                        c = new f0();
                    }
                } finally {
                }
            }
        }
        return c;
    }

    public void a(e0 e0Var) {
        synchronized (d) {
            try {
                if (e0Var == null) {
                    return;
                }
                if (this.b == null) {
                    this.b = new ArrayList();
                }
                this.b.add(e0Var);
                HMSLocationLog.i("VdrRequestCacheManager", "", "add vdrRequestCache to vdrRequestCacheList, size is : " + this.b.size());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean a(LocationCallback locationCallback) {
        synchronized (d) {
            if (locationCallback != null) {
                try {
                    if (!CollectionsUtil.isEmpty(this.b)) {
                        for (e0 e0Var : this.b) {
                            if (e0Var.a().equals(locationCallback)) {
                                b(e0Var);
                                this.b.remove(e0Var);
                                HMSLocationLog.i("VdrRequestCacheManager", "", "remove VdrRequestCache from vdrRequestCacheList, size is : " + this.b.size());
                                return true;
                            }
                        }
                        return false;
                    }
                } finally {
                }
            }
            return false;
        }
    }

    public void b(e0 e0Var) {
        if (e0Var == null || e0Var.b() == null) {
            return;
        }
        e0Var.b().unRegisterVdrLocationLis();
    }
}
