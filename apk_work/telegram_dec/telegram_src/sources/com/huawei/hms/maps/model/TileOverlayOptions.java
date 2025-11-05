package com.huawei.hms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.huawei.hms.common.Preconditions;
import com.huawei.hms.common.parcel.ParcelReader;
import com.huawei.hms.common.parcel.ParcelWrite;
import com.huawei.hms.maps.model.internal.ITileProviderDelegate;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TileOverlayOptions implements Parcelable {
    public static final Parcelable.Creator<TileOverlayOptions> CREATOR = new Parcelable.Creator<TileOverlayOptions>() { // from class: com.huawei.hms.maps.model.TileOverlayOptions.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TileOverlayOptions createFromParcel(Parcel parcel) {
            return new TileOverlayOptions(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TileOverlayOptions[] newArray(int i) {
            return new TileOverlayOptions[i];
        }
    };
    private float a;
    private boolean b;
    private float c;
    private ITileProviderDelegate d;
    private boolean e;
    private TileProvider f;

    public TileOverlayOptions() {
        this.b = true;
        this.c = BitmapDescriptorFactory.HUE_RED;
        this.d = null;
        this.e = true;
    }

    protected TileOverlayOptions(Parcel parcel) {
        this.b = true;
        this.c = BitmapDescriptorFactory.HUE_RED;
        this.d = null;
        this.e = true;
        ParcelReader parcelReader = new ParcelReader(parcel);
        this.a = parcelReader.readFloat(2, BitmapDescriptorFactory.HUE_RED);
        this.b = parcelReader.readBoolean(3, true);
        this.c = parcelReader.readFloat(4, BitmapDescriptorFactory.HUE_RED);
        IBinder iBinder = parcelReader.readIBinder(5, null);
        if (iBinder != null) {
            this.d = ITileProviderDelegate.Stub.asInterface(iBinder);
        }
        this.e = parcelReader.readBoolean(6, true);
        this.f = new TileProvider() { // from class: com.huawei.hms.maps.model.TileOverlayOptions.2
            @Override // com.huawei.hms.maps.model.TileProvider
            public Tile getTile(int i, int i2, int i3) {
                try {
                    return TileOverlayOptions.this.d.getTile(i, i2, i3);
                } catch (RemoteException unused) {
                    return null;
                }
            }
        };
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public TileOverlayOptions fadeIn(boolean z) {
        this.e = z;
        return this;
    }

    public boolean getFadeIn() {
        return this.e;
    }

    public TileProvider getTileProvider() {
        return this.f;
    }

    public float getTransparency() {
        return this.c;
    }

    public float getZIndex() {
        return this.a;
    }

    public boolean isVisible() {
        return this.b;
    }

    public TileOverlayOptions tileProvider(TileProvider tileProvider) {
        this.f = tileProvider;
        this.d = tileProvider == null ? null : new ITileProviderDelegate.Stub() { // from class: com.huawei.hms.maps.model.TileOverlayOptions.3
            @Override // com.huawei.hms.maps.model.internal.ITileProviderDelegate
            public Tile getTile(int i, int i2, int i3) {
                return TileOverlayOptions.this.f.getTile(i, i2, i3);
            }
        };
        return this;
    }

    public TileOverlayOptions transparency(float f) {
        Preconditions.checkArgument(f >= BitmapDescriptorFactory.HUE_RED, "Transparency should be equal or more than 0.0");
        Preconditions.checkArgument(f <= 1.0f, "Transparency should be equal or less than 1.0");
        this.c = f;
        return this;
    }

    public TileOverlayOptions visible(boolean z) {
        this.b = z;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ParcelWrite parcelWrite = new ParcelWrite(parcel);
        int iBeginObjectHeader = parcelWrite.beginObjectHeader();
        parcelWrite.writeFloat(2, this.a);
        parcelWrite.writeBoolean(3, this.b);
        parcelWrite.writeFloat(4, this.c);
        parcelWrite.writeIBinder(5, this.d.asBinder(), false);
        parcelWrite.writeBoolean(6, this.e);
        parcelWrite.finishObjectHeader(iBeginObjectHeader);
    }

    public TileOverlayOptions zIndex(float f) {
        this.a = f;
        return this;
    }
}
