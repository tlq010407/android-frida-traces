package com.huawei.hms.maps.model.animation;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.animation.Interpolator;
import com.huawei.hms.common.parcel.ParcelReader;
import com.huawei.hms.common.parcel.ParcelWrite;
import com.huawei.hms.maps.model.LatLng;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TranslateAnimation extends Animation {
    public static final Parcelable.Creator<TranslateAnimation> CREATOR = new Parcelable.Creator<TranslateAnimation>() { // from class: com.huawei.hms.maps.model.animation.TranslateAnimation.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TranslateAnimation createFromParcel(Parcel parcel) {
            return new TranslateAnimation(new ParcelReader(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TranslateAnimation[] newArray(int i) {
            return new TranslateAnimation[0];
        }
    };
    private LatLng h;

    protected TranslateAnimation(ParcelReader parcelReader) {
        super(parcelReader);
        this.h = (LatLng) parcelReader.readParcelable(8, LatLng.CREATOR, null);
    }

    public TranslateAnimation(LatLng latLng) {
        this.a = 4;
        this.h = latLng;
    }

    @Override // com.huawei.hms.maps.model.animation.Animation
    protected void a(ParcelWrite parcelWrite, int i) {
        parcelWrite.writeParcelable(8, this.h, i, false);
    }

    public LatLng getTarget() {
        return this.h;
    }

    @Override // com.huawei.hms.maps.model.animation.Animation
    public void setDuration(long j) {
        this.e = j;
    }

    @Override // com.huawei.hms.maps.model.animation.Animation
    public void setInterpolator(Interpolator interpolator) {
        this.f = interpolator;
    }
}
