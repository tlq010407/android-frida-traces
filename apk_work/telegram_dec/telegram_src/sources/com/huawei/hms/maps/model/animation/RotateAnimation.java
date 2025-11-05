package com.huawei.hms.maps.model.animation;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.animation.Interpolator;
import com.huawei.hms.common.parcel.ParcelReader;
import com.huawei.hms.common.parcel.ParcelWrite;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class RotateAnimation extends Animation {
    public static final Parcelable.Creator<RotateAnimation> CREATOR = new Parcelable.Creator<RotateAnimation>() { // from class: com.huawei.hms.maps.model.animation.RotateAnimation.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RotateAnimation createFromParcel(Parcel parcel) {
            return new RotateAnimation(new ParcelReader(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RotateAnimation[] newArray(int i) {
            return new RotateAnimation[0];
        }
    };
    private float h;
    private float i;

    public RotateAnimation(float f, float f2) {
        this.a = 2;
        this.h = f;
        this.i = f2;
    }

    protected RotateAnimation(ParcelReader parcelReader) {
        super(parcelReader);
        this.h = parcelReader.readFloat(8, BitmapDescriptorFactory.HUE_RED);
        this.i = parcelReader.readFloat(9, BitmapDescriptorFactory.HUE_RED);
    }

    @Override // com.huawei.hms.maps.model.animation.Animation
    protected void a(ParcelWrite parcelWrite, int i) {
        parcelWrite.writeFloat(8, this.h);
        parcelWrite.writeFloat(9, this.i);
    }

    public float getFromDegree() {
        return this.h;
    }

    public float getToDegree() {
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
