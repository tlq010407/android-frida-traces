package com.huawei.hms.maps.model.animation;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.animation.Interpolator;
import com.huawei.hms.common.parcel.ParcelReader;
import com.huawei.hms.common.parcel.ParcelWrite;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class ScaleAnimation extends Animation {
    public static final Parcelable.Creator<ScaleAnimation> CREATOR = new Parcelable.Creator<ScaleAnimation>() { // from class: com.huawei.hms.maps.model.animation.ScaleAnimation.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ScaleAnimation createFromParcel(Parcel parcel) {
            return new ScaleAnimation(new ParcelReader(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ScaleAnimation[] newArray(int i) {
            return new ScaleAnimation[0];
        }
    };
    private float h;
    private float i;
    private float j;
    private float k;

    public ScaleAnimation(float f, float f2, float f3, float f4) {
        this.a = 3;
        this.b = 1;
        this.h = Math.max(f, BitmapDescriptorFactory.HUE_RED);
        this.i = Math.max(f2, BitmapDescriptorFactory.HUE_RED);
        this.j = Math.max(f3, BitmapDescriptorFactory.HUE_RED);
        this.k = Math.max(f4, BitmapDescriptorFactory.HUE_RED);
    }

    protected ScaleAnimation(ParcelReader parcelReader) {
        super(parcelReader);
        this.h = parcelReader.readFloat(8, BitmapDescriptorFactory.HUE_RED);
        this.i = parcelReader.readFloat(9, BitmapDescriptorFactory.HUE_RED);
        this.j = parcelReader.readFloat(10, BitmapDescriptorFactory.HUE_RED);
        this.k = parcelReader.readFloat(11, BitmapDescriptorFactory.HUE_RED);
    }

    @Override // com.huawei.hms.maps.model.animation.Animation
    protected void a(ParcelWrite parcelWrite, int i) {
        parcelWrite.writeFloat(8, this.h);
        parcelWrite.writeFloat(9, this.i);
        parcelWrite.writeFloat(10, this.j);
        parcelWrite.writeFloat(11, this.k);
    }

    public float getFromX() {
        return this.h;
    }

    public float getFromY() {
        return this.j;
    }

    public float getToX() {
        return this.i;
    }

    public float getToY() {
        return this.k;
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
