package com.huawei.hms.maps.model.animation;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.animation.Interpolator;
import com.huawei.hms.common.parcel.ParcelReader;
import com.huawei.hms.common.parcel.ParcelWrite;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class AnimationSet extends Animation {
    public static final Parcelable.Creator<AnimationSet> CREATOR = new Parcelable.Creator<AnimationSet>() { // from class: com.huawei.hms.maps.model.animation.AnimationSet.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AnimationSet createFromParcel(Parcel parcel) {
            return new AnimationSet(new ParcelReader(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AnimationSet[] newArray(int i) {
            return new AnimationSet[0];
        }
    };
    private boolean h;
    private List<Animation> i;

    protected AnimationSet(ParcelReader parcelReader) {
        super(parcelReader);
        this.i = new ArrayList();
        this.h = parcelReader.readBoolean(8, false);
        this.i = parcelReader.createTypedList(9, Animation.CREATOR, new ArrayList());
    }

    public AnimationSet(boolean z) {
        this.i = new ArrayList();
        this.a = 5;
        this.h = z;
    }

    @Override // com.huawei.hms.maps.model.animation.Animation
    protected void a(ParcelWrite parcelWrite, int i) {
        parcelWrite.writeBoolean(8, this.h);
        parcelWrite.writeTypedList(9, this.i, false);
    }

    public void addAnimation(Animation animation) {
        this.i.add(animation);
    }

    public void cleanAnimation() {
        this.i.clear();
    }

    public List<Animation> getAnimations() {
        return this.i;
    }

    public boolean isShareInterpolator() {
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
