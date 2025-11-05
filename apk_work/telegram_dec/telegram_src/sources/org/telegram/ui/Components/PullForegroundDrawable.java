package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.LinearInterpolator;
import androidx.core.graphics.ColorUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.R;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Stories.recorder.HintView2;
import org.telegram.ui.TopicsFragment;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public abstract class PullForegroundDrawable {
    private ValueAnimator accentRevalAnimatorIn;
    private ValueAnimator accentRevalAnimatorOut;
    private float accentRevalProgress;
    private float accentRevalProgressOut;
    private boolean animateOut;
    private boolean animateToColorize;
    private boolean animateToEndText;
    private boolean animateToTextIn;
    private boolean arrowAnimateTo;
    private final ArrowDrawable arrowDrawable;
    private ValueAnimator arrowRotateAnimator;
    private float arrowRotateProgress;
    private boolean bounceIn;
    private float bounceProgress;
    private View cell;
    private final Path circleClipPath;
    private Drawable generalTopicDrawable;
    private boolean isOut;
    private int lastWidth;
    private RecyclerListView listView;
    private AnimatorSet outAnimator;
    public float outCx;
    public float outCy;
    public float outImageSize;
    public float outOverScroll;
    public float outProgress;
    public float outRadius;
    public float pullProgress;
    private StaticLayout pullTooltipLayout;
    private float pullTooltipLayoutLeft;
    private float pullTooltipLayoutScale;
    private float pullTooltipLayoutWidth;
    private final CharSequence pullTooltipText;
    private StaticLayout releaseTooltipLayout;
    private float releaseTooltipLayoutLeft;
    private float releaseTooltipLayoutScale;
    private float releaseTooltipLayoutWidth;
    private final CharSequence releaseTooltipText;
    public int scrollDy;
    private float textInProgress;
    Runnable textInRunnable;
    private ValueAnimator.AnimatorUpdateListener textInUpdateListener;
    private ValueAnimator textIntAnimator;
    private float textSwappingProgress;
    private ValueAnimator.AnimatorUpdateListener textSwappingUpdateListener;
    private ValueAnimator textSwipingAnimator;
    private final TextPaint tooltipTextPaint;
    private float touchSlop;
    boolean wasSendCallback;
    private boolean willDraw;
    private int backgroundColorKey = Theme.key_chats_archivePullDownBackground;
    private int backgroundActiveColorKey = Theme.key_chats_archivePullDownBackgroundActive;
    private int avatarBackgroundColorKey = Theme.key_avatar_backgroundArchivedHidden;
    private boolean changeAvatarColor = true;
    private final Paint paintSecondary = new Paint(1);
    private final Paint paintWhite = new Paint(1);
    private final Paint paintBackgroundAccent = new Paint(1);
    private final Paint backgroundPaint = new Paint();
    private final RectF rectF = new RectF();

    private class ArrowDrawable extends Drawable {
        private float lastDensity;
        private Path path = new Path();
        private Paint paint = new Paint(1);

        public ArrowDrawable() {
            updatePath();
        }

        private void updatePath() {
            int iDp = AndroidUtilities.dp(18.0f);
            this.path.reset();
            float f = iDp >> 1;
            this.path.moveTo(f, AndroidUtilities.dpf2(4.98f));
            this.path.lineTo(AndroidUtilities.dpf2(4.95f), AndroidUtilities.dpf2(9.0f));
            this.path.lineTo(iDp - AndroidUtilities.dpf2(4.95f), AndroidUtilities.dpf2(9.0f));
            this.path.lineTo(f, AndroidUtilities.dpf2(4.98f));
            this.paint.setStyle(Paint.Style.FILL_AND_STROKE);
            this.paint.setStrokeJoin(Paint.Join.ROUND);
            this.paint.setStrokeWidth(AndroidUtilities.dpf2(1.0f));
            this.lastDensity = AndroidUtilities.density;
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.lastDensity != AndroidUtilities.density) {
                updatePath();
            }
            canvas.save();
            canvas.translate(getBounds().left, getBounds().top);
            canvas.drawPath(this.path, this.paint);
            canvas.drawRect(AndroidUtilities.dpf2(7.56f), AndroidUtilities.dpf2(8.0f), AndroidUtilities.dp(18.0f) - AndroidUtilities.dpf2(7.56f), AndroidUtilities.dpf2(11.1f), this.paint);
            canvas.restore();
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return AndroidUtilities.dp(18.0f);
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return getIntrinsicHeight();
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        public void setColor(int i) {
            this.paint.setColor(i);
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }
    }

    public PullForegroundDrawable(CharSequence charSequence, CharSequence charSequence2) {
        TextPaint textPaint = new TextPaint(1);
        this.tooltipTextPaint = textPaint;
        this.arrowDrawable = new ArrowDrawable();
        this.circleClipPath = new Path();
        this.textSwappingProgress = 1.0f;
        this.arrowRotateProgress = 1.0f;
        this.accentRevalProgress = 1.0f;
        this.accentRevalProgressOut = 1.0f;
        this.pullTooltipLayoutScale = 1.0f;
        this.releaseTooltipLayoutScale = 1.0f;
        this.textSwappingUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PullForegroundDrawable$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$new$0(valueAnimator);
            }
        };
        this.textInUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PullForegroundDrawable$$ExternalSyntheticLambda4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$new$1(valueAnimator);
            }
        };
        this.textInRunnable = new Runnable() { // from class: org.telegram.ui.Components.PullForegroundDrawable.1
            @Override // java.lang.Runnable
            public void run() {
                PullForegroundDrawable.this.animateToTextIn = true;
                if (PullForegroundDrawable.this.textIntAnimator != null) {
                    PullForegroundDrawable.this.textIntAnimator.cancel();
                }
                PullForegroundDrawable.this.textInProgress = BitmapDescriptorFactory.HUE_RED;
                PullForegroundDrawable.this.textIntAnimator = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                PullForegroundDrawable.this.textIntAnimator.addUpdateListener(PullForegroundDrawable.this.textInUpdateListener);
                PullForegroundDrawable.this.textIntAnimator.setInterpolator(new LinearInterpolator());
                PullForegroundDrawable.this.textIntAnimator.setDuration(150L);
                PullForegroundDrawable.this.textIntAnimator.start();
            }
        };
        this.wasSendCallback = false;
        textPaint.setTypeface(AndroidUtilities.bold());
        textPaint.setTextSize(AndroidUtilities.dp(16.0f));
        this.touchSlop = ViewConfiguration.get(ApplicationLoader.applicationContext).getScaledTouchSlop();
        this.pullTooltipText = charSequence;
        this.releaseTooltipText = charSequence2;
        try {
            this.generalTopicDrawable = ApplicationLoader.applicationContext.getResources().getDrawable(R.drawable.msg_filled_general).mutate();
        } catch (Exception unused) {
        }
    }

    private void checkTextLayouts(int i) {
        if (i != this.lastWidth) {
            this.pullTooltipLayout = new StaticLayout(this.pullTooltipText, this.tooltipTextPaint, AndroidUtilities.displaySize.x, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            float fMax = BitmapDescriptorFactory.HUE_RED;
            for (int i2 = 0; i2 < this.pullTooltipLayout.getLineCount(); i2++) {
                fMax = Math.max(fMax, this.pullTooltipLayout.getLineWidth(i2));
            }
            float f = i;
            this.pullTooltipLayoutScale = Math.min(1.0f, f / fMax);
            int iCeil = (int) Math.ceil(fMax);
            if (this.pullTooltipLayoutScale < 0.8f) {
                this.pullTooltipLayoutScale = 0.8f;
                iCeil = HintView2.cutInFancyHalf(this.pullTooltipText, this.tooltipTextPaint);
            }
            this.pullTooltipLayout = new StaticLayout(this.pullTooltipText, this.tooltipTextPaint, iCeil, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.pullTooltipLayoutLeft = iCeil;
            this.pullTooltipLayoutWidth = BitmapDescriptorFactory.HUE_RED;
            for (int i3 = 0; i3 < this.pullTooltipLayout.getLineCount(); i3++) {
                this.pullTooltipLayoutLeft = Math.min(this.pullTooltipLayoutLeft, this.pullTooltipLayout.getLineLeft(i3));
                this.pullTooltipLayoutWidth = Math.max(this.pullTooltipLayoutWidth, this.pullTooltipLayout.getLineWidth(i3));
            }
            this.releaseTooltipLayout = new StaticLayout(this.releaseTooltipText, this.tooltipTextPaint, AndroidUtilities.displaySize.x, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            float fMax2 = BitmapDescriptorFactory.HUE_RED;
            for (int i4 = 0; i4 < this.releaseTooltipLayout.getLineCount(); i4++) {
                fMax2 = Math.max(fMax2, this.releaseTooltipLayout.getLineWidth(i4));
            }
            this.releaseTooltipLayoutScale = Math.min(1.0f, f / fMax2);
            int iCeil2 = (int) Math.ceil(fMax2);
            if (this.releaseTooltipLayoutScale < 0.8f) {
                this.releaseTooltipLayoutScale = 0.8f;
                iCeil2 = HintView2.cutInFancyHalf(this.releaseTooltipText, this.tooltipTextPaint);
            }
            this.releaseTooltipLayout = new StaticLayout(this.releaseTooltipText, this.tooltipTextPaint, iCeil2, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.releaseTooltipLayoutLeft = iCeil2;
            this.releaseTooltipLayoutWidth = BitmapDescriptorFactory.HUE_RED;
            for (int i5 = 0; i5 < this.releaseTooltipLayout.getLineCount(); i5++) {
                this.releaseTooltipLayoutLeft = Math.min(this.releaseTooltipLayoutLeft, this.releaseTooltipLayout.getLineLeft(i5));
                this.releaseTooltipLayoutWidth = Math.max(this.releaseTooltipLayoutWidth, this.releaseTooltipLayout.getLineWidth(i5));
            }
            this.lastWidth = i;
        }
    }

    public static int getMaxOverscroll() {
        return AndroidUtilities.dp(72.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$colorize$3(ValueAnimator valueAnimator) {
        this.accentRevalProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.cell;
        if (view != null) {
            view.invalidate();
        }
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            recyclerListView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$colorize$4(ValueAnimator valueAnimator) {
        this.accentRevalProgressOut = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.cell;
        if (view != null) {
            view.invalidate();
        }
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            recyclerListView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ValueAnimator valueAnimator) {
        this.textSwappingProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.cell;
        if (view != null) {
            view.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(ValueAnimator valueAnimator) {
        this.textInProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.cell;
        if (view != null) {
            view.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startOutAnimation$5(ValueAnimator valueAnimator) {
        setOutProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
        View view = this.cell;
        if (view != null) {
            view.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startOutAnimation$6(ValueAnimator valueAnimator) {
        this.bounceProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.bounceIn = true;
        View view = this.cell;
        if (view != null) {
            view.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startOutAnimation$7(ValueAnimator valueAnimator) {
        this.bounceProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.bounceIn = false;
        View view = this.cell;
        if (view != null) {
            view.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateTextProgress$2(ValueAnimator valueAnimator) {
        this.arrowRotateProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.cell;
        if (view != null) {
            view.invalidate();
        }
    }

    private void setOutProgress(float f) {
        this.outProgress = f;
        int iBlendARGB = ColorUtils.blendARGB(Theme.getNonAnimatedColor(this.avatarBackgroundColorKey), Theme.getNonAnimatedColor(this.backgroundActiveColorKey), 1.0f - this.outProgress);
        this.paintBackgroundAccent.setColor(iBlendARGB);
        if (this.changeAvatarColor && isDraw()) {
            Theme.dialogs_archiveAvatarDrawable.beginApplyLayerColors();
            Theme.dialogs_archiveAvatarDrawable.setLayerColor("Arrow1.**", iBlendARGB);
            Theme.dialogs_archiveAvatarDrawable.setLayerColor("Arrow2.**", iBlendARGB);
            Theme.dialogs_archiveAvatarDrawable.commitApplyLayerColors();
            Theme.dialogs_archiveAvatarDrawableRecolored = true;
        }
    }

    private void textIn() {
        if (this.animateToTextIn) {
            return;
        }
        if (Math.abs(this.scrollDy) >= this.touchSlop * 0.5f) {
            this.wasSendCallback = true;
            this.cell.removeCallbacks(this.textInRunnable);
            this.cell.postDelayed(this.textInRunnable, 200L);
        } else {
            if (this.wasSendCallback) {
                return;
            }
            this.textInProgress = 1.0f;
            this.animateToTextIn = true;
        }
    }

    private void updateTextProgress(float f) {
        boolean z = f > 0.85f;
        if (this.animateToEndText != z) {
            this.animateToEndText = z;
            if (this.textInProgress == BitmapDescriptorFactory.HUE_RED) {
                ValueAnimator valueAnimator = this.textSwipingAnimator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                }
                this.textSwappingProgress = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
            } else {
                ValueAnimator valueAnimator2 = this.textSwipingAnimator;
                if (valueAnimator2 != null) {
                    valueAnimator2.cancel();
                }
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.textSwappingProgress, z ? BitmapDescriptorFactory.HUE_RED : 1.0f);
                this.textSwipingAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(this.textSwappingUpdateListener);
                this.textSwipingAnimator.setInterpolator(new LinearInterpolator());
                this.textSwipingAnimator.setDuration(170L);
                this.textSwipingAnimator.start();
            }
        }
        if (z != this.arrowAnimateTo) {
            this.arrowAnimateTo = z;
            ValueAnimator valueAnimator3 = this.arrowRotateAnimator;
            if (valueAnimator3 != null) {
                valueAnimator3.cancel();
            }
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(this.arrowRotateProgress, this.arrowAnimateTo ? BitmapDescriptorFactory.HUE_RED : 1.0f);
            this.arrowRotateAnimator = valueAnimatorOfFloat2;
            valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PullForegroundDrawable$$ExternalSyntheticLambda2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator4) {
                    this.f$0.lambda$updateTextProgress$2(valueAnimator4);
                }
            });
            this.arrowRotateAnimator.setInterpolator(CubicBezierInterpolator.EASE_BOTH);
            this.arrowRotateAnimator.setDuration(250L);
            this.arrowRotateAnimator.start();
        }
    }

    public void colorize(boolean z) {
        ValueAnimator valueAnimator;
        if (this.animateToColorize != z) {
            this.animateToColorize = z;
            if (z) {
                ValueAnimator valueAnimator2 = this.accentRevalAnimatorIn;
                if (valueAnimator2 != null) {
                    valueAnimator2.cancel();
                    this.accentRevalAnimatorIn = null;
                }
                this.accentRevalProgress = BitmapDescriptorFactory.HUE_RED;
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                this.accentRevalAnimatorIn = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PullForegroundDrawable$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        this.f$0.lambda$colorize$3(valueAnimator3);
                    }
                });
                this.accentRevalAnimatorIn.setInterpolator(AndroidUtilities.accelerateInterpolator);
                this.accentRevalAnimatorIn.setDuration(230L);
                valueAnimator = this.accentRevalAnimatorIn;
            } else {
                ValueAnimator valueAnimator3 = this.accentRevalAnimatorOut;
                if (valueAnimator3 != null) {
                    valueAnimator3.cancel();
                    this.accentRevalAnimatorOut = null;
                }
                this.accentRevalProgressOut = BitmapDescriptorFactory.HUE_RED;
                ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                this.accentRevalAnimatorOut = valueAnimatorOfFloat2;
                valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PullForegroundDrawable$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator4) {
                        this.f$0.lambda$colorize$4(valueAnimator4);
                    }
                });
                this.accentRevalAnimatorOut.setInterpolator(AndroidUtilities.accelerateInterpolator);
                this.accentRevalAnimatorOut.setDuration(230L);
                valueAnimator = this.accentRevalAnimatorOut;
            }
            valueAnimator.start();
        }
    }

    public void doNotShow() {
        ValueAnimator valueAnimator = this.textSwipingAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.textIntAnimator;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        View view = this.cell;
        if (view != null) {
            view.removeCallbacks(this.textInRunnable);
        }
        ValueAnimator valueAnimator3 = this.accentRevalAnimatorIn;
        if (valueAnimator3 != null) {
            valueAnimator3.cancel();
        }
        this.textSwappingProgress = 1.0f;
        this.arrowRotateProgress = 1.0f;
        this.animateToEndText = false;
        this.arrowAnimateTo = false;
        this.animateToTextIn = false;
        this.wasSendCallback = false;
        this.textInProgress = BitmapDescriptorFactory.HUE_RED;
        this.isOut = true;
        setOutProgress(1.0f);
        this.animateToColorize = false;
        this.accentRevalProgress = BitmapDescriptorFactory.HUE_RED;
    }

    public void draw(Canvas canvas) {
        draw(canvas, false);
    }

    public void draw(Canvas canvas, boolean z) {
        View view;
        int i;
        float f;
        int i2;
        int i3;
        int i4;
        float f2;
        float f3;
        float f4;
        float width;
        Paint paint;
        int i5;
        int i6;
        float f5;
        float f6;
        int i7;
        float f7;
        RectF rectF;
        float f8;
        float height;
        float f9;
        int height2;
        if (!this.willDraw || this.isOut || (view = this.cell) == null || this.listView == null) {
            return;
        }
        boolean z2 = view instanceof TopicsFragment.TopicDialogCell;
        int iDp = AndroidUtilities.dp(z2 ? 15.0f : 28.0f);
        int iDp2 = AndroidUtilities.dp(8.0f);
        int iDp3 = AndroidUtilities.dp(9.0f);
        int iDp4 = AndroidUtilities.dp(18.0f);
        int viewOffset = (int) getViewOffset();
        int height3 = (int) (this.cell.getHeight() * this.pullProgress);
        float f10 = this.bounceIn ? (this.bounceProgress * 0.07f) - 0.05f : this.bounceProgress * 0.02f;
        checkTextLayouts((this.cell.getWidth() - (iDp * 4)) - AndroidUtilities.dp(16.0f));
        updateTextProgress(this.pullProgress);
        float f11 = this.outProgress * 2.0f;
        if (f11 > 1.0f) {
            f11 = 1.0f;
        }
        float f12 = this.outCx;
        float f13 = this.outCy;
        if (z) {
            f13 += viewOffset;
        }
        int i8 = iDp + iDp3;
        int measuredHeight = (this.cell.getMeasuredHeight() - iDp2) - iDp3;
        if (z) {
            measuredHeight += viewOffset;
        }
        int i9 = iDp4 + (iDp2 * 2);
        if (height3 > i9) {
            i = iDp3;
            f = 1.0f;
        } else {
            i = iDp3;
            f = height3 / i9;
        }
        canvas.save();
        if (z) {
            i2 = iDp4;
            i4 = iDp2;
            i3 = viewOffset;
            canvas.clipRect(0, -AndroidUtilities.dp(4.0f), this.listView.getMeasuredWidth(), viewOffset + 1);
        } else {
            i2 = iDp4;
            i3 = viewOffset;
            i4 = iDp2;
        }
        if (this.outProgress == BitmapDescriptorFactory.HUE_RED) {
            if (this.accentRevalProgress != 1.0f && this.accentRevalProgressOut != 1.0f) {
                canvas.drawPaint(this.backgroundPaint);
            }
            f2 = f10;
        } else {
            float f14 = this.outRadius;
            float width2 = f14 + (f14 * f10) + ((this.cell.getWidth() - this.outRadius) * (1.0f - this.outProgress));
            if (this.accentRevalProgress != 1.0f && this.accentRevalProgressOut != 1.0f) {
                canvas.drawCircle(f12, f13, width2, this.backgroundPaint);
            }
            this.circleClipPath.reset();
            f2 = f10;
            this.rectF.set(f12 - width2, f13 - width2, f12 + width2, width2 + f13);
            this.circleClipPath.addOval(this.rectF, Path.Direction.CW);
            canvas.clipPath(this.circleClipPath);
        }
        if (this.animateToColorize) {
            if (this.accentRevalProgressOut > this.accentRevalProgress) {
                canvas.save();
                float f15 = i8;
                float f16 = this.outProgress;
                float f17 = measuredHeight;
                canvas.translate((f12 - f15) * f16, (f13 - f17) * f16);
                canvas.drawCircle(f15, f17, this.cell.getWidth() * this.accentRevalProgressOut, this.backgroundPaint);
                canvas.restore();
            }
            if (this.accentRevalProgress > BitmapDescriptorFactory.HUE_RED) {
                canvas.save();
                f3 = i8;
                float f18 = this.outProgress;
                f4 = measuredHeight;
                canvas.translate((f12 - f3) * f18, (f13 - f4) * f18);
                width = this.cell.getWidth() * this.accentRevalProgress;
                paint = this.paintBackgroundAccent;
                canvas.drawCircle(f3, f4, width, paint);
                canvas.restore();
            }
        } else {
            if (this.accentRevalProgress > this.accentRevalProgressOut) {
                canvas.save();
                float f19 = i8;
                float f20 = this.outProgress;
                float f21 = measuredHeight;
                canvas.translate((f12 - f19) * f20, (f13 - f21) * f20);
                canvas.drawCircle(f19, f21, this.cell.getWidth() * this.accentRevalProgress, this.paintBackgroundAccent);
                canvas.restore();
            }
            if (this.accentRevalProgressOut > BitmapDescriptorFactory.HUE_RED) {
                canvas.save();
                f3 = i8;
                float f22 = this.outProgress;
                f4 = measuredHeight;
                canvas.translate((f12 - f3) * f22, (f13 - f4) * f22);
                width = this.cell.getWidth() * this.accentRevalProgressOut;
                paint = this.backgroundPaint;
                canvas.drawCircle(f3, f4, width, paint);
                canvas.restore();
            }
        }
        if (height3 > i9) {
            this.paintSecondary.setAlpha((int) ((1.0f - f11) * 0.4f * f * 255.0f));
            if (z) {
                rectF = this.rectF;
                f8 = iDp;
                i6 = i4;
                height = i6;
                f9 = iDp + i2;
                height2 = i6 + i3 + i;
            } else {
                i6 = i4;
                rectF = this.rectF;
                f8 = iDp;
                height = ((this.cell.getHeight() - height3) + i6) - i3;
                f9 = iDp + i2;
                height2 = this.cell.getHeight() - i6;
            }
            rectF.set(f8, height, f9, height2);
            i5 = i;
            float f23 = i5;
            canvas.drawRoundRect(this.rectF, f23, f23, this.paintSecondary);
        } else {
            i5 = i;
            i6 = i4;
        }
        if (z) {
            canvas.restore();
            return;
        }
        if (z2) {
            measuredHeight = (int) (measuredHeight - ((this.cell.getMeasuredHeight() - AndroidUtilities.dp(41.0f)) * this.outProgress));
        }
        float f24 = this.outProgress;
        if (f24 == BitmapDescriptorFactory.HUE_RED || z2) {
            this.paintWhite.setAlpha((int) (f * 255.0f * (1.0f - f24)));
            float f25 = i8;
            float f26 = measuredHeight;
            canvas.drawCircle(f25, f26, i5, this.paintWhite);
            int intrinsicHeight = this.arrowDrawable.getIntrinsicHeight();
            int intrinsicWidth = this.arrowDrawable.getIntrinsicWidth() >> 1;
            f5 = f12;
            int i10 = intrinsicHeight >> 1;
            f6 = f13;
            this.arrowDrawable.setBounds(i8 - intrinsicWidth, measuredHeight - i10, intrinsicWidth + i8, measuredHeight + i10);
            float f27 = 1.0f - this.arrowRotateProgress;
            if (f27 < BitmapDescriptorFactory.HUE_RED) {
                f27 = BitmapDescriptorFactory.HUE_RED;
            }
            float f28 = 1.0f - f27;
            canvas.save();
            canvas.rotate(180.0f * f28, f25, f26);
            canvas.translate(BitmapDescriptorFactory.HUE_RED, (AndroidUtilities.dpf2(1.0f) * 1.0f) - f28);
            this.arrowDrawable.setColor(this.animateToColorize ? this.paintBackgroundAccent.getColor() : Theme.getColor(this.backgroundColorKey));
            this.arrowDrawable.setAlpha((int) ((1.0f - this.outProgress) * 255.0f));
            this.arrowDrawable.draw(canvas);
            canvas.restore();
        } else {
            f5 = f12;
            f6 = f13;
        }
        if (this.pullProgress > BitmapDescriptorFactory.HUE_RED) {
            textIn();
        }
        float height4 = (this.cell.getHeight() - (i9 / 2.0f)) + AndroidUtilities.dp(6.0f);
        float width3 = (this.cell.getWidth() + (z2 ? iDp * 2 : 0)) / 2.0f;
        if (this.pullTooltipLayout != null) {
            float f29 = this.textSwappingProgress;
            if (f29 > BitmapDescriptorFactory.HUE_RED && f29 < 1.0f) {
                canvas.save();
                float f30 = (this.textSwappingProgress * 0.2f) + 0.8f;
                canvas.scale(f30, f30, width3, (AndroidUtilities.dp(16.0f) * (1.0f - this.textSwappingProgress)) + height4);
            }
            i7 = i8;
            f7 = f5;
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.cell.getMeasuredWidth(), this.cell.getMeasuredHeight(), (int) (this.textSwappingProgress * 255.0f * f * this.textInProgress), 31);
            canvas.translate((width3 - this.pullTooltipLayoutLeft) - (this.pullTooltipLayoutWidth / 2.0f), ((AndroidUtilities.dp(8.0f) * (1.0f - this.textSwappingProgress)) + height4) - this.pullTooltipLayout.getHeight());
            float f31 = this.pullTooltipLayoutScale;
            canvas.scale(f31, f31, this.pullTooltipLayoutLeft + (this.pullTooltipLayoutWidth / 2.0f), this.pullTooltipLayout.getHeight());
            this.pullTooltipLayout.draw(canvas);
            canvas.restore();
            float f32 = this.textSwappingProgress;
            if (f32 > BitmapDescriptorFactory.HUE_RED && f32 < 1.0f) {
                canvas.restore();
            }
        } else {
            i7 = i8;
            f7 = f5;
        }
        if (this.releaseTooltipLayout != null) {
            float f33 = this.textSwappingProgress;
            if (f33 > BitmapDescriptorFactory.HUE_RED && f33 < 1.0f) {
                canvas.save();
                float f34 = ((1.0f - this.textSwappingProgress) * 0.1f) + 0.9f;
                canvas.scale(f34, f34, width3, height4 - (AndroidUtilities.dp(8.0f) * this.textSwappingProgress));
            }
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.cell.getMeasuredWidth(), this.cell.getMeasuredHeight(), (int) ((1.0f - this.textSwappingProgress) * 255.0f * f * this.textInProgress), 31);
            canvas.translate((width3 - this.releaseTooltipLayoutLeft) - (this.releaseTooltipLayoutWidth / 2.0f), (height4 + (AndroidUtilities.dp(8.0f) * this.textSwappingProgress)) - this.releaseTooltipLayout.getHeight());
            float f35 = this.releaseTooltipLayoutScale;
            canvas.scale(f35, f35, this.releaseTooltipLayoutLeft + (this.releaseTooltipLayoutWidth / 2.0f), this.releaseTooltipLayout.getHeight());
            this.releaseTooltipLayout.draw(canvas);
            canvas.restore();
            float f36 = this.textSwappingProgress;
            if (f36 > BitmapDescriptorFactory.HUE_RED && f36 < 1.0f) {
                canvas.restore();
            }
        }
        canvas.restore();
        if (z2 || !this.changeAvatarColor || this.outProgress <= BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        canvas.save();
        int intrinsicWidth2 = Theme.dialogs_archiveAvatarDrawable.getIntrinsicWidth();
        int height5 = (this.cell.getHeight() - i6) - i5;
        float f37 = intrinsicWidth2;
        float fDp = AndroidUtilities.dp(24.0f) / f37;
        float f38 = this.outProgress;
        float f39 = fDp + ((1.0f - fDp) * f38) + f2;
        float f40 = f7;
        float f41 = i7 - f40;
        float f42 = 1.0f - f38;
        canvas.translate(f41 * f42, (height5 - f6) * f42);
        float f43 = f6;
        canvas.scale(f39, f39, f40, f43);
        Theme.dialogs_archiveAvatarDrawable.setProgress(BitmapDescriptorFactory.HUE_RED);
        if (!Theme.dialogs_archiveAvatarDrawableRecolored) {
            Theme.dialogs_archiveAvatarDrawable.beginApplyLayerColors();
            Theme.dialogs_archiveAvatarDrawable.setLayerColor("Arrow1.**", Theme.getNonAnimatedColor(this.avatarBackgroundColorKey));
            Theme.dialogs_archiveAvatarDrawable.setLayerColor("Arrow2.**", Theme.getNonAnimatedColor(this.avatarBackgroundColorKey));
            Theme.dialogs_archiveAvatarDrawable.commitApplyLayerColors();
            Theme.dialogs_archiveAvatarDrawableRecolored = true;
        }
        float f44 = f37 / 2.0f;
        Theme.dialogs_archiveAvatarDrawable.setBounds((int) (f40 - f44), (int) (f43 - f44), (int) (f40 + f44), (int) (f43 + f44));
        Theme.dialogs_archiveAvatarDrawable.draw(canvas);
        canvas.restore();
    }

    public void drawOverScroll(Canvas canvas) {
        draw(canvas, true);
    }

    protected abstract float getViewOffset();

    public boolean isDraw() {
        return this.willDraw && !this.isOut;
    }

    public void resetText() {
        ValueAnimator valueAnimator = this.textIntAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        View view = this.cell;
        if (view != null) {
            view.removeCallbacks(this.textInRunnable);
        }
        this.textInProgress = BitmapDescriptorFactory.HUE_RED;
        this.animateToTextIn = false;
        this.wasSendCallback = false;
    }

    public void setCell(View view) {
        this.cell = view;
        updateColors();
    }

    public void setListView(RecyclerListView recyclerListView) {
        this.listView = recyclerListView;
    }

    public void setWillDraw(boolean z) {
        this.willDraw = z;
    }

    public void showHidden() {
        AnimatorSet animatorSet = this.outAnimator;
        if (animatorSet != null) {
            animatorSet.removeAllListeners();
            this.outAnimator.cancel();
        }
        setOutProgress(BitmapDescriptorFactory.HUE_RED);
        this.isOut = false;
        this.animateOut = false;
    }

    public void startOutAnimation() {
        if (this.animateOut || this.listView == null) {
            return;
        }
        AnimatorSet animatorSet = this.outAnimator;
        if (animatorSet != null) {
            animatorSet.removeAllListeners();
            this.outAnimator.cancel();
        }
        this.animateOut = true;
        this.bounceIn = true;
        this.bounceProgress = BitmapDescriptorFactory.HUE_RED;
        this.outOverScroll = this.listView.getTranslationY() / AndroidUtilities.dp(100.0f);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PullForegroundDrawable$$ExternalSyntheticLambda5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$startOutAnimation$5(valueAnimator);
            }
        });
        valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        valueAnimatorOfFloat.setDuration(250L);
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PullForegroundDrawable$$ExternalSyntheticLambda6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$startOutAnimation$6(valueAnimator);
            }
        });
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_BOTH;
        valueAnimatorOfFloat2.setInterpolator(cubicBezierInterpolator);
        valueAnimatorOfFloat2.setDuration(150L);
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
        valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PullForegroundDrawable$$ExternalSyntheticLambda7
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$startOutAnimation$7(valueAnimator);
            }
        });
        valueAnimatorOfFloat3.setInterpolator(cubicBezierInterpolator);
        valueAnimatorOfFloat3.setDuration(135L);
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.outAnimator = animatorSet2;
        animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PullForegroundDrawable.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PullForegroundDrawable.this.doNotShow();
            }
        });
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.playSequentially(valueAnimatorOfFloat2, valueAnimatorOfFloat3);
        animatorSet3.setStartDelay(180L);
        this.outAnimator.playTogether(valueAnimatorOfFloat, animatorSet3);
        this.outAnimator.start();
    }

    public void updateColors() {
        int color = Theme.getColor(this.backgroundColorKey);
        this.tooltipTextPaint.setColor(-1);
        this.paintWhite.setColor(-1);
        this.paintSecondary.setColor(ColorUtils.setAlphaComponent(-1, 100));
        this.backgroundPaint.setColor(color);
        this.arrowDrawable.setColor(color);
        this.paintBackgroundAccent.setColor(Theme.getColor(this.avatarBackgroundColorKey));
    }
}
