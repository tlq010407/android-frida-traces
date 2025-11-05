package com.huawei.hms.locationSdk;

import android.app.PendingIntent;
import java.util.Objects;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class y extends a0 {
    private PendingIntent b;

    public void a(PendingIntent pendingIntent) {
        this.b = pendingIntent;
    }

    @Override // com.huawei.hms.locationSdk.a0
    public boolean equals(Object obj) {
        PendingIntent pendingIntent;
        if (this == obj) {
            return true;
        }
        if (obj == null || y.class != obj.getClass() || (pendingIntent = this.b) == null) {
            return false;
        }
        return pendingIntent.equals(((y) obj).b);
    }

    public int hashCode() {
        return Objects.hash(this.b);
    }
}
