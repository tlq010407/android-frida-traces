package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.SharedConfig;
import org.telegram.ui.Components.ViewPagerFixed;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public abstract class ChatSearchTabs extends BlurredFrameLayout {
    private ValueAnimator actionBarTagsAnimator;
    private float actionBarTagsT;
    private Paint backgroundPaint2;
    public boolean showWithCut;
    private boolean shown;
    public float shownT;
    public ViewPagerFixed.TabsView tabs;

    public ChatSearchTabs(Context context, SizeNotifierFrameLayout sizeNotifierFrameLayout) {
        super(context, sizeNotifierFrameLayout);
        this.showWithCut = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$0(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.actionBarTagsT = fFloatValue;
        setShown(fFloatValue);
        onShownUpdate(false);
    }

    @Override // org.telegram.ui.Components.BlurredFrameLayout, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        canvas.save();
        if (this.showWithCut) {
            canvas.clipRect(0, 0, getWidth(), getCurrentHeight());
        }
        if (this.backgroundPaint2 != null) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getCurrentHeight(), this.backgroundPaint2);
        }
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    public int getCurrentHeight() {
        return (int) (getMeasuredHeight() * this.shownT);
    }

    @Override // android.view.View
    public boolean isShown() {
        return this.shown;
    }

    protected abstract void onShownUpdate(boolean z);

    @Override // org.telegram.ui.Components.BlurredFrameLayout, android.view.View
    public void setBackgroundColor(int i) {
        if (SharedConfig.chatBlurEnabled() && this.sizeNotifierFrameLayout != null) {
            super.setBackgroundColor(i);
            return;
        }
        Paint paint = new Paint(1);
        this.backgroundPaint2 = paint;
        paint.setColor(i);
    }

    public void setShown(float f) {
        this.shownT = f;
        ViewPagerFixed.TabsView tabsView = this.tabs;
        if (tabsView != null) {
            tabsView.setPivotX(tabsView.getWidth() / 2.0f);
            this.tabs.setPivotY(BitmapDescriptorFactory.HUE_RED);
            this.tabs.setScaleX(AndroidUtilities.lerp(0.8f, 1.0f, f));
            this.tabs.setScaleY(AndroidUtilities.lerp(0.8f, 1.0f, f));
        }
        if (this.showWithCut) {
            ViewPagerFixed.TabsView tabsView2 = this.tabs;
            if (tabsView2 != null) {
                tabsView2.setAlpha(f);
            }
        } else {
            setAlpha(f);
        }
        invalidate();
    }

    public void setTabs(ViewPagerFixed.TabsView tabsView) {
        this.tabs = tabsView;
        addView(tabsView, LayoutHelper.createFrame(-1, -1.0f));
    }

    public void show(final boolean z) {
        this.shown = z;
        ValueAnimator valueAnimator = this.actionBarTagsAnimator;
        if (valueAnimator != null) {
            this.actionBarTagsAnimator = null;
            valueAnimator.cancel();
        }
        if (z) {
            setVisibility(0);
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.actionBarTagsT, z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        this.actionBarTagsAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatSearchTabs$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$show$0(valueAnimator2);
            }
        });
        this.actionBarTagsAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.actionBarTagsAnimator.setDuration(320L);
        this.actionBarTagsAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatSearchTabs.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (animator != ChatSearchTabs.this.actionBarTagsAnimator) {
                    return;
                }
                ChatSearchTabs.this.actionBarTagsT = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                ChatSearchTabs chatSearchTabs = ChatSearchTabs.this;
                chatSearchTabs.setShown(chatSearchTabs.actionBarTagsT);
                if (!z) {
                    ChatSearchTabs.this.setVisibility(8);
                }
                ChatSearchTabs.this.onShownUpdate(true);
            }
        });
        this.actionBarTagsAnimator.start();
    }

    public boolean shown() {
        return this.shownT > 0.5f;
    }
}
