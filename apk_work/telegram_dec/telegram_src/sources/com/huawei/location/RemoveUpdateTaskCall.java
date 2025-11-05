package com.huawei.location;

import com.huawei.hms.support.api.entity.location.updates.RequestLocationUpdatesResponse;
import com.huawei.location.lite.common.exception.LocationServiceException;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.GsonUtil;
import com.huawei.location.req.RemoveLocationUpdatesReq;
import com.huawei.location.router.RouterResponse;
import com.huawei.location.router.entity.StatusInfo;
import com.huawei.location.utils.yn;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class RemoveUpdateTaskCall extends BaseApiRequest {
    private static final String TAG = "RemoveLocationUpdateApi";

    @Override // com.huawei.location.router.interfaces.IRouterRequest
    public void onRequest(String str) {
        LogConsole.i(TAG, "onRequest start");
        RemoveLocationUpdatesReq removeLocationUpdatesReq = new RemoveLocationUpdatesReq();
        yn.yn(str, removeLocationUpdatesReq);
        this.reportBuilder.yn("Location_removeLocationUpdates");
        this.reportBuilder.yn(removeLocationUpdatesReq);
        try {
            com.huawei.location.logic.LW.yn().yn(removeLocationUpdatesReq.getUuid());
            this.reportBuilder.yn().yn("0");
            onComplete(new RouterResponse(GsonUtil.getInstance().toJson(new RequestLocationUpdatesResponse()), new StatusInfo(0, 0, "SUCCESS")));
        } catch (LocationServiceException e) {
            this.reportBuilder.yn().yn(e.getExceptionCode() + "");
            onComplete(new RouterResponse(GsonUtil.getInstance().toJson(new RequestLocationUpdatesResponse()), new StatusInfo(0, e.getExceptionCode(), e.getMessage())));
        }
    }
}
