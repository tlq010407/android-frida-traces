package com.huawei.hms.maps.model.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.huawei.hms.feature.dynamic.IObjectWrapper;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface IBitmapDescriptorDelegate extends IInterface {

    public static abstract class Stub extends Binder implements IBitmapDescriptorDelegate {

        private static class Proxy implements IBitmapDescriptorDelegate {
            private IBinder a;

            Proxy(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }

            @Override // com.huawei.hms.maps.model.internal.IBitmapDescriptorDelegate
            public IObjectWrapper defaultMarker() {
                return IObjectWrapper.Stub.asInterface(mab.j(this.a, "com.huawei.hms.maps.model.internal.IBitmapDescriptorDelegate", 1));
            }

            @Override // com.huawei.hms.maps.model.internal.IBitmapDescriptorDelegate
            public IObjectWrapper defaultMarkerWithHue(float f) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.huawei.hms.maps.model.internal.IBitmapDescriptorDelegate");
                    parcelObtain.writeFloat(f);
                    this.a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return IObjectWrapper.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return "com.huawei.hms.maps.model.internal.IBitmapDescriptorDelegate";
            }
        }

        public static IBitmapDescriptorDelegate asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.huawei.hms.maps.model.internal.IBitmapDescriptorDelegate");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IBitmapDescriptorDelegate)) ? new Proxy(iBinder) : (IBitmapDescriptorDelegate) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }

    IObjectWrapper defaultMarker();

    IObjectWrapper defaultMarkerWithHue(float f);
}
