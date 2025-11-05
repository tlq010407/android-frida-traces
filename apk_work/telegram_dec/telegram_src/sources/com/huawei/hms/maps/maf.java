package com.huawei.hms.maps;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface maf extends IInterface {

    public static abstract class maa extends Binder implements maf {

        /* renamed from: com.huawei.hms.maps.maf$maa$maa, reason: collision with other inner class name */
        private static class C0011maa implements maf {
            private IBinder a;

            C0011maa(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }
        }

        public static maf a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.huawei.hms.search.api.IPlaceDelegate");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof maf)) ? new C0011maa(iBinder) : (maf) iInterfaceQueryLocalInterface;
        }
    }
}
