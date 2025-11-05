package com.huawei.hms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.common.parcel.ParcelReader;
import com.huawei.hms.common.parcel.ParcelWrite;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class PolylineOptions implements Parcelable {
    public static final Parcelable.Creator<PolylineOptions> CREATOR = new Parcelable.Creator<PolylineOptions>() { // from class: com.huawei.hms.maps.model.PolylineOptions.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PolylineOptions createFromParcel(Parcel parcel) {
            return new PolylineOptions(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PolylineOptions[] newArray(int i) {
            return new PolylineOptions[i];
        }
    };
    private final List<LatLng> a;
    private int b;
    private float c;
    private float d;
    private boolean e;
    private boolean f;
    private boolean g;
    private Cap h;
    private Cap i;
    private int j;
    private List<PatternItem> k;

    public PolylineOptions() {
        this.a = new ArrayList();
        this.c = 10.0f;
        this.b = -16777216;
        this.f = false;
        this.g = false;
        this.e = true;
        this.h = new ButtCap();
        this.i = new ButtCap();
        this.j = 0;
        this.k = null;
    }

    protected PolylineOptions(Parcel parcel) {
        ParcelReader parcelReader = new ParcelReader(parcel);
        this.a = parcelReader.createTypedList(2, LatLng.CREATOR, new ArrayList());
        this.b = parcelReader.readInt(3, 0);
        this.c = parcelReader.readFloat(4, 10.0f);
        this.d = parcelReader.readFloat(5, BitmapDescriptorFactory.HUE_RED);
        this.e = parcelReader.readBoolean(6, true);
        this.f = parcelReader.readBoolean(7, false);
        this.g = parcelReader.readBoolean(8, false);
        Parcelable.Creator<Cap> creator = Cap.CREATOR;
        this.h = (Cap) parcelReader.readParcelable(9, creator, null);
        this.i = (Cap) parcelReader.readParcelable(10, creator, null);
        this.j = parcelReader.readInt(11, 0);
        this.k = parcelReader.createTypedList(12, PatternItem.CREATOR, null);
    }

    public PolylineOptions add(LatLng latLng) {
        this.a.add(latLng);
        return this;
    }

    public PolylineOptions add(LatLng... latLngArr) {
        this.a.addAll(Arrays.asList(latLngArr));
        return this;
    }

    public PolylineOptions addAll(Iterable<LatLng> iterable) {
        Iterator<LatLng> it = iterable.iterator();
        while (it.hasNext()) {
            this.a.add(it.next());
        }
        return this;
    }

    public PolylineOptions clickable(boolean z) {
        this.f = z;
        return this;
    }

    public PolylineOptions color(int i) {
        this.b = i;
        return this;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PolylineOptions endCap(Cap cap) {
        this.i = cap;
        return this;
    }

    public PolylineOptions geodesic(boolean z) {
        this.g = z;
        return this;
    }

    public int getColor() {
        return this.b;
    }

    public Cap getEndCap() {
        return this.i;
    }

    public int getJointType() {
        return this.j;
    }

    public List<PatternItem> getPattern() {
        return this.k;
    }

    public List<LatLng> getPoints() {
        return this.a;
    }

    public Cap getStartCap() {
        return this.h;
    }

    public float getWidth() {
        return this.c;
    }

    public float getZIndex() {
        return this.d;
    }

    public boolean isClickable() {
        return this.f;
    }

    public boolean isGeodesic() {
        return this.g;
    }

    public boolean isVisible() {
        return this.e;
    }

    public PolylineOptions jointType(int i) {
        this.j = i;
        return this;
    }

    public PolylineOptions pattern(List<PatternItem> list) {
        this.k = list;
        return this;
    }

    public PolylineOptions startCap(Cap cap) {
        this.h = cap;
        return this;
    }

    public PolylineOptions visible(boolean z) {
        this.e = z;
        return this;
    }

    public PolylineOptions width(float f) {
        this.c = f;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ParcelWrite parcelWrite = new ParcelWrite(parcel);
        int iBeginObjectHeader = parcelWrite.beginObjectHeader();
        parcelWrite.writeTypedList(2, this.a, false);
        parcelWrite.writeInt(3, this.b);
        parcelWrite.writeFloat(4, this.c);
        parcelWrite.writeFloat(5, this.d);
        parcelWrite.writeBoolean(6, this.e);
        parcelWrite.writeBoolean(7, this.f);
        parcelWrite.writeBoolean(8, this.g);
        parcelWrite.writeParcelable(9, this.h, i, false);
        parcelWrite.writeParcelable(10, this.i, i, false);
        parcelWrite.writeInt(11, this.j);
        parcelWrite.writeTypedList(12, this.k, false);
        parcelWrite.finishObjectHeader(iBeginObjectHeader);
    }

    public PolylineOptions zIndex(float f) {
        this.d = f;
        return this;
    }
}
