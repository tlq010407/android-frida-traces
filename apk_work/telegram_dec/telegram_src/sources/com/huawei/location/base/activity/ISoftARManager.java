package com.huawei.location.base.activity;

import com.huawei.hms.location.entity.activity.ActivityTransition;
import com.huawei.location.base.activity.callback.ARCallback;
import com.huawei.location.base.activity.callback.ATCallback;
import com.huawei.location.router.entity.IRouterResponse;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface ISoftARManager extends IRouterResponse {
    void removeActivityTransitionUpdates(ATCallback aTCallback);

    void removeActivityUpdates(ARCallback aRCallback);

    void requestActivityTransitionUpdates(List<ActivityTransition> list, ATCallback aTCallback);

    void requestActivityUpdates(long j, ARCallback aRCallback);
}
