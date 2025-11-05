package com.huawei.hms.maps.model.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface ITileOverlayDelegate extends IInterface {

    public static abstract class Stub extends Binder implements ITileOverlayDelegate {

        private static class Proxy implements ITileOverlayDelegate {
            private IBinder a;

            Proxy(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }

            @Override // com.huawei.hms.maps.model.internal.ITileOverlayDelegate
            public void clearTileCache() {
                mab.i(this.a, "com.huawei.hms.maps.model.internal.ITileOverlayDelegate", 1);
            }

            @Override // com.huawei.hms.maps.model.internal.ITileOverlayDelegate
            public boolean equalsRemote(ITileOverlayDelegate iTileOverlayDelegate) {
                return mab.a(iTileOverlayDelegate, this.a, "com.huawei.hms.maps.model.internal.ITileOverlayDelegate", 12);
            }

            @Override // com.huawei.hms.maps.model.internal.ITileOverlayDelegate
            public boolean getFadeIn() {
                return mab.a(this.a, "com.huawei.hms.maps.model.internal.ITileOverlayDelegate", 2);
            }

            @Override // com.huawei.hms.maps.model.internal.ITileOverlayDelegate
            public String getId() {
                return mab.d(this.a, "com.huawei.hms.maps.model.internal.ITileOverlayDelegate", 3);
            }

            public String getInterfaceDescriptor() {
                return "com.huawei.hms.maps.model.internal.ITileOverlayDelegate";
            }

            @Override // com.huawei.hms.maps.model.internal.ITileOverlayDelegate
            public float getTransparency() {
                return mab.c(this.a, "com.huawei.hms.maps.model.internal.ITileOverlayDelegate", 4);
            }

            @Override // com.huawei.hms.maps.model.internal.ITileOverlayDelegate
            public float getZIndex() {
                return mab.c(this.a, "com.huawei.hms.maps.model.internal.ITileOverlayDelegate", 5);
            }

            @Override // com.huawei.hms.maps.model.internal.ITileOverlayDelegate
            public int hashCodeRemote() {
                return mab.b(this.a, "com.huawei.hms.maps.model.internal.ITileOverlayDelegate", 13);
            }

            @Override // com.huawei.hms.maps.model.internal.ITileOverlayDelegate
            public boolean isVisible() {
                return mab.a(this.a, "com.huawei.hms.maps.model.internal.ITileOverlayDelegate", 6);
            }

            @Override // com.huawei.hms.maps.model.internal.ITileOverlayDelegate
            public void remove() {
                mab.i(this.a, "com.huawei.hms.maps.model.internal.ITileOverlayDelegate", 7);
            }

            @Override // com.huawei.hms.maps.model.internal.ITileOverlayDelegate
            public void setFadeIn(boolean z) {
                mab.a(z, this.a, "com.huawei.hms.maps.model.internal.ITileOverlayDelegate", 8);
            }

            @Override // com.huawei.hms.maps.model.internal.ITileOverlayDelegate
            public void setTransparency(float f) {
                mab.a(this.a, "com.huawei.hms.maps.model.internal.ITileOverlayDelegate", 9, Float.valueOf(f));
            }

            @Override // com.huawei.hms.maps.model.internal.ITileOverlayDelegate
            public void setVisible(boolean z) {
                mab.a(z, this.a, "com.huawei.hms.maps.model.internal.ITileOverlayDelegate", 10);
            }

            @Override // com.huawei.hms.maps.model.internal.ITileOverlayDelegate
            public void setZIndex(float f) {
                mab.a(this.a, "com.huawei.hms.maps.model.internal.ITileOverlayDelegate", 11, Float.valueOf(f));
            }
        }

        public Stub() {
            attachInterface(this, "com.huawei.hms.maps.model.internal.ITileOverlayDelegate");
        }

        public static ITileOverlayDelegate asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.huawei.hms.maps.model.internal.ITileOverlayDelegate");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITileOverlayDelegate)) ? new Proxy(iBinder) : (ITileOverlayDelegate) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }

    void clearTileCache();

    boolean equalsRemote(ITileOverlayDelegate iTileOverlayDelegate);

    boolean getFadeIn();

    String getId();

    float getTransparency();

    float getZIndex();

    int hashCodeRemote();

    boolean isVisible();

    void remove();

    void setFadeIn(boolean z);

    void setTransparency(float f);

    void setVisible(boolean z);

    void setZIndex(float f);
}
