package org.telegram.ui.Components;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.R;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class ShareLocationDrawable extends Drawable {
    private int currentType;
    private Drawable drawable;
    private Drawable drawableLeft;
    private Drawable drawableRight;
    private long lastUpdateTime = 0;
    private float[] progress = {BitmapDescriptorFactory.HUE_RED, -0.5f};

    public ShareLocationDrawable(Context context, int i) {
        Resources resources;
        int i2;
        Resources resources2;
        int i3;
        this.currentType = i;
        if (i == 4) {
            resources2 = context.getResources();
            i3 = R.drawable.filled_extend_location;
        } else if (i == 5) {
            resources2 = context.getResources();
            i3 = R.drawable.filled_stop_location;
        } else {
            if (i != 1) {
                this.drawable = context.getResources().getDrawable(R.drawable.animationpin).mutate();
                this.drawableLeft = context.getResources().getDrawable(R.drawable.animationpinleft).mutate();
                resources = context.getResources();
                i2 = R.drawable.animationpinright;
                this.drawableRight = resources.getDrawable(i2).mutate();
            }
            resources2 = context.getResources();
            i3 = R.drawable.smallanimationpin;
        }
        this.drawable = resources2.getDrawable(i3).mutate();
        this.drawableLeft = context.getResources().getDrawable(R.drawable.smallanimationpinleft).mutate();
        resources = context.getResources();
        i2 = R.drawable.smallanimationpinright;
        this.drawableRight = resources.getDrawable(i2).mutate();
    }

    private void update() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.lastUpdateTime;
        this.lastUpdateTime = jCurrentTimeMillis;
        if (j > 16) {
            j = 16;
        }
        for (int i = 0; i < 2; i++) {
            float[] fArr = this.progress;
            if (fArr[i] >= 1.0f) {
                fArr[i] = 0.0f;
            }
            float f = fArr[i] + (j / 1300.0f);
            fArr[i] = f;
            if (f > 1.0f) {
                fArr[i] = 1.0f;
            }
        }
        invalidateSelf();
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x016e  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void draw(Canvas canvas) {
        int iDp;
        int iDp2;
        int iDp3;
        float f;
        int iDp4;
        int i;
        int iDp5;
        int iDp6;
        int iDp7;
        int iDp8;
        int iDp9;
        int intrinsicWidth = this.drawable.getIntrinsicWidth();
        int intrinsicHeight = this.drawable.getIntrinsicHeight();
        int i2 = this.currentType;
        int i3 = 3;
        int i4 = 5;
        int i5 = 1;
        int iDp10 = AndroidUtilities.dp((i2 == 4 || i2 == 5) ? 24.0f : i2 == 3 ? 44.0f : i2 == 2 ? 32.0f : i2 == 1 ? 30.0f : 120.0f);
        int intrinsicHeight2 = getBounds().top + ((getIntrinsicHeight() - iDp10) / 2);
        int intrinsicWidth2 = getBounds().left + ((getIntrinsicWidth() - iDp10) / 2);
        int i6 = intrinsicWidth + intrinsicWidth2;
        this.drawable.setBounds(intrinsicWidth2, intrinsicHeight2, i6, intrinsicHeight2 + intrinsicHeight);
        this.drawable.draw(canvas);
        int i7 = 0;
        while (i7 < 2) {
            float f2 = this.progress[i7];
            if (f2 >= BitmapDescriptorFactory.HUE_RED) {
                float f3 = (f2 * 0.5f) + 0.5f;
                int i8 = this.currentType;
                if (i8 == 4 || i8 == i4) {
                    iDp = AndroidUtilities.dp(2.5f * f3);
                    iDp2 = AndroidUtilities.dp(f3 * 6.5f);
                    iDp3 = AndroidUtilities.dp(this.progress[i7] * 6.0f);
                    f = 3.0f;
                    iDp4 = (intrinsicWidth2 + AndroidUtilities.dp(3.0f)) - iDp3;
                    i = intrinsicHeight2 + (intrinsicHeight / 2);
                    iDp5 = AndroidUtilities.dp(2.0f);
                } else {
                    if (i8 == i3) {
                        iDp = AndroidUtilities.dp(5.0f * f3);
                        iDp2 = AndroidUtilities.dp(f3 * 18.0f);
                        iDp9 = AndroidUtilities.dp(this.progress[i7] * 15.0f);
                        iDp4 = (intrinsicWidth2 + AndroidUtilities.dp(2.0f)) - iDp9;
                        iDp6 = (intrinsicHeight2 + (intrinsicHeight / 2)) - AndroidUtilities.dp(7.0f);
                    } else if (i8 == 2) {
                        iDp = AndroidUtilities.dp(5.0f * f3);
                        iDp2 = AndroidUtilities.dp(f3 * 18.0f);
                        iDp9 = AndroidUtilities.dp(this.progress[i7] * 15.0f);
                        iDp4 = (intrinsicWidth2 + AndroidUtilities.dp(2.0f)) - iDp9;
                        iDp6 = intrinsicHeight2 + (intrinsicHeight / 2);
                    } else if (i8 == i5) {
                        iDp = AndroidUtilities.dp(2.5f * f3);
                        iDp2 = AndroidUtilities.dp(f3 * 6.5f);
                        iDp3 = AndroidUtilities.dp(this.progress[i7] * 6.0f);
                        iDp4 = (AndroidUtilities.dp(7.0f) + intrinsicWidth2) - iDp3;
                        iDp6 = intrinsicHeight2 + (intrinsicHeight / 2);
                        iDp7 = AndroidUtilities.dp(7.0f);
                        iDp8 = (i6 - iDp7) + iDp3;
                        float f4 = this.progress[i7];
                        int i9 = (int) ((f4 < 0.5f ? f4 / 0.5f : 1.0f - ((f4 - 0.5f) / 0.5f)) * 255.0f);
                        this.drawableLeft.setAlpha(i9);
                        int i10 = iDp6 - iDp2;
                        int i11 = iDp6 + iDp2;
                        this.drawableLeft.setBounds(iDp4 - iDp, i10, iDp4 + iDp, i11);
                        this.drawableLeft.draw(canvas);
                        this.drawableRight.setAlpha(i9);
                        this.drawableRight.setBounds(iDp8 - iDp, i10, iDp8 + iDp, i11);
                        this.drawableRight.draw(canvas);
                    } else {
                        iDp = AndroidUtilities.dp(5.0f * f3);
                        iDp2 = AndroidUtilities.dp(f3 * 18.0f);
                        iDp3 = AndroidUtilities.dp(this.progress[i7] * 15.0f);
                        f = 42.0f;
                        iDp4 = (intrinsicWidth2 + AndroidUtilities.dp(42.0f)) - iDp3;
                        i = intrinsicHeight2 + (intrinsicHeight / 2);
                        iDp5 = AndroidUtilities.dp(7.0f);
                    }
                    iDp8 = (i6 - AndroidUtilities.dp(2.0f)) + iDp9;
                    float f42 = this.progress[i7];
                    int i92 = (int) ((f42 < 0.5f ? f42 / 0.5f : 1.0f - ((f42 - 0.5f) / 0.5f)) * 255.0f);
                    this.drawableLeft.setAlpha(i92);
                    int i102 = iDp6 - iDp2;
                    int i112 = iDp6 + iDp2;
                    this.drawableLeft.setBounds(iDp4 - iDp, i102, iDp4 + iDp, i112);
                    this.drawableLeft.draw(canvas);
                    this.drawableRight.setAlpha(i92);
                    this.drawableRight.setBounds(iDp8 - iDp, i102, iDp8 + iDp, i112);
                    this.drawableRight.draw(canvas);
                }
                iDp6 = i - iDp5;
                iDp7 = AndroidUtilities.dp(f);
                iDp8 = (i6 - iDp7) + iDp3;
                float f422 = this.progress[i7];
                int i922 = (int) ((f422 < 0.5f ? f422 / 0.5f : 1.0f - ((f422 - 0.5f) / 0.5f)) * 255.0f);
                this.drawableLeft.setAlpha(i922);
                int i1022 = iDp6 - iDp2;
                int i1122 = iDp6 + iDp2;
                this.drawableLeft.setBounds(iDp4 - iDp, i1022, iDp4 + iDp, i1122);
                this.drawableLeft.draw(canvas);
                this.drawableRight.setAlpha(i922);
                this.drawableRight.setBounds(iDp8 - iDp, i1022, iDp8 + iDp, i1122);
                this.drawableRight.draw(canvas);
            }
            i7++;
            i3 = 3;
            i4 = 5;
            i5 = 1;
        }
        update();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        int i = this.currentType;
        return AndroidUtilities.dp((i == 4 || i == 5) ? 42.0f : i == 3 ? 100.0f : i == 2 ? 74.0f : i == 1 ? 40.0f : 180.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        int i = this.currentType;
        return AndroidUtilities.dp((i == 4 || i == 5) ? 42.0f : i == 3 ? 100.0f : i == 2 ? 74.0f : i == 1 ? 40.0f : 120.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.drawable.setColorFilter(colorFilter);
        this.drawableLeft.setColorFilter(colorFilter);
        this.drawableRight.setColorFilter(colorFilter);
    }
}
