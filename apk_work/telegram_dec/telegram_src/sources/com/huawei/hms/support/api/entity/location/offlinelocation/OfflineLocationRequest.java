package com.huawei.hms.support.api.entity.location.offlinelocation;

import android.content.Context;
import com.huawei.hms.support.api.entity.location.common.LocationBaseRequest;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class OfflineLocationRequest extends LocationBaseRequest {
    private List<OfflineLocationRequestData> requestDataList;

    public OfflineLocationRequest(Context context) {
        super(context);
    }

    public List<OfflineLocationRequestData> getRequestDataList() {
        return this.requestDataList;
    }

    public void setRequestDataList(List<OfflineLocationRequestData> list) {
        this.requestDataList = list;
    }
}
