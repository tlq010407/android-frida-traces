package com.huawei.hms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface IMapClientIdentity extends IInterface {

    public static abstract class Stub extends Binder implements IMapClientIdentity {

        private static class Proxy implements IMapClientIdentity {
            private IBinder a;

            Proxy(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }

            public String getInterfaceDescriptor() {
                return "com.huawei.hms.maps.internal.IMapClientIdentity";
            }

            @Override // com.huawei.hms.maps.internal.IMapClientIdentity
            public void regestToProvierIdentity(com.huawei.hms.maps.model.maa maaVar) {
                com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IMapClientIdentity", 1, maaVar);
            }
        }

        public static IMapClientIdentity asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.huawei.hms.maps.internal.IMapClientIdentity");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IMapClientIdentity)) ? new Proxy(iBinder) : (IMapClientIdentity) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }

    void regestToProvierIdentity(com.huawei.hms.maps.model.maa maaVar);
}
