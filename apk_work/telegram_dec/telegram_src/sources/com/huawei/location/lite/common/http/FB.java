package com.huawei.location.lite.common.http;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.http.LW;
import com.huawei.location.lite.common.http.request.BaseRequest;
import com.huawei.location.lite.common.http.response.ResponseInfo;
import com.huawei.location.lite.common.log.LogConsole;
import java.lang.Thread;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class FB {
    private static final byte[] yn = new byte[0];
    private LW FB;
    private C0021FB LW;
    private com.huawei.location.lite.common.http.LW Vw;
    private ServiceConnection dC;

    /* renamed from: com.huawei.location.lite.common.http.FB$FB, reason: collision with other inner class name */
    private class C0021FB implements IBinder.DeathRecipient {
        C0021FB() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() throws RemoteException {
            LogConsole.i("HttpServiceManager", "the http Service has died !");
            FB.this.yn(false);
            if (FB.this.Vw == null || FB.this.Vw.asBinder() == null) {
                return;
            }
            FB.this.Vw.asBinder().unlinkToDeath(FB.this.LW, 0);
        }
    }

    private class LW extends Handler {
        LW(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message == null) {
                LogConsole.w("HttpServiceManager", "msg is null");
                return;
            }
            int i = message.what;
            LogConsole.w("HttpServiceManager", "msg what value:" + i);
            if (i == 99) {
                FB.dC(FB.this);
            } else if (i == 100) {
                FB.FB(FB.this);
            } else {
                if (i != 200) {
                    return;
                }
                FB.LW(FB.this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class Vw {
        private static final FB yn = new FB(null);
    }

    class yn implements ServiceConnection {
        yn() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) throws RemoteException {
            com.huawei.location.lite.common.http.LW c0022yn;
            FB fb = FB.this;
            int i = LW.yn.$r8$clinit;
            if (iBinder == null) {
                c0022yn = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.huawei.location.lite.common.http.IHttpService");
                c0022yn = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof com.huawei.location.lite.common.http.LW)) ? new LW.yn.C0022yn(iBinder) : (com.huawei.location.lite.common.http.LW) iInterfaceQueryLocalInterface;
            }
            fb.Vw = c0022yn;
            FB.this.yn(true);
            LogConsole.i("HttpServiceManager", "iBinder:" + FB.this.Vw.toString());
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) throws RemoteException {
            LogConsole.i("HttpServiceManager", "unbind");
            FB.this.yn(false);
        }
    }

    private FB() {
        this.dC = new yn();
        this.LW = new C0021FB();
    }

    /* synthetic */ FB(yn ynVar) {
        this();
    }

    private void FB() {
        if (this.FB == null) {
            HandlerThread handlerThread = new HandlerThread("Http_Handler_Thread");
            handlerThread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.huawei.location.lite.common.http.FB$$ExternalSyntheticLambda0
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public final void uncaughtException(Thread thread, Throwable th) {
                    LogConsole.e("HttpServiceManager", "uncaughtException.");
                }
            });
            handlerThread.start();
            if (handlerThread.getLooper() != null) {
                this.FB = new LW(handlerThread.getLooper());
            }
        }
    }

    static void FB(FB fb) {
        fb.getClass();
        LogConsole.i("HttpServiceManager", "bindHttpService is " + ContextUtil.getContext().bindService(new Intent(ContextUtil.getContext(), (Class<?>) HttpService.class), fb.dC, 1));
    }

    static void LW(FB fb) {
        synchronized (fb) {
            LogConsole.i("HttpServiceManager", "unbindService()");
            ContextUtil.getContext().unbindService(fb.dC);
            fb.yn(false);
        }
    }

    private Handler Vw() {
        if (this.FB == null) {
            FB();
        }
        return this.FB;
    }

    static void dC(FB fb) {
        com.huawei.location.lite.common.http.LW lw = fb.Vw;
        if (lw != null && lw.asBinder() != null) {
            fb.Vw.asBinder().unlinkToDeath(fb.LW, 0);
        }
        fb.Vw = null;
        LW lw2 = fb.FB;
        if (lw2 != null) {
            lw2.getLooper().quitSafely();
            fb.FB = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void yn(boolean z) throws RemoteException {
        if (!z) {
            if (this.FB != null) {
                Vw().sendMessage(Vw().obtainMessage(99));
                return;
            }
            return;
        }
        try {
            com.huawei.location.lite.common.http.LW lw = this.Vw;
            if (lw != null) {
                lw.asBinder().linkToDeath(this.LW, 0);
            }
        } catch (Exception unused) {
            LogConsole.e("HttpServiceManager", "notifyServiceDied IBinder register linkToDeath function fail.");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0054, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized boolean LW() {
        boolean z = true;
        if (this.Vw == null) {
            Vw().sendEmptyMessage(100);
            int i = 0;
            while (true) {
                if (i >= 10) {
                    LogConsole.i("HttpServiceManager", "httpService wait connect times over max times : 10");
                    z = false;
                    break;
                }
                if (this.Vw != null) {
                    break;
                }
                try {
                    byte[] bArr = yn;
                    synchronized (bArr) {
                        bArr.wait(300L);
                    }
                } catch (InterruptedException unused) {
                    LogConsole.e("HttpServiceManager", "InterruptedException");
                }
                LogConsole.i("HttpServiceManager", "httpService sleep, count = " + i);
                i++;
            }
        } else {
            return true;
        }
    }

    public ResponseInfo Vw(HttpConfigInfo httpConfigInfo, BaseRequest baseRequest) {
        try {
            com.huawei.location.lite.common.http.LW lw = this.Vw;
            if (lw != null) {
                ResponseInfo responseInfoYn = lw.yn(httpConfigInfo, baseRequest);
                yn();
                return responseInfoYn;
            }
        } catch (RemoteException unused) {
            LogConsole.e("HttpServiceManager", "executeOriginal RemoteException");
        }
        return new ResponseInfo();
    }

    public ResponseInfo yn(HttpConfigInfo httpConfigInfo, BaseRequest baseRequest) {
        try {
            com.huawei.location.lite.common.http.LW lw = this.Vw;
            if (lw != null) {
                ResponseInfo responseInfoVw = lw.Vw(httpConfigInfo, baseRequest);
                yn();
                return responseInfoVw;
            }
        } catch (RemoteException unused) {
            LogConsole.e("HttpServiceManager", "execute RemoteException");
        }
        return new ResponseInfo();
    }

    void yn() {
        LogConsole.i("HttpServiceManager", "delayDisconnect()");
        Vw().removeMessages(200);
        Vw().sendEmptyMessageDelayed(200, 2000L);
    }
}
