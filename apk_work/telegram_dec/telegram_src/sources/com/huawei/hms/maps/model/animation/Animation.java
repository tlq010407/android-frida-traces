package com.huawei.hms.maps.model.animation;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.animation.Interpolator;
import com.huawei.hms.common.parcel.ParcelReader;
import com.huawei.hms.common.parcel.ParcelWrite;
import com.huawei.hms.feature.dynamic.IObjectWrapper;
import com.huawei.hms.feature.dynamic.ObjectWrapper;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class Animation implements Parcelable {
    public static final Parcelable.Creator<Animation> CREATOR = new Parcelable.Creator<Animation>() { // from class: com.huawei.hms.maps.model.animation.Animation.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Animation createFromParcel(Parcel parcel) {
            return Animation.b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Animation[] newArray(int i) {
            return new Animation[0];
        }
    };
    public static final int FILL_MODE_BACKWARDS = 1;
    public static final int FILL_MODE_FORWARDS = 0;
    public static final int INFINITE = -1;
    public static final int RESTART = 1;
    public static final int REVERSE = 2;
    protected int a;
    protected int b;
    protected int c;
    protected int d;
    protected long e;
    protected Interpolator f;
    protected AnimationListener g;

    public interface AnimationListener {
        void onAnimationEnd();

        void onAnimationStart();
    }

    public Animation() {
        this.b = 0;
        this.c = 1;
        this.d = 0;
        this.e = 250L;
    }

    protected Animation(ParcelReader parcelReader) {
        this.b = 0;
        this.c = 1;
        this.d = 0;
        this.e = 250L;
        this.a = parcelReader.readInt(2, 0);
        this.b = parcelReader.readInt(3, 0);
        this.c = parcelReader.readInt(4, 0);
        this.d = parcelReader.readInt(5, 0);
        this.e = parcelReader.readLong(6, 0L);
        IBinder iBinder = parcelReader.readIBinder(7, null);
        if (iBinder != null) {
            this.f = (Interpolator) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Animation b(Parcel parcel) {
        ParcelReader parcelReader = new ParcelReader(parcel);
        int i = parcelReader.readInt(2, 0);
        if (i == 1) {
            return new AlphaAnimation(parcelReader);
        }
        if (i == 2) {
            return new RotateAnimation(parcelReader);
        }
        if (i == 3) {
            return new ScaleAnimation(parcelReader);
        }
        if (i == 4) {
            return new TranslateAnimation(parcelReader);
        }
        if (i != 5) {
            return null;
        }
        return new AnimationSet(parcelReader);
    }

    protected abstract void a(ParcelWrite parcelWrite, int i);

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getDuration() {
        return this.e;
    }

    public int getFillMode() {
        return this.b;
    }

    public Interpolator getInterpolator() {
        return this.f;
    }

    public AnimationListener getListener() {
        return this.g;
    }

    public int getRepeatCount() {
        return this.d;
    }

    public int getRepeatMode() {
        return this.c;
    }

    public void setAnimationListener(AnimationListener animationListener) {
        this.g = animationListener;
    }

    public abstract void setDuration(long j);

    public void setFillMode(int i) {
        this.b = i;
    }

    public abstract void setInterpolator(Interpolator interpolator);

    public void setRepeatCount(int i) {
        this.d = i;
    }

    public void setRepeatMode(int i) {
        this.c = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ParcelWrite parcelWrite = new ParcelWrite(parcel);
        int iBeginObjectHeader = parcelWrite.beginObjectHeader();
        parcelWrite.writeInt(2, this.a);
        parcelWrite.writeInt(3, this.b);
        parcelWrite.writeInt(4, this.c);
        parcelWrite.writeInt(5, this.d);
        parcelWrite.writeLong(6, this.e);
        parcelWrite.writeIBinder(7, ObjectWrapper.wrap(this.f).asBinder(), false);
        a(parcelWrite, i);
        parcelWrite.finishObjectHeader(iBeginObjectHeader);
    }
}
