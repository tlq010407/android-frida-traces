package com.huawei.hms.maps.model.animation;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.animation.Interpolator;
import com.huawei.hms.common.parcel.ParcelReader;
import com.huawei.hms.common.parcel.ParcelWrite;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class AlphaAnimation extends Animation {
    public static final Parcelable.Creator<AlphaAnimation> CREATOR = new Parcelable.Creator<AlphaAnimation>() { // from class: com.huawei.hms.maps.model.animation.AlphaAnimation.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AlphaAnimation createFromParcel(Parcel parcel) {
            return new AlphaAnimation(new ParcelReader(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AlphaAnimation[] newArray(int i) {
            return new AlphaAnimation[0];
        }
    };
    private float h;
    private float i;

    public AlphaAnimation(float f, float f2) {
        this.a = 1;
        this.h = Math.min(Math.max(f, BitmapDescriptorFactory.HUE_RED), 1.0f);
        this.i = Math.min(Math.max(f2, BitmapDescriptorFactory.HUE_RED), 1.0f);
    }

    protected AlphaAnimation(ParcelReader parcelReader) {
        super(parcelReader);
        this.h = parcelReader.readFloat(8, BitmapDescriptorFactory.HUE_RED);
        this.i = parcelReader.readFloat(9, BitmapDescriptorFactory.HUE_RED);
    }

    @Override // com.huawei.hms.maps.model.animation.Animation
    protected void a(ParcelWrite parcelWrite, int i) {
        parcelWrite.writeFloat(8, this.h);
        parcelWrite.writeFloat(9, this.i);
    }

    public float getFromAlpha() {
        return this.h;
    }

    public float getToAlpha() {
        return this.i;
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
