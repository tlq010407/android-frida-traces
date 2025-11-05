package com.huawei.hms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.huawei.hms.feature.dynamic.IObjectWrapper;
import com.huawei.hms.maps.HuaweiMapOptions;
import com.huawei.hms.maps.StreetViewPanoramaOptions;
import com.huawei.hms.maps.internal.IDistanceCalculatorDelegate;
import com.huawei.hms.maps.internal.IMapAuthToProvider;
import com.huawei.hms.maps.internal.IMapClientIdentity;
import com.huawei.hms.maps.internal.IMapFragmentDelegate;
import com.huawei.hms.maps.internal.IMapViewDelegate;
import com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate;
import com.huawei.hms.maps.internal.IStreetViewPanoramaViewDelegate;
import com.huawei.hms.maps.maf;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface ICreator extends IInterface {

    public static abstract class Stub extends Binder implements ICreator {

        private static class Proxy implements ICreator {
            public static ICreator sDefaultImpl;
            private IBinder a;

            Proxy(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }

            public String getInterfaceDescriptor() {
                return "com.huawei.hms.maps.internal.ICreator";
            }

            @Override // com.huawei.hms.maps.internal.ICreator
            public void init(IObjectWrapper iObjectWrapper, int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.huawei.hms.maps.internal.ICreator");
                    parcelObtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    parcelObtain.writeInt(i);
                    this.a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.huawei.hms.maps.internal.ICreator
            public IDistanceCalculatorDelegate newDistanceCalculatorDelegate(IObjectWrapper iObjectWrapper) {
                return IDistanceCalculatorDelegate.Stub.asInterface(com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.ICreator", 6, iObjectWrapper != null ? iObjectWrapper.asBinder() : null));
            }

            @Override // com.huawei.hms.maps.internal.ICreator
            public IMapAuthToProvider newMapAuthToProvider(IObjectWrapper iObjectWrapper) {
                return IMapAuthToProvider.Stub.asInterface(com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.ICreator", 9, iObjectWrapper != null ? iObjectWrapper.asBinder() : null));
            }

            @Override // com.huawei.hms.maps.internal.ICreator
            public IMapClientIdentity newMapClientIdentity(IObjectWrapper iObjectWrapper) {
                return IMapClientIdentity.Stub.asInterface(com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.ICreator", 5, iObjectWrapper != null ? iObjectWrapper.asBinder() : null));
            }

            @Override // com.huawei.hms.maps.internal.ICreator
            public IMapFragmentDelegate newMapFragmentDelegate(IObjectWrapper iObjectWrapper, HuaweiMapOptions huaweiMapOptions) {
                return IMapFragmentDelegate.Stub.asInterface(com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.ICreator", 2, iObjectWrapper != null ? iObjectWrapper.asBinder() : null, huaweiMapOptions));
            }

            @Override // com.huawei.hms.maps.internal.ICreator
            public IMapViewDelegate newMapViewDelegate(IObjectWrapper iObjectWrapper, HuaweiMapOptions huaweiMapOptions) {
                return IMapViewDelegate.Stub.asInterface(com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.ICreator", 3, iObjectWrapper != null ? iObjectWrapper.asBinder() : null, huaweiMapOptions));
            }

            @Override // com.huawei.hms.maps.internal.ICreator
            public maf newPlaceDelegate(IObjectWrapper iObjectWrapper) {
                return maf.maa.a(com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.ICreator", 4, iObjectWrapper != null ? iObjectWrapper.asBinder() : null));
            }

            @Override // com.huawei.hms.maps.internal.ICreator
            public IStreetViewPanoramaFragmentDelegate newStreetViewPanoramaFragmentDelegate(IObjectWrapper iObjectWrapper) {
                return IStreetViewPanoramaFragmentDelegate.Stub.asInterface(com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.ICreator", 8, iObjectWrapper != null ? iObjectWrapper.asBinder() : null));
            }

            @Override // com.huawei.hms.maps.internal.ICreator
            public IStreetViewPanoramaViewDelegate newStreetViewPanoramaViewDelegate(IObjectWrapper iObjectWrapper, StreetViewPanoramaOptions streetViewPanoramaOptions) {
                return IStreetViewPanoramaViewDelegate.Stub.asInterface(com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.ICreator", 7, iObjectWrapper != null ? iObjectWrapper.asBinder() : null, streetViewPanoramaOptions));
            }

            @Override // com.huawei.hms.maps.internal.ICreator
            public IMapFragmentDelegate newTextureMapFragmentDelegate(IObjectWrapper iObjectWrapper, HuaweiMapOptions huaweiMapOptions) {
                return IMapFragmentDelegate.Stub.asInterface(com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.ICreator", 11, iObjectWrapper != null ? iObjectWrapper.asBinder() : null, huaweiMapOptions));
            }

            @Override // com.huawei.hms.maps.internal.ICreator
            public IMapViewDelegate newTextureMapViewDelegate(IObjectWrapper iObjectWrapper, HuaweiMapOptions huaweiMapOptions) {
                return IMapViewDelegate.Stub.asInterface(com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.ICreator", 12, iObjectWrapper != null ? iObjectWrapper.asBinder() : null, huaweiMapOptions));
            }

            @Override // com.huawei.hms.maps.internal.ICreator
            public IStreetViewPanoramaFragmentDelegate optStreetViewPanoramaFragmentDelegate(IObjectWrapper iObjectWrapper, StreetViewPanoramaOptions streetViewPanoramaOptions) {
                return IStreetViewPanoramaFragmentDelegate.Stub.asInterface(com.huawei.hms.maps.model.internal.mab.a(this.a, "com.huawei.hms.maps.internal.ICreator", 10, iObjectWrapper != null ? iObjectWrapper.asBinder() : null, streetViewPanoramaOptions));
            }
        }

        public static ICreator asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.huawei.hms.maps.internal.ICreator");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ICreator)) ? new Proxy(iBinder) : (ICreator) iInterfaceQueryLocalInterface;
        }

        public static ICreator getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ICreator iCreator) {
            if (Proxy.sDefaultImpl != null || iCreator == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCreator;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }

    void init(IObjectWrapper iObjectWrapper, int i);

    IDistanceCalculatorDelegate newDistanceCalculatorDelegate(IObjectWrapper iObjectWrapper);

    IMapAuthToProvider newMapAuthToProvider(IObjectWrapper iObjectWrapper);

    IMapClientIdentity newMapClientIdentity(IObjectWrapper iObjectWrapper);

    IMapFragmentDelegate newMapFragmentDelegate(IObjectWrapper iObjectWrapper, HuaweiMapOptions huaweiMapOptions);

    IMapViewDelegate newMapViewDelegate(IObjectWrapper iObjectWrapper, HuaweiMapOptions huaweiMapOptions);

    maf newPlaceDelegate(IObjectWrapper iObjectWrapper);

    IStreetViewPanoramaFragmentDelegate newStreetViewPanoramaFragmentDelegate(IObjectWrapper iObjectWrapper);

    IStreetViewPanoramaViewDelegate newStreetViewPanoramaViewDelegate(IObjectWrapper iObjectWrapper, StreetViewPanoramaOptions streetViewPanoramaOptions);

    IMapFragmentDelegate newTextureMapFragmentDelegate(IObjectWrapper iObjectWrapper, HuaweiMapOptions huaweiMapOptions);

    IMapViewDelegate newTextureMapViewDelegate(IObjectWrapper iObjectWrapper, HuaweiMapOptions huaweiMapOptions);

    IStreetViewPanoramaFragmentDelegate optStreetViewPanoramaFragmentDelegate(IObjectWrapper iObjectWrapper, StreetViewPanoramaOptions streetViewPanoramaOptions);
}
