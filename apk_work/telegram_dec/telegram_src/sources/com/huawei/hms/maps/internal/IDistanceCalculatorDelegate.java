package com.huawei.hms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import com.huawei.hms.maps.model.LatLng;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface IDistanceCalculatorDelegate extends IInterface {

    public static abstract class Stub extends Binder implements IDistanceCalculatorDelegate {

        private static class Proxy implements IDistanceCalculatorDelegate {
            private IBinder a;

            Proxy(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }

            @Override // com.huawei.hms.maps.internal.IDistanceCalculatorDelegate
            public double computeDistanceBetween(LatLng latLng, LatLng latLng2) {
                return com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IDistanceCalculatorDelegate", 1, 2, latLng, latLng2).doubleValue();
            }

            public String getInterfaceDescriptor() {
                return "com.huawei.hms.maps.internal.IDistanceCalculatorDelegate";
            }
        }

        public Stub() {
            attachInterface(this, "com.huawei.hms.maps.internal.IDistanceCalculatorDelegate");
        }

        public static IDistanceCalculatorDelegate asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.huawei.hms.maps.internal.IDistanceCalculatorDelegate");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IDistanceCalculatorDelegate)) ? new Proxy(iBinder) : (IDistanceCalculatorDelegate) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }

    double computeDistanceBetween(LatLng latLng, LatLng latLng2);
}
