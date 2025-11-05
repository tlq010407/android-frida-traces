package com.huawei.hms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.common.Preconditions;
import com.huawei.hms.common.parcel.ParcelReader;
import com.huawei.hms.common.parcel.ParcelWrite;
import com.huawei.hms.common.util.Objects;
import com.huawei.hms.feature.dynamic.IObjectWrapper;
import java.util.Locale;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class Cap implements Parcelable {
    public static final Parcelable.Creator<Cap> CREATOR = new Parcelable.Creator<Cap>() { // from class: com.huawei.hms.maps.model.Cap.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Cap createFromParcel(Parcel parcel) {
            return Cap.a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Cap[] newArray(int i) {
            return new Cap[i];
        }
    };
    public static final int TYPE_BUTT_CAP = 0;
    public static final int TYPE_CUSTOM_CAP = 3;
    public static final int TYPE_ROUND_CAP = 2;
    public static final int TYPE_SQUARE_CAP = 1;
    private int a;
    private BitmapDescriptor b;
    private float c;

    protected Cap(int i) {
        this(i, (IBinder) null, Float.valueOf(BitmapDescriptorFactory.HUE_RED));
    }

    Cap(int i, IBinder iBinder, Float f) {
        this(i, iBinder == null ? null : new BitmapDescriptor(IObjectWrapper.Stub.asInterface(iBinder)), f);
    }

    private Cap(int i, BitmapDescriptor bitmapDescriptor, Float f) {
        Preconditions.checkArgument(i != 3 || (bitmapDescriptor != null && (f != null && (f.floatValue() > BitmapDescriptorFactory.HUE_RED ? 1 : (f.floatValue() == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) > 0)), String.format(Locale.ENGLISH, "Invalid Cap: type=%s bitmapDescriptor=%s bitmapRefWidth=%s", Integer.valueOf(i), bitmapDescriptor, f));
        this.a = i;
        this.b = bitmapDescriptor;
        if (f != null) {
            this.c = f.floatValue();
        }
    }

    protected Cap(BitmapDescriptor bitmapDescriptor, float f) {
        this(3, bitmapDescriptor, Float.valueOf(f));
    }

    protected static Cap a(Parcel parcel) {
        ParcelReader parcelReader = new ParcelReader(parcel);
        int i = parcelReader.readInt(2, 3);
        if (i == 0) {
            return new ButtCap();
        }
        if (i == 1) {
            return new SquareCap();
        }
        if (i == 2) {
            return new RoundCap();
        }
        if (i == 3) {
            IBinder iBinder = parcelReader.readIBinder(3, null);
            float f = parcelReader.readFloat(4, BitmapDescriptorFactory.HUE_RED);
            if (iBinder != null) {
                BitmapDescriptor bitmapDescriptor = new BitmapDescriptor(IObjectWrapper.Stub.asInterface(iBinder));
                return f != BitmapDescriptorFactory.HUE_RED ? new CustomCap(bitmapDescriptor, f) : new CustomCap(bitmapDescriptor);
            }
        }
        return null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return super.equals(obj);
        }
        if (!(obj instanceof Cap)) {
            return false;
        }
        Cap cap = (Cap) obj;
        return this.a == cap.a && Objects.equal(this.b, cap.b) && Objects.equal(Float.valueOf(this.c), Float.valueOf(cap.c));
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.a), this.b, Float.valueOf(this.c));
    }

    public String toString() {
        return "Cap: type=" + this.a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ParcelWrite parcelWrite = new ParcelWrite(parcel);
        int iBeginObjectHeader = parcelWrite.beginObjectHeader();
        parcelWrite.writeInt(2, this.a);
        BitmapDescriptor bitmapDescriptor = this.b;
        parcelWrite.writeIBinder(3, bitmapDescriptor != null ? bitmapDescriptor.getObject().asBinder() : null, true);
        parcelWrite.writeFloat(4, this.c);
        parcelWrite.finishObjectHeader(iBeginObjectHeader);
    }
}
