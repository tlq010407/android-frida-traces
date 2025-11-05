package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.SvgHelper;
import org.telegram.ui.ActionBar.Theme;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class StickerTabView extends FrameLayout {
    private static int indexPointer;
    public float dragOffset;
    ValueAnimator dragOffsetAnimator;
    boolean expanded;
    boolean hasSavedLeft;
    ImageView iconView;
    BackupImageView imageView;
    public final int index;
    public boolean inited;
    public boolean isChatSticker;
    float lastLeft;
    boolean roundImage;
    public SvgHelper.SvgDrawable svgThumb;
    TextView textView;
    private float textWidth;
    public int type;
    View visibleView;

    public StickerTabView(Context context, int i) {
        View view;
        super(context);
        this.type = i;
        int i2 = indexPointer;
        indexPointer = i2 + 1;
        this.index = i2;
        if (i == 2) {
            BackupImageView backupImageView = new BackupImageView(getContext());
            this.imageView = backupImageView;
            backupImageView.setLayerNum(1);
            this.imageView.setAspectFit(false);
        } else {
            if (i == 1) {
                ImageView imageView = new ImageView(context);
                this.iconView = imageView;
                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                addView(this.iconView, LayoutHelper.createFrame(24, 24, 17));
                view = this.iconView;
                this.visibleView = view;
                TextView textView = new TextView(context) { // from class: org.telegram.ui.Components.StickerTabView.1
                    @Override // android.widget.TextView
                    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
                        super.setText(charSequence, bufferType);
                    }
                };
                this.textView = textView;
                textView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: org.telegram.ui.Components.StickerTabView$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnLayoutChangeListener
                    public final void onLayoutChange(View view2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                        this.f$0.lambda$new$0(view2, i3, i4, i5, i6, i7, i8, i9, i10);
                    }
                });
                this.textView.setLines(1);
                this.textView.setEllipsize(TextUtils.TruncateAt.END);
                this.textView.setTextSize(1, 11.0f);
                this.textView.setGravity(1);
                this.textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
                addView(this.textView, LayoutHelper.createFrame(-1, -2.0f, 81, 8.0f, BitmapDescriptorFactory.HUE_RED, 8.0f, 10.0f));
                this.textView.setVisibility(8);
            }
            BackupImageView backupImageView2 = new BackupImageView(getContext());
            this.imageView = backupImageView2;
            backupImageView2.setLayerNum(1);
            this.imageView.setAspectFit(true);
        }
        this.imageView.setRoundRadius(AndroidUtilities.dp(6.0f));
        addView(this.imageView, LayoutHelper.createFrame(26, 26, 17));
        view = this.imageView;
        this.visibleView = view;
        TextView textView2 = new TextView(context) { // from class: org.telegram.ui.Components.StickerTabView.1
            @Override // android.widget.TextView
            public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
                super.setText(charSequence, bufferType);
            }
        };
        this.textView = textView2;
        textView2.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: org.telegram.ui.Components.StickerTabView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                this.f$0.lambda$new$0(view2, i3, i4, i5, i6, i7, i8, i9, i10);
            }
        });
        this.textView.setLines(1);
        this.textView.setEllipsize(TextUtils.TruncateAt.END);
        this.textView.setTextSize(1, 11.0f);
        this.textView.setGravity(1);
        this.textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        addView(this.textView, LayoutHelper.createFrame(-1, -2.0f, 81, 8.0f, BitmapDescriptorFactory.HUE_RED, 8.0f, 10.0f));
        this.textView.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        TextView textView = this.textView;
        if (textView == null || textView.getLayout() == null) {
            return;
        }
        this.textWidth = this.textView.getLayout().getLineWidth(0);
    }

    public void animateIfPositionChanged(final ViewGroup viewGroup) {
        float left = getLeft();
        float f = this.lastLeft;
        if (left != f && this.hasSavedLeft) {
            this.dragOffset = f - getLeft();
            ValueAnimator valueAnimator = this.dragOffsetAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.dragOffsetAnimator.cancel();
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.dragOffset, BitmapDescriptorFactory.HUE_RED);
            this.dragOffsetAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.StickerTabView.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    StickerTabView.this.dragOffset = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                    StickerTabView.this.invalidate();
                    viewGroup.invalidate();
                }
            });
            this.dragOffsetAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.StickerTabView.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    StickerTabView stickerTabView = StickerTabView.this;
                    stickerTabView.dragOffset = BitmapDescriptorFactory.HUE_RED;
                    stickerTabView.invalidate();
                    viewGroup.invalidate();
                }
            });
            this.dragOffsetAnimator.start();
        }
        this.hasSavedLeft = false;
    }

    public float getTextWidth() {
        return this.textWidth;
    }

    public void saveXPosition() {
        this.lastLeft = getLeft();
        this.hasSavedLeft = true;
        invalidate();
    }

    public void setExpanded(boolean z) {
        int i = this.type;
        if (i == 2) {
            return;
        }
        this.expanded = z;
        float f = i == 1 ? 24.0f : 26.0f;
        float f2 = i == 1 ? 38.0f : 44.0f;
        this.visibleView.getLayoutParams().width = AndroidUtilities.dp(z ? f2 : f);
        ViewGroup.LayoutParams layoutParams = this.visibleView.getLayoutParams();
        if (z) {
            f = f2;
        }
        layoutParams.height = AndroidUtilities.dp(f);
        this.textView.setVisibility(z ? 0 : 8);
        if (this.type == 1 || !this.roundImage) {
            return;
        }
        this.imageView.setRoundRadius(AndroidUtilities.dp(this.visibleView.getLayoutParams().width / 2.0f));
    }

    public void setRoundImage() {
        this.roundImage = true;
    }

    public void updateExpandProgress(float f) {
        int i = this.type;
        if (i == 2) {
            return;
        }
        if (!this.expanded) {
            this.visibleView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            this.visibleView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            this.visibleView.setScaleX(1.0f);
            this.visibleView.setScaleY(1.0f);
            return;
        }
        float f2 = i == 1 ? 24.0f : 26.0f;
        float f3 = i == 1 ? 38.0f : 44.0f;
        float f4 = 1.0f - f;
        this.visibleView.setTranslationY((((AndroidUtilities.dp(36.0f - f2) / 2.0f) - (AndroidUtilities.dp(86.0f - f3) / 2.0f)) * f4) - (AndroidUtilities.dp(8.0f) * f));
        this.visibleView.setTranslationX(((AndroidUtilities.dp(33.0f - f2) / 2.0f) - (AndroidUtilities.dp(ScrollSlidingTabStrip.EXPANDED_WIDTH - f3) / 2.0f)) * f4);
        this.textView.setAlpha(Math.max(BitmapDescriptorFactory.HUE_RED, (f - 0.5f) / 0.5f));
        this.textView.setTranslationY((-AndroidUtilities.dp(40.0f)) * f4);
        this.textView.setTranslationX((-AndroidUtilities.dp(12.0f)) * f4);
        this.visibleView.setPivotX(BitmapDescriptorFactory.HUE_RED);
        this.visibleView.setPivotY(BitmapDescriptorFactory.HUE_RED);
        float f5 = ((f2 / f3) * f4) + f;
        this.visibleView.setScaleX(f5);
        this.visibleView.setScaleY(f5);
    }
}
