package com.huawei.hms.maps.internal;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class mad {
    private mad() {
    }

    public static Bundle a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle == null) {
            return bundle2;
        }
        Parcelable parcelableA = a(bundle, "HuaweiMapOptions");
        if (parcelableA != null) {
            a(bundle2, "HuaweiMapOptions", parcelableA);
        }
        Parcelable parcelableA2 = a(bundle, "StreetViewOptions");
        if (parcelableA2 != null) {
            a(bundle2, "StreetViewOptions", parcelableA2);
        }
        Parcelable parcelableA3 = a(bundle, "CameraState");
        if (parcelableA3 != null) {
            a(bundle2, "CameraState", parcelableA3);
        }
        if (bundle.containsKey("position")) {
            bundle2.putString("position", bundle.getString("position"));
        }
        return bundle2;
    }

    private static <T extends Parcelable> T a(Bundle bundle, String str) {
        if (bundle == null) {
            return null;
        }
        bundle.setClassLoader(mad.class.getClassLoader());
        Bundle bundle2 = (Bundle) bundle.get("map_state");
        if (bundle2 == null) {
            return null;
        }
        bundle2.setClassLoader(mad.class.getClassLoader());
        return (T) bundle2.getParcelable(str);
    }

    public static void a(Bundle bundle, String str, Parcelable parcelable) {
        bundle.setClassLoader(mad.class.getClassLoader());
        bundle.putBundle("map_state", b(bundle, str, parcelable));
    }

    public static Bundle b(Bundle bundle, String str, Parcelable parcelable) {
        Bundle bundle2 = null;
        if (bundle != null) {
            try {
                bundle2 = bundle.getBundle("map_state");
            } catch (Exception e) {
                Log.e("MapStateUtils", "getOrgMapState exception " + e.getMessage());
            }
        }
        if (bundle2 == null) {
            bundle2 = new Bundle();
        }
        bundle2.setClassLoader(mad.class.getClassLoader());
        bundle2.putParcelable(str, parcelable);
        return bundle2;
    }
}
