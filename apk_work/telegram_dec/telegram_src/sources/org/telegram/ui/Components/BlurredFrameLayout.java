package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import android.widget.FrameLayout;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.SharedConfig;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class BlurredFrameLayout extends FrameLayout {
    public int backgroundColor;
    public int backgroundPaddingBottom;
    public int backgroundPaddingTop;
    protected Paint backgroundPaint;
    private android.graphics.Rect blurBounds;
    public boolean drawBlur;
    public boolean isTopView;
    protected final SizeNotifierFrameLayout sizeNotifierFrameLayout;

    public BlurredFrameLayout(Context context, SizeNotifierFrameLayout sizeNotifierFrameLayout) {
        super(context);
        this.backgroundColor = 0;
        this.isTopView = true;
        this.drawBlur = true;
        this.blurBounds = new android.graphics.Rect();
        this.sizeNotifierFrameLayout = sizeNotifierFrameLayout;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (SharedConfig.chatBlurEnabled() && this.sizeNotifierFrameLayout != null && this.drawBlur && this.backgroundColor != 0) {
            if (this.backgroundPaint == null) {
                this.backgroundPaint = new Paint();
            }
            this.backgroundPaint.setColor(this.backgroundColor);
            this.blurBounds.set(0, this.backgroundPaddingTop, getMeasuredWidth(), getMeasuredHeight() - this.backgroundPaddingBottom);
            float y = BitmapDescriptorFactory.HUE_RED;
            View view = this;
            while (true) {
                SizeNotifierFrameLayout sizeNotifierFrameLayout = this.sizeNotifierFrameLayout;
                if (view == sizeNotifierFrameLayout) {
                    sizeNotifierFrameLayout.drawBlurRect(canvas, y, this.blurBounds, this.backgroundPaint, this.isTopView);
                    break;
                }
                y += view.getY();
                Object parent = view.getParent();
                if (!(parent instanceof View)) {
                    super.dispatchDraw(canvas);
                    return;
                }
                view = (View) parent;
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        SizeNotifierFrameLayout sizeNotifierFrameLayout;
        if (SharedConfig.chatBlurEnabled() && (sizeNotifierFrameLayout = this.sizeNotifierFrameLayout) != null) {
            sizeNotifierFrameLayout.blurBehindViews.add(this);
        }
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.sizeNotifierFrameLayout;
        if (sizeNotifierFrameLayout != null) {
            sizeNotifierFrameLayout.blurBehindViews.remove(this);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (!SharedConfig.chatBlurEnabled() || this.sizeNotifierFrameLayout == null) {
            super.setBackgroundColor(i);
        } else {
            this.backgroundColor = i;
        }
    }
}
