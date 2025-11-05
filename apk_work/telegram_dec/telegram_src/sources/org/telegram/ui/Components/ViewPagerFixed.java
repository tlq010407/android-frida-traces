package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.SystemClock;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.transition.TransitionManager;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ViewPagerFixed;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class ViewPagerFixed extends FrameLayout {
    private static final Interpolator interpolator = new Interpolator() { // from class: org.telegram.ui.Components.ViewPagerFixed$$ExternalSyntheticLambda0
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            return ViewPagerFixed.lambda$static$0(f);
        }
    };
    private Adapter adapter;
    private float additionalOffset;
    private boolean allowDisallowInterceptTouch;
    private boolean animatingForward;
    private boolean backAnimation;
    private float backProgress;
    public int currentPosition;
    public float currentProgress;
    private ValueAnimator manualScrolling;
    private int maximumVelocity;
    private boolean maybeStartTracking;
    protected int nextPosition;
    AnimationNotificationsLocker notificationsLocker;
    private android.graphics.Rect rect;
    private Theme.ResourcesProvider resourcesProvider;
    private boolean startedTracking;
    private int startedTrackingPointerId;
    private int startedTrackingX;
    private int startedTrackingY;
    private AnimatorSet tabsAnimation;
    private boolean tabsAnimationInProgress;
    TabsView tabsView;
    private final float touchSlop;
    ValueAnimator.AnimatorUpdateListener updateTabProgress;
    private VelocityTracker velocityTracker;
    protected View[] viewPages;
    private int[] viewTypes;
    protected SparseArray viewsByType;

    public static abstract class Adapter {
        public abstract void bindView(View view, int i, int i2);

        public boolean canScrollTo(int i) {
            return true;
        }

        public abstract View createView(int i);

        public abstract int getItemCount();

        public int getItemId(int i) {
            return i;
        }

        public String getItemTitle(int i) {
            return "";
        }

        public int getItemViewType(int i) {
            return 0;
        }

        public boolean hasStableId() {
            return false;
        }

        public boolean needsTab(int i) {
            return true;
        }
    }

    public static class TabsView extends FrameLayout {
        private int activeTextColorKey;
        private ListAdapter adapter;
        private int additionalTabWidth;
        private int allTabsWidth;
        private boolean animatingIndicator;
        private float animatingIndicatorProgress;
        private Runnable animationRunnable;
        private float animationTime;
        private int backgroundColorKey;
        private Paint counterPaint;
        private float crossfadeAlpha;
        private Bitmap crossfadeBitmap;
        private Paint crossfadePaint;
        private int currentPosition;
        private TabsViewDelegate delegate;
        private Paint deletePaint;
        private float editingAnimationProgress;
        private boolean editingForwardAnimation;
        private float editingStartAnimationProgress;
        private float hideProgress;
        private SparseIntArray idToPosition;
        private boolean ignoreLayout;
        private float indicatorProgress2;
        private CubicBezierInterpolator interpolator;
        private boolean invalidated;
        private boolean isEditing;
        private boolean isInHiddenMode;
        private long lastAnimationTime;
        float lastDrawnIndicatorW;
        float lastDrawnIndicatorX;
        private LinearLayoutManager layoutManager;
        private RecyclerListView listView;
        private int manualScrollingToId;
        private int manualScrollingToPosition;
        private boolean orderChanged;
        private float overrideFromW;
        private float overrideFromX;
        private SparseIntArray positionToId;
        private SparseIntArray positionToWidth;
        private SparseIntArray positionToX;
        private Utilities.Callback2Return preTabClick;
        private int prevLayoutWidth;
        private int previousId;
        private int previousPosition;
        private Theme.ResourcesProvider resourcesProvider;
        private int scrollingToChild;
        private int selectedTabId;
        private int selectorColorKey;
        private GradientDrawable selectorDrawable;
        private final Paint selectorPaint;
        private int selectorType;
        private int tabLineColorKey;
        public int tabMarginDp;
        private ArrayList tabs;
        ValueAnimator tabsAnimator;
        private TextPaint textCounterPaint;
        private TextPaint textPaint;
        private int unactiveTextColorKey;

        private class ListAdapter extends RecyclerListView.SelectionAdapter {
            private Context mContext;

            public ListAdapter(Context context) {
                this.mContext = context;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return TabsView.this.tabs.size();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public long getItemId(int i) {
                return ((Tab) TabsView.this.tabs.get(i)).id;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                return 0;
            }

            @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return true;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                ((TabView) viewHolder.itemView).setTab((Tab) TabsView.this.tabs.get(i), i);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                return new RecyclerListView.Holder(TabsView.this.new TabView(this.mContext));
            }
        }

        private static class Tab {
            public float alpha = 1.0f;
            public int counter;
            public int id;
            public CharSequence title;
            public int titleWidth;

            public Tab(int i, CharSequence charSequence) {
                this.id = i;
                this.title = charSequence;
            }

            public int getWidth(boolean z, TextPaint textPaint) {
                int iCeil = (int) Math.ceil(textPaint.measureText(this.title == null ? "" : r1.toString()));
                this.titleWidth = iCeil;
                return Math.max(0, iCeil);
            }
        }

        public class TabView extends View {
            private int currentPosition;
            private Tab currentTab;
            private CharSequence currentText;
            private RectF rect;
            private int tabWidth;
            private int textHeight;
            private StaticLayout textLayout;
            private int textOffsetX;

            public TabView(Context context) {
                super(context);
                this.rect = new RectF();
            }

            @Override // android.view.View
            public int getId() {
                return this.currentTab.id;
            }

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                int i;
                int i2;
                int i3;
                int i4;
                int i5;
                int i6;
                int i7;
                String str;
                int iCeil;
                int iDp;
                int iDp2;
                Paint paint;
                int i8;
                int i9;
                if (this.currentTab.id != Integer.MAX_VALUE && TabsView.this.editingAnimationProgress != BitmapDescriptorFactory.HUE_RED) {
                    canvas.save();
                    float f = TabsView.this.editingAnimationProgress * (this.currentPosition % 2 == 0 ? 1.0f : -1.0f);
                    canvas.translate(AndroidUtilities.dp(0.66f) * f, BitmapDescriptorFactory.HUE_RED);
                    canvas.rotate(f, getMeasuredWidth() / 2, getMeasuredHeight() / 2);
                }
                if (TabsView.this.manualScrollingToId != -1) {
                    i = TabsView.this.manualScrollingToId;
                    i2 = TabsView.this.selectedTabId;
                } else {
                    i = TabsView.this.selectedTabId;
                    i2 = TabsView.this.previousId;
                }
                if (this.currentTab.id == i) {
                    i3 = TabsView.this.activeTextColorKey;
                    i4 = TabsView.this.unactiveTextColorKey;
                    i5 = Theme.key_chats_tabUnreadActiveBackground;
                    i6 = Theme.key_chats_tabUnreadUnactiveBackground;
                } else {
                    i3 = TabsView.this.unactiveTextColorKey;
                    i4 = TabsView.this.activeTextColorKey;
                    i5 = Theme.key_chats_tabUnreadUnactiveBackground;
                    i6 = Theme.key_chats_tabUnreadActiveBackground;
                }
                if (TabsView.this.selectorType == 9) {
                    TabsView.this.textPaint.setColor(Theme.getColor(TabsView.this.unactiveTextColorKey, TabsView.this.resourcesProvider));
                } else if ((TabsView.this.animatingIndicator || TabsView.this.manualScrollingToId != -1) && ((i7 = this.currentTab.id) == i || i7 == i2)) {
                    TabsView.this.textPaint.setColor(ColorUtils.blendARGB(Theme.getColor(i4, TabsView.this.resourcesProvider), Theme.getColor(i3, TabsView.this.resourcesProvider), TabsView.this.animatingIndicatorProgress));
                } else {
                    TabsView.this.textPaint.setColor(Theme.getColor(i3, TabsView.this.resourcesProvider));
                }
                int i10 = this.currentTab.counter;
                if (i10 > 0) {
                    str = String.format("%d", Integer.valueOf(i10));
                    iCeil = (int) Math.ceil(TabsView.this.textCounterPaint.measureText(str));
                    iDp = Math.max(AndroidUtilities.dp(10.0f), iCeil) + AndroidUtilities.dp(10.0f);
                } else {
                    str = null;
                    iCeil = 0;
                    iDp = 0;
                }
                if (this.currentTab.id != Integer.MAX_VALUE && (TabsView.this.isEditing || TabsView.this.editingStartAnimationProgress != BitmapDescriptorFactory.HUE_RED)) {
                    iDp = (int) (iDp + ((AndroidUtilities.dp(20.0f) - iDp) * TabsView.this.editingStartAnimationProgress));
                }
                int i11 = this.currentTab.titleWidth;
                if (iDp != 0) {
                    iDp2 = AndroidUtilities.dp((str != null ? 1.0f : TabsView.this.editingStartAnimationProgress) * 6.0f) + iDp;
                } else {
                    iDp2 = 0;
                }
                this.tabWidth = i11 + iDp2;
                int measuredWidth = (getMeasuredWidth() - this.tabWidth) / 2;
                if (!TextUtils.equals(this.currentTab.title, this.currentText)) {
                    CharSequence charSequence = this.currentTab.title;
                    this.currentText = charSequence;
                    StaticLayout staticLayout = new StaticLayout(Emoji.replaceEmoji(charSequence, TabsView.this.textPaint.getFontMetricsInt(), false), TabsView.this.textPaint, AndroidUtilities.dp(400.0f), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    this.textLayout = staticLayout;
                    this.textHeight = staticLayout.getHeight();
                    this.textOffsetX = (int) (-this.textLayout.getLineLeft(0));
                }
                if (this.textLayout != null) {
                    canvas.save();
                    canvas.translate(this.textOffsetX + measuredWidth, ((getMeasuredHeight() - this.textHeight) / 2) + 1);
                    this.textLayout.draw(canvas);
                    canvas.restore();
                }
                if (str != null || (this.currentTab.id != Integer.MAX_VALUE && (TabsView.this.isEditing || TabsView.this.editingStartAnimationProgress != BitmapDescriptorFactory.HUE_RED))) {
                    TabsView.this.textCounterPaint.setColor(Theme.getColor(TabsView.this.backgroundColorKey, TabsView.this.resourcesProvider));
                    if (Theme.hasThemeKey(i5) && Theme.hasThemeKey(i6)) {
                        int color = Theme.getColor(i5, TabsView.this.resourcesProvider);
                        if ((TabsView.this.animatingIndicator || TabsView.this.manualScrollingToPosition != -1) && ((i9 = this.currentTab.id) == i || i9 == i2)) {
                            TabsView.this.counterPaint.setColor(ColorUtils.blendARGB(Theme.getColor(i6, TabsView.this.resourcesProvider), color, TabsView.this.animatingIndicatorProgress));
                        } else {
                            TabsView.this.counterPaint.setColor(color);
                        }
                    } else {
                        TabsView.this.counterPaint.setColor(TabsView.this.textPaint.getColor());
                    }
                    int iDp3 = measuredWidth + this.currentTab.titleWidth + AndroidUtilities.dp(6.0f);
                    int measuredHeight = (getMeasuredHeight() - AndroidUtilities.dp(20.0f)) / 2;
                    if (this.currentTab.id == Integer.MAX_VALUE || ((!TabsView.this.isEditing && TabsView.this.editingStartAnimationProgress == BitmapDescriptorFactory.HUE_RED) || str != null)) {
                        paint = TabsView.this.counterPaint;
                        i8 = 255;
                    } else {
                        paint = TabsView.this.counterPaint;
                        i8 = (int) (TabsView.this.editingStartAnimationProgress * 255.0f);
                    }
                    paint.setAlpha(i8);
                    this.rect.set(iDp3, measuredHeight, iDp3 + iDp, AndroidUtilities.dp(20.0f) + measuredHeight);
                    RectF rectF = this.rect;
                    float f2 = AndroidUtilities.density * 11.5f;
                    canvas.drawRoundRect(rectF, f2, f2, TabsView.this.counterPaint);
                    if (str != null) {
                        if (this.currentTab.id != Integer.MAX_VALUE) {
                            TabsView.this.textCounterPaint.setAlpha((int) ((1.0f - TabsView.this.editingStartAnimationProgress) * 255.0f));
                        }
                        RectF rectF2 = this.rect;
                        canvas.drawText(str, rectF2.left + ((rectF2.width() - iCeil) / 2.0f), measuredHeight + AndroidUtilities.dp(14.5f), TabsView.this.textCounterPaint);
                    }
                    if (this.currentTab.id != Integer.MAX_VALUE && (TabsView.this.isEditing || TabsView.this.editingStartAnimationProgress != BitmapDescriptorFactory.HUE_RED)) {
                        TabsView.this.deletePaint.setColor(TabsView.this.textCounterPaint.getColor());
                        TabsView.this.deletePaint.setAlpha((int) (TabsView.this.editingStartAnimationProgress * 255.0f));
                        float fDp = AndroidUtilities.dp(3.0f);
                        canvas.drawLine(this.rect.centerX() - fDp, this.rect.centerY() - fDp, this.rect.centerX() + fDp, this.rect.centerY() + fDp, TabsView.this.deletePaint);
                        canvas.drawLine(this.rect.centerX() - fDp, this.rect.centerY() + fDp, this.rect.centerX() + fDp, this.rect.centerY() - fDp, TabsView.this.deletePaint);
                    }
                }
                if (this.currentTab.id == Integer.MAX_VALUE || TabsView.this.editingAnimationProgress == BitmapDescriptorFactory.HUE_RED) {
                    return;
                }
                canvas.restore();
            }

            @Override // android.view.View
            public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                accessibilityNodeInfo.setSelected((this.currentTab == null || TabsView.this.selectedTabId == -1 || this.currentTab.id != TabsView.this.selectedTabId) ? false : true);
            }

            @Override // android.view.View
            protected void onMeasure(int i, int i2) {
                setMeasuredDimension(this.currentTab.getWidth(false, TabsView.this.textPaint) + AndroidUtilities.dp(TabsView.this.tabMarginDp * 2) + TabsView.this.additionalTabWidth, View.MeasureSpec.getSize(i2));
            }

            public void setTab(Tab tab, int i) {
                this.currentTab = tab;
                this.currentPosition = i;
                setContentDescription(tab.title);
                setAlpha(tab.alpha);
                requestLayout();
            }
        }

        public interface TabsViewDelegate {
            boolean canPerformActions();

            void invalidateBlur();

            boolean needsTab(int i);

            void onPageScrolled(float f);

            void onPageSelected(int i, boolean z);

            void onSamePageSelected();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public TabsView(Context context, boolean z, int i, Theme.ResourcesProvider resourcesProvider) {
            RecyclerListView recyclerListView;
            FrameLayout.LayoutParams layoutParamsCreateFrame;
            super(context);
            int i2 = 0;
            Object[] objArr = 0;
            this.indicatorProgress2 = 1.0f;
            this.textPaint = new TextPaint(1);
            this.textCounterPaint = new TextPaint(1);
            this.deletePaint = new TextPaint(1);
            this.counterPaint = new Paint(1);
            this.tabs = new ArrayList();
            this.crossfadePaint = new Paint();
            this.tabMarginDp = 16;
            this.selectedTabId = -1;
            this.manualScrollingToPosition = -1;
            this.manualScrollingToId = -1;
            this.scrollingToChild = -1;
            this.tabLineColorKey = Theme.key_profile_tabSelectedLine;
            this.activeTextColorKey = Theme.key_profile_tabSelectedText;
            this.unactiveTextColorKey = Theme.key_profile_tabText;
            this.selectorColorKey = Theme.key_profile_tabSelector;
            this.backgroundColorKey = Theme.key_actionBarDefault;
            this.interpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.positionToId = new SparseIntArray(5);
            this.idToPosition = new SparseIntArray(5);
            this.positionToWidth = new SparseIntArray(5);
            this.positionToX = new SparseIntArray(5);
            this.animationRunnable = new Runnable() { // from class: org.telegram.ui.Components.ViewPagerFixed.TabsView.1
                @Override // java.lang.Runnable
                public void run() {
                    if (TabsView.this.animatingIndicator) {
                        long jElapsedRealtime = SystemClock.elapsedRealtime() - TabsView.this.lastAnimationTime;
                        if (jElapsedRealtime > 17) {
                            jElapsedRealtime = 17;
                        }
                        TabsView.access$3316(TabsView.this, jElapsedRealtime / 200.0f);
                        TabsView tabsView = TabsView.this;
                        tabsView.setAnimationIdicatorProgress(tabsView.interpolator.getInterpolation(TabsView.this.animationTime));
                        if (TabsView.this.animationTime > 1.0f) {
                            TabsView.this.animationTime = 1.0f;
                        }
                        if (TabsView.this.animationTime < 1.0f) {
                            AndroidUtilities.runOnUIThread(TabsView.this.animationRunnable);
                            return;
                        }
                        TabsView.this.animatingIndicator = false;
                        TabsView.this.setEnabled(true);
                        if (TabsView.this.delegate != null) {
                            TabsView.this.delegate.onPageScrolled(1.0f);
                        }
                    }
                }
            };
            this.selectorPaint = new Paint(1);
            this.resourcesProvider = resourcesProvider;
            this.selectorType = i;
            this.textCounterPaint.setTextSize(AndroidUtilities.dp(13.0f));
            this.textCounterPaint.setTypeface(AndroidUtilities.bold());
            this.textPaint.setTextSize(AndroidUtilities.dp(i == 9 ? 14.0f : 15.0f));
            this.textPaint.setTypeface(AndroidUtilities.bold());
            this.deletePaint.setStyle(Paint.Style.STROKE);
            this.deletePaint.setStrokeCap(Paint.Cap.ROUND);
            this.deletePaint.setStrokeWidth(AndroidUtilities.dp(1.5f));
            this.selectorDrawable = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, null);
            float fDpf2 = AndroidUtilities.dpf2(3.0f);
            this.selectorDrawable.setCornerRadii(new float[]{fDpf2, fDpf2, fDpf2, fDpf2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED});
            this.selectorDrawable.setColor(Theme.getColor(this.tabLineColorKey, resourcesProvider));
            setHorizontalScrollBarEnabled(false);
            RecyclerListView recyclerListView2 = new RecyclerListView(context) { // from class: org.telegram.ui.Components.ViewPagerFixed.TabsView.2
                @Override // android.view.ViewGroup
                public void addView(View view, int i3, ViewGroup.LayoutParams layoutParams) {
                    float f;
                    super.addView(view, i3, layoutParams);
                    if (TabsView.this.isInHiddenMode) {
                        view.setScaleX(0.3f);
                        view.setScaleY(0.3f);
                        f = BitmapDescriptorFactory.HUE_RED;
                    } else {
                        f = 1.0f;
                        view.setScaleX(1.0f);
                        view.setScaleY(1.0f);
                    }
                    view.setAlpha(f);
                }

                @Override // org.telegram.ui.Components.RecyclerListView
                protected boolean canHighlightChildAt(View view, float f, float f2) {
                    if (TabsView.this.isEditing) {
                        TabView tabView = (TabView) view;
                        float fDp = AndroidUtilities.dp(6.0f);
                        if (tabView.rect.left - fDp < f && tabView.rect.right + fDp > f) {
                            return false;
                        }
                    }
                    return super.canHighlightChildAt(view, f, f2);
                }

                @Override // android.view.View
                public void setAlpha(float f) {
                    super.setAlpha(f);
                    TabsView.this.invalidate();
                }
            };
            this.listView = recyclerListView2;
            recyclerListView2.setOverScrollMode(2);
            RecyclerListView recyclerListView3 = this.listView;
            if (z) {
                recyclerListView3.setItemAnimator(null);
            } else {
                ((DefaultItemAnimator) recyclerListView3.getItemAnimator()).setDelayAnimations(false);
            }
            this.listView.setSelectorType(i);
            if (i == 3) {
                this.listView.setSelectorRadius(0);
            } else {
                this.listView.setSelectorRadius(6);
            }
            this.listView.setSelectorDrawableColor(Theme.getColor(this.selectorColorKey, resourcesProvider));
            RecyclerListView recyclerListView4 = this.listView;
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, i2, objArr == true ? 1 : 0) { // from class: org.telegram.ui.Components.ViewPagerFixed.TabsView.3
                @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
                public void onInitializeAccessibilityNodeInfo(RecyclerView.Recycler recycler, RecyclerView.State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                    super.onInitializeAccessibilityNodeInfo(recycler, state, accessibilityNodeInfoCompat);
                    if (TabsView.this.isInHiddenMode) {
                        accessibilityNodeInfoCompat.setVisibleToUser(false);
                    }
                }

                @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i3) {
                    LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: org.telegram.ui.Components.ViewPagerFixed.TabsView.3.1
                        @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
                        protected void onTargetFound(View view, RecyclerView.State state2, RecyclerView.SmoothScroller.Action action) {
                            int iCalculateDxToMakeVisible = calculateDxToMakeVisible(view, getHorizontalSnapPreference());
                            if (iCalculateDxToMakeVisible > 0 || (iCalculateDxToMakeVisible == 0 && view.getLeft() - AndroidUtilities.dp(21.0f) < 0)) {
                                iCalculateDxToMakeVisible += AndroidUtilities.dp(60.0f);
                            } else if (iCalculateDxToMakeVisible < 0 || (iCalculateDxToMakeVisible == 0 && view.getRight() + AndroidUtilities.dp(21.0f) > TabsView.this.getMeasuredWidth())) {
                                iCalculateDxToMakeVisible -= AndroidUtilities.dp(60.0f);
                            }
                            int iCalculateDyToMakeVisible = calculateDyToMakeVisible(view, getVerticalSnapPreference());
                            int iMax = Math.max(180, calculateTimeForDeceleration((int) Math.sqrt((iCalculateDxToMakeVisible * iCalculateDxToMakeVisible) + (iCalculateDyToMakeVisible * iCalculateDyToMakeVisible))));
                            if (iMax > 0) {
                                action.update(-iCalculateDxToMakeVisible, -iCalculateDyToMakeVisible, iMax, this.mDecelerateInterpolator);
                            }
                        }
                    };
                    linearSmoothScroller.setTargetPosition(i3);
                    startSmoothScroll(linearSmoothScroller);
                }
            };
            this.layoutManager = linearLayoutManager;
            recyclerListView4.setLayoutManager(linearLayoutManager);
            this.listView.setPadding(AndroidUtilities.dp(7.0f), 0, AndroidUtilities.dp(7.0f), 0);
            this.listView.setClipToPadding(false);
            this.listView.setDrawSelectorBehind(true);
            ListAdapter listAdapter = new ListAdapter(context);
            this.adapter = listAdapter;
            listAdapter.setHasStableIds(z);
            this.listView.setAdapter(this.adapter);
            this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.Components.ViewPagerFixed$TabsView$$ExternalSyntheticLambda2
                @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
                public /* synthetic */ boolean hasDoubleTap(View view, int i3) {
                    return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i3);
                }

                @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
                public /* synthetic */ void onDoubleTap(View view, int i3, float f, float f2) {
                    RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i3, f, f2);
                }

                @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
                public final void onItemClick(View view, int i3, float f, float f2) {
                    this.f$0.lambda$new$0(view, i3, f, f2);
                }
            });
            this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.ViewPagerFixed.TabsView.4
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                    TabsView.this.invalidate();
                }
            });
            if (i == 9) {
                recyclerListView = this.listView;
                layoutParamsCreateFrame = LayoutHelper.createFrame(-2, -1, 1);
            } else {
                recyclerListView = this.listView;
                layoutParamsCreateFrame = LayoutHelper.createFrame(-1, -1.0f);
            }
            addView(recyclerListView, layoutParamsCreateFrame);
        }

        static /* synthetic */ float access$3316(TabsView tabsView, float f) {
            float f2 = tabsView.animationTime + f;
            tabsView.animationTime = f2;
            return f2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view, int i, float f, float f2) {
            TabsViewDelegate tabsViewDelegate;
            TabsViewDelegate tabsViewDelegate2 = this.delegate;
            if (tabsViewDelegate2 == null || tabsViewDelegate2.canPerformActions()) {
                TabView tabView = (TabView) view;
                if (i == this.currentPosition && (tabsViewDelegate = this.delegate) != null) {
                    tabsViewDelegate.onSamePageSelected();
                    return;
                }
                Utilities.Callback2Return callback2Return = this.preTabClick;
                if (callback2Return == null || !((Boolean) callback2Return.run(Integer.valueOf(tabView.currentTab.id), Integer.valueOf(i))).booleanValue()) {
                    scrollToTab(tabView.currentTab.id, i);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$scrollToTab$1(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            setAnimationIdicatorProgress(fFloatValue);
            TabsViewDelegate tabsViewDelegate = this.delegate;
            if (tabsViewDelegate != null) {
                tabsViewDelegate.onPageScrolled(fFloatValue);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$setIsEditing$2(TLObject tLObject, TLRPC.TL_error tL_error) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void saveFromValues() {
            this.overrideFromX = this.lastDrawnIndicatorX;
            this.overrideFromW = this.lastDrawnIndicatorW;
        }

        private void scrollToChild(int i) {
            if (this.tabs.isEmpty() || this.scrollingToChild == i || i < 0 || i >= this.tabs.size()) {
                return;
            }
            this.scrollingToChild = i;
            this.listView.smoothScrollToPosition(i);
        }

        private void updateTabsWidths() {
            this.positionToX.clear();
            this.positionToWidth.clear();
            int iDp = AndroidUtilities.dp(7.0f);
            int size = this.tabs.size();
            for (int i = 0; i < size; i++) {
                int width = ((Tab) this.tabs.get(i)).getWidth(false, this.textPaint);
                this.positionToWidth.put(i, width);
                this.positionToX.put(i, (this.additionalTabWidth / 2) + iDp);
                iDp += width + AndroidUtilities.dp(this.tabMarginDp * 2) + this.additionalTabWidth;
            }
        }

        public void addTab(int i, CharSequence charSequence) {
            int size = this.tabs.size();
            if (size == 0 && this.selectedTabId == -1) {
                this.selectedTabId = i;
            }
            this.positionToId.put(size, i);
            this.idToPosition.put(i, size);
            int i2 = this.selectedTabId;
            if (i2 != -1 && i2 == i) {
                this.currentPosition = size;
            }
            Tab tab = new Tab(i, charSequence);
            this.allTabsWidth += tab.getWidth(true, this.textPaint) + AndroidUtilities.dp(this.tabMarginDp * 2);
            this.tabs.add(tab);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0026  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0083  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00f8  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0105  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x019a  */
        @Override // android.view.ViewGroup
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected boolean drawChild(Canvas canvas, View view, long j) {
            int iFindFirstVisibleItemPosition;
            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition;
            int i;
            int i2;
            int iDp;
            int iLerp;
            boolean zDrawChild = super.drawChild(canvas, view, j);
            if (view == this.listView) {
                int measuredHeight = getMeasuredHeight();
                boolean z = this.isInHiddenMode;
                if (z) {
                    float f = this.hideProgress;
                    if (f != 1.0f) {
                        float f2 = f + 0.1f;
                        this.hideProgress = f2;
                        if (f2 > 1.0f) {
                            this.hideProgress = 1.0f;
                        }
                    } else {
                        if (!z) {
                            float f3 = this.hideProgress;
                            if (f3 != BitmapDescriptorFactory.HUE_RED) {
                                float f4 = f3 - 0.12f;
                                this.hideProgress = f4;
                                if (f4 < BitmapDescriptorFactory.HUE_RED) {
                                    this.hideProgress = BitmapDescriptorFactory.HUE_RED;
                                }
                            }
                        }
                        this.selectorDrawable.setAlpha((int) (this.listView.getAlpha() * 255.0f));
                        if (this.animatingIndicator && this.manualScrollingToPosition == -1) {
                            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition2 = this.listView.findViewHolderForAdapterPosition(this.currentPosition);
                            if (viewHolderFindViewHolderForAdapterPosition2 != null) {
                                TabView tabView = (TabView) viewHolderFindViewHolderForAdapterPosition2.itemView;
                                iLerp = Math.max(AndroidUtilities.dp(40.0f), tabView.tabWidth);
                                iDp = (int) (tabView.getX() + ((tabView.getMeasuredWidth() - iLerp) / 2));
                            }
                            int x = (int) (iDp + this.listView.getX());
                            if (iLerp != 0) {
                            }
                            if (this.crossfadeBitmap != null) {
                            }
                        } else {
                            iFindFirstVisibleItemPosition = this.layoutManager.findFirstVisibleItemPosition();
                            if (iFindFirstVisibleItemPosition != -1 || (viewHolderFindViewHolderForAdapterPosition = this.listView.findViewHolderForAdapterPosition(iFindFirstVisibleItemPosition)) == null) {
                                iLerp = 0;
                                iDp = 0;
                            } else {
                                if (this.animatingIndicator) {
                                    i = this.previousPosition;
                                    i2 = this.currentPosition;
                                } else {
                                    i = this.currentPosition;
                                    i2 = this.manualScrollingToPosition;
                                }
                                int i3 = this.positionToX.get(i);
                                int i4 = this.positionToX.get(i2);
                                int i5 = this.positionToWidth.get(i);
                                int i6 = this.positionToWidth.get(i2);
                                iDp = this.additionalTabWidth != 0 ? ((int) (i3 + ((i4 - i3) * this.animatingIndicatorProgress))) + AndroidUtilities.dp(this.tabMarginDp) : (((int) (i3 + ((i4 - i3) * this.animatingIndicatorProgress))) - (this.positionToX.get(iFindFirstVisibleItemPosition) - viewHolderFindViewHolderForAdapterPosition.itemView.getLeft())) + AndroidUtilities.dp(this.tabMarginDp);
                                iLerp = (int) (i5 + ((i6 - i5) * this.animatingIndicatorProgress));
                            }
                            int x2 = (int) (iDp + this.listView.getX());
                            if (iLerp != 0) {
                                if (this.selectorType == 9) {
                                    this.selectorPaint.setColor(Theme.multAlpha(this.textPaint.getColor(), 0.15f));
                                    float f5 = measuredHeight / 2.0f;
                                    float fDp = AndroidUtilities.dp(26.0f);
                                    RectF rectF = AndroidUtilities.rectTmp;
                                    float f6 = fDp / 2.0f;
                                    rectF.set(x2 - AndroidUtilities.dp(12.0f), f5 - f6, x2 + iLerp + AndroidUtilities.dp(12.0f), f5 + f6);
                                    canvas.drawRoundRect(rectF, rectF.height() / 2.0f, rectF.height() / 2.0f, this.selectorPaint);
                                } else {
                                    float f7 = x2;
                                    this.lastDrawnIndicatorX = f7;
                                    float f8 = iLerp;
                                    this.lastDrawnIndicatorW = f8;
                                    float f9 = this.indicatorProgress2;
                                    if (f9 != 1.0f) {
                                        x2 = (int) AndroidUtilities.lerp(f7, f7, f9);
                                        iLerp = (int) AndroidUtilities.lerp(this.lastDrawnIndicatorW, f8, this.indicatorProgress2);
                                    }
                                    this.selectorDrawable.setBounds(x2, (int) ((measuredHeight - AndroidUtilities.dpr(4.0f)) + (this.hideProgress * AndroidUtilities.dpr(4.0f))), iLerp + x2, (int) (measuredHeight + (this.hideProgress * AndroidUtilities.dpr(4.0f))));
                                    this.selectorDrawable.draw(canvas);
                                }
                            }
                            if (this.crossfadeBitmap != null) {
                                this.crossfadePaint.setAlpha((int) (this.crossfadeAlpha * 255.0f));
                                canvas.drawBitmap(this.crossfadeBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.crossfadePaint);
                            }
                        }
                    }
                    invalidate();
                    this.selectorDrawable.setAlpha((int) (this.listView.getAlpha() * 255.0f));
                    if (this.animatingIndicator) {
                        iFindFirstVisibleItemPosition = this.layoutManager.findFirstVisibleItemPosition();
                        if (iFindFirstVisibleItemPosition != -1) {
                            iLerp = 0;
                            iDp = 0;
                            int x22 = (int) (iDp + this.listView.getX());
                            if (iLerp != 0) {
                            }
                            if (this.crossfadeBitmap != null) {
                            }
                        }
                    }
                }
            }
            return zDrawChild;
        }

        public void finishAddingTabs() {
            this.adapter.notifyDataSetChanged();
        }

        public float getAnimatingIndicatorProgress() {
            return this.animatingIndicatorProgress;
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

        public int getPreviousPosition() {
            return this.previousPosition;
        }

        public Drawable getSelectorDrawable() {
            return this.selectorDrawable;
        }

        public RecyclerListView getTabsContainer() {
            return this.listView;
        }

        public void hide(boolean z, boolean z2) {
            this.isInHiddenMode = z;
            int i = 0;
            if (z2) {
                while (i < this.listView.getChildCount()) {
                    this.listView.getChildAt(i).animate().alpha(z ? BitmapDescriptorFactory.HUE_RED : 1.0f).scaleX(z ? BitmapDescriptorFactory.HUE_RED : 1.0f).scaleY(z ? BitmapDescriptorFactory.HUE_RED : 1.0f).setInterpolator(CubicBezierInterpolator.DEFAULT).setDuration(220L).start();
                    i++;
                }
            } else {
                while (i < this.listView.getChildCount()) {
                    View childAt = this.listView.getChildAt(i);
                    childAt.setScaleX(z ? BitmapDescriptorFactory.HUE_RED : 1.0f);
                    childAt.setScaleY(z ? BitmapDescriptorFactory.HUE_RED : 1.0f);
                    childAt.setAlpha(z ? BitmapDescriptorFactory.HUE_RED : 1.0f);
                    i++;
                }
                this.hideProgress = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            }
            invalidate();
        }

        public boolean isAnimatingIndicator() {
            return this.animatingIndicator;
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            int i5 = i3 - i;
            if (this.prevLayoutWidth != i5) {
                this.prevLayoutWidth = i5;
                this.scrollingToChild = -1;
                if (this.animatingIndicator) {
                    AndroidUtilities.cancelRunOnUIThread(this.animationRunnable);
                    this.animatingIndicator = false;
                    setEnabled(true);
                    TabsViewDelegate tabsViewDelegate = this.delegate;
                    if (tabsViewDelegate != null) {
                        tabsViewDelegate.onPageScrolled(1.0f);
                    }
                }
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            if (!this.tabs.isEmpty()) {
                int size = (View.MeasureSpec.getSize(i) - AndroidUtilities.dp(7.0f)) - AndroidUtilities.dp(7.0f);
                int i3 = this.additionalTabWidth;
                if (this.tabs.size() == 1 || this.selectorType == 9) {
                    this.additionalTabWidth = 0;
                } else {
                    int i4 = this.allTabsWidth;
                    this.additionalTabWidth = i4 < size ? (size - i4) / this.tabs.size() : 0;
                }
                if (i3 != this.additionalTabWidth) {
                    this.ignoreLayout = true;
                    this.adapter.notifyDataSetChanged();
                    this.ignoreLayout = false;
                }
                updateTabsWidths();
                this.invalidated = false;
            }
            super.onMeasure(i, i2);
        }

        public void removeTabs() {
            this.tabs.clear();
            this.positionToId.clear();
            this.idToPosition.clear();
            this.positionToWidth.clear();
            this.positionToX.clear();
            this.allTabsWidth = 0;
        }

        @Override // android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        public void scrollToTab(int i, int i2) {
            int i3 = this.currentPosition;
            boolean z = i3 < i2;
            this.scrollingToChild = -1;
            this.previousPosition = i3;
            this.previousId = this.selectedTabId;
            TabsViewDelegate tabsViewDelegate = this.delegate;
            if (tabsViewDelegate == null || tabsViewDelegate.needsTab(i2)) {
                this.currentPosition = i2;
                this.selectedTabId = i;
            }
            ValueAnimator valueAnimator = this.tabsAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            if (this.animatingIndicator) {
                this.animatingIndicator = false;
            }
            this.animationTime = BitmapDescriptorFactory.HUE_RED;
            this.animatingIndicatorProgress = BitmapDescriptorFactory.HUE_RED;
            this.animatingIndicator = true;
            setEnabled(false);
            TabsViewDelegate tabsViewDelegate2 = this.delegate;
            if (tabsViewDelegate2 != null) {
                tabsViewDelegate2.onPageSelected(i2, z);
            }
            scrollToChild(this.currentPosition);
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.tabsAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ViewPagerFixed$TabsView$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$scrollToTab$1(valueAnimator2);
                }
            });
            this.tabsAnimator.setDuration(250L);
            this.tabsAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.tabsAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ViewPagerFixed.TabsView.5
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    TabsView.this.animatingIndicator = false;
                    TabsView.this.setEnabled(true);
                    if (TabsView.this.delegate != null) {
                        TabsView.this.delegate.onPageScrolled(1.0f);
                    }
                    TabsView.this.invalidate();
                }
            });
            this.tabsAnimator.start();
        }

        public void selectTab(int i, int i2, float f) {
            if (f < BitmapDescriptorFactory.HUE_RED) {
                f = BitmapDescriptorFactory.HUE_RED;
            } else if (f > 1.0f) {
                f = 1.0f;
            }
            this.currentPosition = i;
            this.selectedTabId = this.positionToId.get(i);
            if (f > BitmapDescriptorFactory.HUE_RED) {
                TabsViewDelegate tabsViewDelegate = this.delegate;
                if (tabsViewDelegate == null || tabsViewDelegate.needsTab(i2)) {
                    this.manualScrollingToPosition = i2;
                } else {
                    this.manualScrollingToPosition = i;
                }
                this.manualScrollingToId = this.positionToId.get(i2);
            } else {
                this.manualScrollingToPosition = -1;
                this.manualScrollingToId = -1;
            }
            this.animatingIndicatorProgress = f;
            this.listView.invalidateViews();
            invalidate();
            scrollToChild(i);
            if (f >= 1.0f) {
                this.manualScrollingToPosition = -1;
                this.manualScrollingToId = -1;
                this.currentPosition = i2;
                this.selectedTabId = this.positionToId.get(i2);
            }
            TabsViewDelegate tabsViewDelegate2 = this.delegate;
            if (tabsViewDelegate2 != null) {
                tabsViewDelegate2.invalidateBlur();
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
            if (f > BitmapDescriptorFactory.HUE_RED) {
                this.manualScrollingToPosition = i2;
                this.manualScrollingToId = i;
            } else {
                this.manualScrollingToPosition = -1;
                this.manualScrollingToId = -1;
            }
            this.animatingIndicatorProgress = f;
            this.listView.invalidateViews();
            invalidate();
            scrollToChild(i2);
            if (f >= 1.0f) {
                this.manualScrollingToPosition = -1;
                this.manualScrollingToId = -1;
                this.currentPosition = i2;
                this.selectedTabId = i;
            }
        }

        public void setAnimationIdicatorProgress(float f) {
            this.animatingIndicatorProgress = f;
            this.listView.invalidateViews();
            invalidate();
            TabsViewDelegate tabsViewDelegate = this.delegate;
            if (tabsViewDelegate != null) {
                tabsViewDelegate.onPageScrolled(f);
            }
        }

        public void setDelegate(TabsViewDelegate tabsViewDelegate) {
            this.delegate = tabsViewDelegate;
        }

        public void setIsEditing(boolean z) {
            this.isEditing = z;
            this.editingForwardAnimation = true;
            this.listView.invalidateViews();
            invalidate();
            if (this.isEditing || !this.orderChanged) {
                return;
            }
            MessagesStorage.getInstance(UserConfig.selectedAccount).saveDialogFiltersOrder();
            TLRPC.TL_messages_updateDialogFiltersOrder tL_messages_updateDialogFiltersOrder = new TLRPC.TL_messages_updateDialogFiltersOrder();
            ArrayList<MessagesController.DialogFilter> arrayList = MessagesController.getInstance(UserConfig.selectedAccount).dialogFilters;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                arrayList.get(i);
                tL_messages_updateDialogFiltersOrder.order.add(Integer.valueOf(arrayList.get(i).id));
            }
            ConnectionsManager.getInstance(UserConfig.selectedAccount).sendRequest(tL_messages_updateDialogFiltersOrder, new RequestDelegate() { // from class: org.telegram.ui.Components.ViewPagerFixed$TabsView$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    ViewPagerFixed.TabsView.lambda$setIsEditing$2(tLObject, tL_error);
                }
            });
            this.orderChanged = false;
        }

        public void setPreTabClick(Utilities.Callback2Return<Integer, Integer, Boolean> callback2Return) {
            this.preTabClick = callback2Return;
        }

        public void updateColors() {
            this.selectorDrawable.setColor(Theme.getColor(this.tabLineColorKey, this.resourcesProvider));
            this.listView.invalidateViews();
            this.listView.invalidate();
            invalidate();
        }
    }

    public ViewPagerFixed(Context context) {
        this(context, null);
    }

    public ViewPagerFixed(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.currentProgress = 1.0f;
        this.viewsByType = new SparseArray();
        this.notificationsLocker = new AnimationNotificationsLocker();
        this.updateTabProgress = new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ViewPagerFixed.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (ViewPagerFixed.this.tabsAnimationInProgress) {
                    float fAbs = Math.abs(ViewPagerFixed.this.viewPages[0].getTranslationX()) / ViewPagerFixed.this.viewPages[0].getMeasuredWidth();
                    ViewPagerFixed viewPagerFixed = ViewPagerFixed.this;
                    float f = 1.0f - fAbs;
                    viewPagerFixed.currentProgress = f;
                    TabsView tabsView = viewPagerFixed.tabsView;
                    if (tabsView != null) {
                        tabsView.selectTab(viewPagerFixed.nextPosition, viewPagerFixed.currentPosition, f);
                    }
                }
                ViewPagerFixed.this.onTabAnimationUpdate(false);
            }
        };
        this.rect = new android.graphics.Rect();
        this.allowDisallowInterceptTouch = true;
        this.resourcesProvider = resourcesProvider;
        this.touchSlop = AndroidUtilities.getPixelsInCM(0.3f, true);
        this.maximumVelocity = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
        this.viewTypes = new int[2];
        this.viewPages = new View[2];
        setClipChildren(true);
    }

    public static float distanceInfluenceForSnapDuration(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    private RecyclerListView findRecyclerView(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof RecyclerListView) {
                return (RecyclerListView) childAt;
            }
            if (childAt instanceof ViewGroup) {
                findRecyclerView(childAt);
            }
        }
        return null;
    }

    private View findScrollingChild(ViewGroup viewGroup, float f, float f2) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt.getVisibility() == 0) {
                childAt.getHitRect(this.rect);
                if (!this.rect.contains((int) f, (int) f2)) {
                    continue;
                } else {
                    if (childAt.canScrollHorizontally(-1)) {
                        return childAt;
                    }
                    if (childAt instanceof ViewGroup) {
                        android.graphics.Rect rect = this.rect;
                        View viewFindScrollingChild = findScrollingChild((ViewGroup) childAt, f - rect.left, f2 - rect.top);
                        if (viewFindScrollingChild != null) {
                            return viewFindScrollingChild;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelTouches$4(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.backProgress = fFloatValue;
        onBackProgress(fFloatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouchEventInternal$2(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.backProgress = fFloatValue;
        onBackProgress(fFloatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$rebuild$3(ValueAnimator valueAnimator) {
        this.updateTabProgress.onAnimationUpdate(valueAnimator);
        this.tabsView.indicatorProgress2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.tabsView.listView.invalidateViews();
        this.tabsView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$scrollToPosition$1(ValueAnimator valueAnimator) {
        View view;
        int measuredWidth;
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view2 = this.viewPages[1];
        if (view2 == null) {
            return;
        }
        if (this.animatingForward) {
            setTranslationX(view2, r0[0].getMeasuredWidth() * (1.0f - fFloatValue));
            view = this.viewPages[0];
            measuredWidth = -view.getMeasuredWidth();
        } else {
            setTranslationX(view2, (-r0[0].getMeasuredWidth()) * (1.0f - fFloatValue));
            view = this.viewPages[0];
            measuredWidth = view.getMeasuredWidth();
        }
        setTranslationX(view, measuredWidth * fFloatValue);
        this.currentProgress = fFloatValue;
        onTabAnimationUpdate(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$static$0(float f) {
        float f2 = f - 1.0f;
        return (f2 * f2 * f2 * f2 * f2) + 1.0f;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean prepareForMoving(MotionEvent motionEvent, boolean z) {
        if (z || this.currentPosition != 0) {
            if ((z && this.currentPosition == this.adapter.getItemCount() - 1) || this.manualScrolling != null || !canScroll(motionEvent)) {
                return false;
            }
            if (z && !canScrollForward(motionEvent)) {
                return false;
            }
            Adapter adapter = this.adapter;
            if (adapter != null) {
                if (!adapter.canScrollTo(this.currentPosition + (z ? 1 : -1))) {
                    return false;
                }
            }
            getParent().requestDisallowInterceptTouchEvent(true);
            this.maybeStartTracking = false;
            this.startedTracking = true;
            onStartTracking();
            this.startedTrackingX = (int) (motionEvent.getX() + this.additionalOffset);
            TabsView tabsView = this.tabsView;
            if (tabsView != null) {
                tabsView.setEnabled(false);
            }
            this.notificationsLocker.lock();
            this.animatingForward = z;
            this.nextPosition = this.currentPosition + (z ? 1 : -1);
            updateViewForIndex(1);
            View view = this.viewPages[1];
            if (view != null) {
                setTranslationX(view, z ? r7[0].getMeasuredWidth() : -r7[0].getMeasuredWidth());
            }
            onTabAnimationUpdate(false);
            return true;
        }
        this.backProgress = BitmapDescriptorFactory.HUE_RED;
        if (onBackProgress(BitmapDescriptorFactory.HUE_RED)) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViewForIndex(int i) {
        View view;
        int i2 = i == 0 ? this.currentPosition : this.nextPosition;
        if (i2 < 0 || i2 >= this.adapter.getItemCount()) {
            return;
        }
        if (this.viewPages[i] == null) {
            this.viewTypes[i] = this.adapter.getItemViewType(i2);
            View viewCreateView = (View) this.viewsByType.get(this.viewTypes[i]);
            if (viewCreateView == null) {
                viewCreateView = this.adapter.createView(this.viewTypes[i]);
            } else {
                this.viewsByType.remove(this.viewTypes[i]);
            }
            if (viewCreateView.getParent() != null) {
                ((ViewGroup) viewCreateView.getParent()).removeView(viewCreateView);
            }
            addView(viewCreateView);
            this.viewPages[i] = viewCreateView;
            this.adapter.bindView(viewCreateView, i2, this.viewTypes[i]);
            view = this.viewPages[i];
        } else {
            if (this.viewTypes[i] != this.adapter.getItemViewType(i2)) {
                this.viewsByType.put(this.viewTypes[i], this.viewPages[i]);
                this.viewPages[i].setVisibility(8);
                removeView(this.viewPages[i]);
                this.viewTypes[i] = this.adapter.getItemViewType(i2);
                View viewCreateView2 = (View) this.viewsByType.get(this.viewTypes[i]);
                if (viewCreateView2 == null) {
                    viewCreateView2 = this.adapter.createView(this.viewTypes[i]);
                } else {
                    this.viewsByType.remove(this.viewTypes[i]);
                }
                addView(viewCreateView2);
                this.viewPages[i] = viewCreateView2;
                viewCreateView2.setVisibility(0);
                Adapter adapter = this.adapter;
                adapter.bindView(this.viewPages[i], i2, adapter.getItemViewType(i2));
                return;
            }
            this.adapter.bindView(this.viewPages[i], i2, this.viewTypes[i]);
            view = this.viewPages[i];
        }
        view.setVisibility(0);
    }

    protected void addMoreTabs() {
    }

    protected boolean canScroll(MotionEvent motionEvent) {
        return true;
    }

    protected boolean canScrollForward(MotionEvent motionEvent) {
        return canScroll(motionEvent);
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        if (i == 0) {
            return false;
        }
        if (!this.tabsAnimationInProgress && !this.startedTracking) {
            boolean z = i > 0;
            if ((!z && this.currentPosition == 0) || (z && this.currentPosition == this.adapter.getItemCount() - 1)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void cancelTouches() {
        float measuredWidth;
        boolean z;
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.computeCurrentVelocity(1000, this.maximumVelocity);
        }
        if (this.startedTracking) {
            float x = this.viewPages[0].getX();
            this.tabsAnimation = new AnimatorSet();
            if (this.additionalOffset != BitmapDescriptorFactory.HUE_RED) {
                if (Math.abs(BitmapDescriptorFactory.HUE_RED) <= 1500.0f) {
                    if (this.animatingForward) {
                        View view = this.viewPages[1];
                        if (view != null) {
                            z = view.getX() > ((float) (this.viewPages[0].getMeasuredWidth() >> 1));
                        }
                    } else if (this.viewPages[0].getX() < (this.viewPages[0].getMeasuredWidth() >> 1)) {
                    }
                }
                this.backAnimation = false;
                if (!this.backAnimation) {
                    measuredWidth = Math.abs(x);
                    if (this.animatingForward) {
                        this.tabsAnimation.playTogether(translateAnimator(this.viewPages[0], BitmapDescriptorFactory.HUE_RED));
                        View view2 = this.viewPages[1];
                        if (view2 != null) {
                            this.tabsAnimation.playTogether(translateAnimator(view2, view2.getMeasuredWidth()));
                        }
                    } else {
                        this.tabsAnimation.playTogether(translateAnimator(this.viewPages[0], BitmapDescriptorFactory.HUE_RED));
                        View view3 = this.viewPages[1];
                        if (view3 != null) {
                            this.tabsAnimation.playTogether(translateAnimator(view3, -view3.getMeasuredWidth()));
                        }
                    }
                } else if (this.nextPosition >= 0) {
                    measuredWidth = this.viewPages[0].getMeasuredWidth() - Math.abs(x);
                    if (this.animatingForward) {
                        this.tabsAnimation.playTogether(translateAnimator(this.viewPages[0], -r6.getMeasuredWidth()));
                        View view4 = this.viewPages[1];
                        if (view4 != null) {
                            this.tabsAnimation.playTogether(translateAnimator(view4, BitmapDescriptorFactory.HUE_RED));
                        }
                    } else {
                        this.tabsAnimation.playTogether(translateAnimator(this.viewPages[0], r6.getMeasuredWidth()));
                        View view5 = this.viewPages[1];
                        if (view5 != null) {
                            this.tabsAnimation.playTogether(translateAnimator(view5, BitmapDescriptorFactory.HUE_RED));
                        }
                    }
                } else {
                    measuredWidth = BitmapDescriptorFactory.HUE_RED;
                }
                if (this.nextPosition < 0) {
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.backProgress, this.backAnimation ? BitmapDescriptorFactory.HUE_RED : 1.0f);
                    valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ViewPagerFixed$$ExternalSyntheticLambda4
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            this.f$0.lambda$cancelTouches$4(valueAnimator);
                        }
                    });
                    this.tabsAnimation.playTogether(valueAnimatorOfFloat);
                }
                ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                valueAnimatorOfFloat2.addUpdateListener(this.updateTabProgress);
                this.tabsAnimation.playTogether(valueAnimatorOfFloat2);
                this.tabsAnimation.setInterpolator(interpolator);
                int measuredWidth2 = getMeasuredWidth();
                float f = measuredWidth2 / 2;
                float fDistanceInfluenceForSnapDuration = f + (distanceInfluenceForSnapDuration(Math.min(1.0f, (measuredWidth * 1.0f) / measuredWidth2)) * f);
                this.tabsAnimation.setDuration(Math.max(ImageReceiver.DEFAULT_CROSSFADE_DURATION, Math.min(Math.abs(BitmapDescriptorFactory.HUE_RED) <= BitmapDescriptorFactory.HUE_RED ? Math.round(Math.abs(fDistanceInfluenceForSnapDuration / r4) * 1000.0f) * 4 : (int) (((measuredWidth / getMeasuredWidth()) + 1.0f) * 100.0f), 600)));
                this.tabsAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ViewPagerFixed.9
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ViewPagerFixed.this.tabsAnimation = null;
                        ViewPagerFixed viewPagerFixed = ViewPagerFixed.this;
                        if (viewPagerFixed.nextPosition < 0) {
                            viewPagerFixed.onBack();
                        }
                        ViewPagerFixed viewPagerFixed2 = ViewPagerFixed.this;
                        if (viewPagerFixed2.viewPages[1] != null) {
                            if (!viewPagerFixed2.backAnimation) {
                                ViewPagerFixed.this.swapViews();
                            }
                            ViewPagerFixed viewPagerFixed3 = ViewPagerFixed.this;
                            viewPagerFixed3.viewsByType.put(viewPagerFixed3.viewTypes[1], ViewPagerFixed.this.viewPages[1]);
                            ViewPagerFixed viewPagerFixed4 = ViewPagerFixed.this;
                            viewPagerFixed4.removeView(viewPagerFixed4.viewPages[1]);
                            ViewPagerFixed.this.viewPages[1].setVisibility(8);
                            ViewPagerFixed.this.viewPages[1] = null;
                        }
                        ViewPagerFixed.this.tabsAnimationInProgress = false;
                        ViewPagerFixed.this.maybeStartTracking = false;
                        TabsView tabsView = ViewPagerFixed.this.tabsView;
                        if (tabsView != null) {
                            tabsView.setEnabled(true);
                        }
                        ViewPagerFixed.this.onTabAnimationUpdate(false);
                        ViewPagerFixed.this.onScrollEnd();
                        ViewPagerFixed.this.notificationsLocker.unlock();
                    }
                });
                this.tabsAnimation.start();
                this.tabsAnimationInProgress = true;
                this.startedTracking = false;
                onTabAnimationUpdate(false);
            } else if (Math.abs(x) >= this.viewPages[0].getMeasuredWidth() / 3.0f || (Math.abs(BitmapDescriptorFactory.HUE_RED) >= 3500.0f && Math.abs(BitmapDescriptorFactory.HUE_RED) >= Math.abs(BitmapDescriptorFactory.HUE_RED))) {
            }
            this.backAnimation = z;
            if (!this.backAnimation) {
            }
            if (this.nextPosition < 0) {
            }
            ValueAnimator valueAnimatorOfFloat22 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            valueAnimatorOfFloat22.addUpdateListener(this.updateTabProgress);
            this.tabsAnimation.playTogether(valueAnimatorOfFloat22);
            this.tabsAnimation.setInterpolator(interpolator);
            int measuredWidth22 = getMeasuredWidth();
            float f2 = measuredWidth22 / 2;
            float fDistanceInfluenceForSnapDuration2 = f2 + (distanceInfluenceForSnapDuration(Math.min(1.0f, (measuredWidth * 1.0f) / measuredWidth22)) * f2);
            this.tabsAnimation.setDuration(Math.max(ImageReceiver.DEFAULT_CROSSFADE_DURATION, Math.min(Math.abs(BitmapDescriptorFactory.HUE_RED) <= BitmapDescriptorFactory.HUE_RED ? Math.round(Math.abs(fDistanceInfluenceForSnapDuration2 / r4) * 1000.0f) * 4 : (int) (((measuredWidth / getMeasuredWidth()) + 1.0f) * 100.0f), 600)));
            this.tabsAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ViewPagerFixed.9
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ViewPagerFixed.this.tabsAnimation = null;
                    ViewPagerFixed viewPagerFixed = ViewPagerFixed.this;
                    if (viewPagerFixed.nextPosition < 0) {
                        viewPagerFixed.onBack();
                    }
                    ViewPagerFixed viewPagerFixed2 = ViewPagerFixed.this;
                    if (viewPagerFixed2.viewPages[1] != null) {
                        if (!viewPagerFixed2.backAnimation) {
                            ViewPagerFixed.this.swapViews();
                        }
                        ViewPagerFixed viewPagerFixed3 = ViewPagerFixed.this;
                        viewPagerFixed3.viewsByType.put(viewPagerFixed3.viewTypes[1], ViewPagerFixed.this.viewPages[1]);
                        ViewPagerFixed viewPagerFixed4 = ViewPagerFixed.this;
                        viewPagerFixed4.removeView(viewPagerFixed4.viewPages[1]);
                        ViewPagerFixed.this.viewPages[1].setVisibility(8);
                        ViewPagerFixed.this.viewPages[1] = null;
                    }
                    ViewPagerFixed.this.tabsAnimationInProgress = false;
                    ViewPagerFixed.this.maybeStartTracking = false;
                    TabsView tabsView = ViewPagerFixed.this.tabsView;
                    if (tabsView != null) {
                        tabsView.setEnabled(true);
                    }
                    ViewPagerFixed.this.onTabAnimationUpdate(false);
                    ViewPagerFixed.this.onScrollEnd();
                    ViewPagerFixed.this.notificationsLocker.unlock();
                }
            });
            this.tabsAnimation.start();
            this.tabsAnimationInProgress = true;
            this.startedTracking = false;
            onTabAnimationUpdate(false);
        } else {
            this.maybeStartTracking = false;
            TabsView tabsView = this.tabsView;
            if (tabsView != null) {
                tabsView.setEnabled(true);
            }
        }
        VelocityTracker velocityTracker2 = this.velocityTracker;
        if (velocityTracker2 != null) {
            velocityTracker2.recycle();
            this.velocityTracker = null;
        }
    }

    public boolean checkTabsAnimationInProgress() {
        boolean z;
        if (!this.tabsAnimationInProgress) {
            return false;
        }
        if (this.backAnimation) {
            if (Math.abs(this.viewPages[0].getTranslationX()) < 1.0f) {
                setTranslationX(this.viewPages[0], BitmapDescriptorFactory.HUE_RED);
                View view = this.viewPages[1];
                if (view != null) {
                    setTranslationX(view, r0[0].getMeasuredWidth() * (this.animatingForward ? 1 : -1));
                }
                z = true;
            }
            z = false;
        } else {
            if (Math.abs(this.viewPages[1].getTranslationX()) < 1.0f) {
                setTranslationX(this.viewPages[0], r0.getMeasuredWidth() * (this.animatingForward ? -1 : 1));
                View view2 = this.viewPages[1];
                if (view2 != null) {
                    setTranslationX(view2, BitmapDescriptorFactory.HUE_RED);
                }
                z = true;
            }
            z = false;
        }
        onTabAnimationUpdate(true);
        if (z) {
            AnimatorSet animatorSet = this.tabsAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.tabsAnimation = null;
            }
            this.tabsAnimationInProgress = false;
        }
        return this.tabsAnimationInProgress;
    }

    public void clearViews() {
        this.viewsByType.clear();
    }

    public TabsView createTabsView(boolean z, int i) {
        TabsView tabsView = new TabsView(getContext(), z, i, this.resourcesProvider) { // from class: org.telegram.ui.Components.ViewPagerFixed.3
            @Override // org.telegram.ui.Components.ViewPagerFixed.TabsView
            public void selectTab(int i2, int i3, float f) {
                super.selectTab(i2, i3, f);
                ViewPagerFixed viewPagerFixed = ViewPagerFixed.this;
                if (f > 0.5f) {
                    i2 = i3;
                }
                viewPagerFixed.onTabPageSelected(i2);
            }
        };
        this.tabsView = tabsView;
        tabsView.tabMarginDp = tabMarginDp();
        this.tabsView.setDelegate(new TabsView.TabsViewDelegate() { // from class: org.telegram.ui.Components.ViewPagerFixed.4
            @Override // org.telegram.ui.Components.ViewPagerFixed.TabsView.TabsViewDelegate
            public boolean canPerformActions() {
                return (ViewPagerFixed.this.tabsAnimationInProgress || ViewPagerFixed.this.startedTracking) ? false : true;
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.TabsView.TabsViewDelegate
            public void invalidateBlur() {
                ViewPagerFixed.this.invalidateBlur();
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.TabsView.TabsViewDelegate
            public boolean needsTab(int i2) {
                if (ViewPagerFixed.this.adapter == null) {
                    return true;
                }
                return ViewPagerFixed.this.adapter.needsTab(i2);
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.TabsView.TabsViewDelegate
            public void onPageScrolled(float f) {
                ViewPagerFixed viewPagerFixed;
                View view;
                int measuredWidth;
                if (f == 1.0f) {
                    ViewPagerFixed viewPagerFixed2 = ViewPagerFixed.this;
                    if (viewPagerFixed2.viewPages[1] != null) {
                        viewPagerFixed2.swapViews();
                        ViewPagerFixed viewPagerFixed3 = ViewPagerFixed.this;
                        viewPagerFixed3.viewsByType.put(viewPagerFixed3.viewTypes[1], ViewPagerFixed.this.viewPages[1]);
                        ViewPagerFixed viewPagerFixed4 = ViewPagerFixed.this;
                        viewPagerFixed4.removeView(viewPagerFixed4.viewPages[1]);
                        ViewPagerFixed viewPagerFixed5 = ViewPagerFixed.this;
                        viewPagerFixed5.setTranslationX(viewPagerFixed5.viewPages[0], BitmapDescriptorFactory.HUE_RED);
                        ViewPagerFixed.this.viewPages[1] = null;
                    }
                    ViewPagerFixed viewPagerFixed6 = ViewPagerFixed.this;
                    viewPagerFixed6.onTabScrollEnd(viewPagerFixed6.currentPosition);
                    return;
                }
                ViewPagerFixed viewPagerFixed7 = ViewPagerFixed.this;
                if (viewPagerFixed7.viewPages[1] == null) {
                    return;
                }
                if (viewPagerFixed7.animatingForward) {
                    ViewPagerFixed viewPagerFixed8 = ViewPagerFixed.this;
                    viewPagerFixed8.setTranslationX(viewPagerFixed8.viewPages[1], r4[0].getMeasuredWidth() * (1.0f - f));
                    viewPagerFixed = ViewPagerFixed.this;
                    view = viewPagerFixed.viewPages[0];
                    measuredWidth = -view.getMeasuredWidth();
                } else {
                    ViewPagerFixed viewPagerFixed9 = ViewPagerFixed.this;
                    viewPagerFixed9.setTranslationX(viewPagerFixed9.viewPages[1], (-r4[0].getMeasuredWidth()) * (1.0f - f));
                    viewPagerFixed = ViewPagerFixed.this;
                    view = viewPagerFixed.viewPages[0];
                    measuredWidth = view.getMeasuredWidth();
                }
                viewPagerFixed.setTranslationX(view, measuredWidth * f);
                ViewPagerFixed.this.onTabAnimationUpdate(false);
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.TabsView.TabsViewDelegate
            public void onPageSelected(int i2, boolean z2) {
                ViewPagerFixed.this.animatingForward = z2;
                ViewPagerFixed viewPagerFixed = ViewPagerFixed.this;
                viewPagerFixed.nextPosition = i2;
                viewPagerFixed.updateViewForIndex(1);
                ViewPagerFixed.this.onTabPageSelected(i2);
                View view = ViewPagerFixed.this.viewPages[0];
                int measuredWidth = view != null ? view.getMeasuredWidth() : 0;
                ViewPagerFixed viewPagerFixed2 = ViewPagerFixed.this;
                View view2 = viewPagerFixed2.viewPages[1];
                if (view2 != null) {
                    viewPagerFixed2.setTranslationX(view2, z2 ? measuredWidth : -measuredWidth);
                }
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.TabsView.TabsViewDelegate
            public void onSamePageSelected() {
            }
        });
        fillTabs(false);
        return this.tabsView;
    }

    public void drawForBlur(Canvas canvas) {
        RecyclerListView recyclerListViewFindRecyclerView;
        int i = 0;
        while (true) {
            View[] viewArr = this.viewPages;
            if (i >= viewArr.length) {
                return;
            }
            View view = viewArr[i];
            if (view != null && view.getVisibility() == 0 && (recyclerListViewFindRecyclerView = findRecyclerView(this.viewPages[i])) != null) {
                for (int i2 = 0; i2 < recyclerListViewFindRecyclerView.getChildCount(); i2++) {
                    View childAt = recyclerListViewFindRecyclerView.getChildAt(i2);
                    if (childAt.getY() < AndroidUtilities.dp(203.0f) + AndroidUtilities.dp(100.0f)) {
                        int iSave = canvas.save();
                        canvas.translate(this.viewPages[i].getX(), getY() + this.viewPages[i].getY() + recyclerListViewFindRecyclerView.getY() + childAt.getY());
                        childAt.draw(canvas);
                        canvas.restoreToCount(iSave);
                    }
                }
            }
            i++;
        }
    }

    public void fillTabs(boolean z) {
        TabsView tabsView;
        if (this.adapter == null || (tabsView = this.tabsView) == null) {
            return;
        }
        tabsView.removeTabs();
        for (int i = 0; i < this.adapter.getItemCount(); i++) {
            if (this.adapter.needsTab(i)) {
                this.tabsView.addTab(this.adapter.getItemId(i), this.adapter.getItemTitle(i));
            }
        }
        addMoreTabs();
        if (z) {
            TransitionManager.beginDelayedTransition(this.tabsView.listView, TransitionExt.createSimpleTransition());
        }
        this.tabsView.finishAddingTabs();
    }

    protected float getAvailableTranslationX() {
        return AndroidUtilities.displaySize.x;
    }

    public int getCurrentPosition() {
        return this.currentPosition;
    }

    public View getCurrentView() {
        return this.viewPages[0];
    }

    public float getPositionAnimated() {
        float fClamp;
        View view = this.viewPages[0];
        if (view == null || view.getVisibility() != 0) {
            fClamp = BitmapDescriptorFactory.HUE_RED;
        } else {
            fClamp = (this.currentPosition * Utilities.clamp(1.0f - Math.abs(this.viewPages[0].getTranslationX() / getAvailableTranslationX()), 1.0f, BitmapDescriptorFactory.HUE_RED)) + BitmapDescriptorFactory.HUE_RED;
        }
        View view2 = this.viewPages[1];
        if (view2 == null || view2.getVisibility() != 0) {
            return fClamp;
        }
        return fClamp + (this.nextPosition * Utilities.clamp(1.0f - Math.abs(this.viewPages[1].getTranslationX() / getAvailableTranslationX()), 1.0f, BitmapDescriptorFactory.HUE_RED));
    }

    public View[] getViewPages() {
        return this.viewPages;
    }

    protected void invalidateBlur() {
    }

    public boolean isCurrentTabFirst() {
        return this.currentPosition == 0;
    }

    public boolean isManualScrolling() {
        ValueAnimator valueAnimator = this.manualScrolling;
        return valueAnimator != null && valueAnimator.isRunning();
    }

    public boolean isTouch() {
        return this.startedTracking;
    }

    protected void onBack() {
    }

    protected boolean onBackProgress(float f) {
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        TabsView tabsView = this.tabsView;
        if (tabsView != null && tabsView.isAnimatingIndicator()) {
            return false;
        }
        if (checkTabsAnimationInProgress()) {
            return true;
        }
        onTouchEvent(motionEvent);
        return this.startedTracking;
    }

    protected void onItemSelected(View view, View view2, int i, int i2) {
    }

    protected void onScrollEnd() {
    }

    public void onStartTracking() {
    }

    public void onTabAnimationUpdate(boolean z) {
    }

    protected void onTabPageSelected(int i) {
    }

    protected void onTabScrollEnd(int i) {
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return onTouchEventInternal(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:171:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0358  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x042a  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x043a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEventInternal(MotionEvent motionEvent) {
        float xVelocity;
        float yVelocity;
        float measuredWidth;
        boolean z;
        boolean z2;
        View viewFindScrollingChild;
        View view;
        TabsView tabsView = this.tabsView;
        if (tabsView != null && tabsView.animatingIndicator) {
            return false;
        }
        if (motionEvent != null) {
            if (this.velocityTracker == null) {
                this.velocityTracker = VelocityTracker.obtain();
            }
            this.velocityTracker.addMovement(motionEvent);
        }
        if (motionEvent != null && motionEvent.getAction() == 0 && checkTabsAnimationInProgress()) {
            this.startedTracking = true;
            onStartTracking();
            this.startedTrackingPointerId = motionEvent.getPointerId(0);
            int x = (int) motionEvent.getX();
            this.startedTrackingX = x;
            if (!this.animatingForward) {
                if (this.viewPages[1] != null) {
                    if (x < r5.getMeasuredWidth() + this.viewPages[1].getTranslationX()) {
                        swapViews();
                        this.animatingForward = true;
                        view = this.viewPages[0];
                    } else {
                        view = this.viewPages[0];
                    }
                }
                this.tabsAnimation.removeAllListeners();
                this.tabsAnimation.cancel();
                this.tabsAnimationInProgress = false;
            } else if (x < this.viewPages[0].getMeasuredWidth() + this.viewPages[0].getTranslationX()) {
                view = this.viewPages[0];
            } else {
                swapViews();
                this.animatingForward = false;
                view = this.viewPages[0];
            }
            this.additionalOffset = view.getTranslationX();
            this.tabsAnimation.removeAllListeners();
            this.tabsAnimation.cancel();
            this.tabsAnimationInProgress = false;
        } else if (motionEvent != null && motionEvent.getAction() == 0) {
            this.additionalOffset = BitmapDescriptorFactory.HUE_RED;
        }
        if (!this.startedTracking && motionEvent != null && (viewFindScrollingChild = findScrollingChild(this, motionEvent.getX(), motionEvent.getY())) != null && (viewFindScrollingChild.canScrollHorizontally(1) || viewFindScrollingChild.canScrollHorizontally(-1))) {
            return false;
        }
        if (motionEvent != null && motionEvent.getAction() == 0 && !this.startedTracking && !this.maybeStartTracking) {
            this.startedTrackingPointerId = motionEvent.getPointerId(0);
            this.maybeStartTracking = true;
            this.startedTrackingX = (int) motionEvent.getX();
            this.startedTrackingY = (int) motionEvent.getY();
        } else if (motionEvent != null && motionEvent.getAction() == 2 && motionEvent.getPointerId(0) == this.startedTrackingPointerId) {
            int x2 = (int) ((motionEvent.getX() - this.startedTrackingX) + this.additionalOffset);
            int iAbs = Math.abs(((int) motionEvent.getY()) - this.startedTrackingY);
            if (this.startedTracking && (((z2 = this.animatingForward) && x2 > 0) || (!z2 && x2 < 0))) {
                if (!prepareForMoving(motionEvent, x2 < 0)) {
                    this.maybeStartTracking = true;
                    this.startedTracking = false;
                    setTranslationX(this.viewPages[0], BitmapDescriptorFactory.HUE_RED);
                    View view2 = this.viewPages[1];
                    if (view2 != null) {
                        setTranslationX(view2, this.animatingForward ? r2[0].getMeasuredWidth() : -r2[0].getMeasuredWidth());
                    }
                    this.nextPosition = 0;
                    this.currentProgress = 1.0f;
                    TabsView tabsView2 = this.tabsView;
                    if (tabsView2 != null) {
                        tabsView2.selectTab(0, this.currentPosition, 1.0f);
                    }
                    onTabAnimationUpdate(false);
                }
            }
            if (this.maybeStartTracking && !this.startedTracking) {
                int x3 = (int) (motionEvent.getX() - this.startedTrackingX);
                if (Math.abs(x3) >= this.touchSlop && Math.abs(x3) > iAbs) {
                    prepareForMoving(motionEvent, x2 < 0);
                }
            } else if (this.startedTracking) {
                float fAbs = Math.abs(x2) / this.viewPages[0].getMeasuredWidth();
                if (this.nextPosition == -1) {
                    this.backProgress = fAbs;
                    onBackProgress(fAbs);
                } else {
                    setTranslationX(this.viewPages[0], x2);
                    View view3 = this.viewPages[1];
                    if (view3 != null) {
                        setTranslationX(view3, this.animatingForward ? r2[0].getMeasuredWidth() + x2 : x2 - r2[0].getMeasuredWidth());
                    }
                }
                float f = 1.0f - fAbs;
                this.currentProgress = f;
                TabsView tabsView3 = this.tabsView;
                if (tabsView3 != null) {
                    tabsView3.selectTab(this.nextPosition, this.currentPosition, f);
                }
                onTabAnimationUpdate(false);
            }
        } else if (motionEvent == null || (motionEvent.getPointerId(0) == this.startedTrackingPointerId && (motionEvent.getAction() == 3 || motionEvent.getAction() == 1 || motionEvent.getAction() == 6))) {
            VelocityTracker velocityTracker = this.velocityTracker;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(1000, this.maximumVelocity);
            }
            if (motionEvent == null || motionEvent.getAction() == 3) {
                xVelocity = BitmapDescriptorFactory.HUE_RED;
                yVelocity = BitmapDescriptorFactory.HUE_RED;
            } else {
                xVelocity = this.velocityTracker.getXVelocity();
                yVelocity = this.velocityTracker.getYVelocity();
                if (!this.startedTracking && Math.abs(xVelocity) >= 3000.0f && Math.abs(xVelocity) > Math.abs(yVelocity)) {
                    prepareForMoving(motionEvent, xVelocity < BitmapDescriptorFactory.HUE_RED);
                }
            }
            if (this.startedTracking) {
                float x4 = this.viewPages[0].getX();
                this.tabsAnimation = new AnimatorSet();
                if (this.additionalOffset != BitmapDescriptorFactory.HUE_RED) {
                    if (Math.abs(xVelocity) > 1500.0f) {
                        z = !this.animatingForward ? xVelocity >= BitmapDescriptorFactory.HUE_RED : xVelocity <= BitmapDescriptorFactory.HUE_RED;
                    } else if (this.animatingForward) {
                        View view4 = this.viewPages[1];
                        if (view4 == null) {
                            this.backAnimation = false;
                            if (!this.backAnimation) {
                                measuredWidth = Math.abs(x4);
                                if (this.animatingForward) {
                                    this.tabsAnimation.playTogether(translateAnimator(this.viewPages[0], BitmapDescriptorFactory.HUE_RED));
                                    View view5 = this.viewPages[1];
                                    if (view5 != null) {
                                        this.tabsAnimation.playTogether(translateAnimator(view5, view5.getMeasuredWidth()));
                                    }
                                } else {
                                    this.tabsAnimation.playTogether(translateAnimator(this.viewPages[0], BitmapDescriptorFactory.HUE_RED));
                                    View view6 = this.viewPages[1];
                                    if (view6 != null) {
                                        this.tabsAnimation.playTogether(translateAnimator(view6, -view6.getMeasuredWidth()));
                                    }
                                }
                            } else if (this.nextPosition >= 0) {
                                measuredWidth = this.viewPages[0].getMeasuredWidth() - Math.abs(x4);
                                if (this.animatingForward) {
                                    this.tabsAnimation.playTogether(translateAnimator(this.viewPages[0], -r7.getMeasuredWidth()));
                                    View view7 = this.viewPages[1];
                                    if (view7 != null) {
                                        this.tabsAnimation.playTogether(translateAnimator(view7, BitmapDescriptorFactory.HUE_RED));
                                    }
                                } else {
                                    this.tabsAnimation.playTogether(translateAnimator(this.viewPages[0], r7.getMeasuredWidth()));
                                    View view8 = this.viewPages[1];
                                    if (view8 != null) {
                                        this.tabsAnimation.playTogether(translateAnimator(view8, BitmapDescriptorFactory.HUE_RED));
                                    }
                                }
                            } else {
                                measuredWidth = BitmapDescriptorFactory.HUE_RED;
                            }
                            if (this.nextPosition < 0) {
                                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.backProgress, this.backAnimation ? BitmapDescriptorFactory.HUE_RED : 1.0f);
                                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ViewPagerFixed$$ExternalSyntheticLambda1
                                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                        this.f$0.lambda$onTouchEventInternal$2(valueAnimator);
                                    }
                                });
                                this.tabsAnimation.playTogether(valueAnimatorOfFloat);
                            }
                            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                            valueAnimatorOfFloat2.addUpdateListener(this.updateTabProgress);
                            this.tabsAnimation.playTogether(valueAnimatorOfFloat2);
                            this.tabsAnimation.setInterpolator(interpolator);
                            int measuredWidth2 = getMeasuredWidth();
                            float f2 = measuredWidth2 / 2;
                            float fDistanceInfluenceForSnapDuration = f2 + (distanceInfluenceForSnapDuration(Math.min(1.0f, (measuredWidth * 1.0f) / measuredWidth2)) * f2);
                            this.tabsAnimation.setDuration(Math.max(ImageReceiver.DEFAULT_CROSSFADE_DURATION, Math.min(Math.abs(xVelocity) <= BitmapDescriptorFactory.HUE_RED ? Math.round(Math.abs(fDistanceInfluenceForSnapDuration / r5) * 1000.0f) * 4 : (int) (((measuredWidth / getMeasuredWidth()) + 1.0f) * 100.0f), 600)));
                            this.tabsAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ViewPagerFixed.7
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator) {
                                    ViewPagerFixed.this.tabsAnimation = null;
                                    ViewPagerFixed viewPagerFixed = ViewPagerFixed.this;
                                    if (viewPagerFixed.nextPosition < 0) {
                                        viewPagerFixed.onBack();
                                    }
                                    ViewPagerFixed viewPagerFixed2 = ViewPagerFixed.this;
                                    if (viewPagerFixed2.viewPages[1] != null) {
                                        if (!viewPagerFixed2.backAnimation) {
                                            ViewPagerFixed.this.swapViews();
                                        }
                                        ViewPagerFixed viewPagerFixed3 = ViewPagerFixed.this;
                                        viewPagerFixed3.viewsByType.put(viewPagerFixed3.viewTypes[1], ViewPagerFixed.this.viewPages[1]);
                                        ViewPagerFixed viewPagerFixed4 = ViewPagerFixed.this;
                                        viewPagerFixed4.removeView(viewPagerFixed4.viewPages[1]);
                                        ViewPagerFixed.this.viewPages[1].setVisibility(8);
                                        ViewPagerFixed.this.viewPages[1] = null;
                                    }
                                    ViewPagerFixed.this.tabsAnimationInProgress = false;
                                    ViewPagerFixed.this.maybeStartTracking = false;
                                    TabsView tabsView4 = ViewPagerFixed.this.tabsView;
                                    if (tabsView4 != null) {
                                        tabsView4.setEnabled(true);
                                    }
                                    ViewPagerFixed.this.onTabAnimationUpdate(false);
                                    ViewPagerFixed.this.onScrollEnd();
                                    ViewPagerFixed.this.notificationsLocker.unlock();
                                }
                            });
                            this.tabsAnimation.start();
                            this.tabsAnimationInProgress = true;
                            this.startedTracking = false;
                            onTabAnimationUpdate(false);
                        } else if (view4.getX() > (this.viewPages[0].getMeasuredWidth() >> 1)) {
                        }
                    } else if (this.viewPages[0].getX() < (this.viewPages[0].getMeasuredWidth() >> 1)) {
                    }
                } else if (Math.abs(x4) >= this.viewPages[0].getMeasuredWidth() / 3.0f || (Math.abs(xVelocity) >= 3500.0f && Math.abs(xVelocity) >= Math.abs(yVelocity))) {
                }
                this.backAnimation = z;
                if (!this.backAnimation) {
                }
                if (this.nextPosition < 0) {
                }
                ValueAnimator valueAnimatorOfFloat22 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                valueAnimatorOfFloat22.addUpdateListener(this.updateTabProgress);
                this.tabsAnimation.playTogether(valueAnimatorOfFloat22);
                this.tabsAnimation.setInterpolator(interpolator);
                int measuredWidth22 = getMeasuredWidth();
                float f22 = measuredWidth22 / 2;
                float fDistanceInfluenceForSnapDuration2 = f22 + (distanceInfluenceForSnapDuration(Math.min(1.0f, (measuredWidth * 1.0f) / measuredWidth22)) * f22);
                this.tabsAnimation.setDuration(Math.max(ImageReceiver.DEFAULT_CROSSFADE_DURATION, Math.min(Math.abs(xVelocity) <= BitmapDescriptorFactory.HUE_RED ? Math.round(Math.abs(fDistanceInfluenceForSnapDuration2 / r5) * 1000.0f) * 4 : (int) (((measuredWidth / getMeasuredWidth()) + 1.0f) * 100.0f), 600)));
                this.tabsAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ViewPagerFixed.7
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ViewPagerFixed.this.tabsAnimation = null;
                        ViewPagerFixed viewPagerFixed = ViewPagerFixed.this;
                        if (viewPagerFixed.nextPosition < 0) {
                            viewPagerFixed.onBack();
                        }
                        ViewPagerFixed viewPagerFixed2 = ViewPagerFixed.this;
                        if (viewPagerFixed2.viewPages[1] != null) {
                            if (!viewPagerFixed2.backAnimation) {
                                ViewPagerFixed.this.swapViews();
                            }
                            ViewPagerFixed viewPagerFixed3 = ViewPagerFixed.this;
                            viewPagerFixed3.viewsByType.put(viewPagerFixed3.viewTypes[1], ViewPagerFixed.this.viewPages[1]);
                            ViewPagerFixed viewPagerFixed4 = ViewPagerFixed.this;
                            viewPagerFixed4.removeView(viewPagerFixed4.viewPages[1]);
                            ViewPagerFixed.this.viewPages[1].setVisibility(8);
                            ViewPagerFixed.this.viewPages[1] = null;
                        }
                        ViewPagerFixed.this.tabsAnimationInProgress = false;
                        ViewPagerFixed.this.maybeStartTracking = false;
                        TabsView tabsView4 = ViewPagerFixed.this.tabsView;
                        if (tabsView4 != null) {
                            tabsView4.setEnabled(true);
                        }
                        ViewPagerFixed.this.onTabAnimationUpdate(false);
                        ViewPagerFixed.this.onScrollEnd();
                        ViewPagerFixed.this.notificationsLocker.unlock();
                    }
                });
                this.tabsAnimation.start();
                this.tabsAnimationInProgress = true;
                this.startedTracking = false;
                onTabAnimationUpdate(false);
            } else {
                this.maybeStartTracking = false;
                TabsView tabsView4 = this.tabsView;
                if (tabsView4 != null) {
                    tabsView4.setEnabled(true);
                }
            }
            VelocityTracker velocityTracker2 = this.velocityTracker;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.velocityTracker = null;
            }
        }
        return this.startedTracking || this.maybeStartTracking;
    }

    public void rebuild(boolean z) {
        onTouchEvent(null);
        if (!this.adapter.hasStableId()) {
            z = false;
        }
        AnimatorSet animatorSet = this.tabsAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.tabsAnimation = null;
        }
        View view = this.viewPages[1];
        if (view != null) {
            removeView(view);
            this.viewPages[1] = null;
        }
        View[] viewArr = this.viewPages;
        View view2 = viewArr[0];
        viewArr[1] = view2;
        int iIntValue = (view2 == null || view2.getTag() == null) ? 0 : ((Integer) this.viewPages[1].getTag()).intValue();
        if (this.adapter.getItemCount() == 0) {
            View view3 = this.viewPages[1];
            if (view3 != null) {
                removeView(view3);
                this.viewPages[1] = null;
            }
            View view4 = this.viewPages[0];
            if (view4 != null) {
                removeView(view4);
                this.viewPages[0] = null;
                return;
            }
            return;
        }
        if (this.currentPosition > this.adapter.getItemCount() - 1) {
            this.currentPosition = this.adapter.getItemCount() - 1;
        }
        if (this.currentPosition < 0) {
            this.currentPosition = 0;
        }
        this.viewTypes[0] = this.adapter.getItemViewType(this.currentPosition);
        this.viewPages[0] = this.adapter.createView(this.viewTypes[0]);
        this.adapter.bindView(this.viewPages[0], this.currentPosition, this.viewTypes[0]);
        addView(this.viewPages[0]);
        this.viewPages[0].setVisibility(0);
        if ((this.viewPages[0].getTag() == null ? 0 : ((Integer) this.viewPages[0].getTag()).intValue()) == iIntValue) {
            z = false;
        }
        if (z) {
            this.tabsView.saveFromValues();
        }
        fillTabs(z);
        if (!z) {
            View view5 = this.viewPages[1];
            if (view5 != null) {
                removeView(view5);
                this.viewPages[1] = null;
                return;
            }
            return;
        }
        this.tabsAnimation = new AnimatorSet();
        View view6 = this.viewPages[1];
        if (view6 != null) {
            setTranslationX(view6, BitmapDescriptorFactory.HUE_RED);
        }
        View view7 = this.viewPages[0];
        if (view7 != null) {
            setTranslationX(view7, -getMeasuredWidth());
        }
        View view8 = this.viewPages[1];
        if (view8 != null) {
            this.tabsAnimation.playTogether(translateAnimator(view8, getMeasuredWidth()));
        }
        View view9 = this.viewPages[0];
        if (view9 != null) {
            this.tabsAnimation.playTogether(translateAnimator(view9, BitmapDescriptorFactory.HUE_RED));
        }
        onTabAnimationUpdate(true);
        this.tabsView.indicatorProgress2 = BitmapDescriptorFactory.HUE_RED;
        this.tabsView.listView.invalidateViews();
        this.tabsView.invalidate();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ViewPagerFixed$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$rebuild$3(valueAnimator);
            }
        });
        this.tabsAnimation.playTogether(valueAnimatorOfFloat);
        this.tabsAnimation.setInterpolator(interpolator);
        this.tabsAnimation.setDuration(220L);
        this.tabsAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ViewPagerFixed.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ViewPagerFixed.this.tabsAnimation = null;
                ViewPagerFixed viewPagerFixed = ViewPagerFixed.this;
                View view10 = viewPagerFixed.viewPages[1];
                if (view10 != null) {
                    viewPagerFixed.removeView(view10);
                    ViewPagerFixed.this.viewPages[1] = null;
                }
                ViewPagerFixed.this.tabsAnimationInProgress = false;
                TabsView tabsView = ViewPagerFixed.this.tabsView;
                if (tabsView != null) {
                    tabsView.setEnabled(true);
                    ViewPagerFixed.this.tabsView.animatingIndicator = false;
                    ViewPagerFixed.this.tabsView.indicatorProgress2 = 1.0f;
                    ViewPagerFixed.this.tabsView.listView.invalidateViews();
                    ViewPagerFixed.this.tabsView.invalidate();
                }
            }
        });
        this.tabsView.setEnabled(false);
        this.tabsAnimationInProgress = true;
        this.tabsAnimation.start();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (this.allowDisallowInterceptTouch && this.maybeStartTracking && !this.startedTracking) {
            onTouchEvent(null);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    public void resetTouch() {
        if (this.startedTracking) {
            this.maybeStartTracking = true;
            this.startedTracking = false;
            setTranslationX(this.viewPages[0], BitmapDescriptorFactory.HUE_RED);
            View view = this.viewPages[1];
            if (view != null) {
                setTranslationX(view, this.animatingForward ? r2[0].getMeasuredWidth() : -r2[0].getMeasuredWidth());
            }
            this.nextPosition = 0;
            this.currentProgress = 1.0f;
            TabsView tabsView = this.tabsView;
            if (tabsView != null) {
                tabsView.selectTab(0, this.currentPosition, 1.0f);
            }
            onTabAnimationUpdate(false);
        }
    }

    public boolean scrollToPosition(int i) {
        ValueAnimator valueAnimator;
        View view;
        float f;
        if (i == this.currentPosition || ((valueAnimator = this.manualScrolling) != null && this.nextPosition == i)) {
            return false;
        }
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.manualScrolling = null;
        }
        boolean z = this.currentPosition < i;
        this.animatingForward = z;
        this.nextPosition = i;
        updateViewForIndex(1);
        onTabPageSelected(i);
        View view2 = this.viewPages[0];
        int measuredWidth = view2 != null ? view2.getMeasuredWidth() : 0;
        View[] viewArr = this.viewPages;
        if (z) {
            view = viewArr[1];
            f = measuredWidth;
        } else {
            view = viewArr[1];
            f = -measuredWidth;
        }
        setTranslationX(view, f);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.manualScrolling = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ViewPagerFixed$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$scrollToPosition$1(valueAnimator2);
            }
        });
        this.manualScrolling.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ViewPagerFixed.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ViewPagerFixed viewPagerFixed = ViewPagerFixed.this;
                if (viewPagerFixed.viewPages[1] != null) {
                    viewPagerFixed.swapViews();
                    ViewPagerFixed viewPagerFixed2 = ViewPagerFixed.this;
                    viewPagerFixed2.viewsByType.put(viewPagerFixed2.viewTypes[1], ViewPagerFixed.this.viewPages[1]);
                    ViewPagerFixed viewPagerFixed3 = ViewPagerFixed.this;
                    viewPagerFixed3.removeView(viewPagerFixed3.viewPages[1]);
                    ViewPagerFixed viewPagerFixed4 = ViewPagerFixed.this;
                    viewPagerFixed4.setTranslationX(viewPagerFixed4.viewPages[0], BitmapDescriptorFactory.HUE_RED);
                    ViewPagerFixed.this.viewPages[1] = null;
                }
                ViewPagerFixed.this.manualScrolling = null;
                ViewPagerFixed.this.onTabAnimationUpdate(true);
                ViewPagerFixed.this.onScrollEnd();
                ViewPagerFixed.this.notificationsLocker.unlock();
            }
        });
        this.manualScrolling.setDuration(540L);
        this.manualScrolling.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.manualScrolling.start();
        return true;
    }

    public void setAdapter(Adapter adapter) {
        this.adapter = adapter;
        this.viewTypes[0] = adapter.getItemViewType(this.currentPosition);
        this.viewPages[0] = adapter.createView(this.viewTypes[0]);
        if (this.viewPages[0] == null && this.currentPosition != 0) {
            this.currentPosition = 0;
            this.viewTypes[0] = adapter.getItemViewType(0);
            this.viewPages[0] = adapter.createView(this.viewTypes[0]);
        }
        adapter.bindView(this.viewPages[0], this.currentPosition, this.viewTypes[0]);
        addView(this.viewPages[0]);
        this.viewPages[0].setVisibility(0);
        fillTabs(false);
    }

    public void setAllowDisallowInterceptTouch(boolean z) {
        this.allowDisallowInterceptTouch = z;
    }

    public void setPosition(int i) {
        if (this.adapter == null) {
            this.currentPosition = i;
            onTabAnimationUpdate(false);
        }
        AnimatorSet animatorSet = this.tabsAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        View view = this.viewPages[1];
        if (view != null) {
            this.viewsByType.put(this.viewTypes[1], view);
            removeView(this.viewPages[1]);
            this.viewPages[1] = null;
        }
        int i2 = this.currentPosition;
        if (i2 != i) {
            this.currentPosition = i;
            this.nextPosition = 0;
            this.currentProgress = 1.0f;
            View view2 = this.viewPages[0];
            updateViewForIndex(0);
            onItemSelected(this.viewPages[0], view2, this.currentPosition, i2);
            setTranslationX(this.viewPages[0], BitmapDescriptorFactory.HUE_RED);
            TabsView tabsView = this.tabsView;
            if (tabsView != null) {
                tabsView.selectTab(this.currentPosition, this.nextPosition, this.currentProgress);
            }
            onTabAnimationUpdate(true);
        }
    }

    protected void setTranslationX(View view, float f) {
        view.setTranslationX(f);
    }

    protected void swapViews() {
        View[] viewArr = this.viewPages;
        View view = viewArr[0];
        View view2 = viewArr[1];
        viewArr[0] = view2;
        viewArr[1] = view;
        int i = this.currentPosition;
        int i2 = this.nextPosition;
        this.currentPosition = i2;
        this.nextPosition = i;
        this.currentProgress = 1.0f - this.currentProgress;
        int[] iArr = this.viewTypes;
        int i3 = iArr[0];
        iArr[0] = iArr[1];
        iArr[1] = i3;
        onItemSelected(view2, view, i2, i);
    }

    protected int tabMarginDp() {
        return 16;
    }

    protected ValueAnimator translateAnimator(final View view, final float f) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(view.getTranslationX(), f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ViewPagerFixed.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewPagerFixed.this.setTranslationX(view, ((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ViewPagerFixed.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ViewPagerFixed.this.setTranslationX(view, f);
            }
        });
        return valueAnimatorOfFloat;
    }

    public void updateCurrent() {
        if (this.viewTypes[0] != this.adapter.getItemViewType(this.currentPosition)) {
            updateViewForIndex(0);
            View view = this.viewPages[1];
            if (view != null) {
                this.viewsByType.put(this.viewTypes[1], view);
                removeView(this.viewPages[1]);
                this.viewPages[1] = null;
            }
            setTranslationX(this.viewPages[0], BitmapDescriptorFactory.HUE_RED);
            onTabAnimationUpdate(true);
        }
    }
}
