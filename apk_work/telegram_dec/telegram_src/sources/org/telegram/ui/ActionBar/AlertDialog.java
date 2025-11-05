package org.telegram.ui.ActionBar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Build;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Map;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.R;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AttachableDrawable;
import org.telegram.ui.Components.EffectsTextView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LineProgressView;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.RLottieImageView;
import org.telegram.ui.Components.RadialProgressView;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.spoilers.SpoilersTextView;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.Stars.BalanceCloud;
import org.telegram.ui.Stars.StarsIntroActivity;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class AlertDialog extends Dialog implements Drawable.Callback, NotificationCenter.NotificationCenterDelegate {
    private View aboveMessageView;
    private int additioanalHorizontalPadding;
    private float aspectRatio;
    private int backgroundColor;
    private Rect backgroundPaddings;
    float blurAlpha;
    private boolean blurBehind;
    private Bitmap blurBitmap;
    private Matrix blurMatrix;
    private float blurOpacity;
    private Paint blurPaint;
    private BitmapShader blurShader;
    private boolean blurredBackground;
    private boolean blurredNativeBackground;
    private View bottomView;
    protected ViewGroup buttonsLayout;
    private boolean canCacnel;
    private AlertDialog cancelDialog;
    private boolean checkFocusable;
    private AlertDialogView containerView;
    private int[] containerViewLocation;
    private ScrollView contentScrollView;
    private int currentProgress;
    private boolean customMaxHeight;
    private View customView;
    private int customViewHeight;
    private int customViewOffset;
    private int customWidth;
    private int dialogButtonColorKey;
    private float dimAlpha;
    private Paint dimBlurPaint;
    private boolean dimCustom;
    private boolean dimEnabled;
    private boolean dismissDialogByButtons;
    private Runnable dismissRunnable;
    private boolean dismissed;
    private boolean drawBackground;
    private boolean focusable;
    private FrameLayout fullscreenContainerView;
    private int[] itemIcons;
    private ArrayList itemViews;
    private CharSequence[] items;
    private int lastScreenWidth;
    private LineProgressView lineProgressView;
    private TextView lineProgressViewPercent;
    private CharSequence message;
    private TextView messageTextView;
    private boolean messageTextViewClickable;
    private boolean needStarsBalance;
    private OnButtonClickListener negativeButtonListener;
    private CharSequence negativeButtonText;
    private OnButtonClickListener neutralButtonListener;
    private CharSequence neutralButtonText;
    private boolean notDrawBackgroundOnTopView;
    private OnButtonClickListener onBackButtonListener;
    private DialogInterface.OnCancelListener onCancelListener;
    private DialogInterface.OnClickListener onClickListener;
    private DialogInterface.OnDismissListener onDismissListener;
    private ViewTreeObserver.OnScrollChangedListener onScrollChangedListener;
    private Utilities.Callback overridenDissmissListener;
    private OnButtonClickListener positiveButtonListener;
    private CharSequence positiveButtonText;
    private FrameLayout progressViewContainer;
    private int progressViewStyle;
    private final Theme.ResourcesProvider resourcesProvider;
    private LinearLayout scrollContainer;
    private CharSequence secondTitle;
    private TextView secondTitleTextView;
    private BitmapDrawable[] shadow;
    private AnimatorSet[] shadowAnimation;
    private Drawable shadowDrawable;
    private boolean[] shadowVisibility;
    private Runnable showRunnable;
    private long shownAt;
    private BalanceCloud starsBalanceCloud;
    private CharSequence subtitle;
    private TextView subtitleTextView;
    private CharSequence title;
    private FrameLayout titleContainer;
    private SpoilersTextView titleTextView;
    private boolean topAnimationAutoRepeat;
    private int topAnimationId;
    private boolean topAnimationIsNew;
    private Map topAnimationLayerColors;
    private int topAnimationSize;
    private int topBackgroundColor;
    private Drawable topDrawable;
    private int topHeight;
    private RLottieImageView topImageView;
    private int topResId;
    private View topView;
    private boolean verticalButtons;
    private boolean withCancelDialog;

    public static class AlertDialogCell extends FrameLayout {
        private ImageView imageView;
        private final Theme.ResourcesProvider resourcesProvider;
        private TextView textView;

        public AlertDialogCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.resourcesProvider = resourcesProvider;
            setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_dialogButtonSelector), 2));
            setPadding(AndroidUtilities.dp(23.0f), 0, AndroidUtilities.dp(23.0f), 0);
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_dialogIcon), PorterDuff.Mode.MULTIPLY));
            addView(this.imageView, LayoutHelper.createFrame(-2, 40, (LocaleController.isRTL ? 5 : 3) | 16));
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setLines(1);
            this.textView.setSingleLine(true);
            this.textView.setGravity(1);
            this.textView.setEllipsize(TextUtils.TruncateAt.END);
            this.textView.setTextColor(getThemedColor(Theme.key_dialogTextBlack));
            this.textView.setTextSize(1, 16.0f);
            addView(this.textView, LayoutHelper.createFrame(-2, -2, (LocaleController.isRTL ? 5 : 3) | 16));
        }

        protected int getThemedColor(int i) {
            return Theme.getColor(i, this.resourcesProvider);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(48.0f), 1073741824));
        }

        public void setGravity(int i) {
            this.textView.setGravity(i);
        }

        public void setTextAndIcon(CharSequence charSequence, int i) {
            this.textView.setText(charSequence);
            if (i == 0) {
                this.imageView.setVisibility(4);
                this.textView.setPadding(0, 0, 0, 0);
            } else {
                this.imageView.setImageResource(i);
                this.imageView.setVisibility(0);
                this.textView.setPadding(LocaleController.isRTL ? 0 : AndroidUtilities.dp(56.0f), 0, LocaleController.isRTL ? AndroidUtilities.dp(56.0f) : 0, 0);
            }
        }

        public void setTextColor(int i) {
            this.textView.setTextColor(i);
        }
    }

    public class AlertDialogView extends LinearLayout {
        private Paint backgroundPaint;
        private AnimatedFloat blurPaintAlpha;
        private boolean inLayout;

        public AlertDialogView(Context context) {
            super(context);
            this.blurPaintAlpha = new AnimatedFloat(BitmapDescriptorFactory.HUE_RED, this);
            this.backgroundPaint = new Paint(1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLayout$1() {
            AlertDialog alertDialog = AlertDialog.this;
            boolean z = false;
            alertDialog.runShadowAnimation(0, alertDialog.titleTextView != null && AlertDialog.this.contentScrollView.getScrollY() > AlertDialog.this.scrollContainer.getTop());
            AlertDialog alertDialog2 = AlertDialog.this;
            if (alertDialog2.buttonsLayout != null && alertDialog2.contentScrollView.getScrollY() + AlertDialog.this.contentScrollView.getHeight() < AlertDialog.this.scrollContainer.getBottom()) {
                z = true;
            }
            alertDialog2.runShadowAnimation(1, z);
            AlertDialog.this.contentScrollView.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onMeasure$0() {
            AlertDialog.this.lastScreenWidth = AndroidUtilities.displaySize.x;
            int iDp = AndroidUtilities.displaySize.x - AndroidUtilities.dp(56.0f);
            int iDp2 = AndroidUtilities.dp(AndroidUtilities.isTablet() ? AndroidUtilities.isSmallTablet() ? 446.0f : 496.0f : 356.0f);
            Window window = AlertDialog.this.getWindow();
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.copyFrom(window.getAttributes());
            layoutParams.width = Math.min(iDp2, iDp) + AlertDialog.this.backgroundPaddings.left + AlertDialog.this.backgroundPaddings.right;
            try {
                window.setAttributes(layoutParams);
            } catch (Throwable th) {
                FileLog.e(th);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            if (AlertDialog.this.drawBackground && !AlertDialog.this.blurredBackground) {
                AlertDialog.this.shadowDrawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                if (AlertDialog.this.topView == null || !AlertDialog.this.notDrawBackgroundOnTopView) {
                    AlertDialog.this.shadowDrawable.draw(canvas);
                } else {
                    int bottom = AlertDialog.this.topView.getBottom();
                    canvas.save();
                    canvas.clipRect(0, bottom, getMeasuredWidth(), getMeasuredHeight());
                    AlertDialog.this.shadowDrawable.draw(canvas);
                    canvas.restore();
                }
            }
            super.dispatchDraw(canvas);
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            float fDp;
            if (AlertDialog.this.blurredBackground && !AlertDialog.this.blurredNativeBackground) {
                if (AlertDialog.this.progressViewStyle != 3 || AlertDialog.this.progressViewContainer == null) {
                    fDp = AndroidUtilities.dp(10.0f);
                    AndroidUtilities.rectTmp.set(getPaddingLeft(), getPaddingTop(), getMeasuredWidth() - getPaddingRight(), getMeasuredHeight() - getPaddingBottom());
                } else {
                    fDp = AndroidUtilities.dp(18.0f);
                    float width = AlertDialog.this.progressViewContainer.getWidth() * AlertDialog.this.progressViewContainer.getScaleX();
                    float height = AlertDialog.this.progressViewContainer.getHeight() * AlertDialog.this.progressViewContainer.getScaleY();
                    AndroidUtilities.rectTmp.set((getWidth() - width) / 2.0f, (getHeight() - height) / 2.0f, (getWidth() + width) / 2.0f, (getHeight() + height) / 2.0f);
                }
                float f = this.blurPaintAlpha.set(AlertDialog.this.blurPaint != null ? 1.0f : BitmapDescriptorFactory.HUE_RED);
                if (AlertDialog.this.blurPaint != null) {
                    AlertDialog.this.blurPaint.setAlpha((int) (f * 255.0f));
                    canvas.drawRoundRect(AndroidUtilities.rectTmp, fDp, fDp, AlertDialog.this.blurPaint);
                }
                if (AlertDialog.this.dimBlurPaint == null) {
                    AlertDialog.this.dimBlurPaint = new Paint(1);
                    AlertDialog.this.dimBlurPaint.setColor(ColorUtils.setAlphaComponent(-16777216, (int) (AlertDialog.this.dimAlpha * 255.0f)));
                }
                RectF rectF = AndroidUtilities.rectTmp;
                canvas.drawRoundRect(rectF, fDp, fDp, AlertDialog.this.dimBlurPaint);
                this.backgroundPaint.setColor(AlertDialog.this.backgroundColor);
                this.backgroundPaint.setAlpha((int) (r4.getAlpha() * ((f * (AlertDialog.this.blurOpacity - 1.0f)) + 1.0f)));
                canvas.drawRoundRect(rectF, fDp, fDp, this.backgroundPaint);
            }
            super.draw(canvas);
        }

        @Override // android.view.View
        public boolean hasOverlappingRendering() {
            return false;
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (!AlertDialog.this.withCancelDialog) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            AlertDialog.this.showCancelAlert();
            return false;
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (AlertDialog.this.progressViewStyle == 3) {
                int measuredWidth = ((i3 - i) - AlertDialog.this.progressViewContainer.getMeasuredWidth()) / 2;
                int measuredHeight = ((i4 - i2) - AlertDialog.this.progressViewContainer.getMeasuredHeight()) / 2;
                AlertDialog.this.progressViewContainer.layout(measuredWidth, measuredHeight, AlertDialog.this.progressViewContainer.getMeasuredWidth() + measuredWidth, AlertDialog.this.progressViewContainer.getMeasuredHeight() + measuredHeight);
            } else if (AlertDialog.this.contentScrollView != null) {
                if (AlertDialog.this.onScrollChangedListener == null) {
                    AlertDialog.this.onScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: org.telegram.ui.ActionBar.AlertDialog$AlertDialogView$$ExternalSyntheticLambda0
                        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                        public final void onScrollChanged() {
                            this.f$0.lambda$onLayout$1();
                        }
                    };
                    AlertDialog.this.contentScrollView.getViewTreeObserver().addOnScrollChangedListener(AlertDialog.this.onScrollChangedListener);
                }
                AlertDialog.this.onScrollChangedListener.onScrollChanged();
            }
            getLocationOnScreen(AlertDialog.this.containerViewLocation);
            if (AlertDialog.this.blurMatrix == null || AlertDialog.this.blurShader == null) {
                return;
            }
            AlertDialog.this.blurMatrix.reset();
            AlertDialog.this.blurMatrix.postScale(8.0f, 8.0f);
            AlertDialog.this.blurMatrix.postTranslate(-AlertDialog.this.containerViewLocation[0], -AlertDialog.this.containerViewLocation[1]);
            AlertDialog.this.blurShader.setLocalMatrix(AlertDialog.this.blurMatrix);
        }

        /* JADX WARN: Removed duplicated region for block: B:90:0x0333  */
        @Override // android.widget.LinearLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected void onMeasure(int i, int i2) {
            int measuredHeight;
            LinearLayout.LayoutParams layoutParams;
            View view;
            int iDp;
            float f;
            float f2;
            if (AlertDialog.this.progressViewStyle == 3) {
                AlertDialog.this.progressViewContainer.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(86.0f), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(86.0f), 1073741824));
                setMeasuredDimension(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
                return;
            }
            this.inLayout = true;
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            if (AlertDialog.this.customWidth > 0) {
                size = AlertDialog.this.customWidth + AlertDialog.this.backgroundPaddings.left + AlertDialog.this.backgroundPaddings.right;
            }
            int paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
            int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(paddingLeft - AndroidUtilities.dp(48.0f), 1073741824);
            int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
            ViewGroup viewGroup = AlertDialog.this.buttonsLayout;
            if (viewGroup != null) {
                int childCount = viewGroup.getChildCount();
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = AlertDialog.this.buttonsLayout.getChildAt(i3);
                    if (childAt instanceof TextView) {
                        ((TextView) childAt).setMaxWidth(AndroidUtilities.dp((paddingLeft - AndroidUtilities.dp(24.0f)) / 2));
                    }
                }
                AlertDialog.this.buttonsLayout.measure(iMakeMeasureSpec2, i2);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) AlertDialog.this.buttonsLayout.getLayoutParams();
                measuredHeight = paddingTop - ((AlertDialog.this.buttonsLayout.getMeasuredHeight() + layoutParams2.bottomMargin) + layoutParams2.topMargin);
            } else {
                measuredHeight = paddingTop;
            }
            if (AlertDialog.this.secondTitleTextView != null) {
                AlertDialog.this.secondTitleTextView.measure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(iMakeMeasureSpec), Integer.MIN_VALUE), i2);
            }
            if (AlertDialog.this.titleTextView != null) {
                if (AlertDialog.this.secondTitleTextView != null) {
                    AlertDialog.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec((View.MeasureSpec.getSize(iMakeMeasureSpec) - AlertDialog.this.secondTitleTextView.getMeasuredWidth()) - AndroidUtilities.dp(8.0f), 1073741824), i2);
                } else {
                    AlertDialog.this.titleTextView.measure(iMakeMeasureSpec, i2);
                }
            }
            if (AlertDialog.this.titleContainer != null) {
                AlertDialog.this.titleContainer.measure(iMakeMeasureSpec, i2);
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) AlertDialog.this.titleContainer.getLayoutParams();
                measuredHeight -= (AlertDialog.this.titleContainer.getMeasuredHeight() + layoutParams3.bottomMargin) + layoutParams3.topMargin;
            }
            if (AlertDialog.this.subtitleTextView != null) {
                AlertDialog.this.subtitleTextView.measure(iMakeMeasureSpec, i2);
                LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) AlertDialog.this.subtitleTextView.getLayoutParams();
                measuredHeight -= (AlertDialog.this.subtitleTextView.getMeasuredHeight() + layoutParams4.bottomMargin) + layoutParams4.topMargin;
            }
            if (AlertDialog.this.topImageView != null) {
                AlertDialog.this.topImageView.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(AlertDialog.this.topHeight), 1073741824));
                measuredHeight -= AlertDialog.this.topImageView.getMeasuredHeight();
            }
            if (AlertDialog.this.topView != null) {
                if (AlertDialog.this.aspectRatio == BitmapDescriptorFactory.HUE_RED) {
                    f = size / 936.0f;
                    f2 = 354.0f;
                } else {
                    f = size;
                    f2 = AlertDialog.this.aspectRatio;
                }
                int i4 = (int) (f * f2);
                AlertDialog.this.topView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(i4, 1073741824));
                AlertDialog.this.topView.getLayoutParams().height = i4;
                measuredHeight -= AlertDialog.this.topView.getMeasuredHeight();
            }
            if (AlertDialog.this.progressViewStyle == 0) {
                LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) AlertDialog.this.contentScrollView.getLayoutParams();
                if (AlertDialog.this.customView != null) {
                    layoutParams5.topMargin = (AlertDialog.this.titleTextView == null && AlertDialog.this.messageTextView.getVisibility() == 8 && AlertDialog.this.items == null) ? AndroidUtilities.dp(16.0f) : 0;
                    iDp = AlertDialog.this.buttonsLayout == null ? AndroidUtilities.dp(8.0f) : 0;
                    layoutParams5.bottomMargin = iDp;
                    int i5 = measuredHeight - (layoutParams5.bottomMargin + layoutParams5.topMargin);
                    AlertDialog.this.contentScrollView.measure(iMakeMeasureSpec2, View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE));
                    measuredHeight = i5 - AlertDialog.this.contentScrollView.getMeasuredHeight();
                } else if (AlertDialog.this.items != null) {
                    layoutParams5.topMargin = (AlertDialog.this.titleTextView == null && AlertDialog.this.messageTextView.getVisibility() == 8) ? AndroidUtilities.dp(8.0f) : 0;
                    layoutParams5.bottomMargin = iDp;
                    int i52 = measuredHeight - (layoutParams5.bottomMargin + layoutParams5.topMargin);
                    AlertDialog.this.contentScrollView.measure(iMakeMeasureSpec2, View.MeasureSpec.makeMeasureSpec(i52, Integer.MIN_VALUE));
                    measuredHeight = i52 - AlertDialog.this.contentScrollView.getMeasuredHeight();
                } else {
                    if (AlertDialog.this.messageTextView.getVisibility() == 0) {
                        layoutParams5.topMargin = AlertDialog.this.titleTextView == null ? AndroidUtilities.dp(19.0f) : 0;
                        iDp = AndroidUtilities.dp(20.0f);
                        layoutParams5.bottomMargin = iDp;
                    }
                    int i522 = measuredHeight - (layoutParams5.bottomMargin + layoutParams5.topMargin);
                    AlertDialog.this.contentScrollView.measure(iMakeMeasureSpec2, View.MeasureSpec.makeMeasureSpec(i522, Integer.MIN_VALUE));
                    measuredHeight = i522 - AlertDialog.this.contentScrollView.getMeasuredHeight();
                }
            } else {
                if (AlertDialog.this.progressViewContainer != null) {
                    AlertDialog.this.progressViewContainer.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight, Integer.MIN_VALUE));
                    layoutParams = (LinearLayout.LayoutParams) AlertDialog.this.progressViewContainer.getLayoutParams();
                    view = AlertDialog.this.progressViewContainer;
                } else {
                    if (AlertDialog.this.messageTextView != null) {
                        AlertDialog.this.messageTextView.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight, Integer.MIN_VALUE));
                        if (AlertDialog.this.messageTextView.getVisibility() != 8) {
                            layoutParams = (LinearLayout.LayoutParams) AlertDialog.this.messageTextView.getLayoutParams();
                            view = AlertDialog.this.messageTextView;
                        }
                    }
                    if (AlertDialog.this.lineProgressView != null) {
                        AlertDialog.this.lineProgressView.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(4.0f), 1073741824));
                        LinearLayout.LayoutParams layoutParams6 = (LinearLayout.LayoutParams) AlertDialog.this.lineProgressView.getLayoutParams();
                        int measuredHeight2 = measuredHeight - ((AlertDialog.this.lineProgressView.getMeasuredHeight() + layoutParams6.bottomMargin) + layoutParams6.topMargin);
                        AlertDialog.this.lineProgressViewPercent.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight2, Integer.MIN_VALUE));
                        LinearLayout.LayoutParams layoutParams7 = (LinearLayout.LayoutParams) AlertDialog.this.lineProgressViewPercent.getLayoutParams();
                        measuredHeight = measuredHeight2 - ((AlertDialog.this.lineProgressViewPercent.getMeasuredHeight() + layoutParams7.bottomMargin) + layoutParams7.topMargin);
                    }
                }
                measuredHeight -= (view.getMeasuredHeight() + layoutParams.bottomMargin) + layoutParams.topMargin;
                if (AlertDialog.this.lineProgressView != null) {
                }
            }
            setMeasuredDimension(size, (((paddingTop - measuredHeight) + getPaddingTop()) + getPaddingBottom()) - (AlertDialog.this.topAnimationIsNew ? AndroidUtilities.dp(8.0f) : 0));
            this.inLayout = false;
            if (AlertDialog.this.lastScreenWidth != AndroidUtilities.displaySize.x) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.AlertDialog$AlertDialogView$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onMeasure$0();
                    }
                });
            }
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (AlertDialog.this.withCancelDialog) {
                AlertDialog.this.showCancelAlert();
                return false;
            }
            super.onTouchEvent(motionEvent);
            return true;
        }

        @Override // android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (this.inLayout) {
                return;
            }
            super.requestLayout();
        }
    }

    public static class Builder {
        private AlertDialog alertDialog;
        private final boolean[] red;

        public Builder(Context context) {
            this(context, null);
        }

        public Builder(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
            this.red = new boolean[3];
            if (context == null && (context = AndroidUtilities.findActivity(LaunchActivity.instance)) == null) {
                context = ApplicationLoader.applicationContext;
            }
            this.alertDialog = createAlertDialog(context, i, resourcesProvider);
        }

        public Builder(Context context, Theme.ResourcesProvider resourcesProvider) {
            this(context, 0, resourcesProvider);
        }

        protected Builder(AlertDialog alertDialog) {
            this.red = new boolean[3];
            this.alertDialog = alertDialog;
        }

        public Builder aboveMessageView(View view) {
            this.alertDialog.aboveMessageView = view;
            return this;
        }

        public Builder addBottomView(View view) {
            this.alertDialog.bottomView = view;
            return this;
        }

        public AlertDialog create() {
            return this.alertDialog;
        }

        protected AlertDialog createAlertDialog(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
            return new AlertDialog(context, i, resourcesProvider);
        }

        public Context getContext() {
            return this.alertDialog.getContext();
        }

        public Runnable getDismissRunnable() {
            return this.alertDialog.dismissRunnable;
        }

        public Builder makeCustomMaxHeight() {
            this.alertDialog.customMaxHeight = true;
            return this;
        }

        public Builder makeRed(int i) {
            int i2 = (-i) - 1;
            if (i2 >= 0) {
                boolean[] zArr = this.red;
                if (i2 < zArr.length) {
                    zArr[i2] = true;
                }
            }
            return this;
        }

        public void notDrawBackgroundOnTopView(boolean z) {
            this.alertDialog.notDrawBackgroundOnTopView = z;
            this.alertDialog.blurredBackground = false;
        }

        public Builder overrideDismissListener(Utilities.Callback callback) {
            this.alertDialog.overridenDissmissListener = callback;
            return this;
        }

        public Builder setAdditionalHorizontalPadding(int i) {
            this.alertDialog.additioanalHorizontalPadding = i;
            return this;
        }

        public void setButtonsVertical(boolean z) {
            this.alertDialog.verticalButtons = z;
        }

        public Builder setCheckFocusable(boolean z) {
            this.alertDialog.checkFocusable = z;
            return this;
        }

        public Builder setCustomViewOffset(int i) {
            this.alertDialog.customViewOffset = i;
            return this;
        }

        public Builder setDialogButtonColorKey(int i) {
            this.alertDialog.dialogButtonColorKey = i;
            return this;
        }

        public Builder setDimAlpha(float f) {
            this.alertDialog.dimAlpha = f;
            return this;
        }

        public Builder setDimEnabled(boolean z) {
            this.alertDialog.dimEnabled = z;
            return this;
        }

        public Builder setItems(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            this.alertDialog.items = charSequenceArr;
            this.alertDialog.onClickListener = onClickListener;
            return this;
        }

        public Builder setItems(CharSequence[] charSequenceArr, int[] iArr, DialogInterface.OnClickListener onClickListener) {
            this.alertDialog.items = charSequenceArr;
            this.alertDialog.itemIcons = iArr;
            this.alertDialog.onClickListener = onClickListener;
            return this;
        }

        public Builder setMessage(CharSequence charSequence) {
            this.alertDialog.message = charSequence;
            return this;
        }

        public Builder setMessageTextViewClickable(boolean z) {
            this.alertDialog.messageTextViewClickable = z;
            return this;
        }

        public Builder setNegativeButton(CharSequence charSequence, OnButtonClickListener onButtonClickListener) {
            this.alertDialog.negativeButtonText = charSequence;
            this.alertDialog.negativeButtonListener = onButtonClickListener;
            return this;
        }

        public Builder setNeutralButton(CharSequence charSequence, OnButtonClickListener onButtonClickListener) {
            this.alertDialog.neutralButtonText = charSequence;
            this.alertDialog.neutralButtonListener = onButtonClickListener;
            return this;
        }

        public Builder setOnBackButtonListener(OnButtonClickListener onButtonClickListener) {
            this.alertDialog.onBackButtonListener = onButtonClickListener;
            return this;
        }

        public Builder setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
            this.alertDialog.setOnCancelListener(onCancelListener);
            return this;
        }

        public Builder setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
            this.alertDialog.setOnDismissListener(onDismissListener);
            return this;
        }

        public Builder setOnPreDismissListener(DialogInterface.OnDismissListener onDismissListener) {
            this.alertDialog.onDismissListener = onDismissListener;
            return this;
        }

        public Builder setPositiveButton(CharSequence charSequence, OnButtonClickListener onButtonClickListener) {
            this.alertDialog.positiveButtonText = charSequence;
            this.alertDialog.positiveButtonListener = onButtonClickListener;
            return this;
        }

        public Builder setSubtitle(CharSequence charSequence) {
            this.alertDialog.subtitle = charSequence;
            return this;
        }

        public Builder setTitle(CharSequence charSequence) {
            this.alertDialog.title = charSequence;
            return this;
        }

        public Builder setTopAnimation(int i, int i2, boolean z, int i3) {
            return setTopAnimation(i, i2, z, i3, null);
        }

        public Builder setTopAnimation(int i, int i2, boolean z, int i3, Map map) {
            this.alertDialog.topAnimationId = i;
            this.alertDialog.topAnimationSize = i2;
            this.alertDialog.topAnimationAutoRepeat = z;
            this.alertDialog.topBackgroundColor = i3;
            this.alertDialog.topAnimationLayerColors = map;
            return this;
        }

        public Builder setTopAnimationIsNew(boolean z) {
            this.alertDialog.topAnimationIsNew = z;
            return this;
        }

        public Builder setTopImage(Drawable drawable, int i) {
            this.alertDialog.topDrawable = drawable;
            this.alertDialog.topBackgroundColor = i;
            return this;
        }

        public Builder setTopView(View view) {
            this.alertDialog.topView = view;
            return this;
        }

        public void setTopViewAspectRatio(float f) {
            this.alertDialog.aspectRatio = f;
        }

        public Builder setView(View view) {
            return setView(view, -2);
        }

        public Builder setView(View view, int i) {
            this.alertDialog.customView = view;
            this.alertDialog.customViewHeight = i;
            return this;
        }

        public Builder setWidth(int i) {
            this.alertDialog.customWidth = i;
            return this;
        }

        public AlertDialog show() {
            TextView textView;
            this.alertDialog.show();
            int i = 0;
            while (true) {
                boolean[] zArr = this.red;
                if (i >= zArr.length) {
                    return this.alertDialog;
                }
                if (zArr[i] && (textView = (TextView) this.alertDialog.getButton(-(i + 1))) != null) {
                    textView.setTextColor(this.alertDialog.getThemedColor(Theme.key_text_RedBold));
                }
                i++;
            }
        }
    }

    public interface OnButtonClickListener {
        void onClick(AlertDialog alertDialog, int i);
    }

    public AlertDialog(Context context, int i) {
        this(context, i, null);
    }

    public AlertDialog(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context, R.style.TransparentDialog);
        this.customWidth = -1;
        this.customViewHeight = -2;
        this.shadow = new BitmapDrawable[2];
        this.shadowVisibility = new boolean[2];
        this.shadowAnimation = new AnimatorSet[2];
        this.customViewOffset = 12;
        this.dialogButtonColorKey = Theme.key_dialogButton;
        this.topHeight = 132;
        this.messageTextViewClickable = true;
        this.canCacnel = true;
        this.dismissDialogByButtons = true;
        this.containerViewLocation = new int[2];
        this.checkFocusable = true;
        this.dismissRunnable = new AlertDialog$$ExternalSyntheticLambda2(this);
        this.showRunnable = new Runnable() { // from class: org.telegram.ui.ActionBar.AlertDialog$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        this.itemViews = new ArrayList();
        this.dimEnabled = true;
        this.dimAlpha = 0.5f;
        this.dimCustom = false;
        this.topAnimationAutoRepeat = true;
        float f = 0.8f;
        this.blurAlpha = 0.8f;
        this.resourcesProvider = resourcesProvider;
        this.progressViewStyle = i;
        int themedColor = getThemedColor(Theme.key_dialogBackground);
        this.backgroundColor = themedColor;
        boolean z = AndroidUtilities.computePerceivedBrightness(themedColor) < 0.721f;
        boolean z2 = supportsNativeBlur() && this.progressViewStyle == 0;
        this.blurredNativeBackground = z2;
        this.blurredBackground = (z2 || (!supportsNativeBlur() && SharedConfig.getDevicePerformanceClass() >= 2 && LiteMode.isEnabled(256))) && z;
        this.backgroundPaddings = new Rect();
        if (i != 3 || this.blurredBackground) {
            Drawable drawableMutate = context.getResources().getDrawable(R.drawable.popup_fixed_alert3).mutate();
            this.shadowDrawable = drawableMutate;
            if (i == 3) {
                f = 0.55f;
            } else if (!z) {
                f = 0.985f;
            }
            this.blurOpacity = f;
            drawableMutate.setColorFilter(new PorterDuffColorFilter(this.backgroundColor, PorterDuff.Mode.MULTIPLY));
            this.shadowDrawable.getPadding(this.backgroundPaddings);
        }
        this.withCancelDialog = this.progressViewStyle == 3;
    }

    private boolean canTextInput(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (canTextInput(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$inflateContent$1(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$inflateContent$2(View view) {
        new StarsIntroActivity.StarsOptionsSheet(getContext(), this.resourcesProvider).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$inflateContent$3(View view) {
        DialogInterface.OnClickListener onClickListener = this.onClickListener;
        if (onClickListener != null) {
            onClickListener.onClick(this, ((Integer) view.getTag()).intValue());
        }
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$inflateContent$4(TextViewWithLoading textViewWithLoading, View view) {
        if (textViewWithLoading.isLoading()) {
            return;
        }
        OnButtonClickListener onButtonClickListener = this.positiveButtonListener;
        if (onButtonClickListener != null) {
            onButtonClickListener.onClick(this, -1);
        }
        if (this.dismissDialogByButtons) {
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$inflateContent$5(TextViewWithLoading textViewWithLoading, View view) {
        if (textViewWithLoading.isLoading()) {
            return;
        }
        OnButtonClickListener onButtonClickListener = this.negativeButtonListener;
        if (onButtonClickListener != null) {
            onButtonClickListener.onClick(this, -2);
        }
        if (this.dismissDialogByButtons) {
            cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$inflateContent$6(TextViewWithLoading textViewWithLoading, View view) {
        if (textViewWithLoading.isLoading()) {
            return;
        }
        OnButtonClickListener onButtonClickListener = this.neutralButtonListener;
        if (onButtonClickListener != null) {
            onButtonClickListener.onClick(this, -2);
        }
        if (this.dismissDialogByButtons) {
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$inflateContent$7(Bitmap bitmap) {
        if (bitmap == null) {
            return;
        }
        if (this.blurPaint == null) {
            this.blurPaint = new Paint(1);
        }
        this.blurBitmap = bitmap;
        Bitmap bitmap2 = this.blurBitmap;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap2, tileMode, tileMode);
        this.blurShader = bitmapShader;
        this.blurPaint.setShader(bitmapShader);
        Matrix matrix = new Matrix();
        this.blurMatrix = matrix;
        matrix.postScale(8.0f, 8.0f);
        Matrix matrix2 = this.blurMatrix;
        int[] iArr = this.containerViewLocation;
        matrix2.postTranslate(-iArr[0], -iArr[1]);
        this.blurShader.setLocalMatrix(this.blurMatrix);
        this.containerView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$makeButtonLoading$8(View view) {
        if (view instanceof TextViewWithLoading) {
            ((TextViewWithLoading) view).setLoading(true, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$makeButtonLoading$9(View view) {
        if (view instanceof TextViewWithLoading) {
            ((TextViewWithLoading) view).setLoading(false, true);
        }
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        if (isShowing()) {
            return;
        }
        try {
            show();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCancelAlert$10(AlertDialog alertDialog, int i) {
        DialogInterface.OnCancelListener onCancelListener = this.onCancelListener;
        if (onCancelListener != null) {
            onCancelListener.onCancel(this);
        }
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCancelAlert$11(DialogInterface dialogInterface) {
        this.cancelDialog = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runShadowAnimation(final int i, boolean z) {
        if ((!z || this.shadowVisibility[i]) && (z || !this.shadowVisibility[i])) {
            return;
        }
        this.shadowVisibility[i] = z;
        AnimatorSet animatorSet = this.shadowAnimation[i];
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.shadowAnimation[i] = new AnimatorSet();
        BitmapDrawable bitmapDrawable = this.shadow[i];
        if (bitmapDrawable != null) {
            this.shadowAnimation[i].playTogether(ObjectAnimator.ofInt(bitmapDrawable, "alpha", z ? 255 : 0));
        }
        this.shadowAnimation[i].setDuration(150L);
        this.shadowAnimation[i].addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.AlertDialog.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (AlertDialog.this.shadowAnimation[i] == null || !AlertDialog.this.shadowAnimation[i].equals(animator)) {
                    return;
                }
                AlertDialog.this.shadowAnimation[i] = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (AlertDialog.this.shadowAnimation[i] == null || !AlertDialog.this.shadowAnimation[i].equals(animator)) {
                    return;
                }
                AlertDialog.this.shadowAnimation[i] = null;
            }
        });
        try {
            this.shadowAnimation[i].start();
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    private void updateLineProgressTextView() {
        this.lineProgressViewPercent.setText(String.format("%d%%", Integer.valueOf(this.currentProgress)));
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        TextView textView;
        if (i != NotificationCenter.emojiLoaded || (textView = this.messageTextView) == null) {
            return;
        }
        textView.invalidate();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        Bitmap bitmap;
        Utilities.Callback callback = this.overridenDissmissListener;
        if (callback != null) {
            this.overridenDissmissListener = null;
            callback.run(new AlertDialog$$ExternalSyntheticLambda2(this));
            return;
        }
        if (this.dismissed) {
            return;
        }
        this.dismissed = true;
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        DialogInterface.OnDismissListener onDismissListener = this.onDismissListener;
        if (onDismissListener != null) {
            onDismissListener.onDismiss(this);
        }
        AlertDialog alertDialog = this.cancelDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        try {
            super.dismiss();
        } catch (Throwable unused) {
        }
        AndroidUtilities.cancelRunOnUIThread(this.showRunnable);
        if (this.blurShader == null || (bitmap = this.blurBitmap) == null) {
            return;
        }
        bitmap.recycle();
        this.blurShader = null;
        this.blurPaint = null;
        this.blurBitmap = null;
    }

    public void dismissUnless(long j) {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.shownAt;
        if (jCurrentTimeMillis < j) {
            AndroidUtilities.runOnUIThread(new AlertDialog$$ExternalSyntheticLambda2(this), jCurrentTimeMillis - j);
        } else {
            dismiss();
        }
    }

    public View getButton(int i) {
        ViewGroup viewGroup = this.buttonsLayout;
        if (viewGroup != null) {
            return viewGroup.findViewWithTag(Integer.valueOf(i));
        }
        return null;
    }

    public ViewGroup getButtonsLayout() {
        return this.buttonsLayout;
    }

    public AlertDialogView getContainerView() {
        return this.containerView;
    }

    public int getItemsCount() {
        return this.itemViews.size();
    }

    public ArrayList getThemeDescriptions() {
        return null;
    }

    protected int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:118:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0321  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x034b  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0451  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0478  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0488  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x048a  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x049b  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0558  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x062e  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x063b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0646  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0690  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x06b6  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x0962  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x0970  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x09de  */
    /* JADX WARN: Removed duplicated region for block: B:333:0x09eb  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x09f2  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0249  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected View inflateContent(boolean z) throws NoSuchFieldException, SecurityException {
        boolean z2;
        Drawable drawable;
        int i;
        ViewGroup.LayoutParams layoutParamsCreateLinear;
        ViewGroup viewGroup;
        View view;
        View view2;
        WindowManager.LayoutParams layoutParams;
        int i2;
        View view3;
        FrameLayout frameLayout;
        FrameLayout.LayoutParams layoutParams2;
        AlertDialogView alertDialogView = new AlertDialogView(getContext());
        this.containerView = alertDialogView;
        alertDialogView.setOrientation(1);
        if ((this.blurredBackground || this.progressViewStyle == 3) && this.progressViewStyle != 2) {
            this.containerView.setBackgroundDrawable(null);
            this.containerView.setPadding(0, 0, 0, 0);
            if (this.blurredBackground && !this.blurredNativeBackground) {
                this.containerView.setWillNotDraw(false);
            }
        } else {
            if (this.notDrawBackgroundOnTopView) {
                Rect rect = new Rect();
                this.shadowDrawable.getPadding(rect);
                this.containerView.setPadding(rect.left, rect.top, rect.right, rect.bottom);
                this.drawBackground = true;
                this.containerView.setFitsSystemWindows(Build.VERSION.SDK_INT < 21);
                View view4 = this.containerView;
                if (this.needStarsBalance) {
                    if (this.fullscreenContainerView == null) {
                        FrameLayout frameLayout2 = new FrameLayout(getContext());
                        this.fullscreenContainerView = frameLayout2;
                        frameLayout2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionBar.AlertDialog$$ExternalSyntheticLambda3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view5) {
                                this.f$0.lambda$inflateContent$1(view5);
                            }
                        });
                    }
                    if (this.starsBalanceCloud == null) {
                        BalanceCloud balanceCloud = new BalanceCloud(getContext(), UserConfig.selectedAccount, this.resourcesProvider);
                        this.starsBalanceCloud = balanceCloud;
                        ScaleStateListAnimator.apply(balanceCloud);
                        this.starsBalanceCloud.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionBar.AlertDialog$$ExternalSyntheticLambda4
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view5) {
                                this.f$0.lambda$inflateContent$2(view5);
                            }
                        });
                    }
                    AndroidUtilities.removeFromParent(this.containerView);
                    AndroidUtilities.removeFromParent(this.starsBalanceCloud);
                    this.fullscreenContainerView.addView(this.containerView, LayoutHelper.createFrame(-2, -2, 17));
                    this.fullscreenContainerView.addView(this.starsBalanceCloud, LayoutHelper.createFrame(-2, -2.0f, 49, BitmapDescriptorFactory.HUE_RED, 48.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
                    view4 = this.fullscreenContainerView;
                }
                if (z) {
                    if (this.needStarsBalance) {
                        layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
                        layoutParams2.gravity = R.styleable.AppCompatTheme_windowActionModeOverlay;
                    } else if (this.customWidth > 0) {
                        layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
                        layoutParams2.gravity = 17;
                    } else {
                        setContentView(view4);
                    }
                    setContentView(view4, layoutParams2);
                }
                z2 = (this.positiveButtonText != null && this.negativeButtonText == null && this.neutralButtonText == null) ? false : true;
                if (this.topResId != 0 && this.topAnimationId == 0 && this.topDrawable == null) {
                    View view5 = this.topView;
                    if (view5 != null) {
                        view5.setPadding(0, 0, 0, 0);
                        this.containerView.addView(this.topView, LayoutHelper.createLinear(-1, this.topHeight, 51, 0, 0, 0, 0));
                    }
                } else {
                    RLottieImageView rLottieImageView = new RLottieImageView(getContext());
                    this.topImageView = rLottieImageView;
                    drawable = this.topDrawable;
                    if (drawable == null) {
                        rLottieImageView.setImageDrawable(drawable);
                        Object obj = this.topDrawable;
                        if (obj instanceof AttachableDrawable) {
                            final AttachableDrawable attachableDrawable = (AttachableDrawable) obj;
                            this.topImageView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: org.telegram.ui.ActionBar.AlertDialog.1
                                @Override // android.view.View.OnAttachStateChangeListener
                                public void onViewAttachedToWindow(View view6) {
                                    attachableDrawable.onAttachedToWindow(null);
                                }

                                @Override // android.view.View.OnAttachStateChangeListener
                                public void onViewDetachedFromWindow(View view6) {
                                    attachableDrawable.onDetachedFromWindow(null);
                                }
                            });
                            attachableDrawable.setParent(this.topImageView);
                        }
                    } else {
                        int i3 = this.topResId;
                        if (i3 != 0) {
                            rLottieImageView.setImageResource(i3);
                        } else {
                            rLottieImageView.setAutoRepeat(this.topAnimationAutoRepeat);
                            RLottieImageView rLottieImageView2 = this.topImageView;
                            int i4 = this.topAnimationId;
                            int i5 = this.topAnimationSize;
                            rLottieImageView2.setAnimation(i4, i5, i5);
                            if (this.topAnimationLayerColors != null) {
                                RLottieDrawable animatedDrawable = this.topImageView.getAnimatedDrawable();
                                for (Map.Entry entry : this.topAnimationLayerColors.entrySet()) {
                                    animatedDrawable.setLayerColor((String) entry.getKey(), ((Integer) entry.getValue()).intValue());
                                }
                            }
                            this.topImageView.playAnimation();
                        }
                    }
                    this.topImageView.setScaleType(ImageView.ScaleType.CENTER);
                    if (this.topAnimationIsNew) {
                        this.topImageView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(10.0f), 0, this.topBackgroundColor));
                    } else {
                        final GradientDrawable gradientDrawable = new GradientDrawable();
                        gradientDrawable.setColor(this.topBackgroundColor);
                        gradientDrawable.setCornerRadius(AndroidUtilities.dp(128.0f));
                        this.topImageView.setBackground(new Drawable() { // from class: org.telegram.ui.ActionBar.AlertDialog.2
                            int size;

                            {
                                this.size = AlertDialog.this.topAnimationSize + AndroidUtilities.dp(52.0f);
                            }

                            @Override // android.graphics.drawable.Drawable
                            public void draw(Canvas canvas) {
                                gradientDrawable.setBounds((int) ((AlertDialog.this.topImageView.getWidth() - this.size) / 2.0f), (int) ((AlertDialog.this.topImageView.getHeight() - this.size) / 2.0f), (int) ((AlertDialog.this.topImageView.getWidth() + this.size) / 2.0f), (int) ((AlertDialog.this.topImageView.getHeight() + this.size) / 2.0f));
                                gradientDrawable.draw(canvas);
                            }

                            @Override // android.graphics.drawable.Drawable
                            public int getOpacity() {
                                return gradientDrawable.getOpacity();
                            }

                            @Override // android.graphics.drawable.Drawable
                            public void setAlpha(int i6) {
                                gradientDrawable.setAlpha(i6);
                            }

                            @Override // android.graphics.drawable.Drawable
                            public void setColorFilter(ColorFilter colorFilter) {
                                gradientDrawable.setColorFilter(colorFilter);
                            }
                        });
                        this.topHeight = 92;
                    }
                    if (this.topAnimationIsNew) {
                        this.topImageView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    } else {
                        this.topImageView.setTranslationY(AndroidUtilities.dp(16.0f));
                    }
                    this.topImageView.setPadding(0, 0, 0, 0);
                    this.containerView.addView(this.topImageView, LayoutHelper.createLinear(-1, this.topHeight, 51, 0, 0, 0, 0));
                }
                if (this.title != null) {
                    FrameLayout frameLayout3 = new FrameLayout(getContext());
                    this.titleContainer = frameLayout3;
                    this.containerView.addView(frameLayout3, LayoutHelper.createLinear(-2, -2, this.topAnimationIsNew ? 1 : 0, 24, 0, 24, 0));
                    SpoilersTextView spoilersTextView = new SpoilersTextView(getContext(), false);
                    this.titleTextView = spoilersTextView;
                    NotificationCenter.listenEmojiLoading(spoilersTextView);
                    SpoilersTextView spoilersTextView2 = this.titleTextView;
                    spoilersTextView2.cacheType = 3;
                    spoilersTextView2.setText(this.title);
                    this.titleTextView.setTextColor(getThemedColor(Theme.key_dialogTextBlack));
                    this.titleTextView.setTextSize(1, 20.0f);
                    this.titleTextView.setTypeface(AndroidUtilities.bold());
                    this.titleTextView.setGravity((this.topAnimationIsNew ? 1 : LocaleController.isRTL ? 5 : 3) | 48);
                    FrameLayout frameLayout4 = this.titleContainer;
                    SpoilersTextView spoilersTextView3 = this.titleTextView;
                    boolean z3 = this.topAnimationIsNew;
                    frameLayout4.addView(spoilersTextView3, LayoutHelper.createFrame(-2, -2.0f, (z3 ? 1 : LocaleController.isRTL ? 5 : 3) | 48, BitmapDescriptorFactory.HUE_RED, 19.0f, BitmapDescriptorFactory.HUE_RED, z3 ? 4.0f : this.subtitle != null ? 2 : this.items != null ? 14 : 10));
                }
                if (this.secondTitle != null && this.title != null) {
                    TextView textView = new TextView(getContext());
                    this.secondTitleTextView = textView;
                    textView.setText(this.secondTitle);
                    this.secondTitleTextView.setTextColor(getThemedColor(Theme.key_dialogTextGray3));
                    this.secondTitleTextView.setTextSize(1, 18.0f);
                    this.secondTitleTextView.setGravity((!LocaleController.isRTL ? 3 : 5) | 48);
                    this.titleContainer.addView(this.secondTitleTextView, LayoutHelper.createFrame(-2, -2.0f, (!LocaleController.isRTL ? 3 : 5) | 48, BitmapDescriptorFactory.HUE_RED, 21.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
                }
                if (this.subtitle != null) {
                    TextView textView2 = new TextView(getContext());
                    this.subtitleTextView = textView2;
                    textView2.setText(this.subtitle);
                    this.subtitleTextView.setTextColor(getThemedColor(Theme.key_dialogIcon));
                    this.subtitleTextView.setTextSize(1, 14.0f);
                    this.subtitleTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
                    this.containerView.addView(this.subtitleTextView, LayoutHelper.createLinear(-2, -2, (LocaleController.isRTL ? 5 : 3) | 48, 24, 0, 24, this.items != null ? 14 : 10));
                }
                if (this.progressViewStyle == 0) {
                    this.shadow[0] = (BitmapDrawable) getContext().getResources().getDrawable(R.drawable.header_shadow).mutate();
                    this.shadow[1] = (BitmapDrawable) getContext().getResources().getDrawable(R.drawable.header_shadow_reverse).mutate();
                    this.shadow[0].setAlpha(0);
                    this.shadow[1].setAlpha(0);
                    this.shadow[0].setCallback(this);
                    this.shadow[1].setCallback(this);
                    ScrollView scrollView = new ScrollView(getContext()) { // from class: org.telegram.ui.ActionBar.AlertDialog.3
                        @Override // android.view.ViewGroup
                        protected boolean drawChild(Canvas canvas, View view6, long j) {
                            boolean zDrawChild = super.drawChild(canvas, view6, j);
                            if (AlertDialog.this.shadow[0].getPaint().getAlpha() != 0) {
                                AlertDialog.this.shadow[0].setBounds(0, getScrollY(), getMeasuredWidth(), getScrollY() + AndroidUtilities.dp(3.0f));
                                AlertDialog.this.shadow[0].draw(canvas);
                            }
                            if (AlertDialog.this.shadow[1].getPaint().getAlpha() != 0) {
                                AlertDialog.this.shadow[1].setBounds(0, (getScrollY() + getMeasuredHeight()) - AndroidUtilities.dp(3.0f), getMeasuredWidth(), getScrollY() + getMeasuredHeight());
                                AlertDialog.this.shadow[1].draw(canvas);
                            }
                            return zDrawChild;
                        }
                    };
                    this.contentScrollView = scrollView;
                    scrollView.setVerticalScrollBarEnabled(false);
                    AndroidUtilities.setScrollViewEdgeEffectColor(this.contentScrollView, getThemedColor(Theme.key_dialogScrollGlow));
                    this.containerView.addView(this.contentScrollView, LayoutHelper.createLinear(-1, -2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
                    LinearLayout linearLayout = new LinearLayout(getContext());
                    this.scrollContainer = linearLayout;
                    linearLayout.setOrientation(1);
                    this.contentScrollView.addView(this.scrollContainer, new FrameLayout.LayoutParams(-1, -2));
                }
                EffectsTextView effectsTextView = new EffectsTextView(getContext());
                this.messageTextView = effectsTextView;
                NotificationCenter.listenEmojiLoading(effectsTextView);
                this.messageTextView.setTextColor(getThemedColor(!this.topAnimationIsNew ? Theme.key_windowBackgroundWhiteGrayText : Theme.key_dialogTextBlack));
                this.messageTextView.setTextSize(1, 16.0f);
                this.messageTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
                this.messageTextView.setLinkTextColor(getThemedColor(Theme.key_dialogTextLink));
                if (!this.messageTextViewClickable) {
                    this.messageTextView.setClickable(false);
                    this.messageTextView.setEnabled(false);
                }
                this.messageTextView.setGravity((!this.topAnimationIsNew ? 1 : LocaleController.isRTL ? 5 : 3) | 48);
                i = this.progressViewStyle;
                if (i != 2) {
                    this.containerView.addView(this.messageTextView, LayoutHelper.createLinear(-2, -2, (LocaleController.isRTL ? 5 : 3) | 48, 24, this.title == null ? 19 : 0, 24, 20));
                    LineProgressView lineProgressView = new LineProgressView(getContext());
                    this.lineProgressView = lineProgressView;
                    lineProgressView.setProgress(this.currentProgress / 100.0f, false);
                    this.lineProgressView.setProgressColor(getThemedColor(Theme.key_dialogLineProgress));
                    this.lineProgressView.setBackColor(getThemedColor(Theme.key_dialogLineProgressBackground));
                    this.containerView.addView(this.lineProgressView, LayoutHelper.createLinear(-1, 4, 19, 24, 0, 24, 0));
                    TextView textView3 = new TextView(getContext());
                    this.lineProgressViewPercent = textView3;
                    textView3.setTypeface(AndroidUtilities.bold());
                    this.lineProgressViewPercent.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
                    this.lineProgressViewPercent.setTextColor(getThemedColor(Theme.key_dialogTextGray2));
                    this.lineProgressViewPercent.setTextSize(1, 14.0f);
                    this.containerView.addView(this.lineProgressViewPercent, LayoutHelper.createLinear(-2, -2, (LocaleController.isRTL ? 5 : 3) | 48, 23, 4, 23, 24));
                    updateLineProgressTextView();
                } else {
                    if (i == 3) {
                        setCanceledOnTouchOutside(false);
                        setCancelable(false);
                        this.progressViewContainer = new FrameLayout(getContext());
                        this.backgroundColor = getThemedColor(Theme.key_dialog_inlineProgressBackground);
                        if (!this.blurredBackground || this.blurredNativeBackground) {
                            this.progressViewContainer.setBackgroundDrawable(Theme.createRoundRectDrawable(AndroidUtilities.dp(18.0f), this.backgroundColor));
                        }
                        this.containerView.addView(this.progressViewContainer, LayoutHelper.createLinear(86, 86, 17));
                        RadialProgressView radialProgressView = new RadialProgressView(getContext(), this.resourcesProvider);
                        radialProgressView.setSize(AndroidUtilities.dp(32.0f));
                        radialProgressView.setProgressColor(getThemedColor(Theme.key_dialog_inlineProgress));
                        ViewGroup viewGroup2 = this.progressViewContainer;
                        layoutParamsCreateLinear = LayoutHelper.createFrame(86, 86, 17);
                        view = radialProgressView;
                        viewGroup = viewGroup2;
                    } else {
                        View view6 = this.aboveMessageView;
                        if (view6 != null) {
                            this.scrollContainer.addView(view6, LayoutHelper.createLinear(-1, -2, 22.0f, 4.0f, 22.0f, 12.0f));
                        }
                        this.scrollContainer.addView(this.messageTextView, LayoutHelper.createLinear(-2, -2, (this.topAnimationIsNew ? 1 : LocaleController.isRTL ? 5 : 3) | 48, 24, 0, 24, (this.customView == null && this.items == null) ? 0 : this.customViewOffset));
                        View view7 = this.bottomView;
                        if (view7 != null) {
                            ViewGroup viewGroup3 = this.scrollContainer;
                            layoutParamsCreateLinear = LayoutHelper.createLinear(-1, -2, 22.0f, 12.0f, 22.0f, BitmapDescriptorFactory.HUE_RED);
                            view = view7;
                            viewGroup = viewGroup3;
                        }
                    }
                    viewGroup.addView(view, layoutParamsCreateLinear);
                }
                if (TextUtils.isEmpty(this.message)) {
                    this.messageTextView.setText(this.message);
                    this.messageTextView.setVisibility(0);
                } else {
                    this.messageTextView.setVisibility(8);
                }
                if (this.items != null) {
                    int i6 = 0;
                    while (true) {
                        CharSequence[] charSequenceArr = this.items;
                        if (i6 >= charSequenceArr.length) {
                            break;
                        }
                        if (charSequenceArr[i6] != null) {
                            AlertDialogCell alertDialogCell = new AlertDialogCell(getContext(), this.resourcesProvider);
                            CharSequence charSequence = this.items[i6];
                            int[] iArr = this.itemIcons;
                            alertDialogCell.setTextAndIcon(charSequence, iArr != null ? iArr[i6] : 0);
                            alertDialogCell.setTag(Integer.valueOf(i6));
                            this.itemViews.add(alertDialogCell);
                            this.scrollContainer.addView(alertDialogCell, LayoutHelper.createLinear(-1, 50));
                            alertDialogCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionBar.AlertDialog$$ExternalSyntheticLambda5
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view8) {
                                    this.f$0.lambda$inflateContent$3(view8);
                                }
                            });
                        }
                        i6++;
                    }
                }
                view2 = this.customView;
                if (view2 != null) {
                    if (view2.getParent() != null) {
                        ((ViewGroup) this.customView.getParent()).removeView(this.customView);
                    }
                    this.scrollContainer.addView(this.customView, LayoutHelper.createLinear(-1, this.customViewHeight));
                }
                if (z2) {
                    if (!this.verticalButtons) {
                        TextPaint textPaint = new TextPaint();
                        textPaint.setTextSize(AndroidUtilities.dp(16.0f));
                        CharSequence charSequence2 = this.positiveButtonText;
                        int iMeasureText = charSequence2 != null ? (int) (0 + textPaint.measureText(charSequence2, 0, charSequence2.length()) + AndroidUtilities.dp(24.0f)) : 0;
                        if (this.negativeButtonText != null) {
                            if (iMeasureText > 0) {
                                iMeasureText += AndroidUtilities.dp(8.0f);
                            }
                            CharSequence charSequence3 = this.negativeButtonText;
                            iMeasureText = (int) (iMeasureText + textPaint.measureText(charSequence3, 0, charSequence3.length()) + AndroidUtilities.dp(24.0f));
                        }
                        if (this.neutralButtonText != null) {
                            if (iMeasureText > 0) {
                                iMeasureText += AndroidUtilities.dp(8.0f);
                            }
                            CharSequence charSequence4 = this.neutralButtonText;
                            iMeasureText = (int) (iMeasureText + textPaint.measureText(charSequence4, 0, charSequence4.length()) + AndroidUtilities.dp(24.0f));
                        }
                        if (iMeasureText > AndroidUtilities.displaySize.x - AndroidUtilities.dp(110.0f)) {
                            this.verticalButtons = true;
                        }
                    }
                    if (this.verticalButtons) {
                        LinearLayout linearLayout2 = new LinearLayout(getContext());
                        linearLayout2.setOrientation(1);
                        frameLayout = linearLayout2;
                    } else {
                        frameLayout = new FrameLayout(getContext()) { // from class: org.telegram.ui.ActionBar.AlertDialog.4
                            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
                            protected void onLayout(boolean z4, int i7, int i8, int i9, int i10) {
                                int left;
                                int top;
                                int paddingLeft;
                                int paddingTop;
                                int paddingLeft2;
                                int paddingRight;
                                int paddingTop2;
                                int paddingRight2;
                                int childCount = getChildCount();
                                int i11 = i9 - i7;
                                View view8 = null;
                                for (int i12 = 0; i12 < childCount; i12++) {
                                    View childAt = getChildAt(i12);
                                    Integer num = (Integer) childAt.getTag();
                                    if (num == null) {
                                        int measuredWidth = childAt.getMeasuredWidth();
                                        int measuredHeight = childAt.getMeasuredHeight();
                                        if (view8 != null) {
                                            left = view8.getLeft() + ((view8.getMeasuredWidth() - measuredWidth) / 2);
                                            top = view8.getTop() + ((view8.getMeasuredHeight() - measuredHeight) / 2);
                                        } else {
                                            left = 0;
                                            top = 0;
                                        }
                                        childAt.layout(left, top, measuredWidth + left, measuredHeight + top);
                                    } else if (num.intValue() == -1) {
                                        if (LocaleController.isRTL) {
                                            paddingRight = getPaddingLeft();
                                            paddingTop2 = getPaddingTop();
                                            paddingRight2 = getPaddingLeft() + childAt.getMeasuredWidth();
                                        } else {
                                            paddingRight = (i11 - getPaddingRight()) - childAt.getMeasuredWidth();
                                            paddingTop2 = getPaddingTop();
                                            paddingRight2 = i11 - getPaddingRight();
                                        }
                                        childAt.layout(paddingRight, paddingTop2, paddingRight2, getPaddingTop() + childAt.getMeasuredHeight());
                                        view8 = childAt;
                                    } else {
                                        if (num.intValue() == -2) {
                                            if (LocaleController.isRTL) {
                                                paddingLeft = getPaddingLeft();
                                                if (view8 != null) {
                                                    paddingLeft += view8.getMeasuredWidth() + AndroidUtilities.dp(8.0f);
                                                }
                                            } else {
                                                paddingLeft = (i11 - getPaddingRight()) - childAt.getMeasuredWidth();
                                                if (view8 != null) {
                                                    paddingLeft -= view8.getMeasuredWidth() + AndroidUtilities.dp(8.0f);
                                                }
                                            }
                                            paddingTop = getPaddingTop();
                                            paddingLeft2 = childAt.getMeasuredWidth() + paddingLeft;
                                        } else if (num.intValue() == -3) {
                                            if (LocaleController.isRTL) {
                                                paddingLeft = (i11 - getPaddingRight()) - childAt.getMeasuredWidth();
                                                paddingTop = getPaddingTop();
                                                paddingLeft2 = i11 - getPaddingRight();
                                            } else {
                                                paddingLeft = getPaddingLeft();
                                                paddingTop = getPaddingTop();
                                                paddingLeft2 = getPaddingLeft() + childAt.getMeasuredWidth();
                                            }
                                        }
                                        childAt.layout(paddingLeft, paddingTop, paddingLeft2, getPaddingTop() + childAt.getMeasuredHeight());
                                    }
                                }
                            }

                            @Override // android.widget.FrameLayout, android.view.View
                            protected void onMeasure(int i7, int i8) {
                                super.onMeasure(i7, i8);
                                int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
                                int childCount = getChildCount();
                                int measuredWidth2 = 0;
                                for (int i9 = 0; i9 < childCount; i9++) {
                                    View childAt = getChildAt(i9);
                                    if ((childAt instanceof TextView) && childAt.getTag() != null) {
                                        measuredWidth2 += childAt.getMeasuredWidth();
                                    }
                                }
                                if (measuredWidth2 > measuredWidth) {
                                    View viewFindViewWithTag = findViewWithTag(-2);
                                    View viewFindViewWithTag2 = findViewWithTag(-3);
                                    if (viewFindViewWithTag == null || viewFindViewWithTag2 == null) {
                                        return;
                                    }
                                    if (viewFindViewWithTag.getMeasuredWidth() < viewFindViewWithTag2.getMeasuredWidth()) {
                                        viewFindViewWithTag2.measure(View.MeasureSpec.makeMeasureSpec(viewFindViewWithTag2.getMeasuredWidth() - (measuredWidth2 - measuredWidth), 1073741824), View.MeasureSpec.makeMeasureSpec(viewFindViewWithTag2.getMeasuredHeight(), 1073741824));
                                    } else {
                                        viewFindViewWithTag.measure(View.MeasureSpec.makeMeasureSpec(viewFindViewWithTag.getMeasuredWidth() - (measuredWidth2 - measuredWidth), 1073741824), View.MeasureSpec.makeMeasureSpec(viewFindViewWithTag.getMeasuredHeight(), 1073741824));
                                    }
                                }
                            }
                        };
                    }
                    this.buttonsLayout = frameLayout;
                    if (this.bottomView != null) {
                        this.buttonsLayout.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), AndroidUtilities.dp(4.0f));
                        this.buttonsLayout.setTranslationY(-AndroidUtilities.dp(6.0f));
                    } else {
                        this.buttonsLayout.setPadding(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f));
                    }
                    this.containerView.addView(this.buttonsLayout, LayoutHelper.createLinear(-1, 52));
                    if (this.topAnimationIsNew) {
                        this.buttonsLayout.setTranslationY(-AndroidUtilities.dp(8.0f));
                    }
                    if (this.positiveButtonText != null) {
                        final TextViewWithLoading textViewWithLoading = new TextViewWithLoading(getContext()) { // from class: org.telegram.ui.ActionBar.AlertDialog.5
                            @Override // android.widget.TextView, android.view.View
                            public void setEnabled(boolean z4) {
                                super.setEnabled(z4);
                                setAlpha(z4 ? 1.0f : 0.5f);
                            }

                            @Override // org.telegram.ui.ActionBar.TextViewWithLoading, android.widget.TextView
                            public void setTextColor(int i7) {
                                super.setTextColor(i7);
                                setBackgroundDrawable(Theme.getRoundRectSelectorDrawable(AndroidUtilities.dp(6.0f), i7));
                            }
                        };
                        textViewWithLoading.setMinWidth(AndroidUtilities.dp(64.0f));
                        textViewWithLoading.setTag(-1);
                        textViewWithLoading.setTextSize(1, 16.0f);
                        textViewWithLoading.setTextColor(getThemedColor(this.dialogButtonColorKey));
                        textViewWithLoading.setGravity(17);
                        textViewWithLoading.setTypeface(AndroidUtilities.bold());
                        textViewWithLoading.setText(this.positiveButtonText);
                        textViewWithLoading.setBackgroundDrawable(Theme.getRoundRectSelectorDrawable(AndroidUtilities.dp(6.0f), getThemedColor(this.dialogButtonColorKey)));
                        textViewWithLoading.setPadding(AndroidUtilities.dp(12.0f), 0, AndroidUtilities.dp(12.0f), 0);
                        if (this.verticalButtons) {
                            this.buttonsLayout.addView(textViewWithLoading, LayoutHelper.createLinear(-2, 36, LocaleController.isRTL ? 3 : 5));
                        } else {
                            this.buttonsLayout.addView(textViewWithLoading, LayoutHelper.createFrame(-2, 36, 53));
                        }
                        textViewWithLoading.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionBar.AlertDialog$$ExternalSyntheticLambda6
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view8) {
                                this.f$0.lambda$inflateContent$4(textViewWithLoading, view8);
                            }
                        });
                    }
                    if (this.negativeButtonText != null) {
                        final TextViewWithLoading textViewWithLoading2 = new TextViewWithLoading(getContext()) { // from class: org.telegram.ui.ActionBar.AlertDialog.6
                            @Override // android.widget.TextView, android.view.View
                            public void setEnabled(boolean z4) {
                                super.setEnabled(z4);
                                setAlpha(z4 ? 1.0f : 0.5f);
                            }

                            @Override // org.telegram.ui.ActionBar.TextViewWithLoading, android.widget.TextView
                            public void setTextColor(int i7) {
                                super.setTextColor(i7);
                                setBackgroundDrawable(Theme.getRoundRectSelectorDrawable(AndroidUtilities.dp(6.0f), i7));
                            }
                        };
                        textViewWithLoading2.setMinWidth(AndroidUtilities.dp(64.0f));
                        textViewWithLoading2.setTag(-2);
                        textViewWithLoading2.setTextSize(1, 16.0f);
                        textViewWithLoading2.setTextColor(getThemedColor(this.dialogButtonColorKey));
                        textViewWithLoading2.setGravity(17);
                        textViewWithLoading2.setTypeface(AndroidUtilities.bold());
                        textViewWithLoading2.setEllipsize(TextUtils.TruncateAt.END);
                        textViewWithLoading2.setSingleLine(true);
                        textViewWithLoading2.setText(this.negativeButtonText.toString());
                        textViewWithLoading2.setBackgroundDrawable(Theme.getRoundRectSelectorDrawable(AndroidUtilities.dp(6.0f), getThemedColor(this.dialogButtonColorKey)));
                        textViewWithLoading2.setPadding(AndroidUtilities.dp(12.0f), 0, AndroidUtilities.dp(12.0f), 0);
                        if (this.verticalButtons) {
                            this.buttonsLayout.addView(textViewWithLoading2, 0, LayoutHelper.createLinear(-2, 36, LocaleController.isRTL ? 3 : 5));
                        } else {
                            this.buttonsLayout.addView(textViewWithLoading2, LayoutHelper.createFrame(-2, 36, 53));
                        }
                        textViewWithLoading2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionBar.AlertDialog$$ExternalSyntheticLambda7
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view8) {
                                this.f$0.lambda$inflateContent$5(textViewWithLoading2, view8);
                            }
                        });
                    }
                    if (this.neutralButtonText != null) {
                        final TextViewWithLoading textViewWithLoading3 = new TextViewWithLoading(getContext()) { // from class: org.telegram.ui.ActionBar.AlertDialog.7
                            @Override // android.widget.TextView, android.view.View
                            public void setEnabled(boolean z4) {
                                super.setEnabled(z4);
                                setAlpha(z4 ? 1.0f : 0.5f);
                            }

                            @Override // org.telegram.ui.ActionBar.TextViewWithLoading, android.widget.TextView
                            public void setTextColor(int i7) {
                                super.setTextColor(i7);
                                setBackgroundDrawable(Theme.getRoundRectSelectorDrawable(AndroidUtilities.dp(6.0f), i7));
                            }
                        };
                        textViewWithLoading3.setMinWidth(AndroidUtilities.dp(64.0f));
                        textViewWithLoading3.setTag(-3);
                        textViewWithLoading3.setTextSize(1, 16.0f);
                        textViewWithLoading3.setTextColor(getThemedColor(this.dialogButtonColorKey));
                        textViewWithLoading3.setGravity(17);
                        textViewWithLoading3.setTypeface(AndroidUtilities.bold());
                        textViewWithLoading3.setEllipsize(TextUtils.TruncateAt.END);
                        textViewWithLoading3.setSingleLine(true);
                        textViewWithLoading3.setText(this.neutralButtonText.toString());
                        textViewWithLoading3.setBackground(Theme.getRoundRectSelectorDrawable(AndroidUtilities.dp(6.0f), getThemedColor(this.dialogButtonColorKey)));
                        textViewWithLoading3.setPadding(AndroidUtilities.dp(12.0f), 0, AndroidUtilities.dp(12.0f), 0);
                        if (this.verticalButtons) {
                            this.buttonsLayout.addView(textViewWithLoading3, 1, LayoutHelper.createLinear(-2, 36, LocaleController.isRTL ? 3 : 5));
                        } else {
                            this.buttonsLayout.addView(textViewWithLoading3, LayoutHelper.createFrame(-2, 36, 51));
                        }
                        textViewWithLoading3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionBar.AlertDialog$$ExternalSyntheticLambda8
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view8) {
                                this.f$0.lambda$inflateContent$6(textViewWithLoading3, view8);
                            }
                        });
                    }
                    if (this.verticalButtons) {
                        for (int i7 = 1; i7 < this.buttonsLayout.getChildCount(); i7++) {
                            ((ViewGroup.MarginLayoutParams) this.buttonsLayout.getChildAt(i7).getLayoutParams()).topMargin = AndroidUtilities.dp(6.0f);
                        }
                    }
                }
                Window window = getWindow();
                layoutParams = new WindowManager.LayoutParams();
                layoutParams.copyFrom(window.getAttributes());
                if (!this.needStarsBalance) {
                    layoutParams.height = -1;
                    layoutParams.flags |= 1024;
                    window.setWindowAnimations(R.style.DialogNoAnimation);
                } else if (this.progressViewStyle == 3) {
                    layoutParams.width = -1;
                } else {
                    if (!this.dimEnabled || this.dimCustom) {
                        layoutParams.dimAmount = BitmapDescriptorFactory.HUE_RED;
                        i2 = layoutParams.flags ^ 2;
                    } else {
                        layoutParams.dimAmount = this.dimAlpha;
                        i2 = layoutParams.flags | 2;
                    }
                    layoutParams.flags = i2;
                    int i8 = AndroidUtilities.displaySize.x;
                    this.lastScreenWidth = i8;
                    int iMin = Math.min(AndroidUtilities.dp(AndroidUtilities.isTablet() ? AndroidUtilities.isSmallTablet() ? 446.0f : 496.0f : 356.0f), (i8 - AndroidUtilities.dp(48.0f)) - (this.additioanalHorizontalPadding * 2));
                    Rect rect2 = this.backgroundPaddings;
                    layoutParams.width = iMin + rect2.left + rect2.right;
                }
                view3 = this.customView;
                if (view3 == null && this.checkFocusable && canTextInput(view3)) {
                    layoutParams.softInputMode = 4;
                } else {
                    layoutParams.flags |= 131072;
                }
                if (Build.VERSION.SDK_INT >= 28) {
                    layoutParams.layoutInDisplayCutoutMode = 0;
                }
                if (this.blurredBackground) {
                    if (!supportsNativeBlur()) {
                        AndroidUtilities.makeGlobalBlurBitmap(new Utilities.Callback() { // from class: org.telegram.ui.ActionBar.AlertDialog$$ExternalSyntheticLambda9
                            @Override // org.telegram.messenger.Utilities.Callback
                            public final void run(Object obj2) {
                                this.f$0.lambda$inflateContent$7((Bitmap) obj2);
                            }
                        }, 8.0f);
                    } else if (this.progressViewStyle == 0) {
                        this.blurredNativeBackground = true;
                        window.setBackgroundBlurRadius(50);
                        float fDp = AndroidUtilities.dp(12.0f);
                        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{fDp, fDp, fDp, fDp, fDp, fDp, fDp, fDp}, null, null));
                        shapeDrawable.getPaint().setColor(ColorUtils.setAlphaComponent(this.backgroundColor, (int) (this.blurAlpha * 255.0f)));
                        window.setBackgroundDrawable(shapeDrawable);
                        if (this.blurBehind) {
                            layoutParams.flags |= 4;
                            layoutParams.setBlurBehindRadius(20);
                        }
                    }
                }
                window.setAttributes(layoutParams);
                return view4;
            }
            this.containerView.setBackgroundDrawable(null);
            this.containerView.setPadding(0, 0, 0, 0);
            this.containerView.setBackgroundDrawable(this.shadowDrawable);
        }
        this.drawBackground = false;
        this.containerView.setFitsSystemWindows(Build.VERSION.SDK_INT < 21);
        View view42 = this.containerView;
        if (this.needStarsBalance) {
        }
        if (z) {
        }
        if (this.positiveButtonText != null) {
        }
        if (this.topResId != 0) {
            RLottieImageView rLottieImageView3 = new RLottieImageView(getContext());
            this.topImageView = rLottieImageView3;
            drawable = this.topDrawable;
            if (drawable == null) {
            }
            this.topImageView.setScaleType(ImageView.ScaleType.CENTER);
            if (this.topAnimationIsNew) {
            }
            if (this.topAnimationIsNew) {
            }
            this.topImageView.setPadding(0, 0, 0, 0);
            this.containerView.addView(this.topImageView, LayoutHelper.createLinear(-1, this.topHeight, 51, 0, 0, 0, 0));
        }
        if (this.title != null) {
        }
        if (this.secondTitle != null) {
            TextView textView4 = new TextView(getContext());
            this.secondTitleTextView = textView4;
            textView4.setText(this.secondTitle);
            this.secondTitleTextView.setTextColor(getThemedColor(Theme.key_dialogTextGray3));
            this.secondTitleTextView.setTextSize(1, 18.0f);
            this.secondTitleTextView.setGravity((!LocaleController.isRTL ? 3 : 5) | 48);
            this.titleContainer.addView(this.secondTitleTextView, LayoutHelper.createFrame(-2, -2.0f, (!LocaleController.isRTL ? 3 : 5) | 48, BitmapDescriptorFactory.HUE_RED, 21.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        }
        if (this.subtitle != null) {
        }
        if (this.progressViewStyle == 0) {
        }
        EffectsTextView effectsTextView2 = new EffectsTextView(getContext());
        this.messageTextView = effectsTextView2;
        NotificationCenter.listenEmojiLoading(effectsTextView2);
        this.messageTextView.setTextColor(getThemedColor(!this.topAnimationIsNew ? Theme.key_windowBackgroundWhiteGrayText : Theme.key_dialogTextBlack));
        this.messageTextView.setTextSize(1, 16.0f);
        this.messageTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        this.messageTextView.setLinkTextColor(getThemedColor(Theme.key_dialogTextLink));
        if (!this.messageTextViewClickable) {
        }
        this.messageTextView.setGravity((!this.topAnimationIsNew ? 1 : LocaleController.isRTL ? 5 : 3) | 48);
        i = this.progressViewStyle;
        if (i != 2) {
        }
        if (TextUtils.isEmpty(this.message)) {
        }
        if (this.items != null) {
        }
        view2 = this.customView;
        if (view2 != null) {
        }
        if (z2) {
        }
        Window window2 = getWindow();
        layoutParams = new WindowManager.LayoutParams();
        layoutParams.copyFrom(window2.getAttributes());
        if (!this.needStarsBalance) {
        }
        view3 = this.customView;
        if (view3 == null) {
            layoutParams.flags |= 131072;
        }
        if (Build.VERSION.SDK_INT >= 28) {
        }
        if (this.blurredBackground) {
        }
        window2.setAttributes(layoutParams);
        return view42;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        this.contentScrollView.invalidate();
        this.scrollContainer.invalidate();
    }

    public Browser.Progress makeButtonLoading(int i) {
        final View button = getButton(i);
        this.dismissDialogByButtons = false;
        return new Browser.Progress(new Runnable() { // from class: org.telegram.ui.ActionBar.AlertDialog$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                AlertDialog.lambda$makeButtonLoading$8(button);
            }
        }, new Runnable() { // from class: org.telegram.ui.ActionBar.AlertDialog$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$makeButtonLoading$9(button);
            }
        });
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        super.onBackPressed();
        OnButtonClickListener onButtonClickListener = this.onBackButtonListener;
        if (onButtonClickListener != null) {
            onButtonClickListener.onClick(this, -2);
        }
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) throws NoSuchFieldException, SecurityException {
        super.onCreate(bundle);
        inflateContent(true);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
    }

    public void redPositive() {
        TextView textView = (TextView) getButton(-1);
        if (textView != null) {
            textView.setTextColor(getThemedColor(Theme.key_text_RedBold));
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        ScrollView scrollView = this.contentScrollView;
        if (scrollView != null) {
            scrollView.postDelayed(runnable, j);
        }
    }

    public void setBackgroundColor(int i) {
        this.backgroundColor = i;
        Drawable drawable = this.shadowDrawable;
        if (drawable != null) {
            drawable.setColorFilter(new PorterDuffColorFilter(this.backgroundColor, PorterDuff.Mode.MULTIPLY));
        }
    }

    public void setBlurParams(float f, boolean z, boolean z2) {
        this.blurAlpha = f;
        this.blurBehind = z;
        this.blurredBackground = z2;
    }

    public void setCanCancel(boolean z) {
        this.canCacnel = z;
    }

    public void setCancelDialog(boolean z) {
        this.withCancelDialog = z;
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
    }

    public void setDismissDialogByButtons(boolean z) {
        this.dismissDialogByButtons = z;
    }

    public void setFocusable(boolean z) {
        int i;
        if (this.focusable == z) {
            return;
        }
        this.focusable = z;
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        if (this.focusable) {
            attributes.softInputMode = 16;
            i = attributes.flags & (-131073);
        } else {
            attributes.softInputMode = 48;
            i = attributes.flags | 131072;
        }
        attributes.flags = i;
        window.setAttributes(attributes);
    }

    public void setItemColor(int i, int i2, int i3) {
        if (i < 0 || i >= this.itemViews.size()) {
            return;
        }
        AlertDialogCell alertDialogCell = (AlertDialogCell) this.itemViews.get(i);
        alertDialogCell.textView.setTextColor(i2);
        alertDialogCell.imageView.setColorFilter(new PorterDuffColorFilter(i3, PorterDuff.Mode.MULTIPLY));
    }

    public void setMessage(CharSequence charSequence) {
        TextView textView;
        int i;
        this.message = charSequence;
        if (this.messageTextView != null) {
            if (TextUtils.isEmpty(charSequence)) {
                textView = this.messageTextView;
                i = 8;
            } else {
                this.messageTextView.setText(this.message);
                textView = this.messageTextView;
                i = 0;
            }
            textView.setVisibility(i);
        }
    }

    public void setMessageLineSpacing(float f) {
        TextView textView = this.messageTextView;
        if (textView != null) {
            textView.setLineSpacing(AndroidUtilities.dp(f), 1.0f);
        }
    }

    public void setNegativeButton(CharSequence charSequence, OnButtonClickListener onButtonClickListener) {
        this.negativeButtonText = charSequence;
        this.negativeButtonListener = onButtonClickListener;
    }

    public void setNeutralButton(CharSequence charSequence, OnButtonClickListener onButtonClickListener) {
        this.neutralButtonText = charSequence;
        this.neutralButtonListener = onButtonClickListener;
    }

    @Override // android.app.Dialog
    public void setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        this.onCancelListener = onCancelListener;
        super.setOnCancelListener(onCancelListener);
    }

    public void setPositiveButton(CharSequence charSequence, OnButtonClickListener onButtonClickListener) {
        this.positiveButtonText = charSequence;
        this.positiveButtonListener = onButtonClickListener;
    }

    public void setPositiveButtonListener(OnButtonClickListener onButtonClickListener) {
        this.positiveButtonListener = onButtonClickListener;
    }

    public void setProgress(int i) {
        this.currentProgress = i;
        LineProgressView lineProgressView = this.lineProgressView;
        if (lineProgressView != null) {
            lineProgressView.setProgress(i / 100.0f, true);
            updateLineProgressTextView();
        }
    }

    public AlertDialog setShowStarsBalance(boolean z) {
        this.needStarsBalance = z;
        return this;
    }

    public void setTextColor(int i) {
        SpoilersTextView spoilersTextView = this.titleTextView;
        if (spoilersTextView != null) {
            spoilersTextView.setTextColor(i);
        }
        TextView textView = this.messageTextView;
        if (textView != null) {
            textView.setTextColor(i);
        }
    }

    public void setTextSize(int i, int i2) {
        SpoilersTextView spoilersTextView = this.titleTextView;
        if (spoilersTextView != null) {
            spoilersTextView.setTextSize(1, i);
        }
        TextView textView = this.messageTextView;
        if (textView != null) {
            textView.setTextSize(1, i2);
        }
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        this.title = charSequence;
        SpoilersTextView spoilersTextView = this.titleTextView;
        if (spoilersTextView != null) {
            spoilersTextView.setText(charSequence);
        }
    }

    @Override // android.app.Dialog
    public void show() {
        if (AndroidUtilities.isSafeToShow(getContext())) {
            this.dismissed = false;
            super.show();
            FrameLayout frameLayout = this.progressViewContainer;
            if (frameLayout != null && this.progressViewStyle == 3) {
                frameLayout.setScaleX(BitmapDescriptorFactory.HUE_RED);
                this.progressViewContainer.setScaleY(BitmapDescriptorFactory.HUE_RED);
                this.progressViewContainer.animate().scaleX(1.0f).scaleY(1.0f).setInterpolator(new OvershootInterpolator(1.3f)).setDuration(190L).start();
            }
            this.shownAt = System.currentTimeMillis();
        }
    }

    public void showCancelAlert() {
        if (this.canCacnel && this.cancelDialog == null) {
            Builder builder = new Builder(getContext(), this.resourcesProvider);
            builder.setTitle(LocaleController.getString(R.string.StopLoadingTitle));
            builder.setMessage(LocaleController.getString(R.string.StopLoading));
            builder.setPositiveButton(LocaleController.getString(R.string.WaitMore), null);
            builder.setNegativeButton(LocaleController.getString(R.string.Stop), new OnButtonClickListener() { // from class: org.telegram.ui.ActionBar.AlertDialog$$ExternalSyntheticLambda11
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$showCancelAlert$10(alertDialog, i);
                }
            });
            builder.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.ActionBar.AlertDialog$$ExternalSyntheticLambda12
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    this.f$0.lambda$showCancelAlert$11(dialogInterface);
                }
            });
            try {
                this.cancelDialog = builder.show();
            } catch (Exception unused) {
            }
        }
    }

    public void showDelayed(long j) {
        AndroidUtilities.cancelRunOnUIThread(this.showRunnable);
        AndroidUtilities.runOnUIThread(this.showRunnable, j);
    }

    protected boolean supportsNativeBlur() {
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        ScrollView scrollView = this.contentScrollView;
        if (scrollView != null) {
            scrollView.removeCallbacks(runnable);
        }
    }
}
