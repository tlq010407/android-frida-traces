package com.huawei.hms.maps.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.huawei.hms.feature.dynamic.IObjectWrapper;
import com.huawei.hms.maps.StreetViewPanoramaOptions;
import com.huawei.hms.maps.internal.IStreetViewPanoramaDelegate;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface IStreetViewPanoramaFragmentDelegate extends IInterface {

    public static abstract class Stub extends Binder implements IStreetViewPanoramaFragmentDelegate {

        private static class Proxy implements IStreetViewPanoramaFragmentDelegate {
            private IBinder a;

            Proxy(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }

            public String getInterfaceDescriptor() {
                return "com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate";
            }

            @Override // com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate
            public IStreetViewPanoramaDelegate getStreetViewPanorama() {
                return IStreetViewPanoramaDelegate.Stub.asInterface(com.huawei.hms.maps.model.internal.mab.j(this.a, "com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate", 1));
            }

            @Override // com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate
            public void getStreetViewPanoramaAsync(IOnStreetViewPanoramaReadyCallback iOnStreetViewPanoramaReadyCallback) {
                com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate", 2, iOnStreetViewPanoramaReadyCallback != null ? iOnStreetViewPanoramaReadyCallback.asBinder() : null);
            }

            @Override // com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate
            public boolean isReady() {
                return com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate", 3);
            }

            @Override // com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate
            public void onCreate(Bundle bundle) {
                com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate", 4, bundle);
            }

            @Override // com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate
            public IObjectWrapper onCreateView(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate");
                    parcelObtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    parcelObtain.writeStrongBinder(iObjectWrapper2 != null ? iObjectWrapper2.asBinder() : null);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelObtain2.readStrongBinder());
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return iObjectWrapperAsInterface;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate
            public void onDestroy() {
                com.huawei.hms.maps.model.internal.mab.i(this.a, "com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate", 6);
            }

            @Override // com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate
            public void onDestroyView() {
                com.huawei.hms.maps.model.internal.mab.i(this.a, "com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate", 7);
            }

            @Override // com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate
            public void onInflate(IObjectWrapper iObjectWrapper, StreetViewPanoramaOptions streetViewPanoramaOptions, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate");
                    parcelObtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (streetViewPanoramaOptions != null) {
                        parcelObtain.writeInt(1);
                        streetViewPanoramaOptions.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.a.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate
            public void onLowMemory() {
                com.huawei.hms.maps.model.internal.mab.i(this.a, "com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate", 9);
            }

            @Override // com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate
            public void onPause() {
                com.huawei.hms.maps.model.internal.mab.i(this.a, "com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate", 10);
            }

            @Override // com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate
            public void onResume() {
                com.huawei.hms.maps.model.internal.mab.i(this.a, "com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate", 11);
            }

            @Override // com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate
            public void onSaveInstanceState(Bundle bundle) {
                com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate", 12, bundle);
            }

            @Override // com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate
            public void onStart() {
                com.huawei.hms.maps.model.internal.mab.i(this.a, "com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate", 13);
            }

            @Override // com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate
            public void onStop() {
                com.huawei.hms.maps.model.internal.mab.i(this.a, "com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate", 14);
            }
        }

        public static IStreetViewPanoramaFragmentDelegate asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IStreetViewPanoramaFragmentDelegate)) ? new Proxy(iBinder) : (IStreetViewPanoramaFragmentDelegate) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }

    IStreetViewPanoramaDelegate getStreetViewPanorama();

    void getStreetViewPanoramaAsync(IOnStreetViewPanoramaReadyCallback iOnStreetViewPanoramaReadyCallback);

    boolean isReady();

    void onCreate(Bundle bundle);

    IObjectWrapper onCreateView(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, Bundle bundle);

    void onDestroy();

    void onDestroyView();

    void onInflate(IObjectWrapper iObjectWrapper, StreetViewPanoramaOptions streetViewPanoramaOptions, Bundle bundle);

    void onLowMemory();

    void onPause();

    void onResume();

    void onSaveInstanceState(Bundle bundle);

    void onStart();

    void onStop();
}
