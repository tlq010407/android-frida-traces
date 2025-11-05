package org.telegram.ui.ActionBar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.Property;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.Window;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.R;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheetTabs;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Components.BackButtonMenu;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.ChatAttachAlert;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.FloatingDebug.FloatingDebugProvider;
import org.telegram.ui.Components.GroupCallPip;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.EmptyBaseFragment;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.Stories.StoryViewer;
import org.telegram.ui.bots.BotWebViewSheet;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class ActionBarLayout extends FrameLayout implements INavigationLayout, FloatingDebugProvider {
    private static Drawable headerShadowDrawable;
    private static Drawable layerShadowDrawable;
    private static Paint scrimPaint;
    private AccelerateDecelerateInterpolator accelerateDecelerateInterpolator;
    private ArrayList animateEndColors;
    private int animateSetThemeAccentIdAfterAnimation;
    private Theme.ThemeInfo animateSetThemeAfterAnimation;
    private boolean animateSetThemeAfterAnimationApply;
    private boolean animateSetThemeNightAfterAnimation;
    private ArrayList animateStartColors;
    private boolean animateThemeAfterAnimation;
    protected boolean animationInProgress;
    private float animationProgress;
    public INavigationLayout.ThemeAnimationSettings.onAnimationProgress animationProgressListener;
    private Runnable animationRunnable;
    private boolean attached;
    private View backgroundView;
    private boolean beginTrackingSent;
    private BottomSheetTabs bottomSheetTabs;
    private BottomSheetTabs.ClipTools bottomSheetTabsClip;
    public LayoutContainer containerView;
    public LayoutContainer containerViewBack;
    private ActionBar currentActionBar;
    private AnimatorSet currentAnimation;
    Runnable debugBlackScreenRunnable;
    private DecelerateInterpolator decelerateInterpolator;
    private boolean delayedAnimationResumed;
    private Runnable delayedOpenAnimationRunnable;
    private INavigationLayout.INavigationLayoutDelegate delegate;
    private DrawerLayoutContainer drawerLayoutContainer;
    private List fragmentsStack;
    public boolean highlightActionButtons;
    private boolean inActionMode;
    private boolean inBubbleMode;
    private boolean inPreviewMode;
    public float innerTranslationX;
    public boolean isKeyboardVisible;
    private boolean isSheet;
    ArrayList lastActions;
    private long lastFrameTime;
    private View layoutToIgnore;
    private final boolean main;
    private boolean maybeStartTracking;
    private int[] measureSpec;
    public Theme.MessageDrawable messageDrawableOutMediaStart;
    public Theme.MessageDrawable messageDrawableOutStart;
    private BaseFragment newFragment;
    AnimationNotificationsLocker notificationsLocker;
    private BaseFragment oldFragment;
    private Runnable onCloseAnimationEndRunnable;
    private Runnable onFragmentStackChangedListener;
    private Runnable onOpenAnimationEndRunnable;
    private Runnable overlayAction;
    private int overrideWidthOffset;
    private OvershootInterpolator overshootInterpolator;
    protected Activity parentActivity;
    private ArrayList presentingFragmentDescriptions;
    private ColorDrawable previewBackgroundDrawable;
    private ActionBarPopupWindow.ActionBarPopupWindowLayout previewMenu;
    private boolean previewOpenAnimationInProgress;
    private List pulledDialogs;
    private boolean rebuildAfterAnimation;
    private boolean rebuildLastAfterAnimation;
    private Rect rect;
    private boolean removeActionBarExtraHeight;
    private int savedBottomSheetTabsTop;
    public LayoutContainer sheetContainer;
    private EmptyBaseFragment sheetFragment;
    private boolean showLastAfterAnimation;
    INavigationLayout.StartColorsProvider startColorsProvider;
    protected boolean startedTracking;
    private int startedTrackingPointerId;
    private int startedTrackingX;
    private int startedTrackingY;
    private boolean tabsEvents;
    private float themeAnimationValue;
    private ArrayList themeAnimatorDelegate;
    private ArrayList themeAnimatorDescriptions;
    private AnimatorSet themeAnimatorSet;
    private String titleOverlayText;
    private int titleOverlayTextId;
    private boolean transitionAnimationInProgress;
    private boolean transitionAnimationPreviewMode;
    private long transitionAnimationStartTime;
    private boolean useAlphaAnimations;
    private VelocityTracker velocityTracker;
    private Runnable waitingForKeyboardCloseRunnable;
    private Window window;
    private boolean withShadow;

    public class LayoutContainer extends FrameLayout {
        private int backgroundColor;
        private Paint backgroundPaint;
        private int fragmentPanTranslationOffset;
        private boolean isKeyboardVisible;
        private Rect rect;
        private boolean wasPortrait;

        public LayoutContainer(Context context) {
            super(context);
            this.rect = new Rect();
            this.backgroundPaint = new Paint();
            setWillNotDraw(false);
        }

        /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
        @Override // android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                if (motionEvent.getY() > getHeight() - (this.isKeyboardVisible ? 0 : ActionBarLayout.this.getBottomTabsHeight(true))) {
                    return false;
                }
            }
            boolean z = ActionBarLayout.this.inPreviewMode && ActionBarLayout.this.previewMenu == null;
            if ((!z && !ActionBarLayout.this.transitionAnimationPreviewMode) || (motionEvent.getActionMasked() != 0 && motionEvent.getActionMasked() != 5)) {
                if (z) {
                    try {
                        if (this != ActionBarLayout.this.containerView) {
                            if (!super.dispatchTouchEvent(motionEvent)) {
                                return true;
                            }
                        }
                    } catch (Throwable th) {
                        FileLog.e(th);
                    }
                } else if (!super.dispatchTouchEvent(motionEvent)) {
                }
                return false;
            }
            return false;
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            int measuredHeight;
            int y;
            BaseFragment baseFragment = !ActionBarLayout.this.fragmentsStack.isEmpty() ? (BaseFragment) ActionBarLayout.this.fragmentsStack.get(ActionBarLayout.this.fragmentsStack.size() - 1) : null;
            if (ActionBarLayout.this.sheetFragment != null && ActionBarLayout.this.sheetFragment.sheetsStack != null && !ActionBarLayout.this.sheetFragment.sheetsStack.isEmpty()) {
                baseFragment = ActionBarLayout.this.sheetFragment;
            }
            BaseFragment.AttachedSheet lastSheet = baseFragment != null ? baseFragment.getLastSheet() : null;
            if (lastSheet != null && lastSheet.isFullyVisible() && lastSheet.mo1096getWindowView() != view) {
                return true;
            }
            if (view instanceof ActionBar) {
                return super.drawChild(canvas, view, j);
            }
            int childCount = getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    break;
                }
                View childAt = getChildAt(i);
                if (childAt == view || !(childAt instanceof ActionBar) || childAt.getVisibility() != 0) {
                    i++;
                } else if (((ActionBar) childAt).getCastShadows()) {
                    measuredHeight = childAt.getMeasuredHeight();
                    y = (int) childAt.getY();
                }
            }
            measuredHeight = 0;
            y = 0;
            boolean zDrawChild = super.drawChild(canvas, view, j);
            if (measuredHeight != 0 && ActionBarLayout.headerShadowDrawable != null) {
                int i2 = y + measuredHeight;
                ActionBarLayout.headerShadowDrawable.setBounds(0, i2, getMeasuredWidth(), ActionBarLayout.headerShadowDrawable.getIntrinsicHeight() + i2);
                ActionBarLayout.headerShadowDrawable.draw(canvas);
            }
            return zDrawChild;
        }

        @Override // android.view.View
        public boolean hasOverlappingRendering() {
            return Build.VERSION.SDK_INT >= 28;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.fragmentPanTranslationOffset != 0) {
                int i = Theme.key_windowBackgroundWhite;
                if (this.backgroundColor != Theme.getColor(i)) {
                    Paint paint = this.backgroundPaint;
                    int color = Theme.getColor(i);
                    this.backgroundColor = color;
                    paint.setColor(color);
                }
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, (getMeasuredHeight() - this.fragmentPanTranslationOffset) - 3, getMeasuredWidth(), getMeasuredHeight(), this.backgroundPaint);
            }
            super.onDraw(canvas);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int measuredHeight;
            int i5;
            int i6;
            int measuredWidth;
            int i7;
            int childCount = getChildCount();
            int i8 = 0;
            while (true) {
                if (i8 >= childCount) {
                    measuredHeight = 0;
                    break;
                }
                View childAt = getChildAt(i8);
                if (childAt instanceof ActionBar) {
                    measuredHeight = childAt.getMeasuredHeight();
                    childAt.layout(0, 0, childAt.getMeasuredWidth(), measuredHeight);
                    break;
                }
                i8++;
            }
            for (int i9 = 0; i9 < childCount; i9++) {
                View childAt2 = getChildAt(i9);
                if (!(childAt2 instanceof ActionBar)) {
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt2.getLayoutParams();
                    if (childAt2.getFitsSystemWindows() || (childAt2 instanceof BaseFragment.AttachedSheetWindow)) {
                        i5 = layoutParams.leftMargin;
                        i6 = layoutParams.topMargin;
                        measuredWidth = childAt2.getMeasuredWidth() + i5;
                        i7 = layoutParams.topMargin;
                    } else {
                        i5 = layoutParams.leftMargin;
                        i6 = layoutParams.topMargin + measuredHeight;
                        measuredWidth = childAt2.getMeasuredWidth() + i5;
                        i7 = layoutParams.topMargin + measuredHeight;
                    }
                    childAt2.layout(i5, i6, measuredWidth, i7 + childAt2.getMeasuredHeight());
                }
            }
            View rootView = getRootView();
            getWindowVisibleDisplayFrame(this.rect);
            int height = (rootView.getHeight() - (this.rect.top != 0 ? AndroidUtilities.statusBarHeight : 0)) - AndroidUtilities.getViewInset(rootView);
            Rect rect = this.rect;
            this.isKeyboardVisible = height - (rect.bottom - rect.top) > 0;
            if (ActionBarLayout.this.waitingForKeyboardCloseRunnable != null) {
                ActionBarLayout actionBarLayout = ActionBarLayout.this;
                if (actionBarLayout.containerView.isKeyboardVisible || actionBarLayout.containerViewBack.isKeyboardVisible) {
                    return;
                }
                AndroidUtilities.cancelRunOnUIThread(actionBarLayout.waitingForKeyboardCloseRunnable);
                ActionBarLayout.this.waitingForKeyboardCloseRunnable.run();
                ActionBarLayout.this.waitingForKeyboardCloseRunnable = null;
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int measuredHeight;
            int i3;
            LayoutContainer layoutContainer;
            int i4;
            int i5;
            int i6;
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            boolean z = size2 > size;
            if (this.wasPortrait != z && ActionBarLayout.this.isInPreviewMode()) {
                ActionBarLayout.this.finishPreviewFragment();
            }
            this.wasPortrait = z;
            int childCount = getChildCount();
            View rootView = getRootView();
            getWindowVisibleDisplayFrame(this.rect);
            int height = (rootView.getHeight() - (this.rect.top != 0 ? AndroidUtilities.statusBarHeight : 0)) - AndroidUtilities.getViewInset(rootView);
            Rect rect = this.rect;
            boolean z2 = height - (rect.bottom - rect.top) > 0;
            if (ActionBarLayout.this.bottomSheetTabs != null) {
                ActionBarLayout.this.bottomSheetTabs.updateCurrentAccount();
            }
            int bottomTabsHeight = z2 ? 0 : ActionBarLayout.this.getBottomTabsHeight(false);
            int i7 = 0;
            while (true) {
                if (i7 >= childCount) {
                    measuredHeight = 0;
                    break;
                }
                View childAt = getChildAt(i7);
                if (childAt instanceof ActionBar) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                    measuredHeight = childAt.getMeasuredHeight();
                    break;
                }
                i7++;
            }
            for (int i8 = 0; i8 < childCount; i8++) {
                View childAt2 = getChildAt(i8);
                if (!(childAt2 instanceof ActionBar)) {
                    if (childAt2.getFitsSystemWindows() || (childAt2 instanceof BaseFragment.AttachedSheetWindow)) {
                        i3 = 0;
                        layoutContainer = this;
                        i4 = i;
                        i5 = i2;
                        i6 = bottomTabsHeight;
                    } else {
                        i6 = measuredHeight + bottomTabsHeight;
                        i3 = 0;
                        layoutContainer = this;
                        i4 = i;
                        i5 = i2;
                    }
                    layoutContainer.measureChildWithMargins(childAt2, i4, i3, i5, i6);
                }
            }
            setMeasuredDimension(size, size2);
        }

        public void setFragmentPanTranslationOffset(int i) {
            this.fragmentPanTranslationOffset = i;
            invalidate();
        }
    }

    public ActionBarLayout(Context context, boolean z) {
        super(context);
        this.highlightActionButtons = false;
        this.decelerateInterpolator = new DecelerateInterpolator(1.5f);
        this.overshootInterpolator = new OvershootInterpolator(1.02f);
        this.accelerateDecelerateInterpolator = new AccelerateDecelerateInterpolator();
        this.animateStartColors = new ArrayList();
        this.animateEndColors = new ArrayList();
        this.startColorsProvider = new INavigationLayout.StartColorsProvider();
        this.themeAnimatorDescriptions = new ArrayList();
        this.themeAnimatorDelegate = new ArrayList();
        this.notificationsLocker = new AnimationNotificationsLocker();
        this.rect = new Rect();
        this.overrideWidthOffset = -1;
        this.measureSpec = new int[2];
        this.lastActions = new ArrayList();
        this.debugBlackScreenRunnable = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$9();
            }
        };
        this.parentActivity = (Activity) context;
        this.main = z;
        if (layerShadowDrawable == null) {
            layerShadowDrawable = getResources().getDrawable(R.drawable.layer_shadow);
            headerShadowDrawable = getResources().getDrawable(R.drawable.header_shadow).mutate();
            scrimPaint = new Paint();
        }
    }

    static /* synthetic */ float access$1316(ActionBarLayout actionBarLayout, float f) {
        float f2 = actionBarLayout.animationProgress + f;
        actionBarLayout.animationProgress = f2;
        return f2;
    }

    private void addEndDescriptions(ArrayList arrayList) {
        if (arrayList == null) {
            return;
        }
        int[] iArr = new int[arrayList.size()];
        this.animateEndColors.add(iArr);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            iArr[i] = ((ThemeDescription) arrayList.get(i)).getSetColor();
        }
    }

    private void addStartDescriptions(ArrayList arrayList) {
        if (arrayList == null) {
            return;
        }
        this.themeAnimatorDescriptions.add(arrayList);
        int[] iArr = new int[arrayList.size()];
        this.animateStartColors.add(iArr);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ThemeDescription themeDescription = (ThemeDescription) arrayList.get(i);
            iArr[i] = themeDescription.getSetColor();
            ThemeDescription.ThemeDescriptionDelegate delegateDisabled = themeDescription.setDelegateDisabled();
            if (delegateDisabled != null && !this.themeAnimatorDelegate.contains(delegateDisabled)) {
                this.themeAnimatorDelegate.add(delegateDisabled);
            }
        }
    }

    private void attachView(BaseFragment baseFragment) {
        View viewCreateView = baseFragment.fragmentView;
        if (viewCreateView == null) {
            viewCreateView = baseFragment.createView(this.parentActivity);
        } else {
            ViewGroup viewGroup = (ViewGroup) viewCreateView.getParent();
            if (viewGroup != null) {
                baseFragment.onRemoveFromParent();
                viewGroup.removeView(viewCreateView);
            }
        }
        if (!baseFragment.hasOwnBackground && viewCreateView.getBackground() == null) {
            viewCreateView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        }
        this.containerView.addView(viewCreateView, LayoutHelper.createFrame(-1, -1.0f));
        ActionBar actionBar = baseFragment.actionBar;
        if (actionBar != null && actionBar.shouldAddToContainer()) {
            if (this.removeActionBarExtraHeight) {
                baseFragment.actionBar.setOccupyStatusBar(false);
            }
            ViewGroup viewGroup2 = (ViewGroup) baseFragment.actionBar.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(baseFragment.actionBar);
            }
            this.containerView.addView(baseFragment.actionBar);
            baseFragment.actionBar.setTitleOverlayText(this.titleOverlayText, this.titleOverlayTextId, this.overlayAction);
        }
        baseFragment.attachSheets(this.containerView);
    }

    private void attachViewTo(BaseFragment baseFragment, int i) {
        View viewCreateView = baseFragment.fragmentView;
        if (viewCreateView == null) {
            viewCreateView = baseFragment.createView(this.parentActivity);
        } else {
            ViewGroup viewGroup = (ViewGroup) viewCreateView.getParent();
            if (viewGroup != null) {
                baseFragment.onRemoveFromParent();
                viewGroup.removeView(viewCreateView);
            }
        }
        if (!baseFragment.hasOwnBackground && viewCreateView.getBackground() == null) {
            viewCreateView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        }
        LayoutContainer layoutContainer = this.containerView;
        layoutContainer.addView(viewCreateView, Utilities.clamp(i, layoutContainer.getChildCount(), 0), LayoutHelper.createFrame(-1, -1.0f));
        ActionBar actionBar = baseFragment.actionBar;
        if (actionBar != null && actionBar.shouldAddToContainer()) {
            if (this.removeActionBarExtraHeight) {
                baseFragment.actionBar.setOccupyStatusBar(false);
            }
            ViewGroup viewGroup2 = (ViewGroup) baseFragment.actionBar.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(baseFragment.actionBar);
            }
            this.containerView.addView(baseFragment.actionBar);
            baseFragment.actionBar.setTitleOverlayText(this.titleOverlayText, this.titleOverlayTextId, this.overlayAction);
        }
        baseFragment.attachSheets(this.containerView);
    }

    private void checkNeedRebuild() throws IOException {
        if (this.rebuildAfterAnimation) {
            rebuildAllFragmentViews(this.rebuildLastAfterAnimation, this.showLastAfterAnimation);
            this.rebuildAfterAnimation = false;
        } else if (this.animateThemeAfterAnimation) {
            INavigationLayout.ThemeAnimationSettings themeAnimationSettings = new INavigationLayout.ThemeAnimationSettings(this.animateSetThemeAfterAnimation, this.animateSetThemeAccentIdAfterAnimation, this.animateSetThemeNightAfterAnimation, false);
            boolean z = this.animateSetThemeAfterAnimationApply;
            if (!z) {
                themeAnimationSettings.applyTrulyTheme = z;
                themeAnimationSettings.applyTheme = z;
            }
            animateThemedValues(themeAnimationSettings, null);
            this.animateSetThemeAfterAnimation = null;
            this.animateThemeAfterAnimation = false;
        }
    }

    private void closeLastFragmentInternalRemoveOld(BaseFragment baseFragment) {
        baseFragment.finishing = true;
        baseFragment.onPause();
        baseFragment.onFragmentDestroy();
        baseFragment.setParentLayout(null);
        this.fragmentsStack.remove(baseFragment);
        this.containerViewBack.setVisibility(4);
        this.containerViewBack.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        bringChildToFront(this.containerView);
        LayoutContainer layoutContainer = this.sheetContainer;
        if (layoutContainer != null) {
            bringChildToFront(layoutContainer);
        }
        onFragmentStackChanged("closeLastFragmentInternalRemoveOld");
    }

    private void drawPreviewDrawables(Canvas canvas, ViewGroup viewGroup) {
        if (viewGroup.getChildAt(0) != null) {
            this.previewBackgroundDrawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            this.previewBackgroundDrawable.draw(canvas);
            if (this.previewMenu == null) {
                int iDp = AndroidUtilities.dp(32.0f);
                int i = iDp / 2;
                int measuredWidth = (getMeasuredWidth() - iDp) / 2;
                int top = (int) ((r1.getTop() + viewGroup.getTranslationY()) - AndroidUtilities.dp((Build.VERSION.SDK_INT < 21 ? 20 : 0) + 12));
                Theme.moveUpDrawable.setBounds(measuredWidth, top, iDp + measuredWidth, i + top);
                Theme.moveUpDrawable.draw(canvas);
            }
        }
    }

    public static View findScrollingChild(ViewGroup viewGroup, float f, float f2) {
        View viewFindScrollingChild;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt.getVisibility() == 0) {
                Rect rect = AndroidUtilities.rectTmp2;
                childAt.getHitRect(rect);
                if (!rect.contains((int) f, (int) f2)) {
                    continue;
                } else {
                    if (childAt.canScrollHorizontally(-1)) {
                        return childAt;
                    }
                    if ((childAt instanceof ViewGroup) && (viewFindScrollingChild = findScrollingChild((ViewGroup) childAt, f - rect.left, f2 - rect.top)) != null) {
                        return viewFindScrollingChild;
                    }
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0092  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$animateThemedValues$7(int i, final INavigationLayout.ThemeAnimationSettings themeAnimationSettings, Runnable runnable) throws NoSuchFieldException, IOException, SecurityException {
        BaseFragment lastFragment;
        ArrayList<ThemeDescription> themeDescriptions;
        Dialog dialog;
        ArrayList<ThemeDescription> themeDescriptions2;
        Runnable runnable2;
        boolean z = false;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 == 0) {
                lastFragment = getLastFragment();
            } else if ((this.inPreviewMode || this.transitionAnimationPreviewMode) && this.fragmentsStack.size() > 1) {
                List list = this.fragmentsStack;
                lastFragment = (BaseFragment) list.get(list.size() - 2);
            }
            if (lastFragment != null) {
                if (themeAnimationSettings.resourcesProvider != null) {
                    if (this.messageDrawableOutStart == null) {
                        Theme.MessageDrawable messageDrawable = new Theme.MessageDrawable(0, true, false, this.startColorsProvider);
                        this.messageDrawableOutStart = messageDrawable;
                        messageDrawable.isCrossfadeBackground = true;
                        Theme.MessageDrawable messageDrawable2 = new Theme.MessageDrawable(1, true, false, this.startColorsProvider);
                        this.messageDrawableOutMediaStart = messageDrawable2;
                        messageDrawable2.isCrossfadeBackground = true;
                    }
                    this.startColorsProvider.saveColors(themeAnimationSettings.resourcesProvider);
                }
                ArrayList<ThemeDescription> themeDescriptions3 = lastFragment.getThemeDescriptions();
                addStartDescriptions(themeDescriptions3);
                Dialog dialog2 = lastFragment.visibleDialog;
                if (dialog2 instanceof BottomSheet) {
                    themeDescriptions = ((BottomSheet) dialog2).getThemeDescriptions();
                } else {
                    if (dialog2 instanceof AlertDialog) {
                        themeDescriptions = ((AlertDialog) dialog2).getThemeDescriptions();
                    }
                    if (i2 == 0 && (runnable2 = themeAnimationSettings.afterStartDescriptionsAddedRunnable) != null) {
                        runnable2.run();
                    }
                    addEndDescriptions(themeDescriptions3);
                    dialog = lastFragment.visibleDialog;
                    if (dialog instanceof BottomSheet) {
                        if (dialog instanceof AlertDialog) {
                            themeDescriptions2 = ((AlertDialog) dialog).getThemeDescriptions();
                        }
                        z = true;
                    } else {
                        themeDescriptions2 = ((BottomSheet) dialog).getThemeDescriptions();
                    }
                    addEndDescriptions(themeDescriptions2);
                    z = true;
                }
                addStartDescriptions(themeDescriptions);
                if (i2 == 0) {
                    runnable2.run();
                }
                addEndDescriptions(themeDescriptions3);
                dialog = lastFragment.visibleDialog;
                if (dialog instanceof BottomSheet) {
                }
                addEndDescriptions(themeDescriptions2);
                z = true;
            }
        }
        if (z) {
            if (!themeAnimationSettings.onlyTopFragment) {
                int size = this.fragmentsStack.size() - ((this.inPreviewMode || this.transitionAnimationPreviewMode) ? 2 : 1);
                for (int i3 = 0; i3 < size; i3++) {
                    BaseFragment baseFragment = (BaseFragment) this.fragmentsStack.get(i3);
                    baseFragment.clearViews();
                    baseFragment.setParentLayout(this);
                }
            }
            if (themeAnimationSettings.instant) {
                setThemeAnimationValue(1.0f);
                this.themeAnimatorDescriptions.clear();
                this.animateStartColors.clear();
                this.animateEndColors.clear();
                this.themeAnimatorDelegate.clear();
                this.presentingFragmentDescriptions = null;
                this.animationProgressListener = null;
                Runnable runnable3 = themeAnimationSettings.afterAnimationRunnable;
                if (runnable3 != null) {
                    runnable3.run();
                }
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            }
            Theme.setAnimatingColor(true);
            setThemeAnimationValue(BitmapDescriptorFactory.HUE_RED);
            Runnable runnable4 = themeAnimationSettings.beforeAnimationRunnable;
            if (runnable4 != null) {
                runnable4.run();
            }
            INavigationLayout.ThemeAnimationSettings.onAnimationProgress onanimationprogress = themeAnimationSettings.animationProgress;
            this.animationProgressListener = onanimationprogress;
            if (onanimationprogress != null) {
                onanimationprogress.setProgress(BitmapDescriptorFactory.HUE_RED);
            }
            this.notificationsLocker.lock();
            AnimatorSet animatorSet = new AnimatorSet();
            this.themeAnimatorSet = animatorSet;
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBarLayout.11
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    if (animator.equals(ActionBarLayout.this.themeAnimatorSet)) {
                        ActionBarLayout.this.themeAnimatorDescriptions.clear();
                        ActionBarLayout.this.animateStartColors.clear();
                        ActionBarLayout.this.animateEndColors.clear();
                        ActionBarLayout.this.themeAnimatorDelegate.clear();
                        Theme.setAnimatingColor(false);
                        ActionBarLayout.this.presentingFragmentDescriptions = null;
                        ActionBarLayout actionBarLayout = ActionBarLayout.this;
                        actionBarLayout.animationProgressListener = null;
                        actionBarLayout.themeAnimatorSet = null;
                        Runnable runnable5 = themeAnimationSettings.afterAnimationRunnable;
                        if (runnable5 != null) {
                            runnable5.run();
                        }
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ActionBarLayout.this.notificationsLocker.unlock();
                    if (animator.equals(ActionBarLayout.this.themeAnimatorSet)) {
                        ActionBarLayout.this.themeAnimatorDescriptions.clear();
                        ActionBarLayout.this.animateStartColors.clear();
                        ActionBarLayout.this.animateEndColors.clear();
                        ActionBarLayout.this.themeAnimatorDelegate.clear();
                        Theme.setAnimatingColor(false);
                        ActionBarLayout.this.presentingFragmentDescriptions = null;
                        ActionBarLayout actionBarLayout = ActionBarLayout.this;
                        actionBarLayout.animationProgressListener = null;
                        actionBarLayout.themeAnimatorSet = null;
                        Runnable runnable5 = themeAnimationSettings.afterAnimationRunnable;
                        if (runnable5 != null) {
                            runnable5.run();
                        }
                    }
                }
            });
            this.themeAnimatorSet.playTogether(ObjectAnimator.ofFloat(this, "themeAnimationValue", BitmapDescriptorFactory.HUE_RED, 1.0f));
            this.themeAnimatorSet.setDuration(themeAnimationSettings.duration);
            this.themeAnimatorSet.start();
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closeLastFragment$3(BaseFragment baseFragment, BaseFragment baseFragment2) {
        ViewGroup viewGroup;
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.previewMenu;
        if (actionBarPopupWindowLayout != null && (viewGroup = (ViewGroup) actionBarPopupWindowLayout.getParent()) != null) {
            viewGroup.removeView(this.previewMenu);
        }
        if (this.inPreviewMode || this.transitionAnimationPreviewMode) {
            this.containerViewBack.setScaleX(1.0f);
            this.containerViewBack.setScaleY(1.0f);
            this.inPreviewMode = false;
            this.previewMenu = null;
            this.transitionAnimationPreviewMode = false;
        } else {
            this.containerViewBack.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        }
        closeLastFragmentInternalRemoveOld(baseFragment);
        baseFragment.setRemovingFromStack(false);
        baseFragment.onTransitionAnimationEnd(false, true);
        baseFragment2.onTransitionAnimationEnd(true, true);
        baseFragment2.onBecomeFullyVisible();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closeLastFragment$4() throws IOException {
        onAnimationEndCheck(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closeLastFragment$5(BaseFragment baseFragment) {
        removeFragmentFromStackInternal(baseFragment, false);
        setVisibility(8);
        View view = this.backgroundView;
        if (view != null) {
            view.setVisibility(8);
        }
        DrawerLayoutContainer drawerLayoutContainer = this.drawerLayoutContainer;
        if (drawerLayoutContainer != null) {
            drawerLayoutContainer.setAllowOpenDrawer(true, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9() {
        if (this.attached && getLastFragment() != null && this.containerView.getChildCount() == 0) {
            if (BuildVars.DEBUG_VERSION) {
                FileLog.e(new RuntimeException(TextUtils.join(", ", this.lastActions)));
            }
            rebuildAllFragmentViews(true, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$presentFragment$0(BaseFragment baseFragment, BaseFragment baseFragment2) {
        if (baseFragment != null) {
            baseFragment.onTransitionAnimationEnd(false, false);
        }
        baseFragment2.onTransitionAnimationEnd(true, false);
        baseFragment2.onBecomeFullyVisible();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$presentFragment$1(boolean z, ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout, boolean z2, BaseFragment baseFragment, BaseFragment baseFragment2) {
        if (z) {
            this.inPreviewMode = true;
            this.previewMenu = actionBarPopupWindowLayout;
            this.transitionAnimationPreviewMode = false;
            this.containerView.setScaleX(1.0f);
            this.containerView.setScaleY(1.0f);
        } else {
            presentFragmentInternalRemoveOld(z2, baseFragment);
            this.containerView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        }
        if (baseFragment != null) {
            baseFragment.onTransitionAnimationEnd(false, false);
        }
        baseFragment2.onTransitionAnimationEnd(true, false);
        baseFragment2.onBecomeFullyVisible();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$presentFragment$2() throws IOException {
        onAnimationEndCheck(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeAllFragments$6() {
        this.backgroundView.setVisibility(8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void observeDebugItemsFromView(List list, View view) {
        if (view instanceof FloatingDebugProvider) {
            list.addAll(((FloatingDebugProvider) view).onGetDebugItems());
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                observeDebugItemsFromView(list, viewGroup.getChildAt(i));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAnimationEndCheck(boolean z) throws IOException {
        onCloseAnimationEnd();
        onOpenAnimationEnd();
        Runnable runnable = this.waitingForKeyboardCloseRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.waitingForKeyboardCloseRunnable = null;
        }
        AnimatorSet animatorSet = this.currentAnimation;
        if (animatorSet != null) {
            if (z) {
                animatorSet.cancel();
            }
            this.currentAnimation = null;
        }
        Runnable runnable2 = this.animationRunnable;
        if (runnable2 != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable2);
            this.animationRunnable = null;
        }
        setAlpha(1.0f);
        this.containerView.setAlpha(1.0f);
        this.containerView.setScaleX(1.0f);
        this.containerView.setScaleY(1.0f);
        this.containerViewBack.setAlpha(1.0f);
        this.containerViewBack.setScaleX(1.0f);
        this.containerViewBack.setScaleY(1.0f);
    }

    private void onCloseAnimationEnd() throws IOException {
        if (!this.transitionAnimationInProgress || this.onCloseAnimationEndRunnable == null) {
            return;
        }
        AnimatorSet animatorSet = this.currentAnimation;
        if (animatorSet != null) {
            this.currentAnimation = null;
            animatorSet.cancel();
        }
        this.transitionAnimationInProgress = false;
        this.layoutToIgnore = null;
        this.transitionAnimationPreviewMode = false;
        this.transitionAnimationStartTime = 0L;
        this.newFragment = null;
        this.oldFragment = null;
        Runnable runnable = this.onCloseAnimationEndRunnable;
        this.onCloseAnimationEndRunnable = null;
        if (runnable != null) {
            runnable.run();
        }
        checkNeedRebuild();
        checkNeedRebuild();
    }

    private void onFragmentStackChanged(String str) {
        Runnable runnable = this.onFragmentStackChangedListener;
        if (runnable != null) {
            runnable.run();
        }
        ImageLoader.getInstance().onFragmentStackChanged();
        checkBlackScreen(str);
    }

    private void onOpenAnimationEnd() throws IOException {
        Runnable runnable;
        if (!this.transitionAnimationInProgress || (runnable = this.onOpenAnimationEndRunnable) == null) {
            return;
        }
        this.transitionAnimationInProgress = false;
        this.layoutToIgnore = null;
        this.transitionAnimationPreviewMode = false;
        this.transitionAnimationStartTime = 0L;
        this.newFragment = null;
        this.oldFragment = null;
        this.onOpenAnimationEndRunnable = null;
        runnable.run();
        checkNeedRebuild();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSlideAnimationEnd(boolean z) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        if (z) {
            if (this.fragmentsStack.size() >= 2) {
                List list = this.fragmentsStack;
                ((BaseFragment) list.get(list.size() - 1)).prepareFragmentToSlide(true, false);
                List list2 = this.fragmentsStack;
                BaseFragment baseFragment = (BaseFragment) list2.get(list2.size() - 2);
                baseFragment.prepareFragmentToSlide(false, false);
                baseFragment.onPause();
                View view = baseFragment.fragmentView;
                if (view != null && (viewGroup2 = (ViewGroup) view.getParent()) != null) {
                    baseFragment.onRemoveFromParent();
                    viewGroup2.removeViewInLayout(baseFragment.fragmentView);
                }
                ActionBar actionBar = baseFragment.actionBar;
                if (actionBar != null && actionBar.shouldAddToContainer() && (viewGroup = (ViewGroup) baseFragment.actionBar.getParent()) != null) {
                    viewGroup.removeViewInLayout(baseFragment.actionBar);
                }
                baseFragment.detachSheets();
            }
            this.layoutToIgnore = null;
        } else {
            if (this.fragmentsStack.size() < 2) {
                return;
            }
            List list3 = this.fragmentsStack;
            BaseFragment baseFragment2 = (BaseFragment) list3.get(list3.size() - 1);
            baseFragment2.prepareFragmentToSlide(true, false);
            baseFragment2.onPause();
            baseFragment2.onFragmentDestroy();
            baseFragment2.setParentLayout(null);
            List list4 = this.fragmentsStack;
            list4.remove(list4.size() - 1);
            onFragmentStackChanged("onSlideAnimationEnd");
            LayoutContainer layoutContainer = this.containerView;
            LayoutContainer layoutContainer2 = this.containerViewBack;
            this.containerView = layoutContainer2;
            this.containerViewBack = layoutContainer;
            bringChildToFront(layoutContainer2);
            View view2 = this.sheetContainer;
            if (view2 != null) {
                bringChildToFront(view2);
            }
            List list5 = this.fragmentsStack;
            BaseFragment baseFragment3 = (BaseFragment) list5.get(list5.size() - 1);
            this.currentActionBar = baseFragment3.actionBar;
            baseFragment3.onResume();
            baseFragment3.onBecomeFullyVisible();
            baseFragment3.prepareFragmentToSlide(false, false);
            this.layoutToIgnore = this.containerView;
        }
        this.containerViewBack.setVisibility(4);
        this.startedTracking = false;
        this.animationInProgress = false;
        this.containerView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        this.containerViewBack.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        setInnerTranslationX(BitmapDescriptorFactory.HUE_RED);
    }

    private void prepareForMoving(MotionEvent motionEvent) {
        this.maybeStartTracking = false;
        this.startedTracking = true;
        this.layoutToIgnore = this.containerViewBack;
        this.startedTrackingX = (int) motionEvent.getX();
        this.containerViewBack.setVisibility(0);
        this.beginTrackingSent = false;
        BaseFragment baseFragment = (BaseFragment) this.fragmentsStack.get(r8.size() - 2);
        View viewCreateView = baseFragment.fragmentView;
        if (viewCreateView == null) {
            viewCreateView = baseFragment.createView(this.parentActivity);
        }
        ViewGroup viewGroup = (ViewGroup) viewCreateView.getParent();
        if (viewGroup != null) {
            baseFragment.onRemoveFromParent();
            viewGroup.removeView(viewCreateView);
        }
        this.containerViewBack.addView(viewCreateView);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewCreateView.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        layoutParams.leftMargin = 0;
        layoutParams.rightMargin = 0;
        layoutParams.bottomMargin = 0;
        layoutParams.topMargin = 0;
        viewCreateView.setLayoutParams(layoutParams);
        ActionBar actionBar = baseFragment.actionBar;
        if (actionBar != null && actionBar.shouldAddToContainer()) {
            AndroidUtilities.removeFromParent(baseFragment.actionBar);
            if (this.removeActionBarExtraHeight) {
                baseFragment.actionBar.setOccupyStatusBar(false);
            }
            this.containerViewBack.addView(baseFragment.actionBar);
            baseFragment.actionBar.setTitleOverlayText(this.titleOverlayText, this.titleOverlayTextId, this.overlayAction);
        }
        baseFragment.attachSheets(this.containerViewBack);
        if (!baseFragment.hasOwnBackground && viewCreateView.getBackground() == null) {
            viewCreateView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        }
        baseFragment.onResume();
        if (this.themeAnimatorSet != null) {
            this.presentingFragmentDescriptions = baseFragment.getThemeDescriptions();
        }
        List list = this.fragmentsStack;
        ((BaseFragment) list.get(list.size() - 1)).prepareFragmentToSlide(true, true);
        baseFragment.prepareFragmentToSlide(false, true);
    }

    private void presentFragmentInternalRemoveOld(boolean z, BaseFragment baseFragment) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        if (baseFragment == null) {
            return;
        }
        baseFragment.onBecomeFullyHidden();
        baseFragment.onPause();
        if (z) {
            baseFragment.onFragmentDestroy();
            baseFragment.setParentLayout(null);
            this.fragmentsStack.remove(baseFragment);
            onFragmentStackChanged("presentFragmentInternalRemoveOld");
        } else {
            View view = baseFragment.fragmentView;
            if (view != null && (viewGroup2 = (ViewGroup) view.getParent()) != null) {
                baseFragment.onRemoveFromParent();
                try {
                    viewGroup2.removeViewInLayout(baseFragment.fragmentView);
                } catch (Exception e) {
                    FileLog.e(e);
                    try {
                        viewGroup2.removeView(baseFragment.fragmentView);
                    } catch (Exception e2) {
                        FileLog.e(e2);
                    }
                }
            }
            ActionBar actionBar = baseFragment.actionBar;
            if (actionBar != null && actionBar.shouldAddToContainer() && (viewGroup = (ViewGroup) baseFragment.actionBar.getParent()) != null) {
                viewGroup.removeViewInLayout(baseFragment.actionBar);
            }
            baseFragment.detachSheets();
        }
        this.containerViewBack.setVisibility(4);
    }

    private void removeFragmentFromStackInternal(BaseFragment baseFragment, boolean z) {
        if (this.fragmentsStack.contains(baseFragment)) {
            if (z) {
                List list = this.fragmentsStack;
                if (list.get(list.size() - 1) == baseFragment) {
                    baseFragment.lambda$onBackPressed$354();
                    return;
                }
            }
            List list2 = this.fragmentsStack;
            if (list2.get(list2.size() - 1) == baseFragment && this.fragmentsStack.size() > 1) {
                baseFragment.finishFragment(false);
                return;
            }
            baseFragment.onPause();
            baseFragment.onFragmentDestroy();
            baseFragment.setParentLayout(null);
            this.fragmentsStack.remove(baseFragment);
            onFragmentStackChanged("removeFragmentFromStackInternal " + z);
        }
    }

    private boolean shouldOpenFragmentOverlay(Dialog dialog) {
        return dialog != null && dialog.isShowing() && ((dialog instanceof ChatAttachAlert) || (dialog instanceof BotWebViewSheet));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startLayoutAnimation(final boolean z, final boolean z2, final boolean z3) {
        if (z2) {
            this.animationProgress = BitmapDescriptorFactory.HUE_RED;
            this.lastFrameTime = System.nanoTime() / 1000000;
        }
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout.2
            @Override // java.lang.Runnable
            public void run() throws IOException {
                LayoutContainer layoutContainer;
                float fDp;
                Drawable drawable;
                int i;
                if (ActionBarLayout.this.animationRunnable != this) {
                    return;
                }
                ActionBarLayout.this.animationRunnable = null;
                if (z2) {
                    ActionBarLayout.this.transitionAnimationStartTime = System.currentTimeMillis();
                }
                long jNanoTime = System.nanoTime() / 1000000;
                long j = jNanoTime - ActionBarLayout.this.lastFrameTime;
                if (j > 40 && z2) {
                    j = 0;
                } else if (j > 18) {
                    j = 18;
                }
                ActionBarLayout.this.lastFrameTime = jNanoTime;
                ActionBarLayout.access$1316(ActionBarLayout.this, j / ((z3 && z) ? 190.0f : 150.0f));
                if (ActionBarLayout.this.animationProgress > 1.0f) {
                    ActionBarLayout.this.animationProgress = 1.0f;
                }
                if (ActionBarLayout.this.newFragment != null) {
                    ActionBarLayout.this.newFragment.onTransitionAnimationProgress(true, ActionBarLayout.this.animationProgress);
                }
                if (ActionBarLayout.this.oldFragment != null) {
                    ActionBarLayout.this.oldFragment.onTransitionAnimationProgress(false, ActionBarLayout.this.animationProgress);
                }
                Integer numValueOf = ActionBarLayout.this.oldFragment != null ? Integer.valueOf(ActionBarLayout.this.oldFragment.getNavigationBarColor()) : null;
                Integer numValueOf2 = ActionBarLayout.this.newFragment != null ? Integer.valueOf(ActionBarLayout.this.newFragment.getNavigationBarColor()) : null;
                if (ActionBarLayout.this.newFragment != null && numValueOf != null) {
                    int iBlendARGB = ColorUtils.blendARGB(numValueOf.intValue(), numValueOf2.intValue(), MathUtils.clamp(ActionBarLayout.this.animationProgress * 4.0f, BitmapDescriptorFactory.HUE_RED, 1.0f));
                    if (ActionBarLayout.this.sheetFragment != null && ActionBarLayout.this.sheetFragment.sheetsStack != null) {
                        for (int i2 = 0; i2 < ActionBarLayout.this.sheetFragment.sheetsStack.size(); i2++) {
                            BaseFragment.AttachedSheet attachedSheet = ActionBarLayout.this.sheetFragment.sheetsStack.get(i2);
                            if (attachedSheet.attachedToParent()) {
                                iBlendARGB = attachedSheet.getNavigationBarColor(iBlendARGB);
                            }
                        }
                    }
                    ActionBarLayout.this.newFragment.setNavigationBarColor(iBlendARGB);
                }
                float interpolation = z3 ? z ? ActionBarLayout.this.overshootInterpolator.getInterpolation(ActionBarLayout.this.animationProgress) : CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(ActionBarLayout.this.animationProgress) : ActionBarLayout.this.decelerateInterpolator.getInterpolation(ActionBarLayout.this.animationProgress);
                if (z) {
                    float fClamp = MathUtils.clamp(interpolation, BitmapDescriptorFactory.HUE_RED, 1.0f);
                    ActionBarLayout.this.containerView.setAlpha(fClamp);
                    if (z3) {
                        float f = (0.3f * interpolation) + 0.7f;
                        ActionBarLayout.this.containerView.setScaleX(f);
                        ActionBarLayout.this.containerView.setScaleY(f);
                        if (ActionBarLayout.this.previewMenu != null) {
                            float f2 = 1.0f - interpolation;
                            ActionBarLayout.this.containerView.setTranslationY(AndroidUtilities.dp(40.0f) * f2);
                            ActionBarLayout.this.previewMenu.setTranslationY((-AndroidUtilities.dp(70.0f)) * f2);
                            float f3 = (interpolation * 0.05f) + 0.95f;
                            ActionBarLayout.this.previewMenu.setScaleX(f3);
                            ActionBarLayout.this.previewMenu.setScaleY(f3);
                        }
                        ActionBarLayout.this.previewBackgroundDrawable.setAlpha((int) (46.0f * fClamp));
                        drawable = Theme.moveUpDrawable;
                        i = (int) (fClamp * 255.0f);
                        drawable.setAlpha(i);
                        ActionBarLayout.this.containerView.invalidate();
                        ActionBarLayout.this.invalidate();
                    } else {
                        layoutContainer = ActionBarLayout.this.containerView;
                        fDp = AndroidUtilities.dp(48.0f);
                        interpolation = 1.0f - interpolation;
                        layoutContainer.setTranslationX(fDp * interpolation);
                    }
                } else {
                    float f4 = 1.0f - interpolation;
                    float fClamp2 = MathUtils.clamp(f4, BitmapDescriptorFactory.HUE_RED, 1.0f);
                    ActionBarLayout.this.containerViewBack.setAlpha(fClamp2);
                    if (z3) {
                        float f5 = (f4 * 0.1f) + 0.9f;
                        ActionBarLayout.this.containerViewBack.setScaleX(f5);
                        ActionBarLayout.this.containerViewBack.setScaleY(f5);
                        ActionBarLayout.this.previewBackgroundDrawable.setAlpha((int) (46.0f * fClamp2));
                        if (ActionBarLayout.this.previewMenu == null) {
                            drawable = Theme.moveUpDrawable;
                            i = (int) (fClamp2 * 255.0f);
                            drawable.setAlpha(i);
                        }
                        ActionBarLayout.this.containerView.invalidate();
                        ActionBarLayout.this.invalidate();
                    } else {
                        layoutContainer = ActionBarLayout.this.containerViewBack;
                        fDp = AndroidUtilities.dp(48.0f);
                        layoutContainer.setTranslationX(fDp * interpolation);
                    }
                }
                if (ActionBarLayout.this.animationProgress < 1.0f) {
                    ActionBarLayout.this.startLayoutAnimation(z, false, z3);
                } else {
                    ActionBarLayout.this.onAnimationEndCheck(false);
                }
            }
        };
        this.animationRunnable = runnable;
        AndroidUtilities.runOnUIThread(runnable);
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public /* synthetic */ boolean addFragmentToStack(BaseFragment baseFragment) {
        return addFragmentToStack(baseFragment, -1);
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public boolean addFragmentToStack(BaseFragment baseFragment, int i) {
        String str;
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        INavigationLayout.INavigationLayoutDelegate iNavigationLayoutDelegate = this.delegate;
        if ((iNavigationLayoutDelegate != null && !iNavigationLayoutDelegate.needAddFragmentToStack(baseFragment, this)) || !baseFragment.onFragmentCreate() || this.fragmentsStack.contains(baseFragment)) {
            return false;
        }
        baseFragment.setParentLayout(this);
        if (i == -1 || i == -2) {
            if (!this.fragmentsStack.isEmpty()) {
                List list = this.fragmentsStack;
                BaseFragment baseFragment2 = (BaseFragment) list.get(list.size() - 1);
                baseFragment2.onPause();
                ActionBar actionBar = baseFragment2.actionBar;
                if (actionBar != null && actionBar.shouldAddToContainer() && (viewGroup2 = (ViewGroup) baseFragment2.actionBar.getParent()) != null) {
                    viewGroup2.removeView(baseFragment2.actionBar);
                }
                View view = baseFragment2.fragmentView;
                if (view != null && (viewGroup = (ViewGroup) view.getParent()) != null) {
                    baseFragment2.onRemoveFromParent();
                    viewGroup.removeView(baseFragment2.fragmentView);
                }
                baseFragment2.detachSheets();
            }
            this.fragmentsStack.add(baseFragment);
            if (i != -2) {
                attachView(baseFragment);
                baseFragment.onResume();
                baseFragment.onTransitionAnimationEnd(false, true);
                baseFragment.onTransitionAnimationEnd(true, true);
                baseFragment.onBecomeFullyVisible();
            }
            str = "addFragmentToStack " + i;
        } else {
            if (i == -3) {
                attachViewTo(baseFragment, 0);
                i = 0;
            }
            this.fragmentsStack.add(i, baseFragment);
            str = "addFragmentToStack";
        }
        onFragmentStackChanged(str);
        if (!this.useAlphaAnimations) {
            setVisibility(0);
            View view2 = this.backgroundView;
            if (view2 != null) {
                view2.setVisibility(0);
            }
        }
        return true;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public boolean allowSwipe() {
        EmptyBaseFragment emptyBaseFragment = this.sheetFragment;
        return emptyBaseFragment == null || emptyBaseFragment.getLastSheet() == null || !this.sheetFragment.getLastSheet().isShown();
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void animateThemedValues(final INavigationLayout.ThemeAnimationSettings themeAnimationSettings, final Runnable runnable) throws IOException {
        Theme.ThemeInfo themeInfo;
        if (this.transitionAnimationInProgress || this.startedTracking) {
            this.animateThemeAfterAnimation = true;
            this.animateSetThemeAfterAnimation = themeAnimationSettings.theme;
            this.animateSetThemeNightAfterAnimation = themeAnimationSettings.nightTheme;
            this.animateSetThemeAccentIdAfterAnimation = themeAnimationSettings.accentId;
            this.animateSetThemeAfterAnimationApply = themeAnimationSettings.applyTrulyTheme;
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        AnimatorSet animatorSet = this.themeAnimatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.themeAnimatorSet = null;
        }
        final int size = themeAnimationSettings.onlyTopFragment ? 1 : this.fragmentsStack.size();
        final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() throws NoSuchFieldException, IOException, SecurityException {
                this.f$0.lambda$animateThemedValues$7(size, themeAnimationSettings, runnable);
            }
        };
        if (size >= 1 && themeAnimationSettings.applyTheme && themeAnimationSettings.applyTrulyTheme) {
            int i = themeAnimationSettings.accentId;
            if (i != -1 && (themeInfo = themeAnimationSettings.theme) != null) {
                themeInfo.setCurrentAccentId(i);
                Theme.saveThemeAccents(themeAnimationSettings.theme, true, false, true, false);
            }
            if (runnable != null) {
                Theme.applyThemeInBackground(themeAnimationSettings.theme, themeAnimationSettings.nightTheme, new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        AndroidUtilities.runOnUIThread(runnable2);
                    }
                });
                return;
            }
            Theme.applyTheme(themeAnimationSettings.theme, themeAnimationSettings.nightTheme);
        }
        runnable2.run();
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public /* synthetic */ void animateThemedValues(Theme.ThemeInfo themeInfo, int i, boolean z, boolean z2) {
        animateThemedValues(new INavigationLayout.ThemeAnimationSettings(themeInfo, i, z, z2), null);
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public /* synthetic */ void animateThemedValues(Theme.ThemeInfo themeInfo, int i, boolean z, boolean z2, Runnable runnable) {
        animateThemedValues(new INavigationLayout.ThemeAnimationSettings(themeInfo, i, z, z2), runnable);
    }

    public void bringToFront(int i) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        if (this.fragmentsStack.isEmpty()) {
            return;
        }
        if (this.fragmentsStack.isEmpty() || this.fragmentsStack.size() - 1 != i || ((BaseFragment) this.fragmentsStack.get(i)).fragmentView == null) {
            for (int i2 = 0; i2 < i; i2++) {
                BaseFragment baseFragment = (BaseFragment) this.fragmentsStack.get(i2);
                ActionBar actionBar = baseFragment.actionBar;
                if (actionBar != null && actionBar.shouldAddToContainer() && (viewGroup2 = (ViewGroup) baseFragment.actionBar.getParent()) != null) {
                    viewGroup2.removeView(baseFragment.actionBar);
                }
                View view = baseFragment.fragmentView;
                if (view != null && (viewGroup = (ViewGroup) view.getParent()) != null) {
                    baseFragment.onPause();
                    baseFragment.onRemoveFromParent();
                    viewGroup.removeView(baseFragment.fragmentView);
                }
            }
            BaseFragment baseFragment2 = (BaseFragment) this.fragmentsStack.get(i);
            baseFragment2.setParentLayout(this);
            View viewCreateView = baseFragment2.fragmentView;
            if (viewCreateView == null) {
                viewCreateView = baseFragment2.createView(this.parentActivity);
            } else {
                ViewGroup viewGroup3 = (ViewGroup) viewCreateView.getParent();
                if (viewGroup3 != null) {
                    baseFragment2.onRemoveFromParent();
                    viewGroup3.removeView(viewCreateView);
                }
            }
            this.containerView.addView(viewCreateView, LayoutHelper.createFrame(-1, -1.0f));
            ActionBar actionBar2 = baseFragment2.actionBar;
            if (actionBar2 != null && actionBar2.shouldAddToContainer()) {
                if (this.removeActionBarExtraHeight) {
                    baseFragment2.actionBar.setOccupyStatusBar(false);
                }
                AndroidUtilities.removeFromParent(baseFragment2.actionBar);
                this.containerView.addView(baseFragment2.actionBar);
                baseFragment2.actionBar.setTitleOverlayText(this.titleOverlayText, this.titleOverlayTextId, this.overlayAction);
            }
            baseFragment2.attachSheets(this.containerView);
            baseFragment2.onResume();
            this.currentActionBar = baseFragment2.actionBar;
            if (baseFragment2.hasOwnBackground || viewCreateView.getBackground() != null) {
                return;
            }
            viewCreateView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        }
    }

    public void checkBlackScreen(String str) {
        if (BuildVars.DEBUG_VERSION) {
            this.lastActions.add(0, str + " " + this.fragmentsStack.size());
            if (this.lastActions.size() > 20) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < 10; i++) {
                    arrayList.add((String) this.lastActions.get(i));
                }
                this.lastActions = arrayList;
            }
        }
        AndroidUtilities.cancelRunOnUIThread(this.debugBlackScreenRunnable);
        AndroidUtilities.runOnUIThread(this.debugBlackScreenRunnable, 500L);
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public boolean checkTransitionAnimation() throws IOException {
        if (this.transitionAnimationPreviewMode) {
            return false;
        }
        if (this.transitionAnimationInProgress && (this.transitionAnimationStartTime < System.currentTimeMillis() - 1500 || this.inPreviewMode)) {
            onAnimationEndCheck(true);
        }
        return this.transitionAnimationInProgress;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public /* synthetic */ void closeLastFragment() {
        closeLastFragment(true);
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void closeLastFragment(boolean z) {
        closeLastFragment(z, false);
    }

    public void closeLastFragment(boolean z, boolean z2) {
        final BaseFragment baseFragment;
        BaseFragment lastFragment = getLastFragment();
        if (lastFragment == null || !lastFragment.closeLastFragment()) {
            INavigationLayout.INavigationLayoutDelegate iNavigationLayoutDelegate = this.delegate;
            if ((iNavigationLayoutDelegate != null && !iNavigationLayoutDelegate.needCloseLastFragment(this)) || checkTransitionAnimation() || this.fragmentsStack.isEmpty()) {
                return;
            }
            if (this.parentActivity.getCurrentFocus() != null) {
                AndroidUtilities.hideKeyboard(this.parentActivity.getCurrentFocus());
            }
            setInnerTranslationX(BitmapDescriptorFactory.HUE_RED);
            boolean z3 = !z2 && (this.inPreviewMode || this.transitionAnimationPreviewMode || (z && MessagesController.getGlobalMainSettings().getBoolean("view_animations", true)));
            List list = this.fragmentsStack;
            final BaseFragment baseFragment2 = (BaseFragment) list.get(list.size() - 1);
            AnimatorSet animatorSetOnCustomTransitionAnimation = null;
            if (this.fragmentsStack.size() > 1) {
                List list2 = this.fragmentsStack;
                baseFragment = (BaseFragment) list2.get(list2.size() - 2);
            } else {
                baseFragment = null;
            }
            if (baseFragment != null) {
                AndroidUtilities.setLightStatusBar(this.parentActivity.getWindow(), Theme.getColor(Theme.key_actionBarDefault) == -1 || (baseFragment.hasForceLightStatusBar() && !Theme.getCurrentTheme().isDark()), baseFragment.hasForceLightStatusBar());
                LayoutContainer layoutContainer = this.containerView;
                this.containerView = this.containerViewBack;
                this.containerViewBack = layoutContainer;
                baseFragment.setParentLayout(this);
                View viewCreateView = baseFragment.fragmentView;
                if (viewCreateView == null) {
                    viewCreateView = baseFragment.createView(this.parentActivity);
                }
                if (!this.inPreviewMode) {
                    this.containerView.setVisibility(0);
                    ViewGroup viewGroup = (ViewGroup) viewCreateView.getParent();
                    if (viewGroup != null) {
                        baseFragment.onRemoveFromParent();
                        try {
                            viewGroup.removeView(viewCreateView);
                        } catch (Exception e) {
                            FileLog.e(e);
                        }
                    }
                    this.containerView.addView(viewCreateView);
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewCreateView.getLayoutParams();
                    layoutParams.width = -1;
                    layoutParams.height = -1;
                    layoutParams.leftMargin = 0;
                    layoutParams.rightMargin = 0;
                    layoutParams.bottomMargin = 0;
                    layoutParams.topMargin = 0;
                    viewCreateView.setLayoutParams(layoutParams);
                    ActionBar actionBar = baseFragment.actionBar;
                    if (actionBar != null && actionBar.shouldAddToContainer()) {
                        if (this.removeActionBarExtraHeight) {
                            baseFragment.actionBar.setOccupyStatusBar(false);
                        }
                        AndroidUtilities.removeFromParent(baseFragment.actionBar);
                        this.containerView.addView(baseFragment.actionBar);
                        baseFragment.actionBar.setTitleOverlayText(this.titleOverlayText, this.titleOverlayTextId, this.overlayAction);
                    }
                    baseFragment.attachSheets(this.containerView);
                }
                this.newFragment = baseFragment;
                this.oldFragment = baseFragment2;
                baseFragment.onTransitionAnimationStart(true, true);
                baseFragment2.onTransitionAnimationStart(false, true);
                baseFragment.onResume();
                if (this.themeAnimatorSet != null) {
                    this.presentingFragmentDescriptions = baseFragment.getThemeDescriptions();
                }
                this.currentActionBar = baseFragment.actionBar;
                if (!baseFragment.hasOwnBackground && viewCreateView.getBackground() == null) {
                    viewCreateView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                }
                if (z3) {
                    this.transitionAnimationStartTime = System.currentTimeMillis();
                    this.transitionAnimationInProgress = true;
                    this.layoutToIgnore = this.containerView;
                    baseFragment2.setRemovingFromStack(true);
                    this.onCloseAnimationEndRunnable = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$closeLastFragment$3(baseFragment2, baseFragment);
                        }
                    };
                    if (!this.inPreviewMode && !this.transitionAnimationPreviewMode) {
                        animatorSetOnCustomTransitionAnimation = baseFragment2.onCustomTransitionAnimation(false, new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$$ExternalSyntheticLambda4
                            @Override // java.lang.Runnable
                            public final void run() throws IOException {
                                this.f$0.lambda$closeLastFragment$4();
                            }
                        });
                    }
                    if (animatorSetOnCustomTransitionAnimation != null) {
                        this.currentAnimation = animatorSetOnCustomTransitionAnimation;
                        if (Bulletin.getVisibleBulletin() != null && Bulletin.getVisibleBulletin().isShowing()) {
                            Bulletin.getVisibleBulletin().hide();
                        }
                    } else if (this.inPreviewMode || !(this.containerView.isKeyboardVisible || this.containerViewBack.isKeyboardVisible)) {
                        startLayoutAnimation(false, true, this.inPreviewMode || this.transitionAnimationPreviewMode);
                    } else {
                        Runnable runnable = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout.9
                            @Override // java.lang.Runnable
                            public void run() {
                                if (ActionBarLayout.this.waitingForKeyboardCloseRunnable != this) {
                                    return;
                                }
                                ActionBarLayout.this.waitingForKeyboardCloseRunnable = null;
                                ActionBarLayout.this.startLayoutAnimation(false, true, false);
                            }
                        };
                        this.waitingForKeyboardCloseRunnable = runnable;
                        AndroidUtilities.runOnUIThread(runnable, 200L);
                    }
                    onFragmentStackChanged("closeLastFragment");
                } else {
                    closeLastFragmentInternalRemoveOld(baseFragment2);
                    baseFragment2.onTransitionAnimationEnd(false, true);
                    baseFragment.onTransitionAnimationEnd(true, true);
                    baseFragment.onBecomeFullyVisible();
                }
            } else if (!this.useAlphaAnimations || z2) {
                removeFragmentFromStackInternal(baseFragment2, false);
                setVisibility(8);
                View view = this.backgroundView;
                if (view != null) {
                    view.setVisibility(8);
                }
            } else {
                this.transitionAnimationStartTime = System.currentTimeMillis();
                this.transitionAnimationInProgress = true;
                this.layoutToIgnore = this.containerView;
                this.onCloseAnimationEndRunnable = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$closeLastFragment$5(baseFragment2);
                    }
                };
                ArrayList arrayList = new ArrayList();
                Property property = View.ALPHA;
                arrayList.add(ObjectAnimator.ofFloat(this, (Property<ActionBarLayout, Float>) property, 1.0f, BitmapDescriptorFactory.HUE_RED));
                View view2 = this.backgroundView;
                if (view2 != null) {
                    arrayList.add(ObjectAnimator.ofFloat(view2, (Property<View, Float>) property, 1.0f, BitmapDescriptorFactory.HUE_RED));
                }
                AnimatorSet animatorSet = new AnimatorSet();
                this.currentAnimation = animatorSet;
                animatorSet.playTogether(arrayList);
                this.currentAnimation.setInterpolator(this.accelerateDecelerateInterpolator);
                this.currentAnimation.setDuration(200L);
                this.currentAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBarLayout.10
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) throws IOException {
                        ActionBarLayout.this.onAnimationEndCheck(false);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        ActionBarLayout.this.transitionAnimationStartTime = System.currentTimeMillis();
                    }
                });
                this.currentAnimation.start();
            }
            baseFragment2.onFragmentClosed();
        }
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public /* synthetic */ void dismissDialogs() {
        INavigationLayout.CC.$default$dismissDialogs(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        this.withShadow = true;
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        if (keyEvent == null || keyEvent.getKeyCode() != 4 || keyEvent.getAction() != 1) {
            return super.dispatchKeyEventPreIme(keyEvent);
        }
        INavigationLayout.INavigationLayoutDelegate iNavigationLayoutDelegate = this.delegate;
        return (iNavigationLayoutDelegate != null && iNavigationLayoutDelegate.onPreIme()) || super.dispatchKeyEventPreIme(keyEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005c A[PHI: r1
      0x005c: PHI (r1v6 org.telegram.ui.ActionBar.BaseFragment$AttachedSheet) = 
      (r1v5 org.telegram.ui.ActionBar.BaseFragment$AttachedSheet)
      (r1v5 org.telegram.ui.ActionBar.BaseFragment$AttachedSheet)
      (r1v5 org.telegram.ui.ActionBar.BaseFragment$AttachedSheet)
      (r1v9 org.telegram.ui.ActionBar.BaseFragment$AttachedSheet)
     binds: [B:15:0x0035, B:17:0x003b, B:19:0x0045, B:23:0x0059] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        BaseFragment.AttachedSheet lastSheet;
        boolean z = motionEvent.getY() > ((float) (getHeight() - getBottomTabsHeight(true)));
        EmptyBaseFragment emptyBaseFragment = this.sheetFragment;
        BaseFragment.AttachedSheet attachedSheet = null;
        if (emptyBaseFragment == null || emptyBaseFragment.getLastSheet() == null) {
            lastSheet = null;
        } else {
            lastSheet = this.sheetFragment.getLastSheet();
            if (!lastSheet.attachedToParent() || lastSheet.mo1096getWindowView() == null) {
            }
        }
        if (lastSheet != null || getLastFragment() == null || getLastFragment().getLastSheet() == null) {
            attachedSheet = lastSheet;
        } else {
            lastSheet = getLastFragment().getLastSheet();
            if (lastSheet.attachedToParent() && lastSheet.mo1096getWindowView() != null) {
            }
        }
        if (attachedSheet != null) {
            if (motionEvent.getAction() == 0) {
                this.tabsEvents = z;
            }
            if (!this.tabsEvents) {
                if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                    this.tabsEvents = false;
                }
                return attachedSheet.mo1096getWindowView().dispatchTouchEvent(motionEvent);
            }
        }
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            this.tabsEvents = false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x010e  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected boolean drawChild(Canvas canvas, View view, long j) {
        int i;
        int i2;
        int iSave;
        int i3;
        LayoutContainer layoutContainer;
        int i4;
        float f;
        float width;
        float height;
        Paint paint;
        BottomSheetTabs.ClipTools clipTools;
        DrawerLayoutContainer drawerLayoutContainer = this.drawerLayoutContainer;
        if (drawerLayoutContainer != null && drawerLayoutContainer.isDrawCurrentPreviewFragmentAbove() && (this.inPreviewMode || this.transitionAnimationPreviewMode || this.previewOpenAnimationInProgress)) {
            BaseFragment baseFragment = this.oldFragment;
            if (view == ((baseFragment == null || !baseFragment.inPreviewMode) ? this.containerView : this.containerViewBack)) {
                this.drawerLayoutContainer.invalidate();
                return false;
            }
        }
        int width2 = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int paddingRight = ((int) this.innerTranslationX) + getPaddingRight();
        int paddingLeft = getPaddingLeft();
        int paddingLeft2 = getPaddingLeft() + width2;
        if (view != this.containerViewBack) {
            if (view == this.containerView) {
                i = paddingLeft2;
                i2 = paddingRight;
            }
            iSave = canvas.save();
            if (view != this.bottomSheetTabs || (clipTools = this.bottomSheetTabsClip) == null) {
                i3 = iSave;
            } else {
                i3 = iSave;
                clipTools.clip(canvas, this.withShadow, this.isKeyboardVisible, getWidth(), getHeight() + ((int) getY()), 1.0f);
                this.withShadow = false;
            }
            int iSave2 = canvas.save();
            if (!isTransitionAnimationInProgress() && !this.inPreviewMode) {
                canvas.clipRect(i2, 0, i, getHeight());
            }
            if ((this.inPreviewMode || this.transitionAnimationPreviewMode) && view == (layoutContainer = this.containerView)) {
                drawPreviewDrawables(canvas, layoutContainer);
            }
            boolean zDrawChild = super.drawChild(canvas, view, j);
            canvas.restoreToCount(iSave2);
            if (paddingRight == 0 || this.overrideWidthOffset != -1) {
                i4 = this.overrideWidthOffset;
                if (i4 == -1) {
                    i4 = width2 - paddingRight;
                }
                if (view != this.containerView) {
                    float fClamp = MathUtils.clamp(i4 / AndroidUtilities.dp(20.0f), BitmapDescriptorFactory.HUE_RED, 1.0f);
                    Drawable drawable = layerShadowDrawable;
                    drawable.setBounds(paddingRight - drawable.getIntrinsicWidth(), view.getTop(), paddingRight, view.getBottom() - getBottomTabsHeight(true));
                    layerShadowDrawable.setAlpha((int) (fClamp * 255.0f));
                    layerShadowDrawable.draw(canvas);
                } else if (view == this.containerViewBack) {
                    scrimPaint.setColor(Color.argb((int) (MathUtils.clamp(i4 / width2, BitmapDescriptorFactory.HUE_RED, 0.8f) * 153.0f), 0, 0, 0));
                    if (this.overrideWidthOffset != -1) {
                        width = getWidth();
                        height = getHeight() * 1.5f;
                        paint = scrimPaint;
                        f = BitmapDescriptorFactory.HUE_RED;
                    } else {
                        f = i2;
                        width = i;
                        height = getHeight() * 1.5f;
                        paint = scrimPaint;
                    }
                    canvas.drawRect(f, BitmapDescriptorFactory.HUE_RED, width, height, paint);
                }
            }
            canvas.restoreToCount(i3);
            return zDrawChild;
        }
        paddingLeft2 = AndroidUtilities.dp(1.0f) + paddingRight;
        i2 = paddingLeft;
        i = paddingLeft2;
        iSave = canvas.save();
        if (view != this.bottomSheetTabs) {
            i3 = iSave;
        }
        int iSave22 = canvas.save();
        if (!isTransitionAnimationInProgress()) {
            canvas.clipRect(i2, 0, i, getHeight());
        }
        if (this.inPreviewMode) {
            drawPreviewDrawables(canvas, layoutContainer);
        } else {
            drawPreviewDrawables(canvas, layoutContainer);
        }
        boolean zDrawChild2 = super.drawChild(canvas, view, j);
        canvas.restoreToCount(iSave22);
        if (paddingRight == 0) {
            i4 = this.overrideWidthOffset;
            if (i4 == -1) {
            }
            if (view != this.containerView) {
            }
        }
        canvas.restoreToCount(i3);
        return zDrawChild2;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void drawCurrentPreviewFragment(Canvas canvas, Drawable drawable) {
        if (this.inPreviewMode || this.transitionAnimationPreviewMode || this.previewOpenAnimationInProgress) {
            BaseFragment baseFragment = this.oldFragment;
            LayoutContainer layoutContainer = (baseFragment == null || !baseFragment.inPreviewMode) ? this.containerView : this.containerViewBack;
            drawPreviewDrawables(canvas, layoutContainer);
            if (layoutContainer.getAlpha() < 1.0f) {
                canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), (int) (layoutContainer.getAlpha() * 255.0f), 31);
            } else {
                canvas.save();
            }
            canvas.concat(layoutContainer.getMatrix());
            layoutContainer.draw(canvas);
            if (drawable != null) {
                View childAt = layoutContainer.getChildAt(0);
                if (childAt != null) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                    Rect rect = new Rect();
                    childAt.getLocalVisibleRect(rect);
                    rect.offset(marginLayoutParams.leftMargin, marginLayoutParams.topMargin);
                    rect.top += Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight - 1 : 0;
                    drawable.setAlpha((int) (layoutContainer.getAlpha() * 255.0f));
                    drawable.setBounds(rect);
                    drawable.draw(canvas);
                }
            }
            canvas.restore();
        }
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public /* synthetic */ void drawHeaderShadow(Canvas canvas, int i) {
        drawHeaderShadow(canvas, 255, i);
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void drawHeaderShadow(Canvas canvas, int i, int i2) {
        if (headerShadowDrawable == null || !SharedConfig.drawActionBarShadow) {
            return;
        }
        int i3 = i / 2;
        if (headerShadowDrawable.getAlpha() != i3) {
            headerShadowDrawable.setAlpha(i3);
        }
        headerShadowDrawable.setBounds(0, i2, getMeasuredWidth(), headerShadowDrawable.getIntrinsicHeight() + i2);
        headerShadowDrawable.draw(canvas);
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void expandPreviewFragment() {
        boolean z = true;
        this.previewOpenAnimationInProgress = true;
        this.inPreviewMode = false;
        List list = this.fragmentsStack;
        BaseFragment baseFragment = (BaseFragment) list.get(list.size() - 2);
        List list2 = this.fragmentsStack;
        final BaseFragment baseFragment2 = (BaseFragment) list2.get(list2.size() - 1);
        if (Build.VERSION.SDK_INT >= 21) {
            baseFragment2.fragmentView.setOutlineProvider(null);
            baseFragment2.fragmentView.setClipToOutline(false);
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) baseFragment2.fragmentView.getLayoutParams();
        layoutParams.leftMargin = 0;
        layoutParams.rightMargin = 0;
        layoutParams.bottomMargin = 0;
        layoutParams.topMargin = 0;
        layoutParams.height = -1;
        baseFragment2.fragmentView.setLayoutParams(layoutParams);
        presentFragmentInternalRemoveOld(false, baseFragment);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(baseFragment2.fragmentView, (Property<View, Float>) View.SCALE_X, 1.0f, 1.05f, 1.0f), ObjectAnimator.ofFloat(baseFragment2.fragmentView, (Property<View, Float>) View.SCALE_Y, 1.0f, 1.05f, 1.0f));
        animatorSet.setDuration(200L);
        animatorSet.setInterpolator(new CubicBezierInterpolator(0.42d, 0.0d, 0.58d, 1.0d));
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBarLayout.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ActionBarLayout.this.previewOpenAnimationInProgress = false;
                baseFragment2.onPreviewOpenAnimationEnd();
            }
        });
        animatorSet.start();
        try {
            performHapticFeedback(3);
        } catch (Exception unused) {
        }
        baseFragment2.setInPreviewMode(false);
        baseFragment2.setInMenuMode(false);
        try {
            Window window = this.parentActivity.getWindow();
            if (Theme.getColor(Theme.key_actionBarDefault) != -1 && (!baseFragment2.hasForceLightStatusBar() || Theme.getCurrentTheme().isDark())) {
                z = false;
            }
            AndroidUtilities.setLightStatusBar(window, z, baseFragment2.hasForceLightStatusBar());
        } catch (Exception unused2) {
        }
    }

    public boolean extendActionMode(Menu menu) {
        if (!this.fragmentsStack.isEmpty()) {
            List list = this.fragmentsStack;
            if (((BaseFragment) list.get(list.size() - 1)).extendActionMode(menu)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public /* synthetic */ BaseFragment findFragment(Class cls) {
        return INavigationLayout.CC.$default$findFragment(this, cls);
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void finishPreviewFragment() {
        if (this.inPreviewMode || this.transitionAnimationPreviewMode) {
            Runnable runnable = this.delayedOpenAnimationRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.delayedOpenAnimationRunnable = null;
            }
            closeLastFragment(true);
        }
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public /* bridge */ /* synthetic */ BaseFragment getBackgroundFragment() {
        return INavigationLayout.CC.$default$getBackgroundFragment(this);
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public /* bridge */ /* synthetic */ BottomSheet getBottomSheet() {
        return INavigationLayout.CC.$default$getBottomSheet(this);
    }

    public BottomSheetTabs getBottomSheetTabs() {
        return this.bottomSheetTabs;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public int getBottomTabsHeight(boolean z) {
        BottomSheetTabs bottomSheetTabs;
        if (!this.main || (bottomSheetTabs = this.bottomSheetTabs) == null) {
            return 0;
        }
        return bottomSheetTabs.getHeight(z);
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public float getCurrentPreviewFragmentAlpha() {
        if (!this.inPreviewMode && !this.transitionAnimationPreviewMode && !this.previewOpenAnimationInProgress) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        BaseFragment baseFragment = this.oldFragment;
        return ((baseFragment == null || !baseFragment.inPreviewMode) ? this.containerView : this.containerViewBack).getAlpha();
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public DrawerLayoutContainer getDrawerLayoutContainer() {
        return this.drawerLayoutContainer;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public List<BaseFragment> getFragmentStack() {
        return this.fragmentsStack;
    }

    public float getInnerTranslationX() {
        return this.innerTranslationX;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public BaseFragment getLastFragment() {
        if (this.fragmentsStack.isEmpty()) {
            return null;
        }
        return (BaseFragment) this.fragmentsStack.get(r0.size() - 1);
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public Theme.MessageDrawable getMessageDrawableOutMediaStart() {
        return this.messageDrawableOutMediaStart;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public Theme.MessageDrawable getMessageDrawableOutStart() {
        return this.messageDrawableOutStart;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public FrameLayout getOverlayContainerView() {
        return this;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public /* bridge */ /* synthetic */ Activity getParentActivity() {
        return INavigationLayout.CC.$default$getParentActivity(this);
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public List<BackButtonMenu.PulledDialog> getPulledDialogs() {
        return this.pulledDialogs;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public /* bridge */ /* synthetic */ BaseFragment getSafeLastFragment() {
        return INavigationLayout.CC.$default$getSafeLastFragment(this);
    }

    public EmptyBaseFragment getSheetFragment() {
        return getSheetFragment(true);
    }

    public EmptyBaseFragment getSheetFragment(boolean z) {
        if (this.parentActivity == null) {
            return null;
        }
        if (this.sheetFragment == null) {
            EmptyBaseFragment emptyBaseFragment = new EmptyBaseFragment();
            this.sheetFragment = emptyBaseFragment;
            emptyBaseFragment.setParentLayout(this);
            EmptyBaseFragment emptyBaseFragment2 = this.sheetFragment;
            View viewCreateView = emptyBaseFragment2.fragmentView;
            if (viewCreateView == null) {
                viewCreateView = emptyBaseFragment2.createView(this.parentActivity);
            }
            if (viewCreateView.getParent() != this.sheetContainer) {
                AndroidUtilities.removeFromParent(viewCreateView);
                this.sheetContainer.addView(viewCreateView, LayoutHelper.createFrame(-1, -1.0f));
            }
            this.sheetFragment.onResume();
            this.sheetFragment.onBecomeFullyVisible();
        }
        return this.sheetFragment;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public float getThemeAnimationValue() {
        return this.themeAnimationValue;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public /* bridge */ /* synthetic */ ViewGroup getView() {
        return INavigationLayout.CC.$default$getView(this);
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public Window getWindow() {
        Window window = this.window;
        if (window != null) {
            return window;
        }
        if (getParentActivity() != null) {
            return getParentActivity().getWindow();
        }
        return null;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public /* synthetic */ boolean hasIntegratedBlurInPreview() {
        return INavigationLayout.CC.$default$hasIntegratedBlurInPreview(this);
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public /* synthetic */ boolean isActionBarInCrossfade() {
        return INavigationLayout.CC.$default$isActionBarInCrossfade(this);
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public boolean isInBubbleMode() {
        return this.inBubbleMode;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public boolean isInPassivePreviewMode() {
        return (this.inPreviewMode && this.previewMenu == null) || this.transitionAnimationPreviewMode;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public boolean isInPreviewMode() {
        return this.inPreviewMode || this.transitionAnimationPreviewMode;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public boolean isPreviewOpenAnimationInProgress() {
        return this.previewOpenAnimationInProgress;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public boolean isSheet() {
        return this.isSheet;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public boolean isSwipeInProgress() {
        return this.startedTracking;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public boolean isTransitionAnimationInProgress() {
        return this.transitionAnimationInProgress || this.animationInProgress;
    }

    public int measureKeyboardHeight() {
        View rootView = getRootView();
        getWindowVisibleDisplayFrame(this.rect);
        Rect rect = this.rect;
        if (rect.bottom == 0 && rect.top == 0) {
            return 0;
        }
        int height = (rootView.getHeight() - (this.rect.top != 0 ? AndroidUtilities.statusBarHeight : 0)) - AndroidUtilities.getViewInset(rootView);
        Rect rect2 = this.rect;
        return Math.max(0, height - (rect2.bottom - rect2.top));
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void movePreviewFragment(float f) {
        if (this.inPreviewMode && this.previewMenu == null && !this.transitionAnimationPreviewMode) {
            float translationY = this.containerView.getTranslationY();
            float f2 = -f;
            if (f2 > BitmapDescriptorFactory.HUE_RED) {
                f2 = BitmapDescriptorFactory.HUE_RED;
            } else if (f2 < (-AndroidUtilities.dp(60.0f))) {
                expandPreviewFragment();
                f2 = BitmapDescriptorFactory.HUE_RED;
            }
            if (translationY != f2) {
                this.containerView.setTranslationY(f2);
                invalidate();
            }
        }
    }

    public void onActionModeFinished(Object obj) {
        ActionBar actionBar = this.currentActionBar;
        if (actionBar != null) {
            actionBar.setVisibility(0);
        }
        this.inActionMode = false;
    }

    public void onActionModeStarted(Object obj) {
        ActionBar actionBar = this.currentActionBar;
        if (actionBar != null) {
            actionBar.setVisibility(8);
        }
        this.inActionMode = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attached = true;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void onBackPressed() {
        ActionBar actionBar;
        if (this.transitionAnimationPreviewMode || this.startedTracking || checkTransitionAnimation() || this.fragmentsStack.isEmpty() || GroupCallPip.onBackPressed()) {
            return;
        }
        if (!storyViewerAttached() && (actionBar = this.currentActionBar) != null && !actionBar.isActionModeShowed()) {
            ActionBar actionBar2 = this.currentActionBar;
            if (actionBar2.isSearchFieldVisible) {
                actionBar2.closeSearchField();
                return;
            }
        }
        EmptyBaseFragment emptyBaseFragment = this.sheetFragment;
        if (emptyBaseFragment == null || emptyBaseFragment.onBackPressed()) {
            List list = this.fragmentsStack;
            if (!((BaseFragment) list.get(list.size() - 1)).onBackPressed() || this.fragmentsStack.isEmpty()) {
                return;
            }
            closeLastFragment(true);
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.fragmentsStack.isEmpty()) {
            return;
        }
        int size = this.fragmentsStack.size();
        for (int i = 0; i < size; i++) {
            BaseFragment baseFragment = (BaseFragment) this.fragmentsStack.get(i);
            baseFragment.onConfigurationChanged(configuration);
            Dialog dialog = baseFragment.visibleDialog;
            if (dialog instanceof BottomSheet) {
                ((BottomSheet) dialog).onConfigurationChanged(configuration);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attached = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.telegram.ui.Components.FloatingDebug.FloatingDebugProvider
    public List onGetDebugItems() {
        BaseFragment lastFragment = getLastFragment();
        if (lastFragment == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        if (lastFragment instanceof FloatingDebugProvider) {
            arrayList.addAll(((FloatingDebugProvider) lastFragment).onGetDebugItems());
        }
        observeDebugItemsFromView(arrayList, lastFragment.getFragmentView());
        return arrayList;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.animationInProgress || checkTransitionAnimation() || onTouchEvent(motionEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        ActionBar actionBar;
        if (i == 82 && !checkTransitionAnimation() && !this.startedTracking && (actionBar = this.currentActionBar) != null) {
            actionBar.onMenuButtonPressed();
        }
        return super.onKeyUp(i, keyEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b7  */
    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingRight = (i3 - i) - getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = (i4 - i2) - getPaddingBottom();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                BottomSheetTabs bottomSheetTabs = this.bottomSheetTabs;
                if (childAt == bottomSheetTabs) {
                    bottomSheetTabs.updateCurrentAccount();
                }
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i10 = layoutParams.gravity;
                if (i10 == -1) {
                    i10 = 8388659;
                }
                int absoluteGravity = Gravity.getAbsoluteGravity(i10, getLayoutDirection());
                int i11 = i10 & R.styleable.AppCompatTheme_toolbarNavigationButtonStyle;
                int i12 = absoluteGravity & 7;
                if (i12 == 1) {
                    i5 = (((paddingRight - paddingLeft) - measuredWidth) / 2) + paddingLeft + layoutParams.leftMargin;
                } else if (i12 != 5) {
                    i6 = layoutParams.leftMargin + paddingLeft;
                    if (i11 != 16) {
                        i7 = (((paddingBottom - paddingTop) - measuredHeight) / 2) + paddingTop + layoutParams.topMargin;
                    } else if (i11 == 48 || i11 != 80) {
                        i8 = paddingTop + layoutParams.topMargin;
                        if (childAt == this.bottomSheetTabs && this.savedBottomSheetTabsTop != 0 && (this.isKeyboardVisible || ((getParent() instanceof View) && ((View) getParent()).getHeight() > getHeight()))) {
                            i8 = this.savedBottomSheetTabsTop;
                        } else if (childAt == this.bottomSheetTabs) {
                            this.savedBottomSheetTabsTop = i8;
                        }
                        childAt.layout(i6, i8, measuredWidth + i6, measuredHeight + i8);
                    } else {
                        i7 = paddingBottom - measuredHeight;
                    }
                    i8 = i7 - layoutParams.bottomMargin;
                    if (childAt == this.bottomSheetTabs) {
                        if (childAt == this.bottomSheetTabs) {
                        }
                        childAt.layout(i6, i8, measuredWidth + i6, measuredHeight + i8);
                    }
                } else {
                    i5 = paddingRight - measuredWidth;
                }
                i6 = i5 - layoutParams.rightMargin;
                if (i11 != 16) {
                }
                i8 = i7 - layoutParams.bottomMargin;
                if (childAt == this.bottomSheetTabs) {
                }
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void onLowMemory() {
        Iterator it = this.fragmentsStack.iterator();
        while (it.hasNext()) {
            ((BaseFragment) it.next()).onLowMemory();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        BaseFragment baseFragment;
        if (this.fragmentsStack.isEmpty()) {
            baseFragment = null;
        } else {
            List list = this.fragmentsStack;
            baseFragment = (BaseFragment) list.get(list.size() - 1);
        }
        if (baseFragment == null || !storyViewerAttached()) {
            INavigationLayout.INavigationLayoutDelegate iNavigationLayoutDelegate = this.delegate;
            if (iNavigationLayoutDelegate != null) {
                int[] iArr = this.measureSpec;
                iArr[0] = i;
                iArr[1] = i2;
                iNavigationLayoutDelegate.onMeasureOverride(iArr);
                int[] iArr2 = this.measureSpec;
                int i3 = iArr2[0];
                i2 = iArr2[1];
                i = i3;
            }
            this.isKeyboardVisible = measureKeyboardHeight() > AndroidUtilities.dp(20.0f);
        } else {
            int iMeasureKeyboardHeight = measureKeyboardHeight();
            baseFragment.setKeyboardHeightFromParent(iMeasureKeyboardHeight);
            i2 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2) + iMeasureKeyboardHeight, 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void onPause() {
        if (!this.fragmentsStack.isEmpty()) {
            ((BaseFragment) this.fragmentsStack.get(r0.size() - 1)).onPause();
        }
        EmptyBaseFragment emptyBaseFragment = this.sheetFragment;
        if (emptyBaseFragment != null) {
            emptyBaseFragment.onPause();
        }
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void onResume() {
        if (!this.fragmentsStack.isEmpty()) {
            ((BaseFragment) this.fragmentsStack.get(r0.size() - 1)).onResume();
        }
        EmptyBaseFragment emptyBaseFragment = this.sheetFragment;
        if (emptyBaseFragment != null) {
            emptyBaseFragment.onResume();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x02c4 A[PHI: r14
      0x02c4: PHI (r14v3 android.view.VelocityTracker) = (r14v2 android.view.VelocityTracker), (r14v5 android.view.VelocityTracker) binds: [B:124:0x02c2, B:120:0x02b5] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        Animator customSlideTransition;
        if (checkTransitionAnimation() || this.inActionMode || this.animationInProgress) {
            return false;
        }
        if (this.fragmentsStack.size() > 1 && allowSwipe()) {
            if (motionEvent != null && motionEvent.getAction() == 0) {
                List list = this.fragmentsStack;
                if (!((BaseFragment) list.get(list.size() - 1)).isSwipeBackEnabled(motionEvent)) {
                    this.maybeStartTracking = false;
                    this.startedTracking = false;
                    return false;
                }
                this.startedTrackingPointerId = motionEvent.getPointerId(0);
                this.maybeStartTracking = true;
                this.startedTrackingX = (int) motionEvent.getX();
                this.startedTrackingY = (int) motionEvent.getY();
                VelocityTracker velocityTracker2 = this.velocityTracker;
                if (velocityTracker2 != null) {
                    velocityTracker2.clear();
                }
            } else if (motionEvent != null && motionEvent.getAction() == 2 && motionEvent.getPointerId(0) == this.startedTrackingPointerId) {
                if (this.velocityTracker == null) {
                    this.velocityTracker = VelocityTracker.obtain();
                }
                int iMax = Math.max(0, (int) (motionEvent.getX() - this.startedTrackingX));
                int iAbs = Math.abs(((int) motionEvent.getY()) - this.startedTrackingY);
                this.velocityTracker.addMovement(motionEvent);
                if (!this.transitionAnimationInProgress && !this.inPreviewMode && this.maybeStartTracking && !this.startedTracking && iMax >= AndroidUtilities.getPixelsInCM(0.4f, true) && Math.abs(iMax) / 3 > iAbs) {
                    List list2 = this.fragmentsStack;
                    if (((BaseFragment) list2.get(list2.size() - 1)).canBeginSlide() && findScrollingChild(this, motionEvent.getX(), motionEvent.getY()) == null) {
                        prepareForMoving(motionEvent);
                    } else {
                        this.maybeStartTracking = false;
                    }
                } else if (this.startedTracking) {
                    if (!this.beginTrackingSent) {
                        if (this.parentActivity.getCurrentFocus() != null) {
                            AndroidUtilities.hideKeyboard(this.parentActivity.getCurrentFocus());
                        }
                        List list3 = this.fragmentsStack;
                        ((BaseFragment) list3.get(list3.size() - 1)).onBeginSlide();
                        this.beginTrackingSent = true;
                    }
                    float f = iMax;
                    this.containerView.setTranslationX(f);
                    setInnerTranslationX(f);
                }
            } else if (motionEvent != null && motionEvent.getPointerId(0) == this.startedTrackingPointerId && (motionEvent.getAction() == 3 || motionEvent.getAction() == 1 || motionEvent.getAction() == 6)) {
                if (this.velocityTracker == null) {
                    this.velocityTracker = VelocityTracker.obtain();
                }
                this.velocityTracker.computeCurrentVelocity(1000);
                List list4 = this.fragmentsStack;
                BaseFragment baseFragment = (BaseFragment) list4.get(list4.size() - 1);
                if (!this.inPreviewMode && !this.transitionAnimationPreviewMode && !this.startedTracking && baseFragment.isSwipeBackEnabled(motionEvent)) {
                    float xVelocity = this.velocityTracker.getXVelocity();
                    float yVelocity = this.velocityTracker.getYVelocity();
                    if (xVelocity >= 3500.0f && xVelocity > Math.abs(yVelocity) && baseFragment.canBeginSlide()) {
                        prepareForMoving(motionEvent);
                        if (!this.beginTrackingSent) {
                            if (((Activity) getContext()).getCurrentFocus() != null) {
                                AndroidUtilities.hideKeyboard(((Activity) getContext()).getCurrentFocus());
                            }
                            this.beginTrackingSent = true;
                        }
                    }
                }
                if (this.startedTracking) {
                    float x = this.containerView.getX();
                    AnimatorSet animatorSet = new AnimatorSet();
                    float xVelocity2 = this.velocityTracker.getXVelocity();
                    final boolean z = x < ((float) this.containerView.getMeasuredWidth()) / 3.0f && (xVelocity2 < 3500.0f || xVelocity2 < this.velocityTracker.getYVelocity());
                    boolean zShouldOverrideSlideTransition = baseFragment.shouldOverrideSlideTransition(false, z);
                    float measuredWidth = this.containerView.getMeasuredWidth();
                    if (z) {
                        int iMax2 = Math.max((int) ((320.0f / measuredWidth) * x), R.styleable.AppCompatTheme_windowFixedHeightMajor);
                        if (!zShouldOverrideSlideTransition) {
                            long j = iMax2;
                            animatorSet.playTogether(ObjectAnimator.ofFloat(this.containerView, (Property<LayoutContainer, Float>) View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED).setDuration(j), ObjectAnimator.ofFloat(this, "innerTranslationX", BitmapDescriptorFactory.HUE_RED).setDuration(j));
                            animatorSet.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                        }
                    } else {
                        x = measuredWidth - x;
                        int iMax3 = Math.max((int) ((200.0f / this.containerView.getMeasuredWidth()) * x), 50);
                        if (!zShouldOverrideSlideTransition) {
                            long j2 = iMax3;
                            animatorSet.playTogether(ObjectAnimator.ofFloat(this.containerView, (Property<LayoutContainer, Float>) View.TRANSLATION_X, r7.getMeasuredWidth()).setDuration(j2), ObjectAnimator.ofFloat(this, "innerTranslationX", this.containerView.getMeasuredWidth()).setDuration(j2));
                        }
                    }
                    Animator customSlideTransition2 = baseFragment.getCustomSlideTransition(false, z, x);
                    if (customSlideTransition2 != null) {
                        animatorSet.playTogether(customSlideTransition2);
                    }
                    List list5 = this.fragmentsStack;
                    BaseFragment baseFragment2 = (BaseFragment) list5.get(list5.size() - 2);
                    if (baseFragment2 != null && (customSlideTransition = baseFragment2.getCustomSlideTransition(false, z, x)) != null) {
                        animatorSet.playTogether(customSlideTransition);
                    }
                    animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBarLayout.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            ActionBarLayout.this.onSlideAnimationEnd(z);
                        }
                    });
                    animatorSet.start();
                    this.animationInProgress = true;
                    this.layoutToIgnore = this.containerViewBack;
                } else {
                    this.maybeStartTracking = false;
                    this.startedTracking = false;
                    this.layoutToIgnore = null;
                }
                velocityTracker = this.velocityTracker;
                if (velocityTracker != null) {
                }
            } else if (motionEvent == null) {
                this.maybeStartTracking = false;
                this.startedTracking = false;
                this.layoutToIgnore = null;
                velocityTracker = this.velocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    this.velocityTracker = null;
                }
            }
        }
        return this.startedTracking;
    }

    public void onUserLeaveHint() {
        if (!this.fragmentsStack.isEmpty()) {
            ((BaseFragment) this.fragmentsStack.get(r0.size() - 1)).onUserLeaveHint();
        }
        EmptyBaseFragment emptyBaseFragment = this.sheetFragment;
        if (emptyBaseFragment != null) {
            emptyBaseFragment.onUserLeaveHint();
        }
    }

    public void parentDraw(View view, Canvas canvas) {
        if (this.bottomSheetTabs == null || getHeight() >= view.getHeight()) {
            return;
        }
        canvas.save();
        canvas.translate(getX() + this.bottomSheetTabs.getX(), getY() + this.bottomSheetTabs.getY());
        this.bottomSheetTabs.draw(canvas);
        canvas.restore();
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public /* synthetic */ boolean presentFragment(BaseFragment baseFragment) {
        return presentFragment(new INavigationLayout.NavigationParams(baseFragment));
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public /* synthetic */ boolean presentFragment(BaseFragment baseFragment, boolean z) {
        return presentFragment(new INavigationLayout.NavigationParams(baseFragment).setRemoveLast(z));
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public /* synthetic */ boolean presentFragment(BaseFragment baseFragment, boolean z, boolean z2, boolean z3, boolean z4) {
        return presentFragment(new INavigationLayout.NavigationParams(baseFragment).setRemoveLast(z).setNoAnimation(z2).setCheckPresentFromDelegate(z3).setPreview(z4));
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public /* synthetic */ boolean presentFragment(BaseFragment baseFragment, boolean z, boolean z2, boolean z3, boolean z4, ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout) {
        return presentFragment(new INavigationLayout.NavigationParams(baseFragment).setRemoveLast(z).setNoAnimation(z2).setCheckPresentFromDelegate(z3).setPreview(z4).setMenuView(actionBarPopupWindowLayout));
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public boolean presentFragment(INavigationLayout.NavigationParams navigationParams) {
        INavigationLayout.INavigationLayoutDelegate iNavigationLayoutDelegate;
        final BaseFragment baseFragment;
        int measuredHeight;
        Runnable runnable;
        long j;
        LaunchActivity launchActivity;
        final BaseFragment baseFragment2 = navigationParams.fragment;
        final boolean z = navigationParams.removeLast;
        boolean z2 = navigationParams.noAnimation;
        boolean z3 = navigationParams.checkPresentFromDelegate;
        final boolean z4 = navigationParams.preview;
        final ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = navigationParams.menuView;
        if (baseFragment2 == null || checkTransitionAnimation() || !(((iNavigationLayoutDelegate = this.delegate) == null || !z3 || iNavigationLayoutDelegate.needPresentFragment(this, navigationParams)) && baseFragment2.onFragmentCreate())) {
            return false;
        }
        BaseFragment lastFragment = getLastFragment();
        Dialog visibleDialog = lastFragment != null ? lastFragment.getVisibleDialog() : null;
        if (visibleDialog == null && (launchActivity = LaunchActivity.instance) != null && launchActivity.getVisibleDialog() != null) {
            visibleDialog = LaunchActivity.instance.getVisibleDialog();
        }
        if (lastFragment != null && shouldOpenFragmentOverlay(visibleDialog)) {
            BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
            bottomSheetParams.transitionFromLeft = true;
            bottomSheetParams.allowNestedScroll = false;
            lastFragment.showAsSheet(baseFragment2, bottomSheetParams);
            return true;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.d("present fragment " + baseFragment2.getClass().getSimpleName() + " args=" + baseFragment2.getArguments());
        }
        StoryViewer.closeGlobalInstances();
        BottomSheetTabs bottomSheetTabs = this.bottomSheetTabs;
        if (bottomSheetTabs != null && !bottomSheetTabs.doNotDismiss) {
            LaunchActivity.dismissAllWeb();
        }
        if (this.inPreviewMode && this.transitionAnimationPreviewMode) {
            Runnable runnable2 = this.delayedOpenAnimationRunnable;
            if (runnable2 != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable2);
                this.delayedOpenAnimationRunnable = null;
            }
            closeLastFragment(false, true);
        }
        baseFragment2.setInPreviewMode(z4);
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout2 = this.previewMenu;
        if (actionBarPopupWindowLayout2 != null) {
            if (actionBarPopupWindowLayout2.getParent() != null) {
                ((ViewGroup) this.previewMenu.getParent()).removeView(this.previewMenu);
            }
            this.previewMenu = null;
        }
        this.previewMenu = actionBarPopupWindowLayout;
        baseFragment2.setInMenuMode(actionBarPopupWindowLayout != null);
        if (this.parentActivity.getCurrentFocus() != null && baseFragment2.hideKeyboardOnShow() && !z4) {
            AndroidUtilities.hideKeyboard(this.parentActivity.getCurrentFocus());
        }
        boolean z5 = z4 || (!z2 && MessagesController.getGlobalMainSettings().getBoolean("view_animations", true));
        if (this.fragmentsStack.isEmpty()) {
            baseFragment = null;
        } else {
            List list = this.fragmentsStack;
            baseFragment = (BaseFragment) list.get(list.size() - 1);
        }
        baseFragment2.setParentLayout(this);
        View viewCreateView = baseFragment2.fragmentView;
        if (viewCreateView == null) {
            viewCreateView = baseFragment2.createView(this.parentActivity);
        } else {
            ViewGroup viewGroup = (ViewGroup) viewCreateView.getParent();
            if (viewGroup != null) {
                baseFragment2.onRemoveFromParent();
                viewGroup.removeView(viewCreateView);
            }
        }
        this.containerViewBack.addView(viewCreateView);
        if (actionBarPopupWindowLayout != null) {
            this.containerViewBack.addView(actionBarPopupWindowLayout);
            actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), Integer.MIN_VALUE));
            measuredHeight = actionBarPopupWindowLayout.getMeasuredHeight() + AndroidUtilities.dp(24.0f);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) actionBarPopupWindowLayout.getLayoutParams();
            layoutParams.width = -2;
            layoutParams.height = -2;
            layoutParams.topMargin = (getMeasuredHeight() - measuredHeight) - AndroidUtilities.dp(6.0f);
            actionBarPopupWindowLayout.setLayoutParams(layoutParams);
        } else {
            measuredHeight = 0;
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) viewCreateView.getLayoutParams();
        layoutParams2.width = -1;
        layoutParams2.height = -1;
        if (z4) {
            int previewHeight = baseFragment2.getPreviewHeight();
            int i = Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0;
            if (previewHeight <= 0 || previewHeight >= getMeasuredHeight() - i) {
                int iDp = AndroidUtilities.dp(actionBarPopupWindowLayout != null ? BitmapDescriptorFactory.HUE_RED : 24.0f);
                layoutParams2.bottomMargin = iDp;
                layoutParams2.topMargin = iDp;
                layoutParams2.topMargin = iDp + AndroidUtilities.statusBarHeight;
            } else {
                layoutParams2.height = previewHeight;
                layoutParams2.topMargin = i + (((getMeasuredHeight() - i) - previewHeight) / 2);
            }
            if (actionBarPopupWindowLayout != null) {
                layoutParams2.bottomMargin += measuredHeight + AndroidUtilities.dp(8.0f);
            }
            int iDp2 = AndroidUtilities.dp(8.0f);
            layoutParams2.leftMargin = iDp2;
            layoutParams2.rightMargin = iDp2;
        } else {
            layoutParams2.leftMargin = 0;
            layoutParams2.rightMargin = 0;
            layoutParams2.bottomMargin = 0;
            layoutParams2.topMargin = 0;
        }
        viewCreateView.setLayoutParams(layoutParams2);
        ActionBar actionBar = baseFragment2.actionBar;
        if (actionBar != null && actionBar.shouldAddToContainer()) {
            if (this.removeActionBarExtraHeight) {
                baseFragment2.actionBar.setOccupyStatusBar(false);
            }
            AndroidUtilities.removeFromParent(baseFragment2.actionBar);
            this.containerViewBack.addView(baseFragment2.actionBar);
            baseFragment2.actionBar.setTitleOverlayText(this.titleOverlayText, this.titleOverlayTextId, this.overlayAction);
        }
        baseFragment2.attachSheets(this.containerViewBack);
        this.fragmentsStack.add(baseFragment2);
        onFragmentStackChanged("presentFragment");
        baseFragment2.onResume();
        this.currentActionBar = baseFragment2.actionBar;
        if (!baseFragment2.hasOwnBackground && viewCreateView.getBackground() == null) {
            viewCreateView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        }
        LayoutContainer layoutContainer = this.containerView;
        LayoutContainer layoutContainer2 = this.containerViewBack;
        this.containerView = layoutContainer2;
        this.containerViewBack = layoutContainer;
        layoutContainer2.setVisibility(0);
        setInnerTranslationX(BitmapDescriptorFactory.HUE_RED);
        this.containerView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        if (z4) {
            if (Build.VERSION.SDK_INT >= 21) {
                viewCreateView.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.ActionBar.ActionBarLayout.3
                    @Override // android.view.ViewOutlineProvider
                    public void getOutline(View view, Outline outline) {
                        outline.setRoundRect(0, AndroidUtilities.statusBarHeight, view.getMeasuredWidth(), view.getMeasuredHeight(), AndroidUtilities.dp(6.0f));
                    }
                });
                viewCreateView.setClipToOutline(true);
                viewCreateView.setElevation(AndroidUtilities.dp(4.0f));
            }
            if (this.previewBackgroundDrawable == null) {
                this.previewBackgroundDrawable = new ColorDrawable(771751936);
            }
            this.previewBackgroundDrawable.setAlpha(0);
            Theme.moveUpDrawable.setAlpha(0);
        }
        bringChildToFront(this.containerView);
        LayoutContainer layoutContainer3 = this.sheetContainer;
        if (layoutContainer3 != null) {
            bringChildToFront(layoutContainer3);
        }
        if (!z5) {
            presentFragmentInternalRemoveOld(z, baseFragment);
            View view = this.backgroundView;
            if (view != null) {
                view.setVisibility(0);
            }
        }
        if (this.themeAnimatorSet != null) {
            this.presentingFragmentDescriptions = baseFragment2.getThemeDescriptions();
        }
        if (!z5 && !z4) {
            View view2 = this.backgroundView;
            if (view2 != null) {
                view2.setAlpha(1.0f);
                this.backgroundView.setVisibility(0);
            }
            if (baseFragment != null) {
                baseFragment.onTransitionAnimationStart(false, false);
                baseFragment.onTransitionAnimationEnd(false, false);
            }
            baseFragment2.onTransitionAnimationStart(true, false);
            baseFragment2.onTransitionAnimationEnd(true, false);
            baseFragment2.onBecomeFullyVisible();
            return true;
        }
        if (this.useAlphaAnimations && this.fragmentsStack.size() == 1) {
            presentFragmentInternalRemoveOld(z, baseFragment);
            this.transitionAnimationStartTime = System.currentTimeMillis();
            this.transitionAnimationInProgress = true;
            this.layoutToIgnore = this.containerView;
            this.onOpenAnimationEndRunnable = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    ActionBarLayout.lambda$presentFragment$0(baseFragment, baseFragment2);
                }
            };
            ArrayList arrayList = new ArrayList();
            Property property = View.ALPHA;
            arrayList.add(ObjectAnimator.ofFloat(this, (Property<ActionBarLayout, Float>) property, BitmapDescriptorFactory.HUE_RED, 1.0f));
            View view3 = this.backgroundView;
            if (view3 != null) {
                view3.setVisibility(0);
                arrayList.add(ObjectAnimator.ofFloat(this.backgroundView, (Property<View, Float>) property, BitmapDescriptorFactory.HUE_RED, 1.0f));
            }
            if (baseFragment != null) {
                baseFragment.onTransitionAnimationStart(false, false);
            }
            baseFragment2.onTransitionAnimationStart(true, false);
            AnimatorSet animatorSet = new AnimatorSet();
            this.currentAnimation = animatorSet;
            animatorSet.playTogether(arrayList);
            this.currentAnimation.setInterpolator(this.accelerateDecelerateInterpolator);
            this.currentAnimation.setDuration(200L);
            this.currentAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBarLayout.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) throws IOException {
                    ActionBarLayout.this.onAnimationEndCheck(false);
                }
            });
            this.currentAnimation.start();
        } else {
            this.transitionAnimationPreviewMode = z4;
            this.transitionAnimationStartTime = System.currentTimeMillis();
            this.transitionAnimationInProgress = true;
            this.layoutToIgnore = this.containerView;
            final BaseFragment baseFragment3 = baseFragment;
            this.onOpenAnimationEndRunnable = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$presentFragment$1(z4, actionBarPopupWindowLayout, z, baseFragment3, baseFragment2);
                }
            };
            final boolean z6 = !baseFragment2.needDelayOpenAnimation();
            if (z6) {
                if (baseFragment != null) {
                    baseFragment.onTransitionAnimationStart(false, false);
                }
                baseFragment2.onTransitionAnimationStart(true, false);
            }
            this.delayedAnimationResumed = false;
            this.oldFragment = baseFragment;
            this.newFragment = baseFragment2;
            AnimatorSet animatorSetOnCustomTransitionAnimation = !z4 ? baseFragment2.onCustomTransitionAnimation(true, new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() throws IOException {
                    this.f$0.lambda$presentFragment$2();
                }
            }) : null;
            if (animatorSetOnCustomTransitionAnimation == null) {
                this.containerView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                LayoutContainer layoutContainer4 = this.containerView;
                if (z4) {
                    layoutContainer4.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    this.containerView.setScaleX(0.9f);
                    this.containerView.setScaleY(0.9f);
                } else {
                    layoutContainer4.setTranslationX(48.0f);
                    this.containerView.setScaleX(1.0f);
                    this.containerView.setScaleY(1.0f);
                }
                if (this.containerView.isKeyboardVisible || this.containerViewBack.isKeyboardVisible) {
                    if (baseFragment != null && !z4) {
                        baseFragment.saveKeyboardPositionBeforeTransition();
                    }
                    final BaseFragment baseFragment4 = baseFragment;
                    this.waitingForKeyboardCloseRunnable = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout.5
                        @Override // java.lang.Runnable
                        public void run() {
                            if (ActionBarLayout.this.waitingForKeyboardCloseRunnable != this) {
                                return;
                            }
                            ActionBarLayout.this.waitingForKeyboardCloseRunnable = null;
                            if (z6) {
                                BaseFragment baseFragment5 = baseFragment4;
                                if (baseFragment5 != null) {
                                    baseFragment5.onTransitionAnimationStart(false, false);
                                }
                                baseFragment2.onTransitionAnimationStart(true, false);
                                ActionBarLayout.this.startLayoutAnimation(true, true, z4);
                                return;
                            }
                            if (ActionBarLayout.this.delayedOpenAnimationRunnable != null) {
                                AndroidUtilities.cancelRunOnUIThread(ActionBarLayout.this.delayedOpenAnimationRunnable);
                                if (ActionBarLayout.this.delayedAnimationResumed) {
                                    ActionBarLayout.this.delayedOpenAnimationRunnable.run();
                                } else {
                                    AndroidUtilities.runOnUIThread(ActionBarLayout.this.delayedOpenAnimationRunnable, 200L);
                                }
                            }
                        }
                    };
                    if (baseFragment2.needDelayOpenAnimation()) {
                        this.delayedOpenAnimationRunnable = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout.6
                            @Override // java.lang.Runnable
                            public void run() {
                                if (ActionBarLayout.this.delayedOpenAnimationRunnable != this) {
                                    return;
                                }
                                ActionBarLayout.this.delayedOpenAnimationRunnable = null;
                                BaseFragment baseFragment5 = baseFragment;
                                if (baseFragment5 != null) {
                                    baseFragment5.onTransitionAnimationStart(false, false);
                                }
                                baseFragment2.onTransitionAnimationStart(true, false);
                                ActionBarLayout.this.startLayoutAnimation(true, true, z4);
                            }
                        };
                    }
                    runnable = this.waitingForKeyboardCloseRunnable;
                    j = 250;
                } else {
                    if (!baseFragment2.needDelayOpenAnimation()) {
                        startLayoutAnimation(true, true, z4);
                        return true;
                    }
                    runnable = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout.7
                        @Override // java.lang.Runnable
                        public void run() {
                            if (ActionBarLayout.this.delayedOpenAnimationRunnable != this) {
                                return;
                            }
                            ActionBarLayout.this.delayedOpenAnimationRunnable = null;
                            baseFragment2.onTransitionAnimationStart(true, false);
                            ActionBarLayout.this.startLayoutAnimation(true, true, z4);
                        }
                    };
                    this.delayedOpenAnimationRunnable = runnable;
                    j = 200;
                }
                AndroidUtilities.runOnUIThread(runnable, j);
            } else {
                if (!z4 && ((this.containerView.isKeyboardVisible || this.containerViewBack.isKeyboardVisible) && baseFragment != null)) {
                    baseFragment.saveKeyboardPositionBeforeTransition();
                }
                this.currentAnimation = animatorSetOnCustomTransitionAnimation;
            }
        }
        return true;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public /* synthetic */ boolean presentFragmentAsPreview(BaseFragment baseFragment) {
        return presentFragment(new INavigationLayout.NavigationParams(baseFragment).setPreview(true));
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public /* synthetic */ boolean presentFragmentAsPreviewWithMenu(BaseFragment baseFragment, ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout) {
        return presentFragment(new INavigationLayout.NavigationParams(baseFragment).setPreview(true).setMenuView(actionBarPopupWindowLayout));
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void rebuildAllFragmentViews(boolean z, boolean z2) {
        if (this.transitionAnimationInProgress || this.startedTracking) {
            this.rebuildAfterAnimation = true;
            this.rebuildLastAfterAnimation = z;
            this.showLastAfterAnimation = z2;
            return;
        }
        int size = this.fragmentsStack.size();
        if (!z) {
            size--;
        }
        if (this.inPreviewMode) {
            size--;
        }
        for (int i = 0; i < size; i++) {
            ((BaseFragment) this.fragmentsStack.get(i)).clearViews();
            ((BaseFragment) this.fragmentsStack.get(i)).setParentLayout(this);
        }
        INavigationLayout.INavigationLayoutDelegate iNavigationLayoutDelegate = this.delegate;
        if (iNavigationLayoutDelegate != null) {
            iNavigationLayoutDelegate.onRebuildAllFragments(this, z);
        }
        if (z2) {
            showLastFragment();
        }
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public /* synthetic */ void rebuildFragments(int i) {
        INavigationLayout.CC.$default$rebuildFragments(this, i);
    }

    public void rebuildLogout() {
        this.containerView.removeAllViews();
        this.containerViewBack.removeAllViews();
        this.currentActionBar = null;
        this.newFragment = null;
        this.oldFragment = null;
    }

    public void relayout() {
        requestLayout();
        this.containerView.requestLayout();
        this.containerViewBack.requestLayout();
        this.sheetContainer.requestLayout();
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void removeAllFragments() {
        while (this.fragmentsStack.size() > 0) {
            removeFragmentFromStackInternal((BaseFragment) this.fragmentsStack.get(0), false);
        }
        View view = this.backgroundView;
        if (view != null) {
            view.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(180L).withEndAction(new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$removeAllFragments$6();
                }
            }).start();
        }
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public /* synthetic */ void removeFragmentFromStack(int i) {
        INavigationLayout.CC.$default$removeFragmentFromStack(this, i);
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public /* synthetic */ void removeFragmentFromStack(BaseFragment baseFragment) {
        removeFragmentFromStack(baseFragment, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0016  */
    @Override // org.telegram.ui.ActionBar.INavigationLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void removeFragmentFromStack(BaseFragment baseFragment, boolean z) throws IOException {
        if (this.fragmentsStack.size() > 0) {
            List list = this.fragmentsStack;
            if (list.get(list.size() - 1) != baseFragment) {
                if (this.fragmentsStack.size() > 1) {
                    if (this.fragmentsStack.get(r0.size() - 2) == baseFragment) {
                        onOpenAnimationEnd();
                        onCloseAnimationEnd();
                    }
                }
            }
        }
        checkBlackScreen("removeFragmentFromStack " + z);
        if (this.useAlphaAnimations && this.fragmentsStack.size() == 1 && AndroidUtilities.isTablet()) {
            closeLastFragment(true);
            return;
        }
        if (this.delegate != null && this.fragmentsStack.size() == 1 && AndroidUtilities.isTablet()) {
            this.delegate.needCloseLastFragment(this);
        }
        removeFragmentFromStackInternal(baseFragment, baseFragment.allowFinishFragmentInsteadOfRemoveFromStack() && !z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        onTouchEvent(null);
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void resumeDelayedFragmentAnimation() {
        this.delayedAnimationResumed = true;
        Runnable runnable = this.delayedOpenAnimationRunnable;
        if (runnable == null || this.waitingForKeyboardCloseRunnable != null) {
            return;
        }
        AndroidUtilities.cancelRunOnUIThread(runnable);
        this.delayedOpenAnimationRunnable.run();
        this.delayedOpenAnimationRunnable = null;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void setBackgroundView(View view) {
        this.backgroundView = view;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void setDelegate(INavigationLayout.INavigationLayoutDelegate iNavigationLayoutDelegate) {
        this.delegate = iNavigationLayoutDelegate;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void setDrawerLayoutContainer(DrawerLayoutContainer drawerLayoutContainer) {
        this.drawerLayoutContainer = drawerLayoutContainer;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void setFragmentPanTranslationOffset(int i) {
        LayoutContainer layoutContainer = this.containerView;
        if (layoutContainer != null) {
            layoutContainer.setFragmentPanTranslationOffset(i);
        }
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void setFragmentStack(List<BaseFragment> list) {
        this.fragmentsStack = list;
        BottomSheetTabs bottomSheetTabs = this.bottomSheetTabs;
        if (bottomSheetTabs != null) {
            bottomSheetTabs.stopListening(new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.invalidate();
                }
            }, new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.relayout();
                }
            });
            AndroidUtilities.removeFromParent(this.bottomSheetTabs);
            this.bottomSheetTabs = null;
        }
        if (this.main) {
            BottomSheetTabs bottomSheetTabs2 = new BottomSheetTabs(this.parentActivity, this);
            this.bottomSheetTabs = bottomSheetTabs2;
            this.bottomSheetTabsClip = new BottomSheetTabs.ClipTools(bottomSheetTabs2);
            this.bottomSheetTabs.listen(new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.invalidate();
                }
            }, new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.relayout();
                }
            });
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, AndroidUtilities.dp(76.0f));
            layoutParams.gravity = 87;
            addView(this.bottomSheetTabs, layoutParams);
            if (LaunchActivity.instance.getBottomSheetTabsOverlay() != null) {
                LaunchActivity.instance.getBottomSheetTabsOverlay().setTabsView(this.bottomSheetTabs);
            }
        }
        LayoutContainer layoutContainer = this.containerViewBack;
        if (layoutContainer != null) {
            AndroidUtilities.removeFromParent(layoutContainer);
        }
        LayoutContainer layoutContainer2 = new LayoutContainer(this.parentActivity);
        this.containerViewBack = layoutContainer2;
        addView(layoutContainer2);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.containerViewBack.getLayoutParams();
        layoutParams2.width = -1;
        layoutParams2.height = -1;
        layoutParams2.gravity = 51;
        this.containerViewBack.setLayoutParams(layoutParams2);
        LayoutContainer layoutContainer3 = this.containerView;
        if (layoutContainer3 != null) {
            AndroidUtilities.removeFromParent(layoutContainer3);
        }
        LayoutContainer layoutContainer4 = new LayoutContainer(this.parentActivity);
        this.containerView = layoutContainer4;
        addView(layoutContainer4);
        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.containerView.getLayoutParams();
        layoutParams3.width = -1;
        layoutParams3.height = -1;
        layoutParams3.gravity = 51;
        this.containerView.setLayoutParams(layoutParams3);
        LayoutContainer layoutContainer5 = this.sheetContainer;
        if (layoutContainer5 != null) {
            AndroidUtilities.removeFromParent(layoutContainer5);
        }
        LayoutContainer layoutContainer6 = new LayoutContainer(this.parentActivity);
        this.sheetContainer = layoutContainer6;
        addView(layoutContainer6);
        FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) this.sheetContainer.getLayoutParams();
        layoutParams4.width = -1;
        layoutParams4.height = -1;
        layoutParams4.gravity = 51;
        this.sheetContainer.setLayoutParams(layoutParams4);
        EmptyBaseFragment emptyBaseFragment = this.sheetFragment;
        if (emptyBaseFragment != null) {
            emptyBaseFragment.setParentLayout(this);
            EmptyBaseFragment emptyBaseFragment2 = this.sheetFragment;
            View viewCreateView = emptyBaseFragment2.fragmentView;
            if (viewCreateView == null) {
                viewCreateView = emptyBaseFragment2.createView(this.parentActivity);
            }
            if (viewCreateView.getParent() != this.sheetContainer) {
                AndroidUtilities.removeFromParent(viewCreateView);
                this.sheetContainer.addView(viewCreateView, LayoutHelper.createFrame(-1, -1.0f));
            }
            this.sheetFragment.onResume();
            this.sheetFragment.onBecomeFullyVisible();
        }
        Iterator it = this.fragmentsStack.iterator();
        while (it.hasNext()) {
            ((BaseFragment) it.next()).setParentLayout(this);
        }
    }

    public void setFragmentStackChangedListener(Runnable runnable) {
        this.onFragmentStackChangedListener = runnable;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void setHighlightActionButtons(boolean z) {
        this.highlightActionButtons = z;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void setInBubbleMode(boolean z) {
        this.inBubbleMode = z;
    }

    public void setInnerTranslationX(float f) {
        int navigationBarColor;
        int navigationBarColor2;
        this.innerTranslationX = f;
        invalidate();
        if (this.fragmentsStack.size() < 2 || this.containerView.getMeasuredWidth() <= 0) {
            return;
        }
        float measuredWidth = f / this.containerView.getMeasuredWidth();
        List list = this.fragmentsStack;
        BaseFragment baseFragment = (BaseFragment) list.get(list.size() - 2);
        baseFragment.onSlideProgress(false, measuredWidth);
        BaseFragment baseFragment2 = (BaseFragment) this.fragmentsStack.get(r1.size() - 1);
        float fClamp = MathUtils.clamp(measuredWidth * 2.0f, BitmapDescriptorFactory.HUE_RED, 1.0f);
        if (!baseFragment2.isBeginToShow() || (navigationBarColor = baseFragment2.getNavigationBarColor()) == (navigationBarColor2 = baseFragment.getNavigationBarColor())) {
            return;
        }
        baseFragment2.setNavigationBarColor(ColorUtils.blendARGB(navigationBarColor, navigationBarColor2, fClamp));
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void setIsSheet(boolean z) {
        this.isSheet = z;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void setNavigationBarColor(int i) {
        BottomSheetTabs bottomSheetTabs = this.bottomSheetTabs;
        if (bottomSheetTabs != null) {
            bottomSheetTabs.setNavigationBarColor(i, (this.startedTracking || this.animationInProgress) ? false : true);
        }
    }

    public void setOverrideWidthOffset(int i) {
        this.overrideWidthOffset = i;
        invalidate();
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void setPulledDialogs(List<BackButtonMenu.PulledDialog> list) {
        this.pulledDialogs = list;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void setRemoveActionBarExtraHeight(boolean z) {
        this.removeActionBarExtraHeight = z;
    }

    public void setThemeAnimationValue(float f) throws NoSuchFieldException, IOException, SecurityException {
        this.themeAnimationValue = f;
        int size = this.themeAnimatorDescriptions.size();
        for (int i = 0; i < size; i++) {
            ArrayList arrayList = (ArrayList) this.themeAnimatorDescriptions.get(i);
            int[] iArr = (int[]) this.animateStartColors.get(i);
            int[] iArr2 = (int[]) this.animateEndColors.get(i);
            int size2 = arrayList.size();
            int i2 = 0;
            while (i2 < size2) {
                int iRed = Color.red(iArr2[i2]);
                int iGreen = Color.green(iArr2[i2]);
                int iBlue = Color.blue(iArr2[i2]);
                int iAlpha = Color.alpha(iArr2[i2]);
                int iRed2 = Color.red(iArr[i2]);
                int iGreen2 = Color.green(iArr[i2]);
                int iBlue2 = Color.blue(iArr[i2]);
                int i3 = size;
                int iArgb = Color.argb(Math.min(255, (int) (Color.alpha(iArr[i2]) + ((iAlpha - r2) * f))), Math.min(255, (int) (iRed2 + ((iRed - iRed2) * f))), Math.min(255, (int) (iGreen2 + ((iGreen - iGreen2) * f))), Math.min(255, (int) (iBlue2 + ((iBlue - iBlue2) * f))));
                ThemeDescription themeDescription = (ThemeDescription) arrayList.get(i2);
                themeDescription.setAnimatedColor(iArgb);
                themeDescription.setColor(iArgb, false, false);
                i2++;
                iArr = iArr;
                size = i3;
            }
        }
        int size3 = this.themeAnimatorDelegate.size();
        for (int i4 = 0; i4 < size3; i4++) {
            ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = (ThemeDescription.ThemeDescriptionDelegate) this.themeAnimatorDelegate.get(i4);
            if (themeDescriptionDelegate != null) {
                themeDescriptionDelegate.didSetColor();
                themeDescriptionDelegate.onAnimationProgress(f);
            }
        }
        ArrayList arrayList2 = this.presentingFragmentDescriptions;
        if (arrayList2 != null) {
            int size4 = arrayList2.size();
            for (int i5 = 0; i5 < size4; i5++) {
                ThemeDescription themeDescription2 = (ThemeDescription) this.presentingFragmentDescriptions.get(i5);
                themeDescription2.setColor(Theme.getColor(themeDescription2.getCurrentKey(), themeDescription2.resourcesProvider), false, false);
            }
        }
        INavigationLayout.ThemeAnimationSettings.onAnimationProgress onanimationprogress = this.animationProgressListener;
        if (onanimationprogress != null) {
            onanimationprogress.setProgress(f);
        }
        INavigationLayout.INavigationLayoutDelegate iNavigationLayoutDelegate = this.delegate;
        if (iNavigationLayoutDelegate != null) {
            iNavigationLayoutDelegate.onThemeProgress(f);
        }
    }

    public void setTitleOverlayText(String str, int i, Runnable runnable) {
        this.titleOverlayText = str;
        this.titleOverlayTextId = i;
        this.overlayAction = runnable;
        for (int i2 = 0; i2 < this.fragmentsStack.size(); i2++) {
            ActionBar actionBar = ((BaseFragment) this.fragmentsStack.get(i2)).actionBar;
            if (actionBar != null) {
                actionBar.setTitleOverlayText(this.titleOverlayText, this.titleOverlayTextId, runnable);
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void setUseAlphaAnimations(boolean z) {
        this.useAlphaAnimations = z;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void setWindow(Window window) {
        this.window = window;
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void showLastFragment() {
        if (this.fragmentsStack.isEmpty()) {
            return;
        }
        bringToFront(this.fragmentsStack.size() - 1);
    }

    @Override // org.telegram.ui.ActionBar.INavigationLayout
    public void startActivityForResult(Intent intent, int i) throws IOException {
        if (this.parentActivity == null) {
            return;
        }
        if (this.transitionAnimationInProgress) {
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.currentAnimation = null;
            }
            if (this.onCloseAnimationEndRunnable != null) {
                onCloseAnimationEnd();
            } else if (this.onOpenAnimationEndRunnable != null) {
                onOpenAnimationEnd();
            }
            this.containerView.invalidate();
        }
        if (intent != null) {
            this.parentActivity.startActivityForResult(intent, i);
        }
    }

    public boolean storyViewerAttached() {
        BaseFragment baseFragment;
        if (this.fragmentsStack.isEmpty()) {
            baseFragment = null;
        } else {
            List list = this.fragmentsStack;
            baseFragment = (BaseFragment) list.get(list.size() - 1);
        }
        return (baseFragment == null || baseFragment.getLastStoryViewer() == null || !baseFragment.getLastStoryViewer().attachedToParent()) ? false : true;
    }

    public void updateTitleOverlay() {
        ActionBar actionBar;
        BaseFragment lastFragment = getLastFragment();
        if (lastFragment == null || (actionBar = lastFragment.actionBar) == null) {
            return;
        }
        actionBar.setTitleOverlayText(this.titleOverlayText, this.titleOverlayTextId, this.overlayAction);
    }
}
