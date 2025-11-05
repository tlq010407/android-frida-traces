package com.huawei.location.lite.common.android.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.PowerManager;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.http.Vw;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.secure.android.common.intent.SafeIntent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class ScreenStatusBroadcastReceiver extends BroadcastReceiver {
    private static volatile List callbackList = new ArrayList();
    private static long currentReportLatencyNs;
    private HandlerThread handlerThread;
    private Handler screenOffHandler = null;

    public static boolean isScreenOn() {
        LogConsole.i("ScreenStatusBroadcastReceiver", "isScreenOn");
        Object systemService = ContextUtil.getContext().getSystemService("power");
        if (systemService instanceof PowerManager) {
            return ((PowerManager) systemService).isScreenOn();
        }
        return false;
    }

    private void onScreenOff() {
        setCurrentReportLatencyNs(200000000000L);
        LogConsole.i("ScreenStatusBroadcastReceiver", "onScreenOff,report latency is:" + (currentReportLatencyNs / 1000000000) + "s");
        try {
            Iterator it = callbackList.iterator();
            while (it.hasNext()) {
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(it.next());
            }
        } catch (Exception unused) {
            LogConsole.e("ScreenStatusBroadcastReceiver", "exec callback onScreenOff exception", true);
        }
    }

    private void onScreenOn() {
        setCurrentReportLatencyNs(5000000000L);
        LogConsole.i("ScreenStatusBroadcastReceiver", "onScreenOn,report latency is:" + (currentReportLatencyNs / 1000000000) + "s");
        try {
            Iterator it = callbackList.iterator();
            while (it.hasNext()) {
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(it.next());
            }
        } catch (Exception unused) {
            LogConsole.e("ScreenStatusBroadcastReceiver", "exec callback onScreenOn exception", true);
        }
    }

    private void postDelayMsg() {
        if (this.handlerThread == null || this.screenOffHandler == null) {
            LogConsole.i("ScreenStatusBroadcastReceiver", "postDelayMsg new handlerThread");
            HandlerThread handlerThread = new HandlerThread("Location_Lite_Broadcast");
            this.handlerThread = handlerThread;
            handlerThread.start();
            this.screenOffHandler = new Handler(this.handlerThread.getLooper()) { // from class: com.huawei.location.lite.common.android.receiver.ScreenStatusBroadcastReceiver.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    if (message == null || message.what != 1005) {
                        LogConsole.e("ScreenStatusBroadcastReceiver", "message error");
                        return;
                    }
                    boolean zIsScreenOn = ScreenStatusBroadcastReceiver.isScreenOn();
                    LogConsole.i("ScreenStatusBroadcastReceiver", "isScreenOn : " + zIsScreenOn);
                    if (zIsScreenOn) {
                        return;
                    }
                    Vw.Vw();
                }
            };
        } else {
            LogConsole.i("ScreenStatusBroadcastReceiver", "screen off remove Messages");
            this.screenOffHandler.removeMessages(1005);
        }
        LogConsole.i("ScreenStatusBroadcastReceiver", "sendEmptyMessageDelayed 5 seconds for screenOff. the result is : " + this.screenOffHandler.sendEmptyMessageDelayed(1005, 5000L));
    }

    private void setCurrentReportLatencyNs(long j) {
        currentReportLatencyNs = j;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        SafeIntent safeIntent = new SafeIntent(intent);
        LogConsole.i("ScreenStatusBroadcastReceiver", "onReceive action : " + safeIntent.getAction());
        if ("android.intent.action.SCREEN_OFF".equals(safeIntent.getAction())) {
            onScreenOff();
            postDelayMsg();
        }
        if ("android.intent.action.SCREEN_ON".equals(safeIntent.getAction())) {
            onScreenOn();
            Handler handler = this.screenOffHandler;
            if (handler == null || !handler.hasMessages(1005)) {
                return;
            }
            LogConsole.i("ScreenStatusBroadcastReceiver", "screen on remove Messages");
            this.screenOffHandler.removeMessages(1005);
        }
    }
}
