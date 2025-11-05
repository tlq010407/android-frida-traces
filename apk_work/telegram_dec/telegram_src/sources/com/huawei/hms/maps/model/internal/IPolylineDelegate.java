package com.huawei.hms.maps.model.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.huawei.hms.feature.dynamic.IObjectWrapper;
import com.huawei.hms.maps.model.Cap;
import com.huawei.hms.maps.model.LatLng;
import com.huawei.hms.maps.model.PatternItem;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface IPolylineDelegate extends maa {

    public static abstract class Stub extends Binder implements IPolylineDelegate {

        private static class Proxy implements IPolylineDelegate {
            private IBinder a;

            Proxy(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }

            @Override // com.huawei.hms.maps.model.internal.IPolylineDelegate
            public boolean equalsRemote(IPolylineDelegate iPolylineDelegate) {
                return mab.a(iPolylineDelegate, this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 1);
            }

            @Override // com.huawei.hms.maps.model.internal.IPolylineDelegate
            public int getColor() {
                return mab.b(this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 2);
            }

            @Override // com.huawei.hms.maps.model.internal.IPolylineDelegate
            public Cap getEndCap() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.huawei.hms.maps.model.internal.IPolylineDelegate");
                    this.a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? Cap.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.maps.model.internal.maa
            public String getId() {
                return mab.d(this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 4);
            }

            public String getInterfaceDescriptor() {
                return "com.huawei.hms.maps.model.internal.IPolylineDelegate";
            }

            @Override // com.huawei.hms.maps.model.internal.IPolylineDelegate
            public int getJointType() {
                return mab.b(this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 5);
            }

            @Override // com.huawei.hms.maps.model.internal.IPolylineDelegate
            public List<PatternItem> getPattern() {
                return mab.h(this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 6);
            }

            @Override // com.huawei.hms.maps.model.internal.IPolylineDelegate
            public List<LatLng> getPoints() {
                return mab.g(this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 7);
            }

            @Override // com.huawei.hms.maps.model.internal.IPolylineDelegate
            public Cap getStartCap() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.huawei.hms.maps.model.internal.IPolylineDelegate");
                    this.a.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? Cap.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.maps.model.internal.maa
            public IObjectWrapper getTag() {
                return IObjectWrapper.Stub.asInterface(mab.j(this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 9));
            }

            @Override // com.huawei.hms.maps.model.internal.IPolylineDelegate
            public float getWidth() {
                return mab.c(this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 10);
            }

            @Override // com.huawei.hms.maps.model.internal.maa
            public float getZIndex() {
                return mab.c(this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 11);
            }

            @Override // com.huawei.hms.maps.model.internal.maa
            public int hashCodeRemote() {
                return mab.b(this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 12);
            }

            @Override // com.huawei.hms.maps.model.internal.maa
            public boolean isClickable() {
                return mab.a(this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 13);
            }

            @Override // com.huawei.hms.maps.model.internal.IPolylineDelegate
            public boolean isGeodesic() {
                return mab.a(this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 14);
            }

            @Override // com.huawei.hms.maps.model.internal.maa
            public boolean isVisible() {
                return mab.a(this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 15);
            }

            @Override // com.huawei.hms.maps.model.internal.maa
            public void remove() {
                mab.i(this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 16);
            }

            @Override // com.huawei.hms.maps.model.internal.maa
            public void setClickable(boolean z) {
                mab.a(z, this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 17);
            }

            @Override // com.huawei.hms.maps.model.internal.IPolylineDelegate
            public void setColor(int i) {
                mab.a(this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 18, Integer.valueOf(i));
            }

            @Override // com.huawei.hms.maps.model.internal.IPolylineDelegate
            public void setEndCap(Cap cap) {
                mab.a(this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 19, cap);
            }

            @Override // com.huawei.hms.maps.model.internal.IPolylineDelegate
            public void setGeodesic(boolean z) {
                mab.a(z, this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 20);
            }

            @Override // com.huawei.hms.maps.model.internal.IPolylineDelegate
            public void setJointType(int i) {
                mab.a(this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 21, Integer.valueOf(i));
            }

            @Override // com.huawei.hms.maps.model.internal.IPolylineDelegate
            public void setPattern(List<PatternItem> list) {
                mab.b(list, this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 22);
            }

            @Override // com.huawei.hms.maps.model.internal.IPolylineDelegate
            public void setPoints(List<LatLng> list) {
                mab.a(list, this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 23);
            }

            @Override // com.huawei.hms.maps.model.internal.IPolylineDelegate
            public void setStartCap(Cap cap) {
                mab.a(this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 24, cap);
            }

            @Override // com.huawei.hms.maps.model.internal.maa
            public void setTag(IObjectWrapper iObjectWrapper) {
                mab.a(this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 25, iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
            }

            @Override // com.huawei.hms.maps.model.internal.maa
            public void setVisible(boolean z) {
                mab.a(z, this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 26);
            }

            @Override // com.huawei.hms.maps.model.internal.IPolylineDelegate
            public void setWidth(float f) {
                mab.a(this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 27, Float.valueOf(f));
            }

            @Override // com.huawei.hms.maps.model.internal.maa
            public void setZIndex(float f) {
                mab.a(this.a, "com.huawei.hms.maps.model.internal.IPolylineDelegate", 28, Float.valueOf(f));
            }
        }

        public Stub() {
            attachInterface(this, "com.huawei.hms.maps.model.internal.IPolylineDelegate");
        }

        public static IPolylineDelegate asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.huawei.hms.maps.model.internal.IPolylineDelegate");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IPolylineDelegate)) ? new Proxy(iBinder) : (IPolylineDelegate) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }

    boolean equalsRemote(IPolylineDelegate iPolylineDelegate);

    int getColor();

    Cap getEndCap();

    int getJointType();

    List<PatternItem> getPattern();

    List<LatLng> getPoints();

    Cap getStartCap();

    float getWidth();

    boolean isGeodesic();

    void setColor(int i);

    void setEndCap(Cap cap);

    void setGeodesic(boolean z);

    void setJointType(int i);

    void setPattern(List<PatternItem> list);

    void setPoints(List<LatLng> list);

    void setStartCap(Cap cap);

    void setWidth(float f);
}
