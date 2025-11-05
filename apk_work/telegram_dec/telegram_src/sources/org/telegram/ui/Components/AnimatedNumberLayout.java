package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.graphics.Canvas;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.Property;
import android.view.View;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Locale;
import org.telegram.ui.Components.AnimationProperties;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class AnimatedNumberLayout {
    public static final Property PROGRESS = new AnimationProperties.FloatProperty("progress") { // from class: org.telegram.ui.Components.AnimatedNumberLayout.1
        @Override // android.util.Property
        public Float get(AnimatedNumberLayout animatedNumberLayout) {
            return Float.valueOf(animatedNumberLayout.progress);
        }

        @Override // org.telegram.ui.Components.AnimationProperties.FloatProperty
        public void setValue(AnimatedNumberLayout animatedNumberLayout, float f) {
            animatedNumberLayout.setProgress(f);
        }
    };
    private ObjectAnimator animator;
    private final View parentView;
    private final TextPaint textPaint;
    private ArrayList letters = new ArrayList();
    private ArrayList oldLetters = new ArrayList();
    private float progress = BitmapDescriptorFactory.HUE_RED;
    private int currentNumber = 1;

    public AnimatedNumberLayout(View view, TextPaint textPaint) {
        this.textPaint = textPaint;
        this.parentView = view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setProgress(float f) {
        if (this.progress == f) {
            return;
        }
        this.progress = f;
        this.parentView.invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void draw(Canvas canvas) {
        TextPaint textPaint;
        int i;
        if (this.letters.isEmpty()) {
            return;
        }
        float height = ((StaticLayout) this.letters.get(0)).getHeight();
        int iMax = Math.max(this.letters.size(), this.oldLetters.size());
        canvas.save();
        int alpha = this.textPaint.getAlpha();
        int i2 = 0;
        while (i2 < iMax) {
            canvas.save();
            StaticLayout staticLayout = i2 < this.oldLetters.size() ? (StaticLayout) this.oldLetters.get(i2) : null;
            StaticLayout staticLayout2 = i2 < this.letters.size() ? (StaticLayout) this.letters.get(i2) : null;
            float f = this.progress;
            if (f > BitmapDescriptorFactory.HUE_RED) {
                if (staticLayout != null) {
                    float f2 = alpha;
                    this.textPaint.setAlpha((int) (f * f2));
                    canvas.save();
                    canvas.translate(BitmapDescriptorFactory.HUE_RED, (this.progress - 1.0f) * height);
                    staticLayout.draw(canvas);
                    canvas.restore();
                    if (staticLayout2 != null) {
                        textPaint = this.textPaint;
                        i = (int) (f2 * (1.0f - this.progress));
                        textPaint.setAlpha(i);
                        canvas.translate(BitmapDescriptorFactory.HUE_RED, this.progress * height);
                    }
                } else {
                    this.textPaint.setAlpha(alpha);
                }
            } else if (f < BitmapDescriptorFactory.HUE_RED) {
                if (staticLayout != null) {
                    this.textPaint.setAlpha((int) (alpha * (-f)));
                    canvas.save();
                    canvas.translate(BitmapDescriptorFactory.HUE_RED, (this.progress + 1.0f) * height);
                    staticLayout.draw(canvas);
                    canvas.restore();
                }
                if (staticLayout2 != null) {
                    if (i2 == iMax - 1 || staticLayout != null) {
                        textPaint = this.textPaint;
                        i = (int) (alpha * (this.progress + 1.0f));
                        textPaint.setAlpha(i);
                        canvas.translate(BitmapDescriptorFactory.HUE_RED, this.progress * height);
                    }
                    this.textPaint.setAlpha(alpha);
                }
            } else if (staticLayout2 != null) {
            }
            if (staticLayout2 != null) {
                staticLayout2.draw(canvas);
            }
            canvas.restore();
            canvas.translate(staticLayout2 != null ? staticLayout2.getLineWidth(0) : staticLayout.getLineWidth(0), BitmapDescriptorFactory.HUE_RED);
            i2++;
        }
        canvas.restore();
    }

    public int getWidth() {
        int size = this.letters.size();
        float lineWidth = BitmapDescriptorFactory.HUE_RED;
        for (int i = 0; i < size; i++) {
            lineWidth += ((StaticLayout) this.letters.get(i)).getLineWidth(0);
        }
        return (int) Math.ceil(lineWidth);
    }

    public void setNumber(int i, boolean z) {
        if (this.currentNumber != i || this.letters.isEmpty()) {
            ObjectAnimator objectAnimator = this.animator;
            if (objectAnimator != null) {
                objectAnimator.cancel();
                this.animator = null;
            }
            this.oldLetters.clear();
            this.oldLetters.addAll(this.letters);
            this.letters.clear();
            Locale locale = Locale.US;
            String str = String.format(locale, "%d", Integer.valueOf(this.currentNumber));
            String str2 = String.format(locale, "%d", Integer.valueOf(i));
            boolean z2 = i > this.currentNumber;
            this.currentNumber = i;
            this.progress = BitmapDescriptorFactory.HUE_RED;
            int i2 = 0;
            while (i2 < str2.length()) {
                int i3 = i2 + 1;
                String strSubstring = str2.substring(i2, i3);
                String strSubstring2 = (this.oldLetters.isEmpty() || i2 >= str.length()) ? null : str.substring(i2, i3);
                if (strSubstring2 == null || !strSubstring2.equals(strSubstring)) {
                    this.letters.add(new StaticLayout(strSubstring, this.textPaint, (int) Math.ceil(r12.measureText(strSubstring)), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false));
                } else {
                    this.letters.add((StaticLayout) this.oldLetters.get(i2));
                    this.oldLetters.set(i2, null);
                }
                i2 = i3;
            }
            if (z && !this.oldLetters.isEmpty()) {
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<AnimatedNumberLayout, Float>) PROGRESS, z2 ? -1.0f : 1.0f, BitmapDescriptorFactory.HUE_RED);
                this.animator = objectAnimatorOfFloat;
                objectAnimatorOfFloat.setDuration(150L);
                this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.AnimatedNumberLayout.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        AnimatedNumberLayout.this.animator = null;
                        AnimatedNumberLayout.this.oldLetters.clear();
                    }
                });
                this.animator.start();
            }
            this.parentView.invalidate();
        }
    }
}
