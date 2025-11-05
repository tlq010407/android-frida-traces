package com.huawei.hms.push;

import android.content.Context;
import android.content.Intent;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.support.log.HMSLog;
import java.net.URISyntaxException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class j {
    public static final String[] a = {RemoteMessageConst.Notification.URL, "app", "cosa", "rp"};
    public Context b;
    public k c;

    public j(Context context, k kVar) {
        this.b = context;
        this.c = kVar;
    }

    public static boolean a(String str) {
        for (String str2 : a) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public final void a() {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("enter launchApp, appPackageName =");
            sb.append(this.c.d());
            HMSLog.i("PushSelfShowLog", sb.toString());
            if (q.c(this.b, this.c.d())) {
                b();
            }
        } catch (Exception e) {
            HMSLog.e("PushSelfShowLog", "launchApp error:" + e.toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x007c A[PHI: r2 r3
      0x007c: PHI (r2v22 android.content.Intent) = (r2v16 android.content.Intent), (r2v25 android.content.Intent) binds: [B:13:0x007a, B:24:0x00bd] A[DONT_GENERATE, DONT_INLINE]
      0x007c: PHI (r3v5 boolean) = (r3v3 boolean), (r3v1 boolean) binds: [B:13:0x007a, B:24:0x00bd] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b() throws URISyntaxException {
        Intent uri;
        HMSLog.i("PushSelfShowLog", "run into launchCosaApp");
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("enter launchExistApp cosa, appPackageName =");
            sb.append(this.c.d());
            sb.append(",and msg.intentUri is ");
            sb.append(this.c.n());
            HMSLog.i("PushSelfShowLog", sb.toString());
            Intent intentB = q.b(this.b, this.c.d());
            boolean zBooleanValue = false;
            if (this.c.n() != null) {
                try {
                    uri = Intent.parseUri(this.c.n(), 0);
                    uri.setSelector(null);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Intent.parseUri(msg.intentUri, 0), action:");
                    sb2.append(uri.getAction());
                    HMSLog.i("PushSelfShowLog", sb2.toString());
                    zBooleanValue = q.a(this.b, this.c.d(), uri).booleanValue();
                    if (zBooleanValue) {
                        intentB = uri;
                    }
                } catch (Exception e) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("intentUri error.");
                    sb3.append(e.toString());
                    HMSLog.w("PushSelfShowLog", sb3.toString());
                }
            } else if (this.c.a() != null) {
                uri = new Intent(this.c.a());
                if (q.a(this.b, this.c.d(), uri).booleanValue()) {
                }
            }
            if (intentB == null) {
                HMSLog.i("PushSelfShowLog", "launchCosaApp,intent == null");
                return;
            }
            intentB.setPackage(this.c.d());
            if (zBooleanValue) {
                intentB.addFlags(268435456);
            } else {
                intentB.setFlags(805437440);
            }
            this.b.startActivity(intentB);
        } catch (Exception e2) {
            HMSLog.e("PushSelfShowLog", "launch Cosa App exception." + e2.toString());
        }
    }

    public void c() throws URISyntaxException {
        k kVar;
        StringBuilder sb;
        String str;
        HMSLog.d("PushSelfShowLog", "enter launchNotify()");
        if (this.b == null || (kVar = this.c) == null) {
            HMSLog.d("PushSelfShowLog", "launchNotify  context or msg is null");
            return;
        }
        if ("app".equals(kVar.i())) {
            a();
            return;
        }
        if ("cosa".equals(this.c.i())) {
            b();
            return;
        }
        if ("rp".equals(this.c.i())) {
            sb = new StringBuilder();
            sb.append(this.c.i());
            str = " not support rich message.";
        } else {
            if (!RemoteMessageConst.Notification.URL.equals(this.c.i())) {
                HMSLog.d("PushSelfShowLog", this.c.i() + " is not exist in hShowType");
                return;
            }
            sb = new StringBuilder();
            sb.append(this.c.i());
            str = " not support URL.";
        }
        sb.append(str);
        HMSLog.w("PushSelfShowLog", sb.toString());
    }
}
