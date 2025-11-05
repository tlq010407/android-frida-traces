package com.huawei.hms.support.api.entity.location.fence;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.huawei.hms.core.aidl.IMessageEntity;
import com.huawei.hms.core.aidl.annotation.Packed;
import com.huawei.hms.location.Geofence;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class GeofenceEntity implements Parcelable, Geofence, IMessageEntity {
    public static final Parcelable.Creator<GeofenceEntity> CREATOR = new yn();

    @Packed
    private int conversions;

    @Packed
    private int dwellDelayTime;

    @Packed
    private double latitude;

    @Packed
    private double longitude;

    @Packed
    private int notificationInterval;

    @Packed
    private float radius;

    @Packed
    private String uniqueId;

    @Packed
    private long validDuration;

    static class yn implements Parcelable.Creator<GeofenceEntity> {
        yn() {
        }

        @Override // android.os.Parcelable.Creator
        public GeofenceEntity createFromParcel(Parcel parcel) {
            return new GeofenceEntity(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public GeofenceEntity[] newArray(int i) {
            return new GeofenceEntity[i];
        }
    }

    private GeofenceEntity(Parcel parcel) {
        this.dwellDelayTime = -1;
        this.uniqueId = parcel.readString();
        this.conversions = parcel.readInt();
        this.validDuration = parcel.readLong();
        this.latitude = parcel.readDouble();
        this.longitude = parcel.readDouble();
        this.radius = parcel.readFloat();
        this.notificationInterval = parcel.readInt();
        this.dwellDelayTime = parcel.readInt();
    }

    /* synthetic */ GeofenceEntity(Parcel parcel, yn ynVar) {
        this(parcel);
    }

    public GeofenceEntity(String str, int i, double d, double d2, float f, long j, int i2, int i3) {
        this.dwellDelayTime = -1;
        if (TextUtils.isEmpty(str) || str.length() > 100) {
            throw new IllegalArgumentException(TextUtils.isEmpty(str) ? "uniqueId is null" : "uniqueId is too long: ".concat(str));
        }
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("invalid radius: " + f);
        }
        if (d > 90.0d || d < -90.0d) {
            throw new IllegalArgumentException("invalid latitude");
        }
        if (d2 > 180.0d || d2 < -180.0d) {
            throw new IllegalArgumentException("invalid longitude");
        }
        if ((i & 7) == 0) {
            throw new IllegalArgumentException("invalid conversions: " + i);
        }
        this.uniqueId = str;
        this.latitude = d;
        this.longitude = d2;
        this.radius = f;
        this.validDuration = j;
        this.conversions = i;
        this.notificationInterval = i2;
        this.dwellDelayTime = i3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.huawei.hms.location.Geofence
    public final String getUniqueId() {
        return this.uniqueId;
    }

    public String toString() {
        return "GeofenceEntity{uniqueId='" + this.uniqueId + "', conversions=" + this.conversions + ", validDuration=" + this.validDuration + ", radius=" + this.radius + ", notificationInterval=" + this.notificationInterval + ", dwellDelayTime=" + this.dwellDelayTime + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.uniqueId);
        parcel.writeInt(this.conversions);
        parcel.writeLong(this.validDuration);
        parcel.writeDouble(this.latitude);
        parcel.writeDouble(this.longitude);
        parcel.writeFloat(this.radius);
        parcel.writeInt(this.notificationInterval);
        parcel.writeInt(this.dwellDelayTime);
    }
}
