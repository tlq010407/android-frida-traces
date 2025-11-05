package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.viewpager.widget.ViewPager;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class BottomPagesView extends View {
    private int colorKey;
    private int currentPage;
    private DecelerateInterpolator decelerateInterpolator;
    private int pagesCount;
    private Paint paint;
    private float progress;
    private RectF rect;
    private int scrollPosition;
    private int selectedColorKey;
    private ViewPager viewPager;

    public BottomPagesView(Context context, ViewPager viewPager, int i) {
        super(context);
        this.paint = new Paint(1);
        this.decelerateInterpolator = new DecelerateInterpolator();
        this.rect = new RectF();
        this.colorKey = -1;
        this.selectedColorKey = -1;
        this.viewPager = viewPager;
        this.pagesCount = i;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        RectF rectF;
        float fDp;
        float fDp2;
        AndroidUtilities.dp(5.0f);
        int i = this.colorKey;
        if (i >= 0) {
            this.paint.setColor((Theme.getColor(i) & 16777215) | (-1275068416));
        } else {
            this.paint.setColor(Theme.getCurrentTheme().isDark() ? -11184811 : -4473925);
        }
        this.currentPage = this.viewPager.getCurrentItem();
        for (int i2 = 0; i2 < this.pagesCount; i2++) {
            if (i2 != this.currentPage) {
                this.rect.set(AndroidUtilities.dp(11.0f) * i2, BitmapDescriptorFactory.HUE_RED, r2 + AndroidUtilities.dp(5.0f), AndroidUtilities.dp(5.0f));
                canvas.drawRoundRect(this.rect, AndroidUtilities.dp(2.5f), AndroidUtilities.dp(2.5f), this.paint);
            }
        }
        int i3 = this.selectedColorKey;
        if (i3 >= 0) {
            this.paint.setColor(Theme.getColor(i3));
        } else {
            this.paint.setColor(-13851168);
        }
        int iDp = this.currentPage * AndroidUtilities.dp(11.0f);
        if (this.progress != BitmapDescriptorFactory.HUE_RED) {
            if (this.scrollPosition >= this.currentPage) {
                rectF = this.rect;
                fDp = iDp;
                fDp2 = iDp + AndroidUtilities.dp(5.0f) + (AndroidUtilities.dp(11.0f) * this.progress);
            } else {
                rectF = this.rect;
                fDp = iDp - (AndroidUtilities.dp(11.0f) * (1.0f - this.progress));
                fDp2 = iDp + AndroidUtilities.dp(5.0f);
            }
            rectF.set(fDp, BitmapDescriptorFactory.HUE_RED, fDp2, AndroidUtilities.dp(5.0f));
        } else {
            this.rect.set(iDp, BitmapDescriptorFactory.HUE_RED, iDp + AndroidUtilities.dp(5.0f), AndroidUtilities.dp(5.0f));
        }
        canvas.drawRoundRect(this.rect, AndroidUtilities.dp(2.5f), AndroidUtilities.dp(2.5f), this.paint);
    }

    public void setColor(int i, int i2) {
        this.colorKey = i;
        this.selectedColorKey = i2;
    }

    public void setCurrentPage(int i) {
        this.currentPage = i;
        invalidate();
    }

    public void setPageOffset(int i, float f) {
        this.progress = f;
        this.scrollPosition = i;
        invalidate();
    }
}
