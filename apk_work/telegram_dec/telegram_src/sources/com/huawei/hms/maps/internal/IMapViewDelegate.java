package com.huawei.hms.maps.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import com.huawei.hms.feature.dynamic.IObjectWrapper;
import com.huawei.hms.maps.internal.IHuaweiMapDelegate;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface IMapViewDelegate extends IInterface {

    public static abstract class Stub extends Binder implements IMapViewDelegate {

        private static class Proxy implements IMapViewDelegate {
            private IBinder a;

            Proxy(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }

            public String getInterfaceDescriptor() {
                return "com.huawei.hms.maps.internal.IMapViewDelegate";
            }

            @Override // com.huawei.hms.maps.internal.IMapViewDelegate
            public IHuaweiMapDelegate getMap() {
                return IHuaweiMapDelegate.Stub.asInterface(com.huawei.hms.maps.model.internal.mab.j(this.a, "com.huawei.hms.maps.internal.IMapViewDelegate", 1));
            }

            @Override // com.huawei.hms.maps.internal.IMapViewDelegate
            public void getMapAsync(IOnMapReadyCallback iOnMapReadyCallback) {
                com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IMapViewDelegate", 13, iOnMapReadyCallback != null ? iOnMapReadyCallback.asBinder() : null);
            }

            @Override // com.huawei.hms.maps.internal.IMapViewDelegate
            public IObjectWrapper getView() {
                return IObjectWrapper.Stub.asInterface(com.huawei.hms.maps.model.internal.mab.j(this.a, "com.huawei.hms.maps.internal.IMapViewDelegate", 2));
            }

            @Override // com.huawei.hms.maps.internal.IMapViewDelegate
            public void onCreate(Bundle bundle) {
                com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IMapViewDelegate", 3, bundle);
            }

            @Override // com.huawei.hms.maps.internal.IMapViewDelegate
            public void onDestroy() {
                com.huawei.hms.maps.model.internal.mab.i(this.a, "com.huawei.hms.maps.internal.IMapViewDelegate", 4);
            }

            @Override // com.huawei.hms.maps.internal.IMapViewDelegate
            public void onEnterAmbient(Bundle bundle) {
                com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IMapViewDelegate", 5, bundle);
            }

            @Override // com.huawei.hms.maps.internal.IMapViewDelegate
            public void onExitAmbient() {
                com.huawei.hms.maps.model.internal.mab.i(this.a, "com.huawei.hms.maps.internal.IMapViewDelegate", 6);
            }

            @Override // com.huawei.hms.maps.internal.IMapViewDelegate
            public void onLowMemory() {
                com.huawei.hms.maps.model.internal.mab.i(this.a, "com.huawei.hms.maps.internal.IMapViewDelegate", 7);
            }

            @Override // com.huawei.hms.maps.internal.IMapViewDelegate
            public void onPause() {
                com.huawei.hms.maps.model.internal.mab.i(this.a, "com.huawei.hms.maps.internal.IMapViewDelegate", 8);
            }

            @Override // com.huawei.hms.maps.internal.IMapViewDelegate
            public void onResume() {
                com.huawei.hms.maps.model.internal.mab.i(this.a, "com.huawei.hms.maps.internal.IMapViewDelegate", 9);
            }

            @Override // com.huawei.hms.maps.internal.IMapViewDelegate
            public void onSaveInstanceState(Bundle bundle) {
                com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IMapViewDelegate", 10, bundle);
            }

            @Override // com.huawei.hms.maps.internal.IMapViewDelegate
            public void onStart() {
                com.huawei.hms.maps.model.internal.mab.i(this.a, "com.huawei.hms.maps.internal.IMapViewDelegate", 11);
            }

            @Override // com.huawei.hms.maps.internal.IMapViewDelegate
            public void onStop() {
                com.huawei.hms.maps.model.internal.mab.i(this.a, "com.huawei.hms.maps.internal.IMapViewDelegate", 12);
            }

            @Override // com.huawei.hms.maps.internal.IMapViewDelegate
            public void setActivity(IObjectWrapper iObjectWrapper) {
                com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IMapViewDelegate", 15, iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
            }

            @Override // com.huawei.hms.maps.internal.IMapViewDelegate
            public void zOrderOnTop(boolean z) {
                com.huawei.hms.maps.model.internal.mab.a(z, this.a, "com.huawei.hms.maps.internal.IMapViewDelegate", 14);
            }
        }

        public static IMapViewDelegate asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.huawei.hms.maps.internal.IMapViewDelegate");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IMapViewDelegate)) ? new Proxy(iBinder) : (IMapViewDelegate) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }

    IHuaweiMapDelegate getMap();

    void getMapAsync(IOnMapReadyCallback iOnMapReadyCallback);

    IObjectWrapper getView();

    void onCreate(Bundle bundle);

    void onDestroy();

    void onEnterAmbient(Bundle bundle);

    void onExitAmbient();

    void onLowMemory();

    void onPause();

    void onResume();

    void onSaveInstanceState(Bundle bundle);

    void onStart();

    void onStop();

    void setActivity(IObjectWrapper iObjectWrapper);

    void zOrderOnTop(boolean z);
}
