package com.huawei.location.nlp.scan.cell;

import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.ExecutorUtil;
import com.huawei.location.lite.common.util.PermissionUtil;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class yn {
    private TelephonyManager Vw;
    private Context yn;

    public interface Vw {
        void yn(List list);
    }

    /* renamed from: com.huawei.location.nlp.scan.cell.yn$yn, reason: collision with other inner class name */
    class C0031yn extends TelephonyManager.CellInfoCallback {
        final /* synthetic */ Vw yn;

        C0031yn(yn ynVar, Vw vw) {
            this.yn = vw;
        }

        @Override // android.telephony.TelephonyManager.CellInfoCallback
        public void onCellInfo(List list) {
            this.yn.yn(list);
        }
    }

    public yn() {
        Context context = ContextUtil.getContext();
        this.yn = context;
        Object systemService = context.getSystemService("phone");
        if (systemService instanceof TelephonyManager) {
            this.Vw = (TelephonyManager) systemService;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void yn(Vw vw) {
        String str;
        if (this.Vw != null) {
            if (Build.VERSION.SDK_INT >= 29) {
            }
            vw.yn(this.Vw.getAllCellInfo());
            return;
        }
        Object systemService = this.yn.getSystemService("phone");
        if (systemService instanceof TelephonyManager) {
            this.Vw = (TelephonyManager) systemService;
            if (Build.VERSION.SDK_INT >= 29) {
                if (PermissionUtil.checkSelfPermission(this.yn, "android.permission.ACCESS_FINE_LOCATION")) {
                    try {
                        this.Vw.requestCellInfoUpdate(ExecutorUtil.getInstance().getExecutor(), new C0031yn(this, vw));
                        return;
                    } catch (Exception unused) {
                        LogConsole.e("CellScanManager", "requestCellInfoUpdate exception");
                    }
                } else {
                    str = "do not ACCESS_FINE_LOCATION";
                }
            }
            vw.yn(this.Vw.getAllCellInfo());
            return;
        }
        str = "telephonyManager is null";
        LogConsole.e("CellScanManager", str);
    }
}
