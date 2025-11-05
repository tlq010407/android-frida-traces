package com.huawei.hms.maps.model;

import com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final class IndoorBuilding {
    private IIndoorBuildingDelegate a;

    public IndoorBuilding(IIndoorBuildingDelegate iIndoorBuildingDelegate) {
        this.a = iIndoorBuildingDelegate;
    }

    public boolean equals(Object obj) {
        return false;
    }

    public int getActiveLevelIndex() {
        return 0;
    }

    public int getDefaultLevelIndex() {
        return 0;
    }

    public List<IndoorLevel> getLevels() {
        return new ArrayList();
    }

    public int hashCode() {
        return 0;
    }

    public boolean isUnderground() {
        return false;
    }
}
