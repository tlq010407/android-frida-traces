package com.huawei.hms.maps.model;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import com.huawei.hms.common.Preconditions;
import com.huawei.hms.common.parcel.ParcelReader;
import com.huawei.hms.common.parcel.ParcelWrite;
import com.huawei.hms.common.util.Objects;
import com.huawei.hms.maps.HuaweiMapOptions;
import java.math.BigDecimal;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class LatLngBounds implements Parcelable {
    public static final Parcelable.Creator<LatLngBounds> CREATOR = new Parcelable.Creator<LatLngBounds>() { // from class: com.huawei.hms.maps.model.LatLngBounds.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LatLngBounds createFromParcel(Parcel parcel) {
            return new LatLngBounds(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LatLngBounds[] newArray(int i) {
            return new LatLngBounds[i];
        }
    };
    public final LatLng northeast;
    public final LatLng southwest;

    public static final class Builder {
        private double a = Double.MAX_VALUE;
        private double b = -1.7976931348623157E308d;
        private double c = Double.NaN;
        private double d = Double.NaN;

        public LatLngBounds build() {
            Preconditions.checkState(!Double.isNaN(this.c), "no points in the bounds");
            return new LatLngBounds(new LatLng(this.a, this.c), new LatLng(this.b, this.d));
        }

        public Builder include(LatLng latLng) {
            boolean z;
            this.a = Math.min(this.a, latLng.latitude);
            this.b = Math.max(this.b, latLng.latitude);
            double d = latLng.longitude;
            double d2 = this.c;
            double d3 = this.d;
            if (d2 < d3 || Math.abs(d2 - d3) < 1.0E-6d) {
                double d4 = this.c;
                if (d4 < d || Math.abs(d4 - d) < 1.0E-6d) {
                    double d5 = this.d;
                    z = d < d5 || Math.abs(d - d5) < 1.0E-6d;
                }
            } else {
                double d6 = this.c;
                if (d6 >= d && Math.abs(d6 - d) >= 1.0E-6d) {
                    double d7 = this.d;
                    if (d < d7 || Math.abs(d - d7) < 1.0E-6d) {
                    }
                }
            }
            boolean z2 = LatLngBounds.c(this.c, d) < LatLngBounds.d(this.d, d);
            if (Double.isNaN(this.c)) {
                this.c = d;
            } else {
                if (z) {
                    return this;
                }
                if (z2) {
                    this.c = d;
                    return this;
                }
            }
            this.d = d;
            return this;
        }
    }

    protected LatLngBounds(Parcel parcel) {
        ParcelReader parcelReader = new ParcelReader(parcel);
        Parcelable.Creator<LatLng> creator = LatLng.CREATOR;
        this.southwest = (LatLng) parcelReader.readParcelable(2, creator, null);
        this.northeast = (LatLng) parcelReader.readParcelable(3, creator, null);
    }

    public LatLngBounds(LatLng latLng, LatLng latLng2) {
        Preconditions.checkNotNull(latLng, "southwest can not be null");
        Preconditions.checkNotNull(latLng2, "northeast can not be null");
        if (!Double.isNaN(latLng2.latitude) && !Double.isNaN(latLng.latitude)) {
            double d = latLng2.latitude;
            double d2 = latLng.latitude;
            Preconditions.checkArgument(d >= d2, "southern latitude >= northern latitude", Double.valueOf(d2), Double.valueOf(latLng2.latitude));
        }
        this.southwest = latLng;
        this.northeast = latLng2;
    }

    private boolean a(double d) {
        double d2 = this.southwest.longitude;
        if (d2 > this.northeast.longitude) {
            if (d2 < d || Math.abs(d2 - d) < 1.0E-6d) {
                return true;
            }
            double d3 = this.northeast.longitude;
            return d < d3 || Math.abs(d - d3) < 1.0E-6d;
        }
        if (d2 < d || Math.abs(d2 - d) < 1.0E-6d) {
            double d4 = this.northeast.longitude;
            if (d < d4 || Math.abs(d - d4) < 1.0E-6d) {
                return true;
            }
        }
        return false;
    }

    public static Builder builder() {
        return new Builder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double c(double d, double d2) {
        return ((d - d2) + 360.0d) % 360.0d;
    }

    public static LatLngBounds createFromAttributes(Context context, AttributeSet attributeSet) {
        return HuaweiMapOptions.buildLatLngBounds(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double d(double d, double d2) {
        return ((d2 - d) + 360.0d) % 360.0d;
    }

    public final boolean contains(LatLng latLng) {
        double d = latLng.latitude;
        return this.southwest.latitude <= d && d <= this.northeast.latitude && a(latLng.longitude);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LatLngBounds)) {
            return false;
        }
        LatLngBounds latLngBounds = (LatLngBounds) obj;
        return this.southwest.equals(latLngBounds.southwest) && this.northeast.equals(latLngBounds.northeast);
    }

    public final LatLng getCenter() {
        double dDoubleValue = new BigDecimal(this.southwest.latitude).add(new BigDecimal(this.northeast.latitude)).divide(new BigDecimal("2.0")).doubleValue();
        double d = this.northeast.longitude;
        double d2 = this.southwest.longitude;
        if (d2 > d) {
            d += 360.0d;
        }
        return new LatLng(dDoubleValue, (d + d2) / 2.0d);
    }

    public final int hashCode() {
        return Objects.hashCode(this.southwest, this.northeast);
    }

    public final LatLngBounds including(LatLng latLng) {
        LatLng latLng2 = new LatLng(Math.min(this.southwest.latitude, latLng.latitude), this.southwest.longitude);
        LatLng latLng3 = new LatLng(Math.max(this.northeast.latitude, latLng.latitude), this.northeast.longitude);
        if (a(latLng.longitude)) {
            return new LatLngBounds(latLng2, latLng3);
        }
        double d = c(latLng2.longitude, latLng.longitude) < d(latLng3.longitude, latLng.longitude) ? latLng.longitude : latLng2.longitude;
        latLng2.longitude = d;
        latLng3.longitude = c(d, latLng.longitude) < d(latLng3.longitude, latLng.longitude) ? latLng3.longitude : latLng.longitude;
        return new LatLngBounds(latLng2, latLng3);
    }

    public final String toString() {
        return "LatLngBounds:southwest point is" + this.southwest + ",northeast point is" + this.northeast;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        ParcelWrite parcelWrite = new ParcelWrite(parcel);
        int iBeginObjectHeader = parcelWrite.beginObjectHeader();
        parcelWrite.writeParcelable(2, this.southwest, i, false);
        parcelWrite.writeParcelable(3, this.northeast, i, false);
        parcelWrite.finishObjectHeader(iBeginObjectHeader);
    }
}
