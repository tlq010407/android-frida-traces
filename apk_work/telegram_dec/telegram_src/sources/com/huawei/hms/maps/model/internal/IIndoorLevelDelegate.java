package com.huawei.hms.maps.model.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface IIndoorLevelDelegate extends IInterface {

    public static abstract class Stub extends Binder implements IIndoorLevelDelegate {

        private static class Proxy implements IIndoorLevelDelegate {
            private IBinder a;

            Proxy(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // com.huawei.hms.maps.model.internal.IIndoorLevelDelegate
            public void activate() {
                mab.i(this.a, "com.huawei.hms.maps.model.internal.IIndoorLevelDelegate", 1);
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }

            @Override // com.huawei.hms.maps.model.internal.IIndoorLevelDelegate
            public boolean equalsRemote(IIndoorLevelDelegate iIndoorLevelDelegate) {
                return mab.a(iIndoorLevelDelegate, this.a, "com.huawei.hms.maps.model.internal.IIndoorLevelDelegate", 4);
            }

            public String getInterfaceDescriptor() {
                return "com.huawei.hms.maps.model.internal.IIndoorLevelDelegate";
            }

            @Override // com.huawei.hms.maps.model.internal.IIndoorLevelDelegate
            public String getName() {
                return mab.d(this.a, "com.huawei.hms.maps.model.internal.IIndoorLevelDelegate", 2);
            }

            @Override // com.huawei.hms.maps.model.internal.IIndoorLevelDelegate
            public String getShortName() {
                return mab.d(this.a, "com.huawei.hms.maps.model.internal.IIndoorLevelDelegate", 3);
            }

            @Override // com.huawei.hms.maps.model.internal.IIndoorLevelDelegate
            public int hashCodeRemote() {
                return mab.b(this.a, "com.huawei.hms.maps.model.internal.IIndoorLevelDelegate", 5);
            }
        }

        public Stub() {
            attachInterface(this, "com.huawei.hms.maps.model.internal.IIndoorLevelDelegate");
        }

        public static IIndoorLevelDelegate asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.huawei.hms.maps.model.internal.IIndoorLevelDelegate");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IIndoorLevelDelegate)) ? new Proxy(iBinder) : (IIndoorLevelDelegate) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }

    void activate();

    boolean equalsRemote(IIndoorLevelDelegate iIndoorLevelDelegate);

    String getName();

    String getShortName();

    int hashCodeRemote();
}
