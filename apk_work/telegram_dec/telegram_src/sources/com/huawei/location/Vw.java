package com.huawei.location;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.huawei.riemann.common.api.location.CityTileCallback;
import com.huawei.riemann.location.SdmLocationAlgoWrapper;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final class Vw {
    public dC E5;
    public boolean FB;
    public SdmLocationAlgoWrapper G3;
    public ServiceConnection LW;
    public boolean Ot;
    public final Object Vw;
    public CityTileCallback Yx;
    public FB d2;
    public Messenger dC;
    public volatile boolean dW;
    public CityTileCallback h1;
    public Intent oc;
    public ArrayList ut;
    public Context yn;
    public LW zp;

    public class E5 implements Runnable {
        public byte[] Vw;
        public long yn;

        public E5(long j, byte[] bArr) {
            this.yn = j;
            this.Vw = bArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.d("SdmLocationManager", "TileUpdateRunnable run");
            SdmLocationAlgoWrapper sdmLocationAlgoWrapper = Vw.this.G3;
            if (sdmLocationAlgoWrapper == null || !sdmLocationAlgoWrapper.FB) {
                Log.e("SdmLocationManager", "wp is null");
            } else {
                sdmLocationAlgoWrapper.sdmUpdateTileById(this.yn, this.Vw);
            }
        }
    }

    public static class FB extends HandlerThread {
        public Vw yn;

        public FB(String str, Vw vw) {
            super(str);
            this.yn = vw;
        }

        @Override // android.os.HandlerThread
        public void onLooperPrepared() {
            super.onLooperPrepared();
            if (this.yn == null) {
                Log.i("SdmLocationManager", "slmgr null");
            }
        }
    }

    public class LW extends Handler {
        public LW(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            ClassCastException e;
            String str;
            String str2;
            String str3;
            try {
                super.handleMessage(message);
                int i = message.what;
                if (i == 11) {
                    str2 = "handleMessage REGISTER LISTENER";
                } else {
                    if (i != 12) {
                        if (i == 17) {
                            str = "handleMessage DELIVER RAW OBS";
                        } else {
                            if (i == 18) {
                                Log.d("SdmLocationManager", "handleMessage REQUEST REMOTE TILE");
                                long j = message.getData().getLong("tileId");
                                CityTileCallback cityTileCallback = Vw.this.h1;
                                if (cityTileCallback != null) {
                                    byte[] bArr = cityTileCallback.get(j);
                                    Vw vw = Vw.this;
                                    vw.getClass();
                                    Log.d("SdmLocationManager", "update local tile");
                                    dC dCVar = vw.E5;
                                    if (dCVar != null) {
                                        dCVar.postAtFrontOfQueue(vw.new E5(j, bArr));
                                        return;
                                    }
                                    str3 = "result hd is null";
                                } else {
                                    str3 = "rcb null";
                                }
                                Log.e("SdmLocationManager", str3);
                                return;
                            }
                            str = "handleMessage unknown " + message.what;
                        }
                        try {
                            Log.d("SdmLocationManager", str);
                            return;
                        } catch (ClassCastException e2) {
                            e = e2;
                            Log.e("SdmLocationManager", e.getMessage() != null ? e.getMessage() : "ClassCastException2");
                            if (str == null) {
                                str = "handleMessage";
                            }
                            Log.e("SdmLocationManager", "SdmOpsHandler-" + str);
                            return;
                        }
                    }
                    str2 = "handleMessage UNREGISTER LISTENER";
                }
                Log.d("SdmLocationManager", str2);
            } catch (ClassCastException e3) {
                e = e3;
                str = null;
            }
        }
    }

    /* renamed from: com.huawei.location.Vw$Vw, reason: collision with other inner class name */
    public static class C0012Vw implements CityTileCallback {
        public Handler Vw;
        public CityTileCallback yn;

        public C0012Vw(Handler handler, CityTileCallback cityTileCallback) {
            this.Vw = handler;
            this.yn = cityTileCallback;
        }

        @Override // com.huawei.riemann.common.api.location.CityTileCallback
        public byte[] get(long j) {
            if (this.Vw == null) {
                if (this.yn != null) {
                    Log.d("SdmLocationManager", "direct");
                    return this.yn.get(j);
                }
                Log.e("SdmLocationManager", "hd and remote cb null");
                return new byte[0];
            }
            Log.d("SdmLocationManager", "through hd");
            Bundle bundle = new Bundle();
            bundle.putLong("tileId", j);
            Message messageObtain = Message.obtain();
            messageObtain.what = 18;
            messageObtain.setData(bundle);
            this.Vw.sendMessageAtFrontOfQueue(messageObtain);
            return new byte[0];
        }
    }

    public class dC extends Handler {
        public dC() {
        }

        public dC(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            String str = null;
            try {
                super.handleMessage(message);
                Log.d("SdmLocationManager", "SdmHandler msg - " + message.what);
                int i = message.what;
                if (i == 10001) {
                    Message messageObtain = Message.obtain();
                    messageObtain.what = 10002;
                    messageObtain.setData(message.getData());
                    Vw.this.E5.sendMessageAtFrontOfQueue(messageObtain);
                    return;
                }
                if (i != 10002) {
                    return;
                }
                try {
                    Iterator it = Vw.this.ut.iterator();
                    if (it.hasNext()) {
                        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(it.next());
                        throw null;
                    }
                } catch (ClassCastException e) {
                    e = e;
                    str = "handleMessage INVOKE CALLBACK";
                    Log.e("SdmLocationManager", e.getMessage() != null ? e.getMessage() : "ClassCastException1");
                    if (str == null) {
                        str = "handleMessage";
                    }
                    Log.e("SdmLocationManager", "SdmResultHandler-" + str);
                }
            } catch (ClassCastException e2) {
                e = e2;
            }
        }
    }

    public class yn implements ServiceConnection {
        public yn() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d("SdmLocationManager", "onServiceConnected");
            Vw.this.dC = new Messenger(iBinder);
            Vw.this.FB = true;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.d("SdmLocationManager", "onServiceDisconnected");
            Vw vw = Vw.this;
            vw.dC = null;
            vw.FB = false;
        }
    }

    public Vw(Context context, Intent intent, Looper looper, String str) {
        this.Vw = new Object();
        this.FB = false;
        this.dC = null;
        this.ut = new ArrayList();
        this.oc = null;
        this.Ot = false;
        this.G3 = null;
        this.Yx = null;
        this.h1 = null;
        this.dW = false;
        this.LW = new yn();
        this.yn = context;
        this.oc = intent;
        this.G3 = SdmLocationAlgoWrapper.yn(context, str);
        yn(looper);
        com.huawei.location.LW.yn();
    }

    public Vw(Context context, Intent intent, String str) {
        this(context, intent, null, str);
    }

    public Vw(Context context, Looper looper, String str) {
        this(context, null, looper, str);
    }

    public Vw(Context context, String str) {
        this(context, null, null, str);
    }

    public final void yn(Looper looper) {
        if (!this.Ot) {
            if (looper == null) {
                this.E5 = Looper.myLooper() == null ? new dC(this.yn.getMainLooper()) : new dC();
            } else {
                this.E5 = new dC(looper);
            }
            FB fb = new FB("SdmLocationManagerThread", this);
            this.d2 = fb;
            fb.start();
            this.zp = new LW(this.d2.getLooper());
        }
        this.Ot = true;
    }
}
