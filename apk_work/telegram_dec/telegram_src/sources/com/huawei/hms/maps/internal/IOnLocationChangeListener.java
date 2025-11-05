package com.huawei.hms.maps.internal;

import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface IOnLocationChangeListener extends IInterface {

    public static abstract class Stub extends Binder implements IOnLocationChangeListener {

        private static class Proxy implements IOnLocationChangeListener {
            private IBinder a;

            Proxy(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }

            public String getInterfaceDescriptor() {
                return "com.huawei.hms.maps.internal.IOnLocationChangeListener";
            }

            @Override // com.huawei.hms.maps.internal.IOnLocationChangeListener
            public void onLocationChange(Location location) {
                com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IOnLocationChangeListener", 1, location);
            }
        }

        public static IOnLocationChangeListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.huawei.hms.maps.internal.IOnLocationChangeListener");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IOnLocationChangeListener)) ? new Proxy(iBinder) : (IOnLocationChangeListener) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }

    void onLocationChange(Location location);
}
