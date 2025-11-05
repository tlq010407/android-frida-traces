package com.huawei.hms.maps.model.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface IIndoorBuildingDelegate extends IInterface {

    public static abstract class Stub extends Binder implements IIndoorBuildingDelegate {

        private static class Proxy implements IIndoorBuildingDelegate {
            private IBinder a;

            Proxy(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }

            @Override // com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate
            public boolean equalsRemote(IIndoorBuildingDelegate iIndoorBuildingDelegate) {
                return mab.a(iIndoorBuildingDelegate, this.a, "com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate", 5);
            }

            @Override // com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate
            public int getActiveLevelIndex() {
                return mab.b(this.a, "com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate", 1);
            }

            @Override // com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate
            public int getDefaultLevelIndex() {
                return mab.b(this.a, "com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate", 2);
            }

            public String getInterfaceDescriptor() {
                return "com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate";
            }

            @Override // com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate
            public List<IBinder> getLevels() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate");
                    this.a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createBinderArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate
            public int hashCodeRemote() {
                return mab.b(this.a, "com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate", 6);
            }

            @Override // com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate
            public boolean isUnderground() {
                return mab.a(this.a, "com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate", 4);
            }
        }

        public Stub() {
            attachInterface(this, "com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate");
        }

        public static IIndoorBuildingDelegate asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IIndoorBuildingDelegate)) ? new Proxy(iBinder) : (IIndoorBuildingDelegate) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }

    boolean equalsRemote(IIndoorBuildingDelegate iIndoorBuildingDelegate);

    int getActiveLevelIndex();

    int getDefaultLevelIndex();

    List<IBinder> getLevels();

    int hashCodeRemote();

    boolean isUnderground();
}
