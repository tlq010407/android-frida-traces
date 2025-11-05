package com.huawei.hms.location;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.core.aidl.IMessageEntity;
import com.huawei.hms.core.aidl.annotation.Packed;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class ActivityConversionRequest implements Parcelable, IMessageEntity {
    public static final Parcelable.Creator<ActivityConversionRequest> CREATOR = new yn();
    public static final Comparator<ActivityConversionInfo> IS_EQUAL_CONVERSION = new Vw();

    @Packed
    private List<ActivityConversionInfo> activityConversions;

    static class Vw implements Comparator<ActivityConversionInfo> {
        Vw() {
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0021 A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x001f A[RETURN, SYNTHETIC] */
        @Override // java.util.Comparator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int compare(ActivityConversionInfo activityConversionInfo, ActivityConversionInfo activityConversionInfo2) {
            ActivityConversionInfo activityConversionInfo3 = activityConversionInfo;
            ActivityConversionInfo activityConversionInfo4 = activityConversionInfo2;
            int activityType = activityConversionInfo3.getActivityType() - activityConversionInfo4.getActivityType();
            if (activityType != 0) {
                return activityType > 0 ? 1 : -1;
            }
            int conversionType = activityConversionInfo3.getConversionType() - activityConversionInfo4.getConversionType();
            if (conversionType == 0) {
                return 0;
            }
            if (conversionType > 0) {
            }
        }
    }

    static class yn implements Parcelable.Creator<ActivityConversionRequest> {
        yn() {
        }

        @Override // android.os.Parcelable.Creator
        public ActivityConversionRequest createFromParcel(Parcel parcel) {
            return new ActivityConversionRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ActivityConversionRequest[] newArray(int i) {
            return new ActivityConversionRequest[i];
        }
    }

    public ActivityConversionRequest() {
    }

    protected ActivityConversionRequest(Parcel parcel) {
        this.activityConversions = parcel.createTypedArrayList(ActivityConversionInfo.CREATOR);
    }

    public ActivityConversionRequest(List<ActivityConversionInfo> list) {
        this.activityConversions = list;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass() && (obj instanceof ActivityConversionRequest)) {
            return Objects.equals(this.activityConversions, ((ActivityConversionRequest) obj).getActivityConversions());
        }
        return false;
    }

    public List<ActivityConversionInfo> getActivityConversions() {
        return this.activityConversions;
    }

    public int hashCode() {
        return this.activityConversions.hashCode();
    }

    public void setActivityConversions(List<ActivityConversionInfo> list) {
        this.activityConversions = list;
    }

    public void setDataToIntent(Intent intent) {
        if (intent == null) {
            throw new IllegalArgumentException("ActivityConversionRequest:The parameter is null");
        }
        intent.putExtra("com.huawei.hms.location.internal.EXTRA_ACTIVITY_CONVERSION_REQUEST", this);
    }

    public String toString() {
        return "ActivityConversionRequest{activityConversions=" + this.activityConversions + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.activityConversions);
    }
}
