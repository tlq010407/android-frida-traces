package com.huawei.location;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class d2 {
    public static final Object Vw = new Object();
    public static volatile d2 yn;
    public yn FB;
    public Handler LW;
    public boolean dC = false;

    public static class yn extends HandlerThread {
        public d2 yn;

        public yn(String str, d2 d2Var) {
            super(str);
            this.yn = d2Var;
        }

        @Override // android.os.HandlerThread
        public void onLooperPrepared() {
            super.onLooperPrepared();
            if (this.yn == null) {
                Log.i("LogPersistenceManager", "log persistence manager null");
            }
        }
    }

    public d2(dC dCVar) {
        E5.yn();
        yn();
    }

    public static d2 yn(Context context, dC dCVar) {
        if (yn == null) {
            synchronized (Vw) {
                try {
                    if (yn == null) {
                        yn = new d2(dCVar);
                    }
                } finally {
                }
            }
        }
        return yn;
    }

    public final void yn() {
        if (this.dC) {
            return;
        }
        this.dC = true;
        yn ynVar = new yn("LogPersistenceManagerThread", this);
        this.FB = ynVar;
        ynVar.start();
        this.LW = new Handler(this.FB.getLooper());
    }
}
