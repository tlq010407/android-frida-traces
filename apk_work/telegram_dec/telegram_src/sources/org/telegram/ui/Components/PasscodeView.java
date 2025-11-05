package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.SystemClock;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.Property;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.biometric.BiometricManager;
import androidx.biometric.BiometricPrompt;
import androidx.core.content.ContextCompat;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import com.huawei.location.nlp.network.OnlineLocationService;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FingerprintController;
import org.telegram.messenger.GenericProvider;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.R;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.support.fingerprint.FingerprintManagerCompat;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.Stories.recorder.KeyboardNotifier;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class PasscodeView extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private static final int[] ids = {R.id.passcode_btn_0, R.id.passcode_btn_1, R.id.passcode_btn_2, R.id.passcode_btn_3, R.id.passcode_btn_4, R.id.passcode_btn_5, R.id.passcode_btn_6, R.id.passcode_btn_7, R.id.passcode_btn_8, R.id.passcode_btn_9, R.id.passcode_btn_backspace, R.id.passcode_btn_fingerprint};
    private final int BUTTON_SIZE;
    private final int BUTTON_X_MARGIN;
    private final int BUTTON_Y_MARGIN;
    private SpringAnimation backgroundAnimationSpring;
    private Drawable backgroundDrawable;
    private FrameLayout backgroundFrameLayout;
    private int backgroundFrameLayoutColor;
    private LinkedList backgroundSpringNextQueue;
    private LinkedList backgroundSpringQueue;
    private View border;
    private ImageView checkImage;
    private Runnable checkRunnable;
    private PasscodeViewDelegate delegate;
    private ImageView fingerprintImage;
    private PasscodeButton fingerprintView;
    private RLottieImageView imageView;
    private int imageY;
    private ArrayList innerAnimators;
    private int keyboardHeight;
    private KeyboardNotifier keyboardNotifier;
    private int lastValue;
    private ArrayList numberFrameLayouts;
    private FrameLayout numbersContainer;
    public FrameLayout numbersFrameLayout;
    private FrameLayout numbersTitleContainer;
    private TextView passcodeTextView;
    private EditTextBoldCursor passwordEditText;
    private AnimatingTextView passwordEditText2;
    private FrameLayout passwordFrameLayout;
    private ValueAnimator pinAnimator;
    private boolean pinShown;
    private int[] pos;
    private android.graphics.Rect rect;
    int resumeCount;
    private TextView retryTextView;
    private int shiftDp;
    private float shownT;
    private TextView subtitleView;

    /* renamed from: org.telegram.ui.Components.PasscodeView$2, reason: invalid class name */
    class AnonymousClass2 implements TextWatcher {
        AnonymousClass2() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$beforeTextChanged$0(boolean z, MotionBackgroundDrawable motionBackgroundDrawable) {
            if (z) {
                motionBackgroundDrawable.switchToNextPosition(true);
            } else {
                motionBackgroundDrawable.switchToPrevPosition(true);
            }
            PasscodeView.this.animateBackground(motionBackgroundDrawable);
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (PasscodeView.this.passwordEditText.length() == 4 && SharedConfig.passcodeType == 0) {
                PasscodeView.this.processDone(false);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            final boolean z;
            if (PasscodeView.this.backgroundDrawable instanceof MotionBackgroundDrawable) {
                final MotionBackgroundDrawable motionBackgroundDrawable = (MotionBackgroundDrawable) PasscodeView.this.backgroundDrawable;
                motionBackgroundDrawable.setAnimationProgressProvider(null);
                float posAnimationProgress = motionBackgroundDrawable.getPosAnimationProgress();
                boolean z2 = true;
                if (i2 == 0 && i3 == 1) {
                    motionBackgroundDrawable.switchToNextPosition(true);
                    z = true;
                } else if (i2 == 1 && i3 == 0) {
                    motionBackgroundDrawable.switchToPrevPosition(true);
                    z = false;
                } else {
                    z = false;
                    z2 = false;
                }
                if (z2) {
                    if (posAnimationProgress >= 1.0f) {
                        PasscodeView.this.animateBackground(motionBackgroundDrawable);
                        return;
                    }
                    PasscodeView.this.backgroundSpringQueue.offer(new Runnable() { // from class: org.telegram.ui.Components.PasscodeView$2$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$beforeTextChanged$0(z, motionBackgroundDrawable);
                        }
                    });
                    PasscodeView.this.backgroundSpringNextQueue.offer(Boolean.valueOf(z));
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (int i4 = 0; i4 < PasscodeView.this.backgroundSpringQueue.size(); i4++) {
                        Runnable runnable = (Runnable) PasscodeView.this.backgroundSpringQueue.get(i4);
                        if (((Boolean) PasscodeView.this.backgroundSpringNextQueue.get(i4)).booleanValue() != z) {
                            arrayList.add(runnable);
                            arrayList2.add(Integer.valueOf(i4));
                        }
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        PasscodeView.this.backgroundSpringQueue.remove((Runnable) it.next());
                    }
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        int iIntValue = ((Integer) it2.next()).intValue();
                        if (iIntValue < PasscodeView.this.backgroundSpringNextQueue.size()) {
                            PasscodeView.this.backgroundSpringNextQueue.remove(iIntValue);
                        }
                    }
                }
            }
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: org.telegram.ui.Components.PasscodeView$9, reason: invalid class name */
    class AnonymousClass9 implements ViewTreeObserver.OnGlobalLayoutListener {
        final /* synthetic */ Runnable val$onShow;
        final /* synthetic */ int val$x;
        final /* synthetic */ int val$y;

        AnonymousClass9(int i, int i2, Runnable runnable) {
            this.val$x = i;
            this.val$y = i2;
            this.val$onShow = runnable;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onGlobalLayout$0() {
            try {
                PasscodeView.this.imageView.performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onGlobalLayout$1(double d, ValueAnimator valueAnimator) {
            double animatedFraction = valueAnimator.getAnimatedFraction();
            Double.isNaN(animatedFraction);
            double d2 = d * animatedFraction;
            int i = 0;
            while (i < PasscodeView.this.innerAnimators.size()) {
                InnerAnimator innerAnimator = (InnerAnimator) PasscodeView.this.innerAnimators.get(i);
                if (innerAnimator.startRadius <= d2) {
                    innerAnimator.animatorSet.start();
                    PasscodeView.this.innerAnimators.remove(i);
                    i--;
                }
                i++;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onGlobalLayout$2(ValueAnimator valueAnimator) {
            PasscodeView passcodeView = PasscodeView.this;
            passcodeView.onAnimationUpdate(passcodeView.shownT = ((Float) valueAnimator.getAnimatedValue()).floatValue());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            float f;
            int iDp;
            float f2 = 1.0f;
            PasscodeView.this.setAlpha(1.0f);
            PasscodeView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            char c = 0;
            PasscodeView.this.imageView.getAnimatedDrawable().setCurrentFrame(0, false);
            PasscodeView.this.imageView.getAnimatedDrawable().setCustomEndFrame(37);
            PasscodeView.this.imageView.playAnimation();
            int i = 1;
            PasscodeView.this.showPin(true);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.PasscodeView$9$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onGlobalLayout$0();
                }
            }, 350L);
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            android.graphics.Point point = AndroidUtilities.displaySize;
            int i2 = point.x;
            int i3 = point.y;
            int i4 = Build.VERSION.SDK_INT;
            int i5 = i3 + (i4 >= 21 ? AndroidUtilities.statusBarHeight : 0);
            if (i4 >= 21) {
                int i6 = i2 - this.val$x;
                int i7 = i5 - this.val$y;
                double dSqrt = Math.sqrt((i6 * i6) + (i7 * i7));
                int i8 = this.val$x;
                int i9 = i5 - this.val$y;
                double dSqrt2 = Math.sqrt((i8 * i8) + (i9 * i9));
                int i10 = this.val$x;
                int i11 = this.val$y;
                double dSqrt3 = Math.sqrt((i10 * i10) + (i11 * i11));
                int i12 = i2 - this.val$x;
                int i13 = this.val$y;
                final double dMax = Math.max(Math.max(Math.max(dSqrt, dSqrt2), dSqrt3), Math.sqrt((i12 * i12) + (i13 * i13)));
                PasscodeView.this.innerAnimators.clear();
                int childCount = PasscodeView.this.numbersFrameLayout.getChildCount();
                int i14 = 0;
                while (i14 < childCount) {
                    View childAt = PasscodeView.this.numbersFrameLayout.getChildAt(i14);
                    childAt.setScaleX(0.7f);
                    childAt.setScaleY(0.7f);
                    childAt.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    final AnimatorSet animatorSet2 = null;
                    InnerAnimator innerAnimator = new InnerAnimator();
                    childAt.getLocationInWindow(PasscodeView.this.pos);
                    int measuredWidth = PasscodeView.this.pos[c] + (childAt.getMeasuredWidth() / 2);
                    int measuredHeight = PasscodeView.this.pos[i] + (childAt.getMeasuredHeight() / 2);
                    int i15 = this.val$x - measuredWidth;
                    int i16 = this.val$y - measuredHeight;
                    innerAnimator.startRadius = ((float) Math.sqrt((i15 * i15) + (i16 * i16))) - AndroidUtilities.dp(40.0f);
                    if (i14 != -1) {
                        animatorSet2 = new AnimatorSet();
                        Property property = View.SCALE_X;
                        float[] fArr = new float[i];
                        fArr[c] = f2;
                        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(childAt, (Property<View, Float>) property, fArr);
                        Property property2 = View.SCALE_Y;
                        float[] fArr2 = new float[i];
                        fArr2[c] = f2;
                        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(childAt, (Property<View, Float>) property2, fArr2);
                        Animator[] animatorArr = new Animator[2];
                        animatorArr[c] = objectAnimatorOfFloat;
                        animatorArr[i] = objectAnimatorOfFloat2;
                        animatorSet2.playTogether(animatorArr);
                        animatorSet2.setDuration(140L);
                        animatorSet2.setInterpolator(new DecelerateInterpolator());
                    }
                    innerAnimator.animatorSet = new AnimatorSet();
                    AnimatorSet animatorSet3 = innerAnimator.animatorSet;
                    Property property3 = View.SCALE_X;
                    float f3 = i14 == -1 ? 0.9f : 0.6f;
                    float f4 = i14 == -1 ? 1.0f : 1.04f;
                    float[] fArr3 = new float[2];
                    fArr3[c] = f3;
                    fArr3[i] = f4;
                    ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(childAt, (Property<View, Float>) property3, fArr3);
                    Property property4 = View.SCALE_Y;
                    float f5 = i14 != -1 ? 0.6f : 0.9f;
                    float f6 = i14 == -1 ? 1.0f : 1.04f;
                    float[] fArr4 = new float[2];
                    fArr4[c] = f5;
                    fArr4[1] = f6;
                    animatorSet3.playTogether(objectAnimatorOfFloat3, ObjectAnimator.ofFloat(childAt, (Property<View, Float>) property4, fArr4), ObjectAnimator.ofFloat(childAt, (Property<View, Float>) View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f));
                    innerAnimator.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.9.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            AnimatorSet animatorSet4 = animatorSet2;
                            if (animatorSet4 != null) {
                                animatorSet4.start();
                            }
                        }
                    });
                    innerAnimator.animatorSet.setDuration(i14 == -1 ? 232L : 200L);
                    innerAnimator.animatorSet.setInterpolator(new DecelerateInterpolator());
                    PasscodeView.this.innerAnimators.add(innerAnimator);
                    i14++;
                    f2 = 1.0f;
                    c = 0;
                    i = 1;
                }
                arrayList.add(ObjectAnimator.ofFloat(PasscodeView.this.backgroundFrameLayout, (Property<FrameLayout, Float>) View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f));
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                arrayList.add(valueAnimatorOfFloat);
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PasscodeView$9$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$onGlobalLayout$1(dMax, valueAnimator);
                    }
                });
                animatorSet = animatorSet;
                animatorSet.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                animatorSet.setDuration(500L);
            } else {
                animatorSet.setDuration(350L);
            }
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(PasscodeView.this.shownT, 1.0f);
            valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PasscodeView$9$$ExternalSyntheticLambda2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$onGlobalLayout$2(valueAnimator);
                }
            });
            valueAnimatorOfFloat2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.9.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    PasscodeView passcodeView = PasscodeView.this;
                    passcodeView.onAnimationUpdate(passcodeView.shownT = 1.0f);
                }
            });
            valueAnimatorOfFloat2.setDuration(420L);
            valueAnimatorOfFloat2.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            arrayList.add(valueAnimatorOfFloat2);
            animatorSet.playTogether(arrayList);
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.9.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    Runnable runnable = AnonymousClass9.this.val$onShow;
                    if (runnable != null) {
                        runnable.run();
                    }
                    if (SharedConfig.passcodeType != 1 || PasscodeView.this.retryTextView.getVisibility() == 0 || PasscodeView.this.passwordEditText == null) {
                        return;
                    }
                    PasscodeView.this.passwordEditText.requestFocus();
                    AndroidUtilities.showKeyboard(PasscodeView.this.passwordEditText);
                }
            });
            animatorSet.start();
            AnimatorSet animatorSet4 = new AnimatorSet();
            animatorSet4.setDuration(332L);
            if (AndroidUtilities.isTablet() || PasscodeView.this.getContext().getResources().getConfiguration().orientation != 2) {
                f = i2 / 2.0f;
                iDp = AndroidUtilities.dp(29.0f);
            } else {
                f = (SharedConfig.passcodeType == 0 ? i2 / 2.0f : i2) / 2.0f;
                iDp = AndroidUtilities.dp(30.0f);
            }
            animatorSet4.playTogether(ObjectAnimator.ofFloat(PasscodeView.this.imageView, (Property<RLottieImageView, Float>) View.TRANSLATION_X, this.val$x - AndroidUtilities.dp(29.0f), f - iDp), ObjectAnimator.ofFloat(PasscodeView.this.imageView, (Property<RLottieImageView, Float>) View.TRANSLATION_Y, this.val$y - AndroidUtilities.dp(29.0f), PasscodeView.this.imageY), ObjectAnimator.ofFloat(PasscodeView.this.imageView, (Property<RLottieImageView, Float>) View.SCALE_X, 0.5f, 1.0f), ObjectAnimator.ofFloat(PasscodeView.this.imageView, (Property<RLottieImageView, Float>) View.SCALE_Y, 0.5f, 1.0f));
            animatorSet4.setInterpolator(CubicBezierInterpolator.EASE_OUT);
            animatorSet4.start();
        }
    }

    private class AnimatingTextView extends FrameLayout {
        private ArrayList characterTextViews;
        private AnimatorSet currentAnimation;
        private Runnable dotRunnable;
        private ArrayList dotTextViews;
        private StringBuilder stringBuilder;

        public AnimatingTextView(Context context) {
            super(context);
            this.characterTextViews = new ArrayList(4);
            this.dotTextViews = new ArrayList(4);
            this.stringBuilder = new StringBuilder(4);
            for (int i = 0; i < 4; i++) {
                TextView textView = new TextView(context);
                textView.setTextColor(-1);
                textView.setTypeface(AndroidUtilities.bold());
                textView.setTextSize(1, 36.0f);
                textView.setGravity(17);
                textView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                textView.setPivotX(AndroidUtilities.dp(25.0f));
                textView.setPivotY(AndroidUtilities.dp(25.0f));
                addView(textView, LayoutHelper.createFrame(50, 50, 51));
                this.characterTextViews.add(textView);
                TextView textView2 = new TextView(context);
                textView2.setTextColor(-1);
                textView2.setTypeface(AndroidUtilities.bold());
                textView2.setTextSize(1, 36.0f);
                textView2.setGravity(17);
                textView2.setAlpha(BitmapDescriptorFactory.HUE_RED);
                textView2.setText("•");
                textView2.setPivotX(AndroidUtilities.dp(25.0f));
                textView2.setPivotY(AndroidUtilities.dp(25.0f));
                addView(textView2, LayoutHelper.createFrame(50, 50, 51));
                this.dotTextViews.add(textView2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void eraseAllCharacters(boolean z) {
            if (this.stringBuilder.length() == 0) {
                return;
            }
            Runnable runnable = this.dotRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.dotRunnable = null;
            }
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.currentAnimation = null;
            }
            StringBuilder sb = this.stringBuilder;
            sb.delete(0, sb.length());
            if (z) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < 4; i++) {
                    TextView textView = (TextView) this.characterTextViews.get(i);
                    if (textView.getAlpha() != BitmapDescriptorFactory.HUE_RED) {
                        arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.SCALE_X, BitmapDescriptorFactory.HUE_RED));
                        arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.SCALE_Y, BitmapDescriptorFactory.HUE_RED));
                        arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                    }
                    TextView textView2 = (TextView) this.dotTextViews.get(i);
                    if (textView2.getAlpha() != BitmapDescriptorFactory.HUE_RED) {
                        arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) View.SCALE_X, BitmapDescriptorFactory.HUE_RED));
                        arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) View.SCALE_Y, BitmapDescriptorFactory.HUE_RED));
                        arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                    }
                }
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.currentAnimation = animatorSet2;
                animatorSet2.setDuration(150L);
                this.currentAnimation.playTogether(arrayList);
                this.currentAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.AnimatingTextView.4
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (AnimatingTextView.this.currentAnimation == null || !AnimatingTextView.this.currentAnimation.equals(animator)) {
                            return;
                        }
                        AnimatingTextView.this.currentAnimation = null;
                    }
                });
                this.currentAnimation.start();
            } else {
                for (int i2 = 0; i2 < 4; i2++) {
                    ((TextView) this.characterTextViews.get(i2)).setAlpha(BitmapDescriptorFactory.HUE_RED);
                    ((TextView) this.dotTextViews.get(i2)).setAlpha(BitmapDescriptorFactory.HUE_RED);
                }
            }
            PasscodeView.this.checkTitle();
        }

        private int getXForTextView(int i) {
            return (((getMeasuredWidth() - (this.stringBuilder.length() * AndroidUtilities.dp(30.0f))) / 2) + (i * AndroidUtilities.dp(30.0f))) - AndroidUtilities.dp(10.0f);
        }

        public void appendCharacter(String str) {
            if (this.stringBuilder.length() == 4) {
                return;
            }
            try {
                performHapticFeedback(3);
            } catch (Exception e) {
                FileLog.e(e);
            }
            ArrayList arrayList = new ArrayList();
            final int length = this.stringBuilder.length();
            this.stringBuilder.append(str);
            TextView textView = (TextView) this.characterTextViews.get(length);
            textView.setText(str);
            textView.setTranslationX(getXForTextView(length));
            Property property = View.SCALE_X;
            arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property, BitmapDescriptorFactory.HUE_RED, 1.0f));
            Property property2 = View.SCALE_Y;
            arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property2, BitmapDescriptorFactory.HUE_RED, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f));
            Property property3 = View.TRANSLATION_Y;
            arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property3, AndroidUtilities.dp(20.0f), BitmapDescriptorFactory.HUE_RED));
            TextView textView2 = (TextView) this.dotTextViews.get(length);
            textView2.setTranslationX(getXForTextView(length));
            textView2.setAlpha(BitmapDescriptorFactory.HUE_RED);
            arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) property, BitmapDescriptorFactory.HUE_RED, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) property2, BitmapDescriptorFactory.HUE_RED, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) property3, AndroidUtilities.dp(20.0f), BitmapDescriptorFactory.HUE_RED));
            for (int i = length + 1; i < 4; i++) {
                TextView textView3 = (TextView) this.characterTextViews.get(i);
                if (textView3.getAlpha() != BitmapDescriptorFactory.HUE_RED) {
                    arrayList.add(ObjectAnimator.ofFloat(textView3, (Property<TextView, Float>) View.SCALE_X, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView3, (Property<TextView, Float>) View.SCALE_Y, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView3, (Property<TextView, Float>) View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                }
                TextView textView4 = (TextView) this.dotTextViews.get(i);
                if (textView4.getAlpha() != BitmapDescriptorFactory.HUE_RED) {
                    arrayList.add(ObjectAnimator.ofFloat(textView4, (Property<TextView, Float>) View.SCALE_X, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView4, (Property<TextView, Float>) View.SCALE_Y, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView4, (Property<TextView, Float>) View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                }
            }
            Runnable runnable = this.dotRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.PasscodeView.AnimatingTextView.1
                @Override // java.lang.Runnable
                public void run() {
                    if (AnimatingTextView.this.dotRunnable != this) {
                        return;
                    }
                    ArrayList arrayList2 = new ArrayList();
                    TextView textView5 = (TextView) AnimatingTextView.this.characterTextViews.get(length);
                    Property property4 = View.SCALE_X;
                    arrayList2.add(ObjectAnimator.ofFloat(textView5, (Property<TextView, Float>) property4, BitmapDescriptorFactory.HUE_RED));
                    Property property5 = View.SCALE_Y;
                    arrayList2.add(ObjectAnimator.ofFloat(textView5, (Property<TextView, Float>) property5, BitmapDescriptorFactory.HUE_RED));
                    Property property6 = View.ALPHA;
                    arrayList2.add(ObjectAnimator.ofFloat(textView5, (Property<TextView, Float>) property6, BitmapDescriptorFactory.HUE_RED));
                    TextView textView6 = (TextView) AnimatingTextView.this.dotTextViews.get(length);
                    arrayList2.add(ObjectAnimator.ofFloat(textView6, (Property<TextView, Float>) property4, 1.0f));
                    arrayList2.add(ObjectAnimator.ofFloat(textView6, (Property<TextView, Float>) property5, 1.0f));
                    arrayList2.add(ObjectAnimator.ofFloat(textView6, (Property<TextView, Float>) property6, 1.0f));
                    AnimatingTextView.this.currentAnimation = new AnimatorSet();
                    AnimatingTextView.this.currentAnimation.setDuration(150L);
                    AnimatingTextView.this.currentAnimation.playTogether(arrayList2);
                    AnimatingTextView.this.currentAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.AnimatingTextView.1.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (AnimatingTextView.this.currentAnimation == null || !AnimatingTextView.this.currentAnimation.equals(animator)) {
                                return;
                            }
                            AnimatingTextView.this.currentAnimation = null;
                        }
                    });
                    AnimatingTextView.this.currentAnimation.start();
                }
            };
            this.dotRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, 1500L);
            for (int i2 = 0; i2 < length; i2++) {
                TextView textView5 = (TextView) this.characterTextViews.get(i2);
                Property property4 = View.TRANSLATION_X;
                arrayList.add(ObjectAnimator.ofFloat(textView5, (Property<TextView, Float>) property4, getXForTextView(i2)));
                Property property5 = View.SCALE_X;
                arrayList.add(ObjectAnimator.ofFloat(textView5, (Property<TextView, Float>) property5, BitmapDescriptorFactory.HUE_RED));
                Property property6 = View.SCALE_Y;
                arrayList.add(ObjectAnimator.ofFloat(textView5, (Property<TextView, Float>) property6, BitmapDescriptorFactory.HUE_RED));
                Property property7 = View.ALPHA;
                arrayList.add(ObjectAnimator.ofFloat(textView5, (Property<TextView, Float>) property7, BitmapDescriptorFactory.HUE_RED));
                Property property8 = View.TRANSLATION_Y;
                arrayList.add(ObjectAnimator.ofFloat(textView5, (Property<TextView, Float>) property8, BitmapDescriptorFactory.HUE_RED));
                TextView textView6 = (TextView) this.dotTextViews.get(i2);
                arrayList.add(ObjectAnimator.ofFloat(textView6, (Property<TextView, Float>) property4, getXForTextView(i2)));
                arrayList.add(ObjectAnimator.ofFloat(textView6, (Property<TextView, Float>) property5, 1.0f));
                arrayList.add(ObjectAnimator.ofFloat(textView6, (Property<TextView, Float>) property6, 1.0f));
                arrayList.add(ObjectAnimator.ofFloat(textView6, (Property<TextView, Float>) property7, 1.0f));
                arrayList.add(ObjectAnimator.ofFloat(textView6, (Property<TextView, Float>) property8, BitmapDescriptorFactory.HUE_RED));
            }
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.currentAnimation = animatorSet2;
            animatorSet2.setDuration(150L);
            this.currentAnimation.playTogether(arrayList);
            this.currentAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.AnimatingTextView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (AnimatingTextView.this.currentAnimation == null || !AnimatingTextView.this.currentAnimation.equals(animator)) {
                        return;
                    }
                    AnimatingTextView.this.currentAnimation = null;
                }
            });
            this.currentAnimation.start();
            PasscodeView.this.checkTitle();
        }

        public boolean eraseLastCharacter() {
            if (this.stringBuilder.length() == 0) {
                return false;
            }
            try {
                performHapticFeedback(3);
            } catch (Exception e) {
                FileLog.e(e);
            }
            ArrayList arrayList = new ArrayList();
            int length = this.stringBuilder.length() - 1;
            if (length != 0) {
                this.stringBuilder.deleteCharAt(length);
            }
            for (int i = length; i < 4; i++) {
                TextView textView = (TextView) this.characterTextViews.get(i);
                if (textView.getAlpha() != BitmapDescriptorFactory.HUE_RED) {
                    arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.SCALE_X, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.SCALE_Y, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_X, getXForTextView(i)));
                }
                TextView textView2 = (TextView) this.dotTextViews.get(i);
                if (textView2.getAlpha() != BitmapDescriptorFactory.HUE_RED) {
                    arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) View.SCALE_X, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) View.SCALE_Y, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) View.TRANSLATION_X, getXForTextView(i)));
                }
            }
            if (length == 0) {
                this.stringBuilder.deleteCharAt(length);
            }
            for (int i2 = 0; i2 < length; i2++) {
                TextView textView3 = (TextView) this.characterTextViews.get(i2);
                Property property = View.TRANSLATION_X;
                arrayList.add(ObjectAnimator.ofFloat(textView3, (Property<TextView, Float>) property, getXForTextView(i2)));
                arrayList.add(ObjectAnimator.ofFloat((TextView) this.dotTextViews.get(i2), (Property<TextView, Float>) property, getXForTextView(i2)));
            }
            Runnable runnable = this.dotRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.dotRunnable = null;
            }
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.currentAnimation = animatorSet2;
            animatorSet2.setDuration(150L);
            this.currentAnimation.playTogether(arrayList);
            this.currentAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.AnimatingTextView.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (AnimatingTextView.this.currentAnimation == null || !AnimatingTextView.this.currentAnimation.equals(animator)) {
                        return;
                    }
                    AnimatingTextView.this.currentAnimation = null;
                }
            });
            this.currentAnimation.start();
            PasscodeView.this.checkTitle();
            return true;
        }

        public String getString() {
            return this.stringBuilder.toString();
        }

        public int length() {
            return this.stringBuilder.length();
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            Runnable runnable = this.dotRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.dotRunnable = null;
            }
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.currentAnimation = null;
            }
            for (int i5 = 0; i5 < 4; i5++) {
                if (i5 < this.stringBuilder.length()) {
                    TextView textView = (TextView) this.characterTextViews.get(i5);
                    textView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    textView.setScaleX(1.0f);
                    textView.setScaleY(1.0f);
                    textView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    textView.setTranslationX(getXForTextView(i5));
                    TextView textView2 = (TextView) this.dotTextViews.get(i5);
                    textView2.setAlpha(1.0f);
                    textView2.setScaleX(1.0f);
                    textView2.setScaleY(1.0f);
                    textView2.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    textView2.setTranslationX(getXForTextView(i5));
                } else {
                    ((TextView) this.characterTextViews.get(i5)).setAlpha(BitmapDescriptorFactory.HUE_RED);
                    ((TextView) this.dotTextViews.get(i5)).setAlpha(BitmapDescriptorFactory.HUE_RED);
                }
            }
            super.onLayout(z, i, i2, i3, i4);
        }
    }

    private static class InnerAnimator {
        private AnimatorSet animatorSet;
        private float startRadius;

        private InnerAnimator() {
        }
    }

    public static class PasscodeButton extends FrameLayout {
        private final ImageView imageView;
        private final TextView textView1;
        private final TextView textView2;

        public PasscodeButton(Context context) {
            super(context);
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setImageResource(R.drawable.fingerprint);
            addView(imageView, LayoutHelper.createFrame(-1, -1, R.styleable.AppCompatTheme_windowActionModeOverlay));
            TextView textView = new TextView(context);
            this.textView1 = textView;
            textView.setTypeface(AndroidUtilities.bold());
            textView.setTextColor(-1);
            textView.setTextSize(1, 26.0f);
            textView.setGravity(17);
            addView(textView, LayoutHelper.createFrame(-1, -2.0f, 17, BitmapDescriptorFactory.HUE_RED, -5.33f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            TextView textView2 = new TextView(context);
            this.textView2 = textView2;
            textView2.setTypeface(AndroidUtilities.bold());
            textView2.setTextSize(1, 10.0f);
            textView2.setTextColor(Integer.MAX_VALUE);
            textView2.setGravity(17);
            addView(textView2, LayoutHelper.createFrame(-1, -2.0f, 17, BitmapDescriptorFactory.HUE_RED, 14.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        }

        public static String letter(int i) {
            if (i == 0) {
                return "+";
            }
            switch (i) {
                case 2:
                    return "ABC";
                case 3:
                    return "DEF";
                case 4:
                    return "GHI";
                case 5:
                    return "JKL";
                case 6:
                    return "MNO";
                case 7:
                    return "PQRS";
                case 8:
                    return "TUV";
                case 9:
                    return "WXYZ";
                default:
                    return "";
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("android.widget.Button");
        }

        public void setImage(int i) {
            this.imageView.setVisibility(0);
            this.textView1.setVisibility(8);
            this.textView2.setVisibility(8);
            this.imageView.setImageResource(i);
        }

        public void setNum(int i) {
            this.imageView.setVisibility(8);
            this.textView1.setVisibility(0);
            this.textView2.setVisibility(0);
            this.textView1.setText("" + i);
            this.textView2.setText(letter(i));
        }
    }

    public interface PasscodeViewDelegate {
        void didAcceptedPassword(PasscodeView passcodeView);
    }

    public PasscodeView(Context context) {
        int i;
        int i2;
        super(context);
        this.BUTTON_X_MARGIN = 28;
        this.BUTTON_Y_MARGIN = 16;
        this.BUTTON_SIZE = 60;
        this.keyboardHeight = 0;
        this.rect = new android.graphics.Rect();
        this.backgroundSpringQueue = new LinkedList();
        this.backgroundSpringNextQueue = new LinkedList();
        this.innerAnimators = new ArrayList();
        this.shiftDp = -12;
        this.checkRunnable = new Runnable() { // from class: org.telegram.ui.Components.PasscodeView.6
            @Override // java.lang.Runnable
            public void run() {
                PasscodeView.this.checkRetryTextView();
                AndroidUtilities.runOnUIThread(PasscodeView.this.checkRunnable, 100L);
            }
        };
        this.resumeCount = 0;
        this.pinShown = true;
        this.pos = new int[2];
        setWillNotDraw(false);
        setVisibility(8);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.PasscodeView.1
            private Paint paint = new Paint();

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                if (PasscodeView.this.backgroundDrawable != null) {
                    if ((PasscodeView.this.backgroundDrawable instanceof MotionBackgroundDrawable) || (PasscodeView.this.backgroundDrawable instanceof ColorDrawable) || (PasscodeView.this.backgroundDrawable instanceof GradientDrawable)) {
                        PasscodeView.this.backgroundDrawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                    } else {
                        float fMax = Math.max(getMeasuredWidth() / PasscodeView.this.backgroundDrawable.getIntrinsicWidth(), (getMeasuredHeight() + PasscodeView.this.keyboardHeight) / PasscodeView.this.backgroundDrawable.getIntrinsicHeight());
                        int iCeil = (int) Math.ceil(PasscodeView.this.backgroundDrawable.getIntrinsicWidth() * fMax);
                        int iCeil2 = (int) Math.ceil(PasscodeView.this.backgroundDrawable.getIntrinsicHeight() * fMax);
                        int measuredWidth = (getMeasuredWidth() - iCeil) / 2;
                        int measuredHeight = ((getMeasuredHeight() - iCeil2) + PasscodeView.this.keyboardHeight) / 2;
                        PasscodeView.this.backgroundDrawable.setBounds(measuredWidth, measuredHeight, iCeil + measuredWidth, iCeil2 + measuredHeight);
                    }
                    PasscodeView.this.backgroundDrawable.draw(canvas);
                } else {
                    super.onDraw(canvas);
                }
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), this.paint);
            }

            @Override // android.view.View
            public void setBackgroundColor(int i3) {
                this.paint.setColor(i3);
            }
        };
        this.backgroundFrameLayout = frameLayout;
        frameLayout.setWillNotDraw(false);
        addView(this.backgroundFrameLayout, LayoutHelper.createFrame(-1, -1.0f));
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.imageView = rLottieImageView;
        rLottieImageView.setAnimation(R.raw.passcode_lock, 58, 58);
        this.imageView.setAutoRepeat(false);
        addView(this.imageView, LayoutHelper.createFrame(58, 58, 51));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.passwordFrameLayout = frameLayout2;
        this.backgroundFrameLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, -1.0f));
        TextView textView = new TextView(context);
        this.passcodeTextView = textView;
        textView.setTextColor(-1);
        this.passcodeTextView.setTextSize(1, 18.33f);
        this.passcodeTextView.setGravity(1);
        this.passcodeTextView.setTypeface(AndroidUtilities.bold());
        this.passcodeTextView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.passwordFrameLayout.addView(this.passcodeTextView, LayoutHelper.createFrame(-2, -2.0f, 81, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 128.0f));
        TextView textView2 = new TextView(context);
        this.retryTextView = textView2;
        textView2.setTextColor(-1);
        this.retryTextView.setTextSize(1, 15.0f);
        this.retryTextView.setGravity(1);
        this.retryTextView.setVisibility(4);
        this.backgroundFrameLayout.addView(this.retryTextView, LayoutHelper.createFrame(-2, -2, 17));
        AnimatingTextView animatingTextView = new AnimatingTextView(context);
        this.passwordEditText2 = animatingTextView;
        this.passwordFrameLayout.addView(animatingTextView, LayoutHelper.createFrame(-1, -2.0f, 81, 70.0f, BitmapDescriptorFactory.HUE_RED, 70.0f, 46.0f));
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
        this.passwordEditText = editTextBoldCursor;
        editTextBoldCursor.setTextSize(1, 36.0f);
        this.passwordEditText.setTextColor(-1);
        this.passwordEditText.setMaxLines(1);
        this.passwordEditText.setLines(1);
        this.passwordEditText.setGravity(1);
        this.passwordEditText.setSingleLine(true);
        this.passwordEditText.setImeOptions(6);
        this.passwordEditText.setTypeface(Typeface.DEFAULT);
        this.passwordEditText.setBackgroundDrawable(null);
        this.passwordEditText.setCursorColor(-1);
        this.passwordEditText.setCursorSize(AndroidUtilities.dp(32.0f));
        this.passwordFrameLayout.addView(this.passwordEditText, LayoutHelper.createFrame(-1, -2.0f, 81, 70.0f, BitmapDescriptorFactory.HUE_RED, 70.0f, BitmapDescriptorFactory.HUE_RED));
        this.passwordEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda2
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView3, int i3, KeyEvent keyEvent) {
                return this.f$0.lambda$new$0(textView3, i3, keyEvent);
            }
        });
        this.passwordEditText.addTextChangedListener(new AnonymousClass2());
        this.passwordEditText.setCustomSelectionActionModeCallback(new ActionMode.Callback() { // from class: org.telegram.ui.Components.PasscodeView.3
            @Override // android.view.ActionMode.Callback
            public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                return false;
            }

            @Override // android.view.ActionMode.Callback
            public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                return false;
            }

            @Override // android.view.ActionMode.Callback
            public void onDestroyActionMode(ActionMode actionMode) {
            }

            @Override // android.view.ActionMode.Callback
            public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                return false;
            }
        });
        ImageView imageView = new ImageView(context);
        this.checkImage = imageView;
        imageView.setImageResource(R.drawable.passcode_check);
        ImageView imageView2 = this.checkImage;
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
        imageView2.setScaleType(scaleType);
        ImageView imageView3 = this.checkImage;
        int i3 = R.drawable.bar_selector_lock;
        imageView3.setBackgroundResource(i3);
        this.passwordFrameLayout.addView(this.checkImage, LayoutHelper.createFrame(60, 60.0f, 85, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 10.0f, 4.0f));
        this.checkImage.setContentDescription(LocaleController.getString(R.string.Done));
        this.checkImage.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(view);
            }
        });
        ImageView imageView4 = new ImageView(context);
        this.fingerprintImage = imageView4;
        imageView4.setImageResource(R.drawable.fingerprint);
        this.fingerprintImage.setScaleType(scaleType);
        this.fingerprintImage.setBackgroundResource(i3);
        this.passwordFrameLayout.addView(this.fingerprintImage, LayoutHelper.createFrame(60, 60.0f, 83, 10.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 4.0f));
        this.fingerprintImage.setContentDescription(LocaleController.getString(R.string.AccDescrFingerprint));
        this.fingerprintImage.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$2(view);
            }
        });
        View view = new View(context);
        this.border = view;
        view.setBackgroundColor(822083583);
        this.passwordFrameLayout.addView(this.border, LayoutHelper.createFrame(-1.0f, 1.0f / AndroidUtilities.density, 87));
        FrameLayout frameLayout3 = new FrameLayout(context);
        this.numbersContainer = frameLayout3;
        this.backgroundFrameLayout.addView(frameLayout3, LayoutHelper.createFrame(-1, -1, 51));
        FrameLayout frameLayout4 = new FrameLayout(context) { // from class: org.telegram.ui.Components.PasscodeView.4
            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i4, int i5, int i6, int i7) {
                super.onLayout(z, i4, i5, i6, i7);
                if (getParent() instanceof View) {
                    float fMin = Math.min(((View) getParent()).getHeight() / getHeight(), 1.0f);
                    setPivotX(getWidth() / 2.0f);
                    setPivotY(((FrameLayout.LayoutParams) getLayoutParams()).gravity == 17 ? getHeight() / 2.0f : BitmapDescriptorFactory.HUE_RED);
                    setScaleX(fMin);
                    setScaleY(fMin);
                }
            }
        };
        this.numbersFrameLayout = frameLayout4;
        this.numbersContainer.addView(frameLayout4, LayoutHelper.createFrame(-2, -2, 17));
        FrameLayout frameLayout5 = new FrameLayout(context);
        this.numbersTitleContainer = frameLayout5;
        this.numbersFrameLayout.addView(frameLayout5, LayoutHelper.createFrame(-2, -2, 49));
        TextView textView3 = new TextView(context);
        textView3.setTextSize(1, 15.0f);
        textView3.setTypeface(AndroidUtilities.bold());
        textView3.setTextColor(-1);
        textView3.setText(LocaleController.getString(R.string.UnlockToUse));
        this.numbersTitleContainer.addView(textView3, LayoutHelper.createFrame(-2, -2.0f, 49, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        TextView textView4 = new TextView(context);
        this.subtitleView = textView4;
        textView4.setTextSize(1, 14.0f);
        this.subtitleView.setTextColor(-1);
        this.subtitleView.setText(LocaleController.getString(R.string.EnterPINorFingerprint));
        this.numbersTitleContainer.addView(this.subtitleView, LayoutHelper.createFrame(-2, -2.0f, 49, BitmapDescriptorFactory.HUE_RED, 23.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        this.numberFrameLayouts = new ArrayList(10);
        int i4 = 0;
        while (true) {
            if (i4 >= 12) {
                break;
            }
            PasscodeButton passcodeButton = new PasscodeButton(context);
            ScaleStateListAnimator.apply(passcodeButton, 0.15f, 1.5f);
            passcodeButton.setTag(Integer.valueOf(i4));
            if (i4 == 11) {
                passcodeButton.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(30.0f), 0, 654311423));
                passcodeButton.setImage(R.drawable.filled_clear);
                passcodeButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda5
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view2) {
                        return this.f$0.lambda$new$3(view2);
                    }
                });
                passcodeButton.setContentDescription(LocaleController.getString(R.string.AccDescrBackspace));
            } else {
                if (i4 == 10) {
                    this.fingerprintView = passcodeButton;
                    passcodeButton.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(30.0f), 0, 654311423));
                    passcodeButton.setContentDescription(LocaleController.getString(R.string.AccDescrFingerprint));
                    passcodeButton.setImage(R.drawable.fingerprint);
                    i2 = R.id.passcode_btn_1;
                } else {
                    passcodeButton.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(30.0f), 654311423, 1291845631));
                    passcodeButton.setContentDescription(i4 + "");
                    passcodeButton.setNum(i4);
                    if (i4 == 0) {
                        i2 = R.id.passcode_btn_backspace;
                    } else if (i4 != 9) {
                        i2 = ids[i4 + 1];
                    } else if (hasFingerprint()) {
                        i2 = R.id.passcode_btn_fingerprint;
                    }
                }
                setNextFocus(passcodeButton, i2);
                passcodeButton.setId(ids[i4]);
                passcodeButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$new$6(view2);
                    }
                });
                this.numberFrameLayouts.add(passcodeButton);
                i4++;
            }
            i2 = R.id.passcode_btn_0;
            setNextFocus(passcodeButton, i2);
            passcodeButton.setId(ids[i4]);
            passcodeButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$new$6(view2);
                }
            });
            this.numberFrameLayouts.add(passcodeButton);
            i4++;
        }
        for (i = 11; i >= 0; i--) {
            this.numbersFrameLayout.addView((FrameLayout) this.numberFrameLayouts.get(i), LayoutHelper.createFrame(60, 60, 51));
        }
        checkFingerprintButton();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateBackground(final MotionBackgroundDrawable motionBackgroundDrawable) {
        SpringAnimation springAnimation = this.backgroundAnimationSpring;
        if (springAnimation != null && springAnimation.isRunning()) {
            this.backgroundAnimationSpring.cancel();
        }
        final FloatValueHolder floatValueHolder = new FloatValueHolder(BitmapDescriptorFactory.HUE_RED);
        motionBackgroundDrawable.setAnimationProgressProvider(new GenericProvider() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda14
            @Override // org.telegram.messenger.GenericProvider
            public final Object provide(Object obj) {
                return PasscodeView.lambda$animateBackground$7(floatValueHolder, (MotionBackgroundDrawable) obj);
            }
        });
        SpringAnimation spring = new SpringAnimation(floatValueHolder).setSpring(new SpringForce(100.0f).setStiffness(300.0f).setDampingRatio(1.0f));
        this.backgroundAnimationSpring = spring;
        spring.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda15
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                this.f$0.lambda$animateBackground$8(motionBackgroundDrawable, dynamicAnimation, z, f, f2);
            }
        });
        this.backgroundAnimationSpring.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda16
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                motionBackgroundDrawable.updateAnimation(true);
            }
        });
        this.backgroundAnimationSpring.start();
    }

    private void checkFingerprint() {
        Activity activityFindActivity;
        if (Build.VERSION.SDK_INT >= 23 && (activityFindActivity = AndroidUtilities.findActivity(getContext())) != null && this.fingerprintView.getVisibility() == 0 && !ApplicationLoader.mainInterfacePaused) {
            if (!(activityFindActivity instanceof LaunchActivity) || ((LaunchActivity) activityFindActivity).allowShowFingerprintDialog(this)) {
                try {
                    if (BiometricManager.from(getContext()).canAuthenticate(15) == 0 && FingerprintController.isKeyReady() && !FingerprintController.checkDeviceFingerprintsChanged()) {
                        new BiometricPrompt(LaunchActivity.instance, ContextCompat.getMainExecutor(getContext()), new BiometricPrompt.AuthenticationCallback() { // from class: org.telegram.ui.Components.PasscodeView.8
                            @Override // androidx.biometric.BiometricPrompt.AuthenticationCallback
                            public void onAuthenticationError(int i, CharSequence charSequence) {
                                FileLog.d("PasscodeView onAuthenticationError " + i + " \"" + ((Object) charSequence) + "\"");
                                PasscodeView.this.showPin(true);
                            }

                            @Override // androidx.biometric.BiometricPrompt.AuthenticationCallback
                            public void onAuthenticationFailed() {
                                FileLog.d("PasscodeView onAuthenticationFailed");
                                PasscodeView.this.showPin(true);
                            }

                            @Override // androidx.biometric.BiometricPrompt.AuthenticationCallback
                            public void onAuthenticationSucceeded(BiometricPrompt.AuthenticationResult authenticationResult) {
                                FileLog.d("PasscodeView onAuthenticationSucceeded");
                                PasscodeView.this.processDone(true);
                            }
                        }).authenticate(new BiometricPrompt.PromptInfo.Builder().setTitle(LocaleController.getString(R.string.UnlockToUse)).setNegativeButtonText(LocaleController.getString(R.string.UsePIN)).setAllowedAuthenticators(15).build());
                        showPin(false);
                    }
                } catch (Exception e) {
                    FileLog.e(e);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void checkFingerprintButton() {
        Activity activityFindActivity = AndroidUtilities.findActivity(getContext());
        boolean z = false;
        if (Build.VERSION.SDK_INT < 23 || activityFindActivity == null || !SharedConfig.useFingerprintLock) {
            this.fingerprintView.setVisibility(8);
        } else {
            try {
                FingerprintManagerCompat fingerprintManagerCompatFrom = FingerprintManagerCompat.from(ApplicationLoader.applicationContext);
                if (fingerprintManagerCompatFrom.isHardwareDetected() && fingerprintManagerCompatFrom.hasEnrolledFingerprints() && FingerprintController.isKeyReady() && !FingerprintController.checkDeviceFingerprintsChanged()) {
                    try {
                        this.fingerprintView.setVisibility(0);
                        z = true;
                    } catch (Throwable th) {
                        th = th;
                        z = true;
                        FileLog.e(th);
                        this.fingerprintView.setVisibility(8);
                        if (SharedConfig.passcodeType == 1) {
                        }
                        this.subtitleView.setText(LocaleController.getString(!z ? R.string.EnterPINorFingerprint : R.string.EnterPIN));
                    }
                } else {
                    this.fingerprintView.setVisibility(8);
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        if (SharedConfig.passcodeType == 1) {
            this.fingerprintImage.setVisibility(this.fingerprintView.getVisibility());
        }
        this.subtitleView.setText(LocaleController.getString(!z ? R.string.EnterPINorFingerprint : R.string.EnterPIN));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkRetryTextView() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime > SharedConfig.lastUptimeMillis) {
            long j = SharedConfig.passcodeRetryInMs - (jElapsedRealtime - SharedConfig.lastUptimeMillis);
            SharedConfig.passcodeRetryInMs = j;
            if (j < 0) {
                SharedConfig.passcodeRetryInMs = 0L;
            }
        }
        SharedConfig.lastUptimeMillis = jElapsedRealtime;
        SharedConfig.saveConfig();
        long j2 = SharedConfig.passcodeRetryInMs;
        if (j2 <= 0) {
            AndroidUtilities.cancelRunOnUIThread(this.checkRunnable);
            if (this.retryTextView.getVisibility() == 0) {
                this.retryTextView.setVisibility(4);
                this.passwordFrameLayout.setVisibility(0);
                showPin(true);
                if (SharedConfig.passcodeType == 1) {
                    AndroidUtilities.showKeyboard(this.passwordEditText);
                    return;
                }
                return;
            }
            return;
        }
        double d = j2;
        Double.isNaN(d);
        int iMax = Math.max(1, (int) Math.ceil(d / 1000.0d));
        if (iMax != this.lastValue) {
            this.retryTextView.setText(LocaleController.formatString(R.string.TooManyTries, LocaleController.formatPluralString("Seconds", iMax, new Object[0])));
            this.lastValue = iMax;
        }
        if (this.retryTextView.getVisibility() != 0) {
            this.retryTextView.setVisibility(0);
            this.passwordFrameLayout.setVisibility(4);
            showPin(false);
            AndroidUtilities.hideKeyboard(this.passwordEditText);
        }
        AndroidUtilities.cancelRunOnUIThread(this.checkRunnable);
        AndroidUtilities.runOnUIThread(this.checkRunnable, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkTitle() {
        AnimatingTextView animatingTextView = this.passwordEditText2;
        boolean z = animatingTextView == null || animatingTextView.length() > 0;
        FrameLayout frameLayout = this.numbersTitleContainer;
        if (frameLayout != null) {
            frameLayout.animate().cancel();
            this.numbersTitleContainer.animate().alpha(z ? BitmapDescriptorFactory.HUE_RED : 1.0f).scaleX(z ? 0.8f : 1.0f).scaleY(z ? 0.8f : 1.0f).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(320L).start();
        }
    }

    private boolean hasFingerprint() {
        Activity activityFindActivity = AndroidUtilities.findActivity(getContext());
        if (Build.VERSION.SDK_INT >= 23 && activityFindActivity != null && SharedConfig.useFingerprintLock) {
            try {
                FingerprintManagerCompat fingerprintManagerCompatFrom = FingerprintManagerCompat.from(ApplicationLoader.applicationContext);
                if (fingerprintManagerCompatFrom.isHardwareDetected() && fingerprintManagerCompatFrom.hasEnrolledFingerprints() && FingerprintController.isKeyReady()) {
                    return !FingerprintController.checkDeviceFingerprintsChanged();
                }
                return false;
            } catch (Throwable th) {
                FileLog.e(th);
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Float lambda$animateBackground$7(FloatValueHolder floatValueHolder, MotionBackgroundDrawable motionBackgroundDrawable) {
        return Float.valueOf(floatValueHolder.getValue() / 100.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateBackground$8(MotionBackgroundDrawable motionBackgroundDrawable, DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        this.backgroundAnimationSpring = null;
        motionBackgroundDrawable.setAnimationProgressProvider(null);
        if (z) {
            return;
        }
        motionBackgroundDrawable.setPosAnimationProgress(1.0f);
        if (this.backgroundSpringQueue.isEmpty()) {
            return;
        }
        ((Runnable) this.backgroundSpringQueue.poll()).run();
        this.backgroundSpringNextQueue.poll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$0(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        processDone(false);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        processDone(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        checkFingerprint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$3(View view) {
        this.passwordEditText.setText("");
        this.passwordEditText2.eraseAllCharacters(true);
        Drawable drawable = this.backgroundDrawable;
        if (drawable instanceof MotionBackgroundDrawable) {
            ((MotionBackgroundDrawable) drawable).switchToPrevPosition(true);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(boolean z, MotionBackgroundDrawable motionBackgroundDrawable) {
        if (z) {
            motionBackgroundDrawable.switchToNextPosition(true);
        } else {
            motionBackgroundDrawable.switchToPrevPosition(true);
        }
        animateBackground(motionBackgroundDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$new$5(Integer num, Integer num2) {
        return num2.intValue() - num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public /* synthetic */ void lambda$new$6(View view) {
        boolean zEraseLastCharacter;
        AnimatingTextView animatingTextView;
        String str;
        final boolean z;
        if (this.pinShown) {
            int iIntValue = ((Integer) view.getTag()).intValue();
            switch (iIntValue) {
                case 0:
                    animatingTextView = this.passwordEditText2;
                    str = "0";
                    animatingTextView.appendCharacter(str);
                    zEraseLastCharacter = false;
                    break;
                case 1:
                    animatingTextView = this.passwordEditText2;
                    str = "1";
                    animatingTextView.appendCharacter(str);
                    zEraseLastCharacter = false;
                    break;
                case 2:
                    animatingTextView = this.passwordEditText2;
                    str = "2";
                    animatingTextView.appendCharacter(str);
                    zEraseLastCharacter = false;
                    break;
                case 3:
                    animatingTextView = this.passwordEditText2;
                    str = "3";
                    animatingTextView.appendCharacter(str);
                    zEraseLastCharacter = false;
                    break;
                case 4:
                    animatingTextView = this.passwordEditText2;
                    str = OnlineLocationService.SRC_DEFAULT;
                    animatingTextView.appendCharacter(str);
                    zEraseLastCharacter = false;
                    break;
                case 5:
                    animatingTextView = this.passwordEditText2;
                    str = "5";
                    animatingTextView.appendCharacter(str);
                    zEraseLastCharacter = false;
                    break;
                case 6:
                    animatingTextView = this.passwordEditText2;
                    str = "6";
                    animatingTextView.appendCharacter(str);
                    zEraseLastCharacter = false;
                    break;
                case 7:
                    animatingTextView = this.passwordEditText2;
                    str = "7";
                    animatingTextView.appendCharacter(str);
                    zEraseLastCharacter = false;
                    break;
                case 8:
                    animatingTextView = this.passwordEditText2;
                    str = "8";
                    animatingTextView.appendCharacter(str);
                    zEraseLastCharacter = false;
                    break;
                case 9:
                    animatingTextView = this.passwordEditText2;
                    str = "9";
                    animatingTextView.appendCharacter(str);
                    zEraseLastCharacter = false;
                    break;
                case 10:
                    checkFingerprint();
                    zEraseLastCharacter = false;
                    break;
                case 11:
                    zEraseLastCharacter = this.passwordEditText2.eraseLastCharacter();
                    break;
                default:
                    zEraseLastCharacter = false;
                    break;
            }
            if (this.passwordEditText2.length() == 4) {
                processDone(false);
            }
            if (iIntValue == 11) {
                return;
            }
            Drawable drawable = this.backgroundDrawable;
            if (drawable instanceof MotionBackgroundDrawable) {
                final MotionBackgroundDrawable motionBackgroundDrawable = (MotionBackgroundDrawable) drawable;
                motionBackgroundDrawable.setAnimationProgressProvider(null);
                float posAnimationProgress = motionBackgroundDrawable.getPosAnimationProgress();
                boolean z2 = true;
                if (iIntValue == 10) {
                    if (zEraseLastCharacter) {
                        motionBackgroundDrawable.switchToPrevPosition(true);
                    } else {
                        z2 = false;
                    }
                    z = false;
                } else {
                    motionBackgroundDrawable.switchToNextPosition(true);
                    z = true;
                }
                if (z2) {
                    if (posAnimationProgress >= 1.0f) {
                        animateBackground(motionBackgroundDrawable);
                        return;
                    }
                    this.backgroundSpringQueue.offer(new Runnable() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda12
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$new$4(z, motionBackgroundDrawable);
                        }
                    });
                    this.backgroundSpringNextQueue.offer(Boolean.valueOf(z));
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (int i = 0; i < this.backgroundSpringQueue.size(); i++) {
                        Runnable runnable = (Runnable) this.backgroundSpringQueue.get(i);
                        Boolean bool = (Boolean) this.backgroundSpringNextQueue.get(i);
                        if (bool != null && bool.booleanValue() != z) {
                            arrayList.add(runnable);
                            arrayList2.add(Integer.valueOf(i));
                        }
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        this.backgroundSpringQueue.remove((Runnable) it.next());
                    }
                    Collections.sort(arrayList2, new Comparator() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda13
                        @Override // java.util.Comparator
                        public final int compare(Object obj, Object obj2) {
                            return PasscodeView.lambda$new$5((Integer) obj, (Integer) obj2);
                        }
                    });
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        this.backgroundSpringNextQueue.remove(((Integer) it2.next()).intValue());
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onAttachedToWindow$13(Integer num) {
        float height;
        if (getContext() == null) {
            return;
        }
        boolean z = getContext().getResources().getConfiguration().orientation == 2;
        int iIntValue = num.intValue() - AndroidUtilities.navigationBarHeight;
        if (SharedConfig.passcodeType == 1) {
            ViewPropertyAnimator viewPropertyAnimatorAnimate = this.passwordFrameLayout.animate();
            if (iIntValue <= AndroidUtilities.dp(20.0f)) {
                height = BitmapDescriptorFactory.HUE_RED;
            } else {
                height = (((getHeight() - iIntValue) / 2.0f) - (this.passwordFrameLayout.getHeight() / (z ? 1.0f : 2.0f))) - this.passwordFrameLayout.getTop();
            }
            ViewPropertyAnimator duration = viewPropertyAnimatorAnimate.translationY(height).setDuration(320L);
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            duration.setInterpolator(cubicBezierInterpolator).start();
            this.imageView.animate().alpha(iIntValue > AndroidUtilities.dp(20.0f) ? BitmapDescriptorFactory.HUE_RED : 1.0f).setDuration(320L).setInterpolator(cubicBezierInterpolator);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$12() {
        EditTextBoldCursor editTextBoldCursor;
        if (this.retryTextView.getVisibility() == 0 || (editTextBoldCursor = this.passwordEditText) == null) {
            return;
        }
        editTextBoldCursor.requestFocus();
        AndroidUtilities.showKeyboard(this.passwordEditText);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$onShow$15(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$10(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.shownT = fFloatValue;
        onAnimationUpdate(fFloatValue);
        setAlpha(this.shownT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$11() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.shownT, BitmapDescriptorFactory.HUE_RED);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda11
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$processDone$10(valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PasscodeView.this.setVisibility(8);
                PasscodeView.this.onHidden();
                PasscodeView passcodeView = PasscodeView.this;
                passcodeView.onAnimationUpdate(passcodeView.shownT = BitmapDescriptorFactory.HUE_RED);
                PasscodeView.this.setAlpha(BitmapDescriptorFactory.HUE_RED);
            }
        });
        valueAnimatorOfFloat.setDuration(420L);
        valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        valueAnimatorOfFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPin$14(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.numbersFrameLayout.setScaleX(AndroidUtilities.lerp(0.8f, 1.0f, fFloatValue));
        this.numbersFrameLayout.setScaleY(AndroidUtilities.lerp(0.8f, 1.0f, fFloatValue));
        this.numbersFrameLayout.setAlpha(AndroidUtilities.lerp(BitmapDescriptorFactory.HUE_RED, 1.0f, fFloatValue));
        this.passcodeTextView.setScaleX(AndroidUtilities.lerp(1.0f, 0.9f, fFloatValue));
        this.passcodeTextView.setScaleY(AndroidUtilities.lerp(1.0f, 0.9f, fFloatValue));
        this.passcodeTextView.setAlpha(AndroidUtilities.lerp(1.0f, BitmapDescriptorFactory.HUE_RED, fFloatValue));
        this.passwordEditText2.setAlpha(AndroidUtilities.lerp(BitmapDescriptorFactory.HUE_RED, 1.0f, fFloatValue));
    }

    private void onPasscodeError() {
        BotWebViewVibrationEffect.NOTIFICATION_ERROR.vibrate();
        shakeTextView(2.0f, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processDone(boolean z) {
        if (!z) {
            if (SharedConfig.passcodeRetryInMs > 0) {
                return;
            }
            int i = SharedConfig.passcodeType;
            String string = i == 0 ? this.passwordEditText2.getString() : i == 1 ? this.passwordEditText.getText().toString() : "";
            if (string.length() == 0) {
                onPasscodeError();
                return;
            }
            if (!SharedConfig.checkPasscode(string)) {
                SharedConfig.increaseBadPasscodeTries();
                if (SharedConfig.passcodeRetryInMs > 0) {
                    checkRetryTextView();
                }
                this.passwordEditText.setText("");
                this.passwordEditText2.eraseAllCharacters(true);
                onPasscodeError();
                Drawable drawable = this.backgroundDrawable;
                if (drawable instanceof MotionBackgroundDrawable) {
                    MotionBackgroundDrawable motionBackgroundDrawable = (MotionBackgroundDrawable) drawable;
                    SpringAnimation springAnimation = this.backgroundAnimationSpring;
                    if (springAnimation != null) {
                        springAnimation.cancel();
                        motionBackgroundDrawable.setPosAnimationProgress(1.0f);
                    }
                    if (motionBackgroundDrawable.getPosAnimationProgress() >= 1.0f) {
                        motionBackgroundDrawable.rotatePreview(true);
                        return;
                    }
                    return;
                }
                return;
            }
        }
        SharedConfig.badPasscodeTries = 0;
        this.passwordEditText.clearFocus();
        AndroidUtilities.hideKeyboard(this.passwordEditText);
        if (Build.VERSION.SDK_INT >= 23 && FingerprintController.isKeyReady() && FingerprintController.checkDeviceFingerprintsChanged()) {
            FingerprintController.deleteInvalidKey();
        }
        SharedConfig.appLocked = false;
        SharedConfig.saveConfig();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didSetPasscode, new Object[0]);
        setOnTouchListener(null);
        PasscodeViewDelegate passcodeViewDelegate = this.delegate;
        if (passcodeViewDelegate != null) {
            passcodeViewDelegate.didAcceptedPassword(this);
        }
        this.imageView.getAnimatedDrawable().setCustomEndFrame(71);
        this.imageView.getAnimatedDrawable().setCurrentFrame(37, false);
        this.imageView.playAnimation();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processDone$11();
            }
        });
    }

    private void setNextFocus(View view, int i) {
        view.setNextFocusForwardId(i);
        if (Build.VERSION.SDK_INT >= 22) {
            view.setAccessibilityTraversalBefore(i);
        }
    }

    private void shakeTextView(float f, int i) {
        if (i == 6) {
            return;
        }
        FrameLayout frameLayout = this.numbersTitleContainer;
        int i2 = -this.shiftDp;
        this.shiftDp = i2;
        AndroidUtilities.shakeViewSpring(frameLayout, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPin(final boolean z) {
        ValueAnimator valueAnimator = this.pinAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.pinShown = z;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.numbersFrameLayout.getAlpha(), z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        this.pinAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda10
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$showPin$14(valueAnimator2);
            }
        });
        this.pinAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                float f = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                PasscodeView.this.numbersFrameLayout.setScaleX(AndroidUtilities.lerp(0.8f, 1.0f, f));
                PasscodeView.this.numbersFrameLayout.setScaleY(AndroidUtilities.lerp(0.8f, 1.0f, f));
                PasscodeView.this.numbersFrameLayout.setAlpha(AndroidUtilities.lerp(BitmapDescriptorFactory.HUE_RED, 1.0f, f));
                PasscodeView.this.passcodeTextView.setScaleX(AndroidUtilities.lerp(1.0f, 0.9f, f));
                PasscodeView.this.passcodeTextView.setScaleY(AndroidUtilities.lerp(1.0f, 0.9f, f));
                PasscodeView.this.passcodeTextView.setAlpha(AndroidUtilities.lerp(1.0f, BitmapDescriptorFactory.HUE_RED, f));
                PasscodeView.this.passwordEditText2.setAlpha(AndroidUtilities.lerp(BitmapDescriptorFactory.HUE_RED, 1.0f, f));
            }
        });
        this.pinAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.pinAnimator.setDuration(320L);
        this.pinAnimator.start();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i != NotificationCenter.didGenerateFingerprintKeyPair) {
            if (i != NotificationCenter.passcodeDismissed || objArr[0] == this) {
                return;
            }
            setVisibility(8);
            return;
        }
        checkFingerprintButton();
        if (((Boolean) objArr[0]).booleanValue() && SharedConfig.appLocked) {
            checkFingerprint();
        }
    }

    protected void onAnimationUpdate(float f) {
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didGenerateFingerprintKeyPair);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.passcodeDismissed);
        if (this.keyboardNotifier == null && (getParent() instanceof View)) {
            this.keyboardNotifier = new KeyboardNotifier((View) getParent(), new Utilities.Callback() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda7
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onAttachedToWindow$13((Integer) obj);
                }
            });
        }
    }

    public boolean onBackPressed() {
        KeyboardNotifier keyboardNotifier = this.keyboardNotifier;
        if (keyboardNotifier == null || !keyboardNotifier.keyboardVisible()) {
            return true;
        }
        AndroidUtilities.hideKeyboard(this.passwordEditText);
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didGenerateFingerprintKeyPair);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.passcodeDismissed);
    }

    protected void onHidden() {
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        RLottieImageView rLottieImageView;
        int i5;
        View rootView = getRootView();
        int height = (rootView.getHeight() - AndroidUtilities.statusBarHeight) - AndroidUtilities.getViewInset(rootView);
        getWindowVisibleDisplayFrame(this.rect);
        android.graphics.Rect rect = this.rect;
        this.keyboardHeight = height - (rect.bottom - rect.top);
        if (SharedConfig.passcodeType == 1 && (AndroidUtilities.isTablet() || getContext().getResources().getConfiguration().orientation != 2)) {
            int iIntValue = this.passwordFrameLayout.getTag() != null ? ((Integer) this.passwordFrameLayout.getTag()).intValue() : 0;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.passwordFrameLayout.getLayoutParams();
            layoutParams.topMargin = ((iIntValue + layoutParams.height) - (this.keyboardHeight / 2)) - (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0);
            this.passwordFrameLayout.setLayoutParams(layoutParams);
        }
        super.onLayout(z, i, i2, i3, i4);
        this.passcodeTextView.getLocationInWindow(this.pos);
        if (AndroidUtilities.isTablet() || getContext().getResources().getConfiguration().orientation == 2) {
            rLottieImageView = this.imageView;
            i5 = this.pos[1];
        } else {
            rLottieImageView = this.imageView;
            i5 = this.pos[1];
        }
        int iDp = i5 - AndroidUtilities.dp(100.0f);
        this.imageY = iDp;
        rLottieImageView.setTranslationY(iDp);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int iDp;
        int size = View.MeasureSpec.getSize(i);
        int i5 = AndroidUtilities.displaySize.y;
        int i6 = Build.VERSION.SDK_INT;
        int iDp2 = i5 - (i6 >= 21 ? 0 : AndroidUtilities.statusBarHeight);
        int iDp3 = AndroidUtilities.dp(28.0f);
        int iDp4 = AndroidUtilities.dp(16.0f);
        int iDp5 = AndroidUtilities.dp(60.0f);
        boolean z = !AndroidUtilities.isTablet() && getContext().getResources().getConfiguration().orientation == 2;
        View view = this.border;
        if (view != null) {
            view.setVisibility(SharedConfig.passcodeType == 1 ? 0 : 8);
        }
        if (z) {
            RLottieImageView rLottieImageView = this.imageView;
            float f = size;
            if (SharedConfig.passcodeType == 0) {
                f /= 2.0f;
            }
            rLottieImageView.setTranslationX((f / 2.0f) - AndroidUtilities.dp(29.0f));
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.passwordFrameLayout.getLayoutParams();
            layoutParams.width = SharedConfig.passcodeType == 0 ? size / 2 : size;
            layoutParams.height = AndroidUtilities.dp(180.0f);
            layoutParams.topMargin = ((iDp2 - AndroidUtilities.dp(140.0f)) / 2) + (SharedConfig.passcodeType == 0 ? AndroidUtilities.dp(40.0f) : 0);
            this.passwordFrameLayout.setLayoutParams(layoutParams);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.numbersContainer.getLayoutParams();
            layoutParams2.height = iDp2;
            int i7 = size / 2;
            layoutParams2.leftMargin = i7;
            layoutParams2.topMargin = (iDp2 - iDp2) + (i6 >= 21 ? AndroidUtilities.statusBarHeight : 0);
            layoutParams2.width = i7;
            this.numbersContainer.setLayoutParams(layoutParams2);
            FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.numbersFrameLayout.getLayoutParams();
            layoutParams3.height = AndroidUtilities.dp(82.0f) + (iDp5 * 4) + (Math.max(0, 3) * iDp4);
            layoutParams3.width = (iDp5 * 3) + (Math.max(0, 2) * iDp3);
            layoutParams3.gravity = 17;
            this.numbersFrameLayout.setLayoutParams(layoutParams3);
        } else {
            this.imageView.setTranslationX((size / 2.0f) - AndroidUtilities.dp(29.0f));
            int iDp6 = AndroidUtilities.statusBarHeight;
            if (AndroidUtilities.isTablet()) {
                if (size > AndroidUtilities.dp(498.0f)) {
                    iDp = (size - AndroidUtilities.dp(498.0f)) / 2;
                    size = AndroidUtilities.dp(498.0f);
                } else {
                    iDp = 0;
                }
                if (iDp2 > AndroidUtilities.dp(528.0f)) {
                    iDp6 = (iDp2 - AndroidUtilities.dp(528.0f)) / 2;
                    iDp2 = AndroidUtilities.dp(528.0f);
                }
                int i8 = iDp;
                i3 = iDp6;
                i4 = i8;
            } else {
                i3 = iDp6;
                i4 = 0;
            }
            FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) this.passwordFrameLayout.getLayoutParams();
            layoutParams4.height = (iDp2 / 3) + (SharedConfig.passcodeType == 0 ? AndroidUtilities.dp(40.0f) : 0);
            layoutParams4.width = size;
            layoutParams4.topMargin = i3;
            layoutParams4.leftMargin = i4;
            this.passwordFrameLayout.setTag(Integer.valueOf(i3));
            this.passwordFrameLayout.setLayoutParams(layoutParams4);
            int i9 = layoutParams4.topMargin + layoutParams4.height;
            FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) this.numbersFrameLayout.getLayoutParams();
            layoutParams5.height = AndroidUtilities.dp(82.0f) + (iDp5 * 4) + (Math.max(0, 3) * iDp4);
            layoutParams5.width = (iDp5 * 3) + (Math.max(0, 2) * iDp3);
            layoutParams5.gravity = AndroidUtilities.isTablet() ? 17 : 49;
            this.numbersFrameLayout.setLayoutParams(layoutParams5);
            int i10 = iDp2 - layoutParams5.height;
            FrameLayout.LayoutParams layoutParams6 = (FrameLayout.LayoutParams) this.numbersContainer.getLayoutParams();
            layoutParams6.leftMargin = i4;
            if (AndroidUtilities.isTablet()) {
                layoutParams6.topMargin = (iDp2 - i10) / 2;
            } else {
                layoutParams6.topMargin = i9;
            }
            layoutParams6.width = size;
            layoutParams6.height = -1;
            this.numbersContainer.setLayoutParams(layoutParams6);
        }
        int iDp7 = AndroidUtilities.dp(z ? 52.0f : 82.0f);
        int i11 = 0;
        while (i11 < 12) {
            int i12 = 10;
            if (i11 != 0) {
                i12 = i11 == 10 ? 11 : i11 == 11 ? 9 : i11 - 1;
            }
            FrameLayout frameLayout = (FrameLayout) this.numberFrameLayouts.get(i11);
            FrameLayout.LayoutParams layoutParams7 = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
            layoutParams7.topMargin = ((iDp5 + iDp4) * (i12 / 3)) + iDp7;
            layoutParams7.leftMargin = (iDp5 + iDp3) * (i12 % 3);
            frameLayout.setLayoutParams(layoutParams7);
            i11++;
        }
        super.onMeasure(i, i2);
    }

    public void onPause() {
        AndroidUtilities.cancelRunOnUIThread(this.checkRunnable);
    }

    public void onResume() {
        checkRetryTextView();
        if (this.retryTextView.getVisibility() != 0) {
            if (SharedConfig.passcodeType == 1) {
                EditTextBoldCursor editTextBoldCursor = this.passwordEditText;
                if (editTextBoldCursor != null) {
                    editTextBoldCursor.requestFocus();
                    AndroidUtilities.showKeyboard(this.passwordEditText);
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onResume$12();
                    }
                }, 200L);
            }
            checkFingerprint();
        }
    }

    public void onShow(boolean z, boolean z2) {
        onShow(z, z2, -1, -1, null, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x009f, code lost:
    
        if ((r15.backgroundDrawable instanceof org.telegram.ui.Components.BackgroundGradientDrawable) != false) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onShow(boolean z, boolean z2, int i, int i2, Runnable runnable, Runnable runnable2) {
        View currentFocus;
        FrameLayout frameLayout;
        boolean z3;
        FrameLayout frameLayout2;
        EditTextBoldCursor editTextBoldCursor;
        checkFingerprintButton();
        checkRetryTextView();
        Activity activityFindActivity = AndroidUtilities.findActivity(getContext());
        if (SharedConfig.passcodeType == 1) {
            if (!z2 && this.retryTextView.getVisibility() != 0 && (editTextBoldCursor = this.passwordEditText) != null) {
                editTextBoldCursor.requestFocus();
                AndroidUtilities.showKeyboard(this.passwordEditText);
            }
        } else if (activityFindActivity != null && (currentFocus = activityFindActivity.getCurrentFocus()) != null) {
            currentFocus.clearFocus();
            AndroidUtilities.hideKeyboard(activityFindActivity.getCurrentFocus());
        }
        if (getVisibility() == 0) {
            return;
        }
        setTranslationY(BitmapDescriptorFactory.HUE_RED);
        this.backgroundDrawable = null;
        this.backgroundFrameLayoutColor = 0;
        int i3 = 570425344;
        int i4 = -1090519040;
        if (Theme.getCachedWallpaper() instanceof MotionBackgroundDrawable) {
            z3 = !Theme.isCurrentThemeDark();
            this.backgroundDrawable = Theme.getCachedWallpaper();
            FrameLayout frameLayout3 = this.backgroundFrameLayout;
            this.backgroundFrameLayoutColor = -1090519040;
            frameLayout3.setBackgroundColor(-1090519040);
        } else if (!Theme.isCustomTheme() || "CJz3BZ6YGEYBAAAABboWp6SAv04".equals(Theme.getSelectedBackgroundSlug()) || "qeZWES8rGVIEAAAARfWlK1lnfiI".equals(Theme.getSelectedBackgroundSlug())) {
            if (!"d".equals(Theme.getSelectedBackgroundSlug()) && !Theme.isPatternWallpaper()) {
                Drawable cachedWallpaper = Theme.getCachedWallpaper();
                this.backgroundDrawable = cachedWallpaper;
                if (!(cachedWallpaper instanceof BackgroundGradientDrawable)) {
                    if (cachedWallpaper != null) {
                        frameLayout = this.backgroundFrameLayout;
                    }
                    this.backgroundFrameLayoutColor = i4;
                    frameLayout.setBackgroundColor(i4);
                    z3 = false;
                }
                FrameLayout frameLayout4 = this.backgroundFrameLayout;
                this.backgroundFrameLayoutColor = 570425344;
                frameLayout4.setBackgroundColor(570425344);
                z3 = false;
            }
            frameLayout = this.backgroundFrameLayout;
            i4 = -11436898;
            this.backgroundFrameLayoutColor = i4;
            frameLayout.setBackgroundColor(i4);
            z3 = false;
        } else {
            BackgroundGradientDrawable currentGradientWallpaper = Theme.getCurrentGradientWallpaper();
            this.backgroundDrawable = currentGradientWallpaper;
            if (currentGradientWallpaper == null) {
                this.backgroundDrawable = Theme.getCachedWallpaper();
            }
        }
        Drawable drawable = this.backgroundDrawable;
        if (drawable instanceof MotionBackgroundDrawable) {
            MotionBackgroundDrawable motionBackgroundDrawable = (MotionBackgroundDrawable) drawable;
            int[] colors = motionBackgroundDrawable.getColors();
            if (z3) {
                int[] iArr = new int[colors.length];
                for (int i5 = 0; i5 < colors.length; i5++) {
                    iArr[i5] = Theme.adaptHSV(colors[i5], 0.14f, BitmapDescriptorFactory.HUE_RED);
                }
                colors = iArr;
            }
            this.backgroundDrawable = new MotionBackgroundDrawable(colors[0], colors[1], colors[2], colors[3], false);
            if (!motionBackgroundDrawable.hasPattern() || motionBackgroundDrawable.getIntensity() >= 0) {
                frameLayout2 = this.backgroundFrameLayout;
            } else {
                frameLayout2 = this.backgroundFrameLayout;
                i3 = 2130706432;
            }
            this.backgroundFrameLayoutColor = i3;
            frameLayout2.setBackgroundColor(i3);
            ((MotionBackgroundDrawable) this.backgroundDrawable).setParentView(this.backgroundFrameLayout);
        }
        this.passcodeTextView.setText(LocaleController.getString(R.string.AppLocked));
        int i6 = SharedConfig.passcodeType;
        if (i6 == 0) {
            if (this.retryTextView.getVisibility() != 0) {
                this.numbersFrameLayout.setVisibility(0);
            }
            this.passwordEditText.setVisibility(8);
            this.passwordEditText2.setVisibility(0);
            this.checkImage.setVisibility(8);
            this.fingerprintImage.setVisibility(8);
        } else if (i6 == 1) {
            this.passwordEditText.setFilters(new InputFilter[0]);
            this.passwordEditText.setInputType(129);
            this.numbersFrameLayout.setVisibility(8);
            this.passwordEditText.setFocusable(true);
            this.passwordEditText.setFocusableInTouchMode(true);
            this.passwordEditText.setVisibility(0);
            this.passwordEditText2.setVisibility(8);
            this.checkImage.setVisibility(0);
            this.fingerprintImage.setVisibility(this.fingerprintView.getVisibility());
        }
        setVisibility(0);
        this.passwordEditText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        this.passwordEditText.setText("");
        this.passwordEditText2.eraseAllCharacters(false);
        if (z2) {
            setAlpha(BitmapDescriptorFactory.HUE_RED);
            getViewTreeObserver().addOnGlobalLayoutListener(new AnonymousClass9(i, i2, runnable));
            requestLayout();
        } else {
            setAlpha(1.0f);
            this.shownT = 1.0f;
            onAnimationUpdate(1.0f);
            this.imageView.setScaleX(1.0f);
            this.imageView.setScaleY(1.0f);
            this.imageView.stopAnimation();
            this.imageView.getAnimatedDrawable().setCurrentFrame(38, false);
            if (runnable != null) {
                runnable.run();
            }
        }
        setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda8
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return PasscodeView.lambda$onShow$15(view, motionEvent);
            }
        });
    }

    public void setDelegate(PasscodeViewDelegate passcodeViewDelegate) {
        this.delegate = passcodeViewDelegate;
    }
}
