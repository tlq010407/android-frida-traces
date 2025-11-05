package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.R;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.LaunchActivity;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public abstract class BottomSheetWithRecyclerListView extends BottomSheet {
    protected ActionBar actionBar;
    protected boolean actionBarIgnoreTouchEvents;
    protected AnimatedFloat actionBarSlideProgress;
    private ActionBarType actionBarType;
    private BaseFragment baseFragment;
    protected boolean clipToActionBar;
    protected int contentHeight;
    EditTextEmoji editTextEmoji;
    protected boolean handleOffset;
    private RectF handleRect;
    public final boolean hasFixedSize;
    protected int headerHeight;
    protected int headerPaddingBottom;
    protected int headerPaddingTop;
    private final Drawable headerShadowDrawable;
    protected int headerTotalHeight;
    protected LinearLayoutManager layoutManager;
    public NestedSizeNotifierLayout nestedSizeNotifierLayout;
    protected RecyclerListView recyclerListView;
    private boolean restore;
    public boolean reverseLayout;
    private int savedScrollOffset;
    private int savedScrollPosition;
    private float shadowAlpha;
    private boolean showHandle;
    boolean showShadow;
    public final boolean stackFromEnd;
    protected boolean takeTranslationIntoAccount;
    public float topPadding;
    boolean wasDrawn;

    public enum ActionBarType {
        FADING,
        SLIDING
    }

    public BottomSheetWithRecyclerListView(Context context, BaseFragment baseFragment, boolean z, boolean z2, boolean z3, Theme.ResourcesProvider resourcesProvider) {
        this(context, baseFragment, z, z2, z3, ActionBarType.FADING, resourcesProvider);
    }

    public BottomSheetWithRecyclerListView(Context context, BaseFragment baseFragment, boolean z, boolean z2, boolean z3, ActionBarType actionBarType, Theme.ResourcesProvider resourcesProvider) {
        this(context, baseFragment, z, z2, z3, false, actionBarType, resourcesProvider);
    }

    public BottomSheetWithRecyclerListView(Context context, BaseFragment baseFragment, boolean z, final boolean z2, boolean z3, final boolean z4, ActionBarType actionBarType, Theme.ResourcesProvider resourcesProvider) {
        final SizeNotifierFrameLayout sizeNotifierFrameLayout;
        super(context, z, resourcesProvider);
        this.topPadding = 0.4f;
        this.showShadow = true;
        this.shadowAlpha = 1.0f;
        this.showHandle = false;
        this.handleRect = new RectF();
        this.actionBarType = ActionBarType.FADING;
        this.headerTotalHeight = 0;
        this.headerHeight = 0;
        this.headerPaddingTop = 0;
        this.headerPaddingBottom = 0;
        this.actionBarIgnoreTouchEvents = false;
        this.takeTranslationIntoAccount = false;
        this.savedScrollPosition = -1;
        this.baseFragment = baseFragment;
        this.hasFixedSize = z2;
        this.stackFromEnd = z4;
        this.headerShadowDrawable = ContextCompat.getDrawable(context, R.drawable.header_shadow).mutate();
        if (z3) {
            NestedSizeNotifierLayout nestedSizeNotifierLayout = new NestedSizeNotifierLayout(context) { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.1
                @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
                protected void dispatchDraw(Canvas canvas) {
                    BottomSheetWithRecyclerListView.this.preDrawInternal(canvas, this);
                    super.dispatchDraw(canvas);
                    BottomSheetWithRecyclerListView.this.postDrawInternal(canvas, this);
                }

                @Override // android.view.ViewGroup, android.view.View
                public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 0 && motionEvent.getY() < ((BottomSheet) BottomSheetWithRecyclerListView.this).shadowDrawable.getBounds().top) {
                        BottomSheetWithRecyclerListView.this.lambda$new$0();
                    }
                    return super.dispatchTouchEvent(motionEvent);
                }

                @Override // android.view.ViewGroup
                protected boolean drawChild(Canvas canvas, View view, long j) {
                    if (!z2) {
                        BottomSheetWithRecyclerListView bottomSheetWithRecyclerListView = BottomSheetWithRecyclerListView.this;
                        if (bottomSheetWithRecyclerListView.clipToActionBar && view == bottomSheetWithRecyclerListView.recyclerListView) {
                            canvas.save();
                            canvas.clipRect(0, BottomSheetWithRecyclerListView.this.actionBar.getMeasuredHeight(), getMeasuredWidth(), getMeasuredHeight());
                            super.drawChild(canvas, view, j);
                            canvas.restore();
                            return true;
                        }
                    }
                    return super.drawChild(canvas, view, j);
                }

                @Override // org.telegram.ui.Components.NestedSizeNotifierLayout, android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i, int i2) {
                    BottomSheetWithRecyclerListView.this.contentHeight = View.MeasureSpec.getSize(i2);
                    BottomSheetWithRecyclerListView.this.onPreMeasure(i, i2);
                    if (z4) {
                        i2 = View.MeasureSpec.makeMeasureSpec(BottomSheetWithRecyclerListView.this.contentHeight, 1073741824);
                    }
                    super.onMeasure(i, i2);
                }
            };
            this.nestedSizeNotifierLayout = nestedSizeNotifierLayout;
            sizeNotifierFrameLayout = nestedSizeNotifierLayout;
        } else {
            sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.2
                private boolean ignoreLayout = false;

                private void onMeasureInternal(int i, int i2) {
                    int iMakeMeasureSpec;
                    int paddingTop;
                    EditTextEmoji editTextEmoji;
                    int size = View.MeasureSpec.getSize(i);
                    int size2 = View.MeasureSpec.getSize(i2);
                    setMeasuredDimension(size, size2);
                    EditTextEmoji editTextEmoji2 = BottomSheetWithRecyclerListView.this.editTextEmoji;
                    if (editTextEmoji2 != null && !editTextEmoji2.isWaitingForKeyboardOpen() && AndroidUtilities.dp(20.0f) >= 0 && !BottomSheetWithRecyclerListView.this.editTextEmoji.isPopupShowing() && !BottomSheetWithRecyclerListView.this.editTextEmoji.isAnimatePopupClosing()) {
                        this.ignoreLayout = true;
                        BottomSheetWithRecyclerListView.this.editTextEmoji.hideEmojiView();
                        this.ignoreLayout = false;
                    }
                    if (AndroidUtilities.dp(20.0f) >= 0) {
                        int emojiPadding = (((BottomSheet) BottomSheetWithRecyclerListView.this).keyboardVisible || (editTextEmoji = BottomSheetWithRecyclerListView.this.editTextEmoji) == null) ? 0 : editTextEmoji.getEmojiPadding();
                        if (!AndroidUtilities.isInMultiwindow) {
                            size2 -= emojiPadding;
                            i2 = View.MeasureSpec.makeMeasureSpec(size2, 1073741824);
                        }
                    }
                    int childCount = getChildCount();
                    for (int i3 = 0; i3 < childCount; i3++) {
                        View childAt = getChildAt(i3);
                        if (childAt != null && childAt.getVisibility() != 8) {
                            EditTextEmoji editTextEmoji3 = BottomSheetWithRecyclerListView.this.editTextEmoji;
                            if (editTextEmoji3 == null || !editTextEmoji3.isPopupView(childAt)) {
                                measureChildWithMargins(childAt, i, 0, i2, 0);
                            } else {
                                if (!AndroidUtilities.isInMultiwindow && !AndroidUtilities.isTablet()) {
                                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
                                    paddingTop = childAt.getLayoutParams().height;
                                } else if (AndroidUtilities.isTablet()) {
                                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
                                    paddingTop = Math.min(AndroidUtilities.dp(AndroidUtilities.isTablet() ? 200.0f : 320.0f), (size2 - AndroidUtilities.statusBarHeight) + getPaddingTop());
                                } else {
                                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
                                    paddingTop = (size2 - AndroidUtilities.statusBarHeight) + getPaddingTop();
                                }
                                childAt.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(paddingTop, 1073741824));
                            }
                        }
                    }
                }

                @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
                protected void dispatchDraw(Canvas canvas) {
                    BottomSheetWithRecyclerListView.this.preDrawInternal(canvas, this);
                    super.dispatchDraw(canvas);
                    BottomSheetWithRecyclerListView.this.postDrawInternal(canvas, this);
                }

                @Override // android.view.ViewGroup, android.view.View
                public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 0 && motionEvent.getY() < ((BottomSheet) BottomSheetWithRecyclerListView.this).shadowDrawable.getBounds().top) {
                        BottomSheetWithRecyclerListView.this.lambda$new$0();
                    }
                    return super.dispatchTouchEvent(motionEvent);
                }

                @Override // android.view.ViewGroup
                protected boolean drawChild(Canvas canvas, View view, long j) {
                    if (!z2) {
                        BottomSheetWithRecyclerListView bottomSheetWithRecyclerListView = BottomSheetWithRecyclerListView.this;
                        if (bottomSheetWithRecyclerListView.clipToActionBar && view == bottomSheetWithRecyclerListView.recyclerListView) {
                            canvas.save();
                            canvas.clipRect(0, BottomSheetWithRecyclerListView.this.actionBar.getMeasuredHeight(), getMeasuredWidth(), getMeasuredHeight());
                            super.drawChild(canvas, view, j);
                            canvas.restore();
                            return true;
                        }
                    }
                    return super.drawChild(canvas, view, j);
                }

                /* JADX WARN: Removed duplicated region for block: B:35:0x009c  */
                /* JADX WARN: Removed duplicated region for block: B:43:0x00b8  */
                /* JADX WARN: Removed duplicated region for block: B:46:0x00c6  */
                @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                protected void onLayout(boolean z5, int i, int i2, int i3, int i4) {
                    int paddingRight;
                    int i5;
                    int paddingLeft;
                    int i6;
                    int measuredHeight;
                    if (BottomSheetWithRecyclerListView.this.editTextEmoji == null) {
                        super.onLayout(z5, i, i2, i3, i4);
                        return;
                    }
                    int childCount = getChildCount();
                    int iMeasureKeyboardHeight = measureKeyboardHeight();
                    int paddingBottom = getPaddingBottom();
                    if (!((BottomSheet) BottomSheetWithRecyclerListView.this).keyboardVisible && BottomSheetWithRecyclerListView.this.editTextEmoji != null && iMeasureKeyboardHeight <= AndroidUtilities.dp(20.0f) && !AndroidUtilities.isInMultiwindow && !AndroidUtilities.isTablet()) {
                        paddingBottom += BottomSheetWithRecyclerListView.this.editTextEmoji.getEmojiPadding();
                    }
                    setBottomClip(paddingBottom);
                    for (int i7 = 0; i7 < childCount; i7++) {
                        View childAt = getChildAt(i7);
                        if (childAt.getVisibility() != 8) {
                            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                            int measuredWidth = childAt.getMeasuredWidth();
                            int measuredHeight2 = childAt.getMeasuredHeight();
                            int i8 = layoutParams.gravity;
                            if (i8 == -1) {
                                i8 = 51;
                            }
                            int i9 = i8 & R.styleable.AppCompatTheme_toolbarNavigationButtonStyle;
                            int i10 = i8 & 7;
                            if (i10 == 1) {
                                paddingRight = (((i3 - i) - measuredWidth) / 2) + layoutParams.leftMargin;
                                i5 = layoutParams.rightMargin;
                            } else if (i10 != 5) {
                                paddingLeft = layoutParams.leftMargin + getPaddingLeft();
                                if (i9 == 16) {
                                    if (i9 == 48) {
                                        measuredHeight = layoutParams.topMargin + getPaddingTop();
                                    } else if (i9 != 80) {
                                        measuredHeight = layoutParams.topMargin;
                                    } else {
                                        i6 = ((i4 - paddingBottom) - i2) - measuredHeight2;
                                    }
                                    if (childAt instanceof EmojiView) {
                                        measuredHeight = (AndroidUtilities.isTablet() ? getMeasuredHeight() : getMeasuredHeight() + iMeasureKeyboardHeight) - childAt.getMeasuredHeight();
                                    }
                                    childAt.layout(paddingLeft, measuredHeight, measuredWidth + paddingLeft, measuredHeight2 + measuredHeight);
                                } else {
                                    i6 = ((((i4 - paddingBottom) - i2) - measuredHeight2) / 2) + layoutParams.topMargin;
                                }
                                measuredHeight = i6 - layoutParams.bottomMargin;
                                if (childAt instanceof EmojiView) {
                                }
                                childAt.layout(paddingLeft, measuredHeight, measuredWidth + paddingLeft, measuredHeight2 + measuredHeight);
                            } else {
                                paddingRight = (((i3 - i) - measuredWidth) - layoutParams.rightMargin) - getPaddingRight();
                                i5 = ((BottomSheet) BottomSheetWithRecyclerListView.this).backgroundPaddingLeft;
                            }
                            paddingLeft = paddingRight - i5;
                            if (i9 == 16) {
                            }
                            measuredHeight = i6 - layoutParams.bottomMargin;
                            if (childAt instanceof EmojiView) {
                            }
                            childAt.layout(paddingLeft, measuredHeight, measuredWidth + paddingLeft, measuredHeight2 + measuredHeight);
                        }
                    }
                    notifyHeightChanged();
                }

                @Override // android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i, int i2) {
                    BottomSheetWithRecyclerListView.this.contentHeight = View.MeasureSpec.getSize(i2);
                    BottomSheetWithRecyclerListView.this.onPreMeasure(i, i2);
                    if (z4) {
                        i2 = View.MeasureSpec.makeMeasureSpec(BottomSheetWithRecyclerListView.this.contentHeight, 1073741824);
                    }
                    if (BottomSheetWithRecyclerListView.this.editTextEmoji != null) {
                        onMeasureInternal(i, i2);
                    } else {
                        super.onMeasure(i, i2);
                    }
                }
            };
        }
        this.recyclerListView = new RecyclerListView(context, resourcesProvider) { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.3
            @Override // org.telegram.ui.Components.RecyclerListView
            protected boolean canHighlightChildAt(View view, float f, float f2) {
                return BottomSheetWithRecyclerListView.this.canHighlightChildAt(view, f, f2);
            }

            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z5, int i, int i2, int i3, int i4) {
                BottomSheetWithRecyclerListView.this.applyScrolledPosition();
                super.onLayout(z5, i, i2, i3, i4);
            }
        };
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
        this.layoutManager = linearLayoutManager;
        if (z4) {
            linearLayoutManager.setStackFromEnd(true);
        }
        this.recyclerListView.setLayoutManager(this.layoutManager);
        NestedSizeNotifierLayout nestedSizeNotifierLayout2 = this.nestedSizeNotifierLayout;
        if (nestedSizeNotifierLayout2 != null) {
            nestedSizeNotifierLayout2.setBottomSheetContainerView(getContainer());
            this.nestedSizeNotifierLayout.setTargetListView(this.recyclerListView);
        }
        if (z2) {
            this.recyclerListView.setHasFixedSize(true);
            RecyclerListView recyclerListView = this.recyclerListView;
            recyclerListView.setAdapter(createAdapter(recyclerListView));
            setCustomView(sizeNotifierFrameLayout);
            sizeNotifierFrameLayout.addView(this.recyclerListView, LayoutHelper.createFrame(-1, -2.0f));
        } else {
            resetAdapter(context);
            this.containerView = sizeNotifierFrameLayout;
            ActionBar actionBar = new ActionBar(context) { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.4
                @Override // android.view.ViewGroup, android.view.View
                public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                    if (BottomSheetWithRecyclerListView.this.actionBarIgnoreTouchEvents) {
                        return false;
                    }
                    return super.dispatchTouchEvent(motionEvent);
                }

                @Override // android.view.View
                public void setAlpha(float f) {
                    if (getAlpha() != f) {
                        super.setAlpha(f);
                        sizeNotifierFrameLayout.invalidate();
                    }
                }

                @Override // android.view.View
                public void setTag(Object obj) {
                    super.setTag(obj);
                    BottomSheetWithRecyclerListView.this.updateStatusBar();
                }
            };
            this.actionBar = actionBar;
            actionBar.setBackgroundColor(getThemedColor(Theme.key_dialogBackground));
            this.actionBar.setTitleColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
            this.actionBar.setItemsBackgroundColor(getThemedColor(Theme.key_actionBarActionModeDefaultSelector), false);
            this.actionBar.setBackButtonImage(R.drawable.ic_ab_back);
            this.actionBar.setItemsColor(getThemedColor(Theme.key_actionBarActionModeDefaultIcon), false);
            this.actionBar.setCastShadows(true);
            this.actionBar.setTitle(getTitle());
            this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.5
                @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
                public void onItemClick(int i) {
                    if (i == -1) {
                        BottomSheetWithRecyclerListView.this.lambda$new$0();
                    }
                }
            });
            sizeNotifierFrameLayout.addView(this.recyclerListView);
            sizeNotifierFrameLayout.addView(this.actionBar, LayoutHelper.createFrame(-1, -2.0f, 0, 6.0f, BitmapDescriptorFactory.HUE_RED, 6.0f, BitmapDescriptorFactory.HUE_RED));
            this.recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.6
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                    super.onScrolled(recyclerView, i, i2);
                    sizeNotifierFrameLayout.invalidate();
                }
            });
        }
        if (actionBarType == ActionBarType.SLIDING) {
            setSlidingActionBar();
        }
        onViewCreated(sizeNotifierFrameLayout);
        updateStatusBar();
    }

    public BottomSheetWithRecyclerListView(BaseFragment baseFragment, boolean z, boolean z2) {
        this(baseFragment, z, z2, false, baseFragment == null ? null : baseFragment.getResourceProvider());
    }

    public BottomSheetWithRecyclerListView(BaseFragment baseFragment, boolean z, boolean z2, boolean z3, Theme.ResourcesProvider resourcesProvider) {
        this(baseFragment.getParentActivity(), baseFragment, z, z2, z3, resourcesProvider);
    }

    private boolean isLightStatusBar() {
        return ColorUtils.calculateLuminance(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider)) > 0.699999988079071d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStatusBar() {
        Window window;
        boolean zIsLightStatusBar;
        if (this.attachedFragment != null) {
            LaunchActivity.instance.checkSystemBarColors(true, true, true, false);
            return;
        }
        ActionBar actionBar = this.actionBar;
        if (actionBar != null && actionBar.getTag() != null) {
            window = getWindow();
            zIsLightStatusBar = isLightStatusBar();
        } else {
            if (this.baseFragment == null) {
                return;
            }
            window = getWindow();
            zIsLightStatusBar = this.baseFragment.isLightStatusBar();
        }
        AndroidUtilities.setLightStatusBar(window, zIsLightStatusBar);
    }

    public void applyScrolledPosition() {
        applyScrolledPosition(false);
    }

    public void applyScrolledPosition(boolean z) {
        RecyclerListView recyclerListView = this.recyclerListView;
        if (recyclerListView == null || recyclerListView.getLayoutManager() == null || this.savedScrollPosition < 0) {
            return;
        }
        int top = (this.savedScrollOffset - this.containerView.getTop()) - this.recyclerListView.getPaddingTop();
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = this.recyclerListView.findViewHolderForAdapterPosition(0);
        if (z && viewHolderFindViewHolderForAdapterPosition != null) {
            top -= Math.max(viewHolderFindViewHolderForAdapterPosition.itemView.getBottom() - this.recyclerListView.getPaddingTop(), 0);
        }
        if (this.recyclerListView.getLayoutManager() instanceof LinearLayoutManager) {
            ((LinearLayoutManager) this.recyclerListView.getLayoutManager()).scrollToPositionWithOffset(this.savedScrollPosition, top);
        }
        this.savedScrollPosition = -1;
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    protected boolean canHighlightChildAt(View view, float f, float f2) {
        return true;
    }

    protected abstract RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView);

    protected int getActionBarProgressHeight() {
        return AndroidUtilities.dp(56.0f);
    }

    public BaseFragment getBaseFragment() {
        return this.baseFragment;
    }

    protected abstract CharSequence getTitle();

    @Override // org.telegram.ui.ActionBar.BottomSheet, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public boolean isAttachedLightStatusBar() {
        BaseFragment baseFragment;
        ActionBar actionBar = this.actionBar;
        if ((actionBar == null || actionBar.getTag() == null) && (baseFragment = this.baseFragment) != null) {
            return baseFragment.isLightStatusBar();
        }
        return isLightStatusBar();
    }

    protected boolean needPaddingShadow() {
        return true;
    }

    public void notifyDataSetChanged() {
        this.recyclerListView.getAdapter().notifyDataSetChanged();
    }

    protected void onPreDraw(Canvas canvas, int i, float f) {
    }

    protected void onPreMeasure(int i, int i2) {
    }

    public void onViewCreated(FrameLayout frameLayout) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void postDrawInternal(Canvas canvas, View view) {
        ActionBar actionBar;
        ActionBarType actionBarType = this.actionBarType;
        if (actionBarType == ActionBarType.FADING) {
            boolean z = this.showShadow;
            if (z) {
                float f = this.shadowAlpha;
                if (f != 1.0f) {
                    this.shadowAlpha = f + 0.10666667f;
                } else {
                    if (!z) {
                        float f2 = this.shadowAlpha;
                        if (f2 != BitmapDescriptorFactory.HUE_RED) {
                            this.shadowAlpha = f2 - 0.10666667f;
                        }
                    }
                    this.shadowAlpha = Utilities.clamp(this.shadowAlpha, 1.0f, BitmapDescriptorFactory.HUE_RED);
                    actionBar = this.actionBar;
                    if (actionBar != null && actionBar.getVisibility() == 0 && this.actionBar.getAlpha() != BitmapDescriptorFactory.HUE_RED && this.shadowAlpha != BitmapDescriptorFactory.HUE_RED) {
                        this.headerShadowDrawable.setBounds(this.backgroundPaddingLeft, this.actionBar.getBottom(), view.getMeasuredWidth() - this.backgroundPaddingLeft, this.actionBar.getBottom() + this.headerShadowDrawable.getIntrinsicHeight());
                        this.headerShadowDrawable.setAlpha((int) (this.actionBar.getAlpha() * 255.0f * this.shadowAlpha));
                        this.headerShadowDrawable.draw(canvas);
                        if (this.headerShadowDrawable.getAlpha() < 255) {
                            view.invalidate();
                        }
                    }
                    this.wasDrawn = true;
                }
                view.invalidate();
                this.shadowAlpha = Utilities.clamp(this.shadowAlpha, 1.0f, BitmapDescriptorFactory.HUE_RED);
                actionBar = this.actionBar;
                if (actionBar != null) {
                    this.headerShadowDrawable.setBounds(this.backgroundPaddingLeft, this.actionBar.getBottom(), view.getMeasuredWidth() - this.backgroundPaddingLeft, this.actionBar.getBottom() + this.headerShadowDrawable.getIntrinsicHeight());
                    this.headerShadowDrawable.setAlpha((int) (this.actionBar.getAlpha() * 255.0f * this.shadowAlpha));
                    this.headerShadowDrawable.draw(canvas);
                    if (this.headerShadowDrawable.getAlpha() < 255) {
                    }
                }
                this.wasDrawn = true;
            }
        } else if (actionBarType == ActionBarType.SLIDING && ((int) (this.shadowAlpha * 255.0f)) != 0) {
            this.headerShadowDrawable.setBounds(this.backgroundPaddingLeft, this.actionBar.getBottom() + ((int) this.actionBar.getTranslationY()), view.getMeasuredWidth() - this.backgroundPaddingLeft, this.actionBar.getBottom() + ((int) this.actionBar.getTranslationY()) + this.headerShadowDrawable.getIntrinsicHeight());
            this.headerShadowDrawable.setAlpha((int) (this.shadowAlpha * 255.0f));
            this.headerShadowDrawable.draw(canvas);
        }
        if (this.restore) {
            canvas.restore();
            this.restore = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007b A[PHI: r4
      0x007b: PHI (r4v2 int) = (r4v1 int), (r4v5 int) binds: [B:21:0x0061, B:23:0x0070] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void preDrawInternal(Canvas canvas, View view) {
        int translationY;
        float fDp;
        ActionBar actionBar;
        Integer num;
        this.restore = false;
        if (this.hasFixedSize) {
            return;
        }
        if (this.reverseLayout) {
            int height = this.recyclerListView.getHeight();
            for (int i = 0; i < this.recyclerListView.getChildCount(); i++) {
                View childAt = this.recyclerListView.getChildAt(i);
                int childAdapterPosition = this.recyclerListView.getChildAdapterPosition(childAt);
                if (childAdapterPosition != -1 && childAdapterPosition != this.recyclerListView.getAdapter().getItemCount() - 1) {
                    height = Math.min(height, childAt.getTop() + (this.takeTranslationIntoAccount ? (int) childAt.getTranslationY() : 0));
                }
            }
            translationY = height - AndroidUtilities.dp(16.0f);
        } else {
            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = this.recyclerListView.findViewHolderForAdapterPosition(0);
            int bottom = -AndroidUtilities.dp(16.0f);
            if (viewHolderFindViewHolderForAdapterPosition != null) {
                bottom = viewHolderFindViewHolderForAdapterPosition.itemView.getBottom() - AndroidUtilities.dp(16.0f);
                translationY = this.takeTranslationIntoAccount ? ((int) viewHolderFindViewHolderForAdapterPosition.itemView.getTranslationY()) + bottom : bottom;
            }
        }
        int iLerp = translationY - ((this.headerHeight + this.headerPaddingTop) + this.headerPaddingBottom);
        if (this.showHandle && this.handleOffset) {
            iLerp -= AndroidUtilities.dp(this.actionBarType == ActionBarType.SLIDING ? 8.0f : 16.0f);
        }
        ActionBarType actionBarType = this.actionBarType;
        float fLerp = 1.0f;
        if (actionBarType == ActionBarType.FADING) {
            fDp = 1.0f - ((AndroidUtilities.dp(16.0f) + iLerp) / getActionBarProgressHeight());
            if (fDp < BitmapDescriptorFactory.HUE_RED) {
                fDp = BitmapDescriptorFactory.HUE_RED;
            }
            AndroidUtilities.updateViewVisibilityAnimated(this.actionBar, fDp != BitmapDescriptorFactory.HUE_RED, 1.0f, this.wasDrawn);
        } else if (actionBarType == ActionBarType.SLIDING) {
            float fMax = Math.max(((AndroidUtilities.dp(8.0f) + iLerp) + this.headerPaddingTop) - AndroidUtilities.statusBarHeight, BitmapDescriptorFactory.HUE_RED);
            float f = this.actionBarSlideProgress.set(fMax == BitmapDescriptorFactory.HUE_RED ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            if (f != BitmapDescriptorFactory.HUE_RED && f != 1.0f) {
                canvas.save();
                canvas.clipRect(BitmapDescriptorFactory.HUE_RED, fMax, this.containerView.getMeasuredWidth(), this.containerView.getMeasuredHeight());
                this.restore = true;
            }
            this.shadowAlpha = f;
            fLerp = AndroidUtilities.lerp(1.0f, 0.5f, f);
            this.actionBar.backButtonImageView.setAlpha(f);
            this.actionBar.backButtonImageView.setScaleX(f);
            this.actionBar.backButtonImageView.setPivotY(r6.getMeasuredHeight() / 2.0f);
            this.actionBar.backButtonImageView.setScaleY(f);
            this.actionBar.getTitleTextView().setTranslationX(AndroidUtilities.lerp(AndroidUtilities.dp(21.0f) - r6.getLeft(), BitmapDescriptorFactory.HUE_RED, f));
            this.actionBar.setTranslationY(fMax);
            iLerp -= AndroidUtilities.lerp(0, (((this.headerTotalHeight - this.headerHeight) - this.headerPaddingTop) - this.headerPaddingBottom) + AndroidUtilities.dp(13.0f), f);
            this.actionBar.getBackground().setBounds(0, AndroidUtilities.lerp(this.actionBar.getHeight(), 0, f), this.actionBar.getWidth(), this.actionBar.getHeight());
            if (f > 0.5f) {
                if (this.actionBarIgnoreTouchEvents) {
                    this.actionBarIgnoreTouchEvents = false;
                    actionBar = this.actionBar;
                    num = 1;
                    actionBar.setTag(num);
                }
                fDp = f;
            } else {
                if (!this.actionBarIgnoreTouchEvents) {
                    this.actionBarIgnoreTouchEvents = true;
                    actionBar = this.actionBar;
                    num = null;
                    actionBar.setTag(num);
                }
                fDp = f;
            }
        } else {
            fDp = BitmapDescriptorFactory.HUE_RED;
        }
        if (shouldDrawBackground()) {
            if (needPaddingShadow()) {
                this.shadowDrawable.setBounds(0, iLerp, view.getMeasuredWidth(), view.getMeasuredHeight());
            } else {
                this.shadowDrawable.setBounds(-AndroidUtilities.dp(6.0f), iLerp, view.getMeasuredWidth() + AndroidUtilities.dp(6.0f), view.getMeasuredHeight());
            }
            this.shadowDrawable.draw(canvas);
            if (this.showHandle && fLerp > BitmapDescriptorFactory.HUE_RED) {
                int iDp = AndroidUtilities.dp(36.0f);
                this.handleRect.set((view.getMeasuredWidth() - iDp) / 2.0f, AndroidUtilities.dp(20.0f) + iLerp, (view.getMeasuredWidth() + iDp) / 2.0f, r3 + AndroidUtilities.dp(4.0f));
                Theme.dialogs_onlineCirclePaint.setColor(getThemedColor(Theme.key_sheet_scrollUp));
                Theme.dialogs_onlineCirclePaint.setAlpha((int) (r14.getAlpha() * fLerp));
                canvas.drawRoundRect(this.handleRect, AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), Theme.dialogs_onlineCirclePaint);
            }
        }
        onPreDraw(canvas, iLerp, fDp);
    }

    protected void resetAdapter(final Context context) {
        final RecyclerListView.SelectionAdapter selectionAdapterCreateAdapter = createAdapter(this.recyclerListView);
        this.recyclerListView.setAdapter(new RecyclerListView.SelectionAdapter() { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.7
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return selectionAdapterCreateAdapter.getItemCount() + 1;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                if (i == (BottomSheetWithRecyclerListView.this.reverseLayout ? getItemCount() - 1 : 0)) {
                    return -1000;
                }
                return selectionAdapterCreateAdapter.getItemViewType(i - (!BottomSheetWithRecyclerListView.this.reverseLayout ? 1 : 0));
            }

            @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return selectionAdapterCreateAdapter.isEnabled(viewHolder);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                if (i != (BottomSheetWithRecyclerListView.this.reverseLayout ? getItemCount() - 1 : 0)) {
                    selectionAdapterCreateAdapter.onBindViewHolder(viewHolder, i - (!BottomSheetWithRecyclerListView.this.reverseLayout ? 1 : 0));
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                return i == -1000 ? new RecyclerListView.Holder(new View(context) { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.7.1
                    @Override // android.view.View
                    protected void onMeasure(int i2, int i3) {
                        BottomSheetWithRecyclerListView bottomSheetWithRecyclerListView = BottomSheetWithRecyclerListView.this;
                        int i4 = bottomSheetWithRecyclerListView.contentHeight;
                        int iDp = i4 == 0 ? AndroidUtilities.dp(300.0f) : (int) (i4 * bottomSheetWithRecyclerListView.topPadding);
                        BottomSheetWithRecyclerListView bottomSheetWithRecyclerListView2 = BottomSheetWithRecyclerListView.this;
                        int i5 = iDp - (((bottomSheetWithRecyclerListView2.headerTotalHeight - bottomSheetWithRecyclerListView2.headerHeight) - bottomSheetWithRecyclerListView2.headerPaddingTop) - bottomSheetWithRecyclerListView2.headerPaddingBottom);
                        if (i5 < 1) {
                            i5 = 1;
                        }
                        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(i5, 1073741824));
                    }

                    @Override // android.view.View
                    public void setTranslationY(float f) {
                        super.setTranslationY(f);
                        ((BottomSheet) BottomSheetWithRecyclerListView.this).containerView.invalidate();
                    }
                }) : selectionAdapterCreateAdapter.onCreateViewHolder(viewGroup, i);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void registerAdapterDataObserver(final RecyclerView.AdapterDataObserver adapterDataObserver) {
                selectionAdapterCreateAdapter.registerAdapterDataObserver(new RecyclerView.AdapterDataObserver() { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.7.2
                    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                    public void onChanged() {
                        adapterDataObserver.onChanged();
                    }

                    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                    public void onItemRangeChanged(int i, int i2) {
                        adapterDataObserver.onItemRangeChanged(i + (!BottomSheetWithRecyclerListView.this.reverseLayout ? 1 : 0), i2);
                    }

                    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                    public void onItemRangeChanged(int i, int i2, Object obj) {
                        adapterDataObserver.onItemRangeChanged(i + (!BottomSheetWithRecyclerListView.this.reverseLayout ? 1 : 0), i2, obj);
                    }

                    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                    public void onItemRangeInserted(int i, int i2) {
                        adapterDataObserver.onItemRangeInserted(i + (!BottomSheetWithRecyclerListView.this.reverseLayout ? 1 : 0), i2);
                    }

                    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                    public void onItemRangeMoved(int i, int i2, int i3) {
                        RecyclerView.AdapterDataObserver adapterDataObserver2 = adapterDataObserver;
                        int i4 = !BottomSheetWithRecyclerListView.this.reverseLayout ? 1 : 0;
                        adapterDataObserver2.onItemRangeMoved(i + i4, i2 + i4, i3);
                    }

                    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                    public void onItemRangeRemoved(int i, int i2) {
                        adapterDataObserver.onItemRangeRemoved(i + (!BottomSheetWithRecyclerListView.this.reverseLayout ? 1 : 0), i2);
                    }
                });
            }
        });
    }

    public void saveScrollPosition() {
        RecyclerListView recyclerListView = this.recyclerListView;
        if (recyclerListView == null || this.layoutManager == null || recyclerListView.getChildCount() <= 0) {
            return;
        }
        View view = null;
        int i = -1;
        int top = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < this.recyclerListView.getChildCount(); i2++) {
            View childAt = this.recyclerListView.getChildAt(i2);
            int childAdapterPosition = this.recyclerListView.getChildAdapterPosition(childAt);
            if (childAdapterPosition > 0 && childAt.getTop() < top) {
                top = childAt.getTop();
                view = childAt;
                i = childAdapterPosition;
            }
        }
        if (view != null) {
            this.savedScrollPosition = i;
            this.savedScrollOffset = view.getTop() + this.containerView.getTop();
            smoothContainerViewLayout();
        }
    }

    public void setEditTextEmoji(EditTextEmoji editTextEmoji) {
        this.editTextEmoji = editTextEmoji;
    }

    public void setShowHandle(boolean z) {
        this.showHandle = z;
    }

    public void setShowShadow(boolean z) {
        this.showShadow = z;
        this.nestedSizeNotifierLayout.invalidate();
    }

    public void setSlidingActionBar() {
        if (this.hasFixedSize) {
            return;
        }
        this.actionBarType = ActionBarType.SLIDING;
        int currentActionBarHeight = ActionBar.getCurrentActionBarHeight();
        this.headerHeight = currentActionBarHeight;
        this.headerTotalHeight = currentActionBarHeight + AndroidUtilities.statusBarHeight;
        this.headerPaddingTop = AndroidUtilities.dp(16.0f);
        this.headerPaddingBottom = AndroidUtilities.dp(-20.0f);
        this.actionBarSlideProgress = new AnimatedFloat(this.containerView, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.actionBar.backButtonImageView.setPivotX(BitmapDescriptorFactory.HUE_RED);
        this.recyclerListView.setClipToPadding(true);
    }

    protected boolean shouldDrawBackground() {
        return true;
    }

    public void updateTitle() {
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.setTitle(getTitle());
        }
    }

    public void updateTitleAnimated() {
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.setTitleAnimated(getTitle(), false, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        }
    }
}
