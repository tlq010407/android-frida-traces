package com.huawei.hms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import com.huawei.hms.maps.model.MapAuthInfo;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface IMapAuthToProvider extends IInterface {

    public static abstract class Stub extends Binder implements IMapAuthToProvider {

        private static class Proxy implements IMapAuthToProvider {
            private IBinder a;

            Proxy(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }

            public String getInterfaceDescriptor() {
                return "com.huawei.hms.maps.internal.IMapAuthToProvider";
            }

            @Override // com.huawei.hms.maps.internal.IMapAuthToProvider
            public void notifyProvierAuthInfo(MapAuthInfo mapAuthInfo) {
                com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IMapAuthToProvider", 1, mapAuthInfo);
            }
        }

        public static IMapAuthToProvider asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.huawei.hms.maps.internal.IMapAuthToProvider");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IMapAuthToProvider)) ? new Proxy(iBinder) : (IMapAuthToProvider) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }

    void notifyProvierAuthInfo(MapAuthInfo mapAuthInfo);
}
