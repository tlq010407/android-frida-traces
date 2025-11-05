package org.telegram.ui.Components;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.SystemClock;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.NotificationCenter;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedEmojiSpan;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class ScrollSlidingTextTabStrip extends HorizontalScrollView {
    private int activeTextColorKey;
    private int allTextWidth;
    private int animateFromIndicatorWidth;
    private int animateFromIndicaxtorX;
    private int animateIndicatorStartWidth;
    private int animateIndicatorStartX;
    private int animateIndicatorToWidth;
    private int animateIndicatorToX;
    private boolean animatingIndicator;
    public long animationDuration;
    private float animationIdicatorProgress;
    private Runnable animationRunnable;
    private float animationTime;
    private int currentPosition;
    private ScrollSlidingTabStripDelegate delegate;
    private SparseIntArray idToPosition;
    private int indicatorWidth;
    private float indicatorWidthAnimationDx;
    private int indicatorX;
    private float indicatorXAnimationDx;
    private CubicBezierInterpolator interpolator;
    private long lastAnimationTime;
    private SparseIntArray positionToId;
    private SparseIntArray positionToWidth;
    private int prevLayoutWidth;
    private int previousPosition;
    private Theme.ResourcesProvider resourcesProvider;
    private int scrollingToChild;
    private int selectedTabId;
    private int selectorColorKey;
    private GradientDrawable selectorDrawable;
    private boolean setInitialTab;
    private int tabCount;
    private int tabLineColorKey;
    private LinearLayout tabsContainer;
    private int unactiveTextColorKey;
    private boolean useSameWidth;

    public interface ScrollSlidingTabStripDelegate {

        /* renamed from: org.telegram.ui.Components.ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$onSamePageSelected(ScrollSlidingTabStripDelegate scrollSlidingTabStripDelegate) {
            }
        }

        void onPageScrolled(float f);

        void onPageSelected(int i, boolean z);

        void onSamePageSelected();
    }

    public ScrollSlidingTextTabStrip(Context context) {
        this(context, null);
    }

    public ScrollSlidingTextTabStrip(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.selectedTabId = -1;
        this.scrollingToChild = -1;
        this.tabLineColorKey = Theme.key_actionBarTabLine;
        this.activeTextColorKey = Theme.key_actionBarTabActiveText;
        this.unactiveTextColorKey = Theme.key_actionBarTabUnactiveText;
        this.selectorColorKey = Theme.key_actionBarTabSelector;
        this.interpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.positionToId = new SparseIntArray(5);
        this.idToPosition = new SparseIntArray(5);
        this.positionToWidth = new SparseIntArray(5);
        this.animationDuration = 200L;
        this.animationRunnable = new Runnable() { // from class: org.telegram.ui.Components.ScrollSlidingTextTabStrip.1
            @Override // java.lang.Runnable
            public void run() {
                if (ScrollSlidingTextTabStrip.this.animatingIndicator) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime() - ScrollSlidingTextTabStrip.this.lastAnimationTime;
                    if (jElapsedRealtime > 17) {
                        jElapsedRealtime = 17;
                    }
                    ScrollSlidingTextTabStrip.access$216(ScrollSlidingTextTabStrip.this, jElapsedRealtime / r2.animationDuration);
                    ScrollSlidingTextTabStrip scrollSlidingTextTabStrip = ScrollSlidingTextTabStrip.this;
                    scrollSlidingTextTabStrip.setAnimationIdicatorProgress(scrollSlidingTextTabStrip.interpolator.getInterpolation(ScrollSlidingTextTabStrip.this.animationTime));
                    if (ScrollSlidingTextTabStrip.this.animationTime > 1.0f) {
                        ScrollSlidingTextTabStrip.this.animationTime = 1.0f;
                    }
                    if (ScrollSlidingTextTabStrip.this.animationTime < 1.0f) {
                        AndroidUtilities.runOnUIThread(ScrollSlidingTextTabStrip.this.animationRunnable);
                        return;
                    }
                    ScrollSlidingTextTabStrip.this.animatingIndicator = false;
                    ScrollSlidingTextTabStrip.this.setEnabled(true);
                    if (ScrollSlidingTextTabStrip.this.delegate != null) {
                        ScrollSlidingTextTabStrip.this.delegate.onPageScrolled(1.0f);
                    }
                }
            }
        };
        this.resourcesProvider = resourcesProvider;
        this.selectorDrawable = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, null);
        float fDpf2 = AndroidUtilities.dpf2(3.0f);
        this.selectorDrawable.setCornerRadii(new float[]{fDpf2, fDpf2, fDpf2, fDpf2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED});
        this.selectorDrawable.setColor(Theme.getColor(this.tabLineColorKey, resourcesProvider));
        setFillViewport(true);
        setWillNotDraw(false);
        setHorizontalScrollBarEnabled(false);
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.ScrollSlidingTextTabStrip.2
            @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                super.onLayout(z, i, i2, i3, i4);
                if (!ScrollSlidingTextTabStrip.this.setInitialTab || ScrollSlidingTextTabStrip.this.idToPosition.indexOfKey(ScrollSlidingTextTabStrip.this.selectedTabId) < 0 || ScrollSlidingTextTabStrip.this.tabsContainer.getChildAt(ScrollSlidingTextTabStrip.this.idToPosition.get(ScrollSlidingTextTabStrip.this.selectedTabId)) == null) {
                    return;
                }
                ScrollSlidingTextTabStrip scrollSlidingTextTabStrip = ScrollSlidingTextTabStrip.this;
                scrollSlidingTextTabStrip.scrollToChild(scrollSlidingTextTabStrip.idToPosition.get(ScrollSlidingTextTabStrip.this.selectedTabId), false);
                ScrollSlidingTextTabStrip.this.setInitialTab = false;
            }

            @Override // android.view.View
            public void setAlpha(float f) {
                super.setAlpha(f);
                ScrollSlidingTextTabStrip.this.invalidate();
            }
        };
        this.tabsContainer = linearLayout;
        linearLayout.setOrientation(0);
        this.tabsContainer.setPadding(AndroidUtilities.dp(7.0f), 0, AndroidUtilities.dp(7.0f), 0);
        this.tabsContainer.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(this.tabsContainer);
    }

    static /* synthetic */ float access$216(ScrollSlidingTextTabStrip scrollSlidingTextTabStrip, float f) {
        float f2 = scrollSlidingTextTabStrip.animationTime + f;
        scrollSlidingTextTabStrip.animationTime = f2;
        return f2;
    }

    private int getChildWidth(TextView textView) {
        return textView.getLayout() != null ? ((int) Math.ceil(r0.getLineWidth(0))) + AndroidUtilities.dp(2.0f) : textView.getMeasuredWidth();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addTextTab$0(int i, View view) {
        scrollTo(i, this.tabsContainer.indexOfChild(view), view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLayout$1(int i, int i2, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.indicatorXAnimationDx = i * fFloatValue;
        this.indicatorWidthAnimationDx = i2 * fFloatValue;
        this.tabsContainer.invalidate();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
    
        if (r7 != false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0034, code lost:
    
        smoothScrollTo(r1, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0038, code lost:
    
        scrollTo(r1, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004b, code lost:
    
        if (r7 != false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void scrollToChild(int i, boolean z) {
        int iDp;
        if (this.tabCount == 0 || this.scrollingToChild == i) {
            return;
        }
        this.scrollingToChild = i;
        TextView textView = (TextView) this.tabsContainer.getChildAt(i);
        if (textView == null) {
            return;
        }
        int scrollX = getScrollX();
        int left = textView.getLeft();
        int measuredWidth = textView.getMeasuredWidth();
        if (left - AndroidUtilities.dp(50.0f) < scrollX) {
            iDp = left - AndroidUtilities.dp(50.0f);
        } else {
            iDp = left + measuredWidth;
            if (AndroidUtilities.dp(21.0f) + iDp <= scrollX + getWidth()) {
            }
        }
    }

    private void setAnimationProgressInernal(TextView textView, TextView textView2, float f) {
        if (textView == null || textView2 == null) {
            return;
        }
        int iProcessColor = processColor(Theme.getColor(this.activeTextColorKey, this.resourcesProvider));
        int iProcessColor2 = processColor(Theme.getColor(this.unactiveTextColorKey, this.resourcesProvider));
        int iRed = Color.red(iProcessColor);
        int iGreen = Color.green(iProcessColor);
        int iBlue = Color.blue(iProcessColor);
        int iAlpha = Color.alpha(iProcessColor);
        int iRed2 = Color.red(iProcessColor2);
        int iGreen2 = Color.green(iProcessColor2);
        int iBlue2 = Color.blue(iProcessColor2);
        int iAlpha2 = Color.alpha(iProcessColor2);
        textView2.setTextColor(Color.argb((int) (iAlpha + ((iAlpha2 - iAlpha) * f)), (int) (iRed + ((iRed2 - iRed) * f)), (int) (iGreen + ((iGreen2 - iGreen) * f)), (int) (iBlue + ((iBlue2 - iBlue) * f))));
        textView.setTextColor(Color.argb((int) (iAlpha2 + ((iAlpha - iAlpha2) * f)), (int) (iRed2 + ((iRed - iRed2) * f)), (int) (iGreen2 + ((iGreen - iGreen2) * f)), (int) (iBlue2 + ((iBlue - iBlue2) * f))));
        this.indicatorX = (int) (this.animateIndicatorStartX + ((this.animateIndicatorToX - r1) * f));
        this.indicatorWidth = (int) (this.animateIndicatorStartWidth + ((this.animateIndicatorToWidth - r1) * f));
        invalidate();
    }

    public void addTextTab(int i, CharSequence charSequence) {
        addTextTab(i, charSequence, null);
    }

    public void addTextTab(final int i, CharSequence charSequence, SparseArray sparseArray) {
        TextView textView;
        int i2 = this.tabCount;
        this.tabCount = i2 + 1;
        if (i2 == 0 && this.selectedTabId == -1) {
            this.selectedTabId = i;
        }
        this.positionToId.put(i2, i);
        this.idToPosition.put(i, i2);
        int i3 = this.selectedTabId;
        if (i3 != -1 && i3 == i) {
            this.currentPosition = i2;
            this.prevLayoutWidth = 0;
        }
        if (sparseArray != null) {
            textView = (TextView) sparseArray.get(i);
            sparseArray.delete(i);
        } else {
            textView = null;
        }
        if (textView == null) {
            textView = new AnimatedEmojiSpan.TextViewEmojis(getContext()) { // from class: org.telegram.ui.Components.ScrollSlidingTextTabStrip.3
                @Override // android.view.View
                public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                    super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                    accessibilityNodeInfo.setSelected(ScrollSlidingTextTabStrip.this.selectedTabId == i);
                }
            };
            textView.setGravity(17);
            textView.setTextAlignment(4);
            textView.setBackground(Theme.createSelectorDrawable(Theme.multAlpha(processColor(Theme.getColor(this.activeTextColorKey, this.resourcesProvider)), 0.15f), 3));
            textView.setTextSize(1, 15.0f);
            textView.setSingleLine(true);
            textView.setTypeface(AndroidUtilities.bold());
            textView.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), 0);
            textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ScrollSlidingTextTabStrip$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$addTextTab$0(i, view);
                }
            });
            NotificationCenter.listenEmojiLoading(textView);
        }
        textView.setText(Emoji.replaceEmoji(charSequence, textView.getPaint().getFontMetricsInt(), false));
        int iCeil = ((int) Math.ceil(textView.getPaint().measureText(r6, 0, r6.length()))) + textView.getPaddingLeft() + textView.getPaddingRight();
        this.tabsContainer.addView(textView, LayoutHelper.createLinear(0, -1));
        this.allTextWidth += iCeil;
        this.positionToWidth.put(i2, iCeil);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        boolean zDrawChild = super.drawChild(canvas, view, j);
        if (view == this.tabsContainer) {
            int measuredHeight = getMeasuredHeight();
            this.selectorDrawable.setAlpha((int) (this.tabsContainer.getAlpha() * 255.0f));
            float f = this.indicatorX + this.indicatorXAnimationDx;
            this.selectorDrawable.setBounds((int) f, measuredHeight - AndroidUtilities.dpr(4.0f), (int) (this.indicatorWidth + f + this.indicatorWidthAnimationDx), measuredHeight);
            this.selectorDrawable.draw(canvas);
        }
        return zDrawChild;
    }

    public void finishAddingTabs() {
        int childCount = this.tabsContainer.getChildCount();
        int i = 0;
        while (i < childCount) {
            TextView textView = (TextView) this.tabsContainer.getChildAt(i);
            textView.setTag(Integer.valueOf(this.currentPosition == i ? this.activeTextColorKey : this.unactiveTextColorKey));
            textView.setTextColor(processColor(Theme.getColor(this.currentPosition == i ? this.activeTextColorKey : this.unactiveTextColorKey, this.resourcesProvider)));
            if (i == 0) {
                int i2 = textView.getLayoutParams().width;
                textView.getLayoutParams().width = childCount == 1 ? -2 : 0;
                if (i2 != textView.getLayoutParams().width) {
                    textView.requestLayout();
                }
            }
            i++;
        }
    }

    public float getAnimationIdicatorProgress() {
        return this.animationIdicatorProgress;
    }

    public int getCurrentPosition() {
        return this.currentPosition;
    }

    public int getCurrentTabId() {
        return this.selectedTabId;
    }

    public int getFirstTabId() {
        return this.positionToId.get(0, 0);
    }

    public int getNextPageId(boolean z) {
        return this.positionToId.get(this.currentPosition + (z ? 1 : -1), -1);
    }

    public Drawable getSelectorDrawable() {
        return this.selectorDrawable;
    }

    public ViewGroup getTabsContainer() {
        return this.tabsContainer;
    }

    public int getTabsCount() {
        return this.tabCount;
    }

    public boolean hasTab(int i) {
        return this.idToPosition.get(i, -1) != -1;
    }

    public boolean isAnimatingIndicator() {
        return this.animatingIndicator;
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        super.onLayout(z, i, i2, i3, i4);
        int i6 = i3 - i;
        if (this.prevLayoutWidth != i6) {
            this.prevLayoutWidth = i6;
            this.scrollingToChild = -1;
            if (this.animatingIndicator) {
                AndroidUtilities.cancelRunOnUIThread(this.animationRunnable);
                this.animatingIndicator = false;
                setEnabled(true);
                ScrollSlidingTabStripDelegate scrollSlidingTabStripDelegate = this.delegate;
                if (scrollSlidingTabStripDelegate != null) {
                    scrollSlidingTabStripDelegate.onPageScrolled(1.0f);
                }
            }
            TextView textView = (TextView) this.tabsContainer.getChildAt(this.currentPosition);
            if (textView != null) {
                this.indicatorWidth = getChildWidth(textView);
                int left = textView.getLeft();
                int measuredWidth = textView.getMeasuredWidth();
                int i7 = this.indicatorWidth;
                int i8 = left + ((measuredWidth - i7) / 2);
                this.indicatorX = i8;
                int i9 = this.animateFromIndicaxtorX;
                if (i9 <= 0 || (i5 = this.animateFromIndicatorWidth) <= 0) {
                    return;
                }
                if (i9 != i8 || i5 != i7) {
                    final int i10 = i9 - i8;
                    final int i11 = i5 - i7;
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
                    valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ScrollSlidingTextTabStrip$$ExternalSyntheticLambda0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            this.f$0.lambda$onLayout$1(i10, i11, valueAnimator);
                        }
                    });
                    valueAnimatorOfFloat.setDuration(200L);
                    valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.DEFAULT);
                    valueAnimatorOfFloat.start();
                }
                this.animateFromIndicaxtorX = 0;
                this.animateFromIndicatorWidth = 0;
            }
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i) - AndroidUtilities.dp(22.0f);
        int childCount = this.tabsContainer.getChildCount();
        int i3 = 0;
        while (true) {
            float fLerp = BitmapDescriptorFactory.HUE_RED;
            if (i3 >= childCount) {
                break;
            }
            View childAt = this.tabsContainer.getChildAt(i3);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            float f = layoutParams.weight;
            int i4 = layoutParams.width;
            int i5 = this.allTextWidth;
            if (i5 > size) {
                layoutParams.weight = fLerp;
                layoutParams.width = -2;
            } else if (this.useSameWidth) {
                layoutParams.weight = 1.0f / childCount;
                layoutParams.width = 0;
            } else {
                if (i3 != 0 || childCount != 1) {
                    fLerp = AndroidUtilities.lerp(1.0f / childCount, (1.0f / i5) * this.positionToWidth.get(i3), 0.5f);
                }
                layoutParams.weight = fLerp;
                layoutParams.width = -2;
            }
            if (Math.abs(f - layoutParams.weight) > 0.001f || i4 != layoutParams.width) {
                childAt.setLayoutParams(layoutParams);
                childAt.requestLayout();
            }
            i3++;
        }
        float weightSum = this.tabsContainer.getWeightSum();
        if (childCount == 1 || this.allTextWidth > size) {
            this.tabsContainer.setWeightSum(BitmapDescriptorFactory.HUE_RED);
        } else {
            this.tabsContainer.setWeightSum(1.0f);
        }
        if (Math.abs(weightSum - this.tabsContainer.getWeightSum()) > 0.1f) {
            this.tabsContainer.requestLayout();
        }
        super.onMeasure(i, i2);
    }

    protected int processColor(int i) {
        return i;
    }

    public void recordIndicatorParams() {
        this.animateFromIndicaxtorX = this.indicatorX;
        this.animateFromIndicatorWidth = this.indicatorWidth;
    }

    public SparseArray removeTabs() {
        SparseArray sparseArray = new SparseArray();
        for (int i = 0; i < this.tabsContainer.getChildCount(); i++) {
            sparseArray.put(this.positionToId.get(i), this.tabsContainer.getChildAt(i));
        }
        this.positionToId.clear();
        this.idToPosition.clear();
        this.positionToWidth.clear();
        this.tabsContainer.removeAllViews();
        this.allTextWidth = 0;
        this.tabCount = 0;
        return sparseArray;
    }

    public void scrollTo(int i) {
        scrollTo(i, this.idToPosition.get(i), null);
    }

    public void scrollTo(int i, int i2, View view) {
        ScrollSlidingTabStripDelegate scrollSlidingTabStripDelegate;
        if (i2 >= 0) {
            if (view == null && this.animatingIndicator) {
                return;
            }
            int i3 = this.currentPosition;
            if (i2 == i3 && (scrollSlidingTabStripDelegate = this.delegate) != null) {
                scrollSlidingTabStripDelegate.onSamePageSelected();
                return;
            }
            boolean z = i3 < i2;
            this.scrollingToChild = -1;
            this.previousPosition = i3;
            this.currentPosition = i2;
            this.selectedTabId = i;
            if (this.animatingIndicator) {
                AndroidUtilities.cancelRunOnUIThread(this.animationRunnable);
                this.animatingIndicator = false;
            }
            this.animationTime = BitmapDescriptorFactory.HUE_RED;
            this.animatingIndicator = true;
            this.animateIndicatorStartX = this.indicatorX;
            this.animateIndicatorStartWidth = this.indicatorWidth;
            if (view != null) {
                TextView textView = (TextView) view;
                this.animateIndicatorToWidth = getChildWidth(textView);
                this.animateIndicatorToX = textView.getLeft() + ((textView.getMeasuredWidth() - this.animateIndicatorToWidth) / 2);
            }
            setEnabled(false);
            AndroidUtilities.runOnUIThread(this.animationRunnable, 16L);
            ScrollSlidingTabStripDelegate scrollSlidingTabStripDelegate2 = this.delegate;
            if (scrollSlidingTabStripDelegate2 != null) {
                scrollSlidingTabStripDelegate2.onPageSelected(i, z);
            }
            scrollToChild(i2, true);
        }
    }

    public void selectTabWithId(int i, float f) {
        int i2 = this.idToPosition.get(i, -1);
        if (i2 < 0) {
            return;
        }
        if (f < BitmapDescriptorFactory.HUE_RED) {
            f = BitmapDescriptorFactory.HUE_RED;
        } else if (f > 1.0f) {
            f = 1.0f;
        }
        TextView textView = (TextView) this.tabsContainer.getChildAt(this.currentPosition);
        TextView textView2 = (TextView) this.tabsContainer.getChildAt(i2);
        if (textView != null && textView2 != null) {
            this.animateIndicatorStartWidth = getChildWidth(textView);
            this.animateIndicatorStartX = textView.getLeft() + ((textView.getMeasuredWidth() - this.animateIndicatorStartWidth) / 2);
            this.animateIndicatorToWidth = getChildWidth(textView2);
            this.animateIndicatorToX = textView2.getLeft() + ((textView2.getMeasuredWidth() - this.animateIndicatorToWidth) / 2);
            setAnimationProgressInernal(textView2, textView, f);
            if (f >= 1.0f) {
                textView.setTag(Integer.valueOf(this.unactiveTextColorKey));
                textView2.setTag(Integer.valueOf(this.activeTextColorKey));
            }
            scrollToChild(this.tabsContainer.indexOfChild(textView2), true);
        }
        if (f >= 1.0f) {
            this.currentPosition = i2;
            this.selectedTabId = i;
        }
    }

    public void setAnimationIdicatorProgress(float f) {
        this.animationIdicatorProgress = f;
        TextView textView = (TextView) this.tabsContainer.getChildAt(this.currentPosition);
        TextView textView2 = (TextView) this.tabsContainer.getChildAt(this.previousPosition);
        if (textView2 == null || textView == null) {
            return;
        }
        setAnimationProgressInernal(textView, textView2, f);
        if (f >= 1.0f) {
            textView2.setTag(Integer.valueOf(this.unactiveTextColorKey));
            textView.setTag(Integer.valueOf(this.activeTextColorKey));
        }
        ScrollSlidingTabStripDelegate scrollSlidingTabStripDelegate = this.delegate;
        if (scrollSlidingTabStripDelegate != null) {
            scrollSlidingTabStripDelegate.onPageScrolled(f);
        }
    }

    public void setColors(int i, int i2, int i3, int i4) {
        this.tabLineColorKey = i;
        this.activeTextColorKey = i2;
        this.unactiveTextColorKey = i3;
        this.selectorColorKey = i4;
        this.selectorDrawable.setColor(processColor(Theme.getColor(i, this.resourcesProvider)));
    }

    public void setDelegate(ScrollSlidingTabStripDelegate scrollSlidingTabStripDelegate) {
        this.delegate = scrollSlidingTabStripDelegate;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        int childCount = this.tabsContainer.getChildCount();
        for (int i = 0; i < childCount; i++) {
            this.tabsContainer.getChildAt(i).setEnabled(z);
        }
    }

    public void setInitialTabId(int i) {
        this.setInitialTab = true;
        this.selectedTabId = i;
        int i2 = this.idToPosition.get(i);
        if (((TextView) this.tabsContainer.getChildAt(i2)) != null) {
            this.currentPosition = i2;
            this.prevLayoutWidth = 0;
            finishAddingTabs();
            requestLayout();
        }
    }

    public void setUseSameWidth(boolean z) {
        this.useSameWidth = z;
    }

    public void updateColors() {
        int childCount = this.tabsContainer.getChildCount();
        int i = 0;
        while (i < childCount) {
            TextView textView = (TextView) this.tabsContainer.getChildAt(i);
            textView.setTextColor(processColor(Theme.getColor(this.currentPosition == i ? this.activeTextColorKey : this.unactiveTextColorKey, this.resourcesProvider)));
            textView.setBackground(Theme.createSelectorDrawable(Theme.multAlpha(processColor(Theme.getColor(this.activeTextColorKey, this.resourcesProvider)), 0.15f), 3));
            i++;
        }
        this.selectorDrawable.setColor(processColor(Theme.getColor(this.tabLineColorKey, this.resourcesProvider)));
        invalidate();
    }
}
