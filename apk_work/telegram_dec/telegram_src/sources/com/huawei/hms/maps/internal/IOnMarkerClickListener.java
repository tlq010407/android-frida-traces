package com.huawei.hms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.huawei.hms.maps.model.internal.IMarkerDelegate;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface IOnMarkerClickListener extends IInterface {

    public static abstract class Stub extends Binder implements IOnMarkerClickListener {
        public Stub() {
            attachInterface(this, "com.huawei.hms.maps.internal.IOnMarkerClickListener");
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
                parcel2.writeString("com.huawei.hms.maps.internal.IOnMarkerClickListener");
                return true;
            }
            parcel.enforceInterface("com.huawei.hms.maps.internal.IOnMarkerClickListener");
            boolean zOnMarkerClick = onMarkerClick(IMarkerDelegate.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
            parcel2.writeInt(zOnMarkerClick ? 1 : 0);
            return true;
        }
    }

    boolean onMarkerClick(IMarkerDelegate iMarkerDelegate);
}
