package com.huawei.location.callback;

import android.app.PendingIntent;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.router.interfaces.IRouterCallback;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class FB {
    private List yn = new CopyOnWriteArrayList();

    public void Vw(LW lw) {
        if (lw == null) {
            LogConsole.i(yn(), "setCallBackInfo,null == locationCallBackInfo ");
            return;
        }
        LogConsole.i(yn(), "setCallBackInfo callBackInfoList size is " + this.yn.size());
        if (this.yn.isEmpty()) {
            this.yn.add(lw);
            return;
        }
        if (!this.yn.isEmpty()) {
            for (int i = 0; i < this.yn.size(); i++) {
                if (((LW) this.yn.get(i)).equals(lw)) {
                    LogConsole.i(yn(), "setCallBackInfo,update");
                    return;
                }
            }
        }
        this.yn.add(lw);
        LogConsole.i(yn(), "setCallBackInfo end callBackInfoList size is " + this.yn.size());
    }

    public LW yn(PendingIntent pendingIntent) {
        if (this.yn.isEmpty()) {
            return null;
        }
        for (LW lw : this.yn) {
            if (lw.yn() != null && lw.yn().equals(pendingIntent)) {
                LogConsole.i(yn(), "getInfoFromPendingIntent equals is true");
                return lw;
            }
        }
        return null;
    }

    public LW yn(IRouterCallback iRouterCallback) {
        if (this.yn.isEmpty()) {
            return null;
        }
        for (LW lw : this.yn) {
            if (lw.Vw() != null && lw.Vw().equals(iRouterCallback)) {
                LogConsole.i(yn(), "getInfoFromRouterCallback equals is true");
                return lw;
            }
        }
        return null;
    }

    public abstract String yn();

    public void yn(LW lw) {
        LogConsole.i(yn(), "removeCallback callBackInfoList size is " + this.yn.size());
        if (this.yn.isEmpty()) {
            return;
        }
        Iterator it = this.yn.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (next instanceof LW) {
                LW lw2 = (LW) next;
                if (lw2.equals(lw)) {
                    LogConsole.i(yn(), "removeCallback true");
                    this.yn.remove(lw2);
                    break;
                }
            }
        }
        LogConsole.i(yn(), "removeCallback  end callBackInfoList size is " + this.yn.size());
    }
}
