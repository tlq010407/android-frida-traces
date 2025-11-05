package org.telegram.ui.Stars;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Outline;
import android.graphics.Path;
import android.os.Build;
import android.view.RoundedCorner;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.WindowInsets;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.Components.CubicBezierInterpolator;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class SuperRippleFallback extends ISuperRipple {
    public final int MAX_COUNT;
    public final ArrayList effects;
    private final ViewOutlineProvider outlineProvider;
    private final Path outlineProviderPath;
    public final float[] radii;

    public static class Effect {
        public final ValueAnimator animator;
        public final float cx;
        public final float cy;
        public float duration;
        public final float intensity;
        public float t;

        private Effect(float f, float f2, float f3, ValueAnimator valueAnimator) {
            this.cx = f;
            this.cy = f2;
            this.intensity = f3;
            this.animator = valueAnimator;
        }
    }

    public SuperRippleFallback(View view) {
        super(view);
        float[] fArr = new float[8];
        this.radii = fArr;
        Path path = new Path();
        this.outlineProviderPath = path;
        this.outlineProvider = new ViewOutlineProvider() { // from class: org.telegram.ui.Stars.SuperRippleFallback.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view2, Outline outline) {
                if (Build.VERSION.SDK_INT >= 30) {
                    outline.setRoundRect(0, 0, view2.getWidth(), view2.getHeight(), SuperRippleFallback.this.radii[0]);
                }
            }
        };
        this.effects = new ArrayList();
        this.MAX_COUNT = 10;
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            WindowInsets rootWindowInsets = view.getRootWindowInsets();
            if (i >= 31) {
                RoundedCorner roundedCorner = rootWindowInsets.getRoundedCorner(0);
                RoundedCorner roundedCorner2 = rootWindowInsets.getRoundedCorner(1);
                RoundedCorner roundedCorner3 = rootWindowInsets.getRoundedCorner(3);
                RoundedCorner roundedCorner4 = rootWindowInsets.getRoundedCorner(2);
                float radius = BitmapDescriptorFactory.HUE_RED;
                float radius2 = roundedCorner == null ? BitmapDescriptorFactory.HUE_RED : roundedCorner.getRadius();
                fArr[1] = radius2;
                fArr[0] = radius2;
                float radius3 = roundedCorner2 == null ? BitmapDescriptorFactory.HUE_RED : roundedCorner2.getRadius();
                fArr[3] = radius3;
                fArr[2] = radius3;
                float radius4 = (roundedCorner4 == null || (view != view.getRootView() && AndroidUtilities.navigationBarHeight > 0)) ? BitmapDescriptorFactory.HUE_RED : roundedCorner4.getRadius();
                fArr[5] = radius4;
                fArr[4] = radius4;
                if (roundedCorner3 != null && (view == view.getRootView() || AndroidUtilities.navigationBarHeight <= 0)) {
                    radius = roundedCorner3.getRadius();
                }
                fArr[7] = radius;
                fArr[6] = radius;
            }
        }
        path.rewind();
        path.addRoundRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, view.getWidth(), view.getHeight(), fArr, Path.Direction.CW);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animate$0(Effect effect, ValueAnimator valueAnimator) {
        effect.t = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        updateProperties();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateProperties() {
        Iterator it = this.effects.iterator();
        float f = 1.0f;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        float height = BitmapDescriptorFactory.HUE_RED;
        float width = BitmapDescriptorFactory.HUE_RED;
        float f3 = 1.0f;
        while (it.hasNext()) {
            Effect effect = (Effect) it.next();
            double d = effect.t / effect.duration;
            Double.isNaN(d);
            float fSin = 1.0f - ((float) Math.sin(d * 3.141592653589793d));
            float f4 = effect.intensity * 0.04f;
            f3 *= (1.0f - f4) + (f4 * fSin);
            width += effect.cx * 1.0f;
            height += effect.cy * 1.0f;
            f2 += 1.0f;
        }
        if (f2 < 1.0f) {
            float f5 = 1.0f - f2;
            width += (this.view.getWidth() / 2.0f) * f5;
            height += (this.view.getHeight() / 2.0f) * f5;
        } else {
            f = f2;
        }
        this.view.setScaleX(f3);
        this.view.setScaleY(f3);
        this.view.setPivotX(width / f);
        this.view.setPivotY(height / f);
        if (this.view.getOutlineProvider() != (this.effects.isEmpty() ? null : this.outlineProvider)) {
            this.view.setOutlineProvider(this.effects.isEmpty() ? null : this.outlineProvider);
            this.view.invalidate();
        }
    }

    @Override // org.telegram.ui.Stars.ISuperRipple
    public void animate(float f, float f2, float f3) {
        if (this.effects.size() >= 10) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 0.5f);
        final Effect effect = new Effect(f, f2, f3, valueAnimatorOfFloat);
        effect.duration = 0.5f;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stars.SuperRippleFallback$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$animate$0(effect, valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stars.SuperRippleFallback.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                SuperRippleFallback.this.effects.remove(effect);
                SuperRippleFallback.this.updateProperties();
            }
        });
        valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        valueAnimatorOfFloat.setDuration(500L);
        this.effects.add(effect);
        updateProperties();
        valueAnimatorOfFloat.start();
    }
}
