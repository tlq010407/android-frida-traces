package com.huawei.location.resp;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class Vw implements Parcelable {
    public static final Parcelable.Creator<Vw> CREATOR = new yn();
    private List yn;

    static class yn implements Parcelable.Creator {
        yn() {
        }

        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            return new Vw(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i) {
            return new Vw[i];
        }
    }

    public Vw() {
        this.yn = new ArrayList();
    }

    protected Vw(Parcel parcel) {
        this.yn = parcel.createTypedArrayList(com.huawei.location.resp.yn.CREATOR);
    }

    public final List Vw() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.yn.iterator();
        while (it.hasNext()) {
            Location locationYn = ((com.huawei.location.resp.yn) it.next()).yn();
            if (locationYn != null) {
                arrayList.add(locationYn);
            }
        }
        return arrayList;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Vw) {
            return Objects.equals(this.yn, ((Vw) obj).yn);
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.yn);
    }

    public String toString() {
        return "LocationResult{locations=" + this.yn + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.yn);
    }

    public final List yn() {
        return this.yn;
    }

    public boolean yn(Location location) {
        if (location == null) {
            return false;
        }
        com.huawei.location.resp.yn ynVar = new com.huawei.location.resp.yn(location);
        if (this.yn == null) {
            this.yn = new ArrayList();
        }
        return this.yn.add(ynVar);
    }
}
