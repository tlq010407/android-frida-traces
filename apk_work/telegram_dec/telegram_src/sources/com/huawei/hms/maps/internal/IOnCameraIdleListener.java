package com.huawei.hms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface IOnCameraIdleListener extends IInterface {

    public static abstract class Stub extends Binder implements IOnCameraIdleListener {
        public Stub() {
            attachInterface(this, "com.huawei.hms.maps.internal.IOnCameraIdleListener");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.huawei.hms.maps.internal.IOnCameraIdleListener");
                return true;
            }
            parcel.enforceInterface("com.huawei.hms.maps.internal.IOnCameraIdleListener");
            onCameraIdle();
            parcel2.writeNoException();
            return true;
        }
    }

    void onCameraIdle();
}
