package com.huawei.hms.maps.model;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.RemoteException;
import com.huawei.hms.feature.dynamic.IObjectWrapper;
import com.huawei.hms.feature.dynamic.ObjectWrapper;
import com.huawei.hms.maps.model.internal.IBitmapDescriptorDelegate;
import com.huawei.hms.maps.utils.LogM;
import com.huawei.hms.maps.utils.mab;
import com.huawei.hms.maps.utils.mac;
import com.huawei.hms.maps.utils.mae;
import com.huawei.hms.maps.utils.mah;
import com.huawei.hms.maps.utils.mai;
import java.io.IOException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final class BitmapDescriptorFactory {
    public static final float HUE_AZURE = 210.0f;
    public static final float HUE_BLUE = 240.0f;
    public static final float HUE_CYAN = 180.0f;
    public static final float HUE_GREEN = 120.0f;
    public static final float HUE_MAGENTA = 300.0f;
    public static final float HUE_ORANGE = 30.0f;
    public static final float HUE_RED = 0.0f;
    public static final float HUE_ROSE = 330.0f;
    public static final float HUE_VIOLET = 270.0f;
    public static final float HUE_YELLOW = 60.0f;
    private static IBitmapDescriptorDelegate a;
    private static Context b;

    public static BitmapDescriptor defaultMarker() {
        IBitmapDescriptorDelegate iBitmapDescriptorDelegate = a;
        BitmapDescriptor bitmapDescriptor = null;
        if (iBitmapDescriptorDelegate == null) {
            LogM.w("BitmapDescriptorFactory", "defaultMarker null == IBitmapDescriptorDelegate");
            return null;
        }
        try {
            IObjectWrapper iObjectWrapperDefaultMarker = iBitmapDescriptorDelegate.defaultMarker();
            if (iObjectWrapperDefaultMarker != null) {
                bitmapDescriptor = new BitmapDescriptor(iObjectWrapperDefaultMarker);
            } else {
                LogM.w("BitmapDescriptorFactory", "defaultMarker null == objectWrapper");
            }
        } catch (RemoteException unused) {
            LogM.e("BitmapDescriptorFactory", "defaultMarker error");
        }
        return bitmapDescriptor;
    }

    public static BitmapDescriptor defaultMarker(float f) {
        IBitmapDescriptorDelegate iBitmapDescriptorDelegate = a;
        BitmapDescriptor bitmapDescriptor = null;
        if (iBitmapDescriptorDelegate == null) {
            LogM.w("BitmapDescriptorFactory", "defaultMarker hue null == IBitmapDescriptorDelegate");
            return null;
        }
        try {
            IObjectWrapper iObjectWrapperDefaultMarkerWithHue = iBitmapDescriptorDelegate.defaultMarkerWithHue(f);
            if (iObjectWrapperDefaultMarkerWithHue != null) {
                bitmapDescriptor = new BitmapDescriptor(iObjectWrapperDefaultMarkerWithHue);
            } else {
                LogM.w("BitmapDescriptorFactory", "defaultMarker hue null == objectWrapper");
            }
        } catch (RemoteException unused) {
            LogM.e("BitmapDescriptorFactory", "defaultMarkerWithHue error");
        }
        return bitmapDescriptor;
    }

    public static BitmapDescriptor fromAsset(String str) {
        Bitmap bitmapA;
        try {
            bitmapA = new mab(str).a(b);
        } catch (NullPointerException unused) {
            LogM.e("BitmapDescriptorFactory", "the sContext is null");
            bitmapA = null;
        }
        return new BitmapDescriptor(ObjectWrapper.wrap(bitmapA));
    }

    public static BitmapDescriptor fromBitmap(Bitmap bitmap) {
        Bitmap bitmapA;
        try {
            bitmapA = new mac(bitmap).a(b);
        } catch (NullPointerException unused) {
            LogM.e("BitmapDescriptorFactory", "the sContext is null");
            bitmapA = null;
        }
        return new BitmapDescriptor(ObjectWrapper.wrap(bitmapA));
    }

    public static BitmapDescriptor fromFile(String str) throws IOException {
        Bitmap bitmapA;
        try {
            bitmapA = new mae(str).a(b);
        } catch (NullPointerException unused) {
            LogM.e("BitmapDescriptorFactory", "the sContext is null");
            bitmapA = null;
        }
        return new BitmapDescriptor(ObjectWrapper.wrap(bitmapA));
    }

    public static BitmapDescriptor fromPath(String str) {
        Bitmap bitmapA;
        try {
            bitmapA = new mah(str).a(b);
        } catch (NullPointerException unused) {
            LogM.e("BitmapDescriptorFactory", "the sContext is null");
            bitmapA = null;
        }
        return new BitmapDescriptor(ObjectWrapper.wrap(bitmapA));
    }

    public static BitmapDescriptor fromResource(int i) {
        Bitmap bitmapA;
        try {
            bitmapA = new mai(i).a(b);
        } catch (NullPointerException unused) {
            LogM.e("BitmapDescriptorFactory", "the sContext is null");
            bitmapA = null;
        }
        return new BitmapDescriptor(ObjectWrapper.wrap(bitmapA));
    }

    public static void setContext(Context context) {
        b = context == null ? null : context.getApplicationContext();
    }

    public static void setIBitmapDescriptorDelegate(IBitmapDescriptorDelegate iBitmapDescriptorDelegate) {
        a = iBitmapDescriptorDelegate;
    }
}
