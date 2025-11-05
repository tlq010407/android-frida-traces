package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.graphics.ColorUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import j$.util.stream.IntStream;
import java.util.ArrayList;
import java.util.Arrays;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedEmojiSpan;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class AnimatedTextView extends View {
    public boolean adaptWidth;
    private Drawable backgroundDrawable;
    private final AnimatedTextDrawable drawable;
    private boolean first;
    private int lastMaxWidth;
    private int maxWidth;
    private boolean toSetMoveDown;
    private CharSequence toSetText;

    public static class AnimatedTextDrawable extends Drawable {
        private boolean allowCancel;
        private int alpha;
        private long animateDelay;
        private long animateDuration;
        private TimeInterpolator animateInterpolator;
        private float animateWave;
        private ValueAnimator animator;
        private final android.graphics.Rect bounds;
        public boolean centerY;
        private ValueAnimator colorAnimator;
        private float currentHeight;
        private Part[] currentParts;
        private CharSequence currentText;
        private float currentWidth;
        private boolean ellipsizeByGradient;
        private LinearGradient ellipsizeGradient;
        private Matrix ellipsizeGradientMatrix;
        private Paint ellipsizePaint;
        private int emojiCacheType;
        private int emojiColor;
        private ColorFilter emojiColorFilter;
        private boolean enforceByLetter;
        private int gravity;
        public boolean ignoreRTL;
        private boolean includeFontPadding;
        private boolean isRTL;
        private float moveAmplitude;
        private boolean moveDown;
        private float oldHeight;
        private Part[] oldParts;
        private CharSequence oldText;
        private float oldWidth;
        private Runnable onAnimationFinishListener;
        private int overrideFullWidth;
        private boolean preserveIndex;
        private float rightPadding;
        private float scaleAmplitude;
        private int shadowColor;
        private float shadowDx;
        private float shadowDy;
        private float shadowRadius;
        private boolean shadowed;
        private boolean splitByWords;
        private boolean startFromEnd;
        private float t;
        private final TextPaint textPaint;
        private CharSequence toSetText;
        private boolean toSetTextMoveDown;
        public boolean updateAll;
        private Runnable widthUpdatedListener;

        private class Part {
            AnimatedEmojiSpan.EmojiGroupedSpans emoji;
            StaticLayout layout;
            float left;
            float offset;
            int toOppositeIndex;
            float width;

            public Part(StaticLayout staticLayout, float f, int i) {
                this.layout = staticLayout;
                this.toOppositeIndex = i;
                layout(f);
                if (AnimatedTextDrawable.this.getCallback() instanceof View) {
                    this.emoji = AnimatedEmojiSpan.update(AnimatedTextDrawable.this.emojiCacheType, (View) AnimatedTextDrawable.this.getCallback(), this.emoji, staticLayout);
                }
            }

            public void detach() {
                if (AnimatedTextDrawable.this.getCallback() instanceof View) {
                    AnimatedEmojiSpan.release((View) AnimatedTextDrawable.this.getCallback(), this.emoji);
                }
            }

            public void draw(Canvas canvas, float f) {
                this.layout.draw(canvas);
                AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.layout, this.emoji, BitmapDescriptorFactory.HUE_RED, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f, AnimatedTextDrawable.this.emojiColorFilter);
            }

            public void layout(float f) {
                this.offset = f;
                StaticLayout staticLayout = this.layout;
                float lineWidth = BitmapDescriptorFactory.HUE_RED;
                this.left = (staticLayout == null || staticLayout.getLineCount() <= 0) ? BitmapDescriptorFactory.HUE_RED : this.layout.getLineLeft(0);
                StaticLayout staticLayout2 = this.layout;
                if (staticLayout2 != null && staticLayout2.getLineCount() > 0) {
                    lineWidth = this.layout.getLineWidth(0);
                }
                this.width = lineWidth;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        interface RegionCallback {
            void run(CharSequence charSequence, int i, int i2);
        }

        private static class WordSequence implements CharSequence {
            private final int length;
            private final CharSequence[] words;

            public WordSequence(CharSequence charSequence) {
                if (charSequence == null) {
                    this.words = new CharSequence[0];
                    this.length = 0;
                    return;
                }
                this.length = charSequence.length();
                int i = 0;
                for (int i2 = 0; i2 < this.length; i2++) {
                    if (charSequence.charAt(i2) == ' ') {
                        i++;
                    }
                }
                this.words = new CharSequence[i + 1];
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    int i6 = this.length;
                    if (i3 > i6) {
                        return;
                    }
                    if (i3 == i6 || charSequence.charAt(i3) == ' ') {
                        int i7 = i4 + 1;
                        this.words[i4] = charSequence.subSequence(i5, (i3 < this.length ? 1 : 0) + i3);
                        i5 = i3 + 1;
                        i4 = i7;
                    }
                    i3++;
                }
            }

            @Override // java.lang.CharSequence
            public char charAt(int i) {
                int i2 = 0;
                while (true) {
                    CharSequence[] charSequenceArr = this.words;
                    if (i2 >= charSequenceArr.length) {
                        return (char) 0;
                    }
                    if (i < charSequenceArr[i2].length()) {
                        return this.words[i2].charAt(i);
                    }
                    i -= this.words[i2].length();
                    i2++;
                }
            }

            @Override // java.lang.CharSequence
            public IntStream chars() {
                if (Build.VERSION.SDK_INT >= 24) {
                    return IntStream.VivifiedWrapper.convert(toCharSequence().chars());
                }
                return null;
            }

            @Override // java.lang.CharSequence
            public /* synthetic */ java.util.stream.IntStream chars() {
                return IntStream.Wrapper.convert(chars());
            }

            @Override // java.lang.CharSequence
            public IntStream codePoints() {
                if (Build.VERSION.SDK_INT >= 24) {
                    return IntStream.VivifiedWrapper.convert(toCharSequence().codePoints());
                }
                return null;
            }

            @Override // java.lang.CharSequence
            public /* synthetic */ java.util.stream.IntStream codePoints() {
                return IntStream.Wrapper.convert(codePoints());
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.words.length;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i, int i2) {
                return TextUtils.concat((CharSequence[]) Arrays.copyOfRange(this.words, i, i2));
            }

            public CharSequence toCharSequence() {
                return TextUtils.concat(this.words);
            }

            @Override // java.lang.CharSequence
            public String toString() {
                StringBuilder sb = new StringBuilder();
                int i = 0;
                while (true) {
                    CharSequence[] charSequenceArr = this.words;
                    if (i >= charSequenceArr.length) {
                        return sb.toString();
                    }
                    sb.append(charSequenceArr[i]);
                    i++;
                }
            }

            public CharSequence wordAt(int i) {
                if (i < 0) {
                    return null;
                }
                CharSequence[] charSequenceArr = this.words;
                if (i >= charSequenceArr.length) {
                    return null;
                }
                return charSequenceArr[i];
            }
        }

        public AnimatedTextDrawable() {
            this(false, false, false);
        }

        public AnimatedTextDrawable(boolean z, boolean z2, boolean z3) {
            this(z, z2, z3, false);
        }

        public AnimatedTextDrawable(boolean z, boolean z2, boolean z3, boolean z4) {
            this.textPaint = new TextPaint(1);
            this.gravity = 0;
            this.isRTL = false;
            this.emojiCacheType = 0;
            this.t = BitmapDescriptorFactory.HUE_RED;
            this.moveDown = true;
            this.animateDelay = 0L;
            this.animateDuration = 320L;
            this.animateInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.animateWave = -1.0f;
            this.moveAmplitude = 0.3f;
            this.scaleAmplitude = BitmapDescriptorFactory.HUE_RED;
            this.alpha = 255;
            this.bounds = new android.graphics.Rect();
            this.includeFontPadding = true;
            this.centerY = true;
            this.shadowed = false;
            this.splitByWords = z;
            this.preserveIndex = z2;
            this.startFromEnd = z3;
            this.enforceByLetter = z4;
        }

        private void applyAlphaInternal(float f) {
            this.textPaint.setAlpha((int) (this.alpha * f));
            if (this.shadowed) {
                this.textPaint.setShadowLayer(this.shadowRadius, this.shadowDx, this.shadowDy, Theme.multAlpha(this.shadowColor, f));
            }
        }

        private void clearCurrentParts() {
            if (this.oldParts != null) {
                int i = 0;
                while (true) {
                    Part[] partArr = this.oldParts;
                    if (i >= partArr.length) {
                        break;
                    }
                    partArr[i].detach();
                    i++;
                }
            }
            this.oldParts = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOldParts() {
            if (this.oldParts != null) {
                int i = 0;
                while (true) {
                    Part[] partArr = this.oldParts;
                    if (i >= partArr.length) {
                        break;
                    }
                    partArr[i].detach();
                    i++;
                }
            }
            this.oldParts = null;
        }

        private void diff(CharSequence charSequence, CharSequence charSequence2, RegionCallback regionCallback, RegionCallback regionCallback2, RegionCallback regionCallback3) {
            if (this.updateAll) {
                part(regionCallback3, charSequence, 0, charSequence.length());
                part(regionCallback2, charSequence2, 0, charSequence2.length());
                return;
            }
            if (!this.preserveIndex) {
                int iMin = Math.min(charSequence2.length(), charSequence.length());
                int length = 0;
                int length2 = 0;
                boolean z = true;
                int i = 0;
                int i2 = 0;
                while (length <= iMin) {
                    boolean z2 = length < iMin && partEquals(charSequence2, charSequence, length, length2);
                    if (z != z2 || length == iMin) {
                        if (length == iMin) {
                            length = charSequence2.length();
                            length2 = charSequence.length();
                        }
                        int i3 = length - i;
                        int i4 = length2 - i2;
                        if (i3 > 0 || i4 > 0) {
                            if (i3 == i4 && z) {
                                regionCallback.run(charSequence2.subSequence(i, length), i, length);
                            } else {
                                if (i3 > 0) {
                                    part(regionCallback2, charSequence2.subSequence(i, length), i, length);
                                }
                                if (i4 > 0) {
                                    part(regionCallback3, charSequence.subSequence(i2, length2), i2, length2);
                                }
                            }
                        }
                        i = length;
                        i2 = length2;
                        z = z2;
                    }
                    if (z2) {
                        length2++;
                    }
                    length++;
                }
                return;
            }
            int iMin2 = Math.min(charSequence2.length(), charSequence.length());
            if (!this.startFromEnd) {
                int i5 = 0;
                boolean z3 = true;
                int i6 = 0;
                while (i5 <= iMin2) {
                    boolean z4 = i5 < iMin2 && partEquals(charSequence2, charSequence, i5, i5);
                    if (z3 != z4 || i5 == iMin2) {
                        if (i5 - i6 > 0) {
                            if (z3) {
                                part(regionCallback, charSequence2.subSequence(i6, i5), i6, i5);
                            } else {
                                part(regionCallback2, charSequence2.subSequence(i6, i5), i6, i5);
                                part(regionCallback3, charSequence.subSequence(i6, i5), i6, i5);
                            }
                        }
                        i6 = i5;
                        z3 = z4;
                    }
                    i5++;
                }
                if (charSequence2.length() - iMin2 > 0) {
                    part(regionCallback2, charSequence2.subSequence(iMin2, charSequence2.length()), iMin2, charSequence2.length());
                }
                if (charSequence.length() - iMin2 > 0) {
                    part(regionCallback3, charSequence.subSequence(iMin2, charSequence.length()), iMin2, charSequence.length());
                    return;
                }
                return;
            }
            ArrayList arrayList = new ArrayList();
            boolean z5 = true;
            int i7 = 0;
            boolean z6 = true;
            for (int i8 = 0; i8 <= iMin2; i8++) {
                int length3 = (charSequence2.length() - i8) - 1;
                int length4 = (charSequence.length() - i8) - 1;
                boolean z7 = length3 >= 0 && length4 >= 0 && partEquals(charSequence2, charSequence, length3, length4);
                if (z5 != z7 || i8 == iMin2) {
                    int i9 = i8 - i7;
                    if (i9 > 0) {
                        if (arrayList.size() != 0) {
                            z5 = z6;
                        }
                        arrayList.add(Integer.valueOf(i9));
                        z6 = z5;
                    }
                    i7 = i8;
                    z5 = z7;
                }
            }
            int length5 = charSequence2.length() - iMin2;
            int length6 = charSequence.length() - iMin2;
            if (length5 > 0) {
                part(regionCallback2, charSequence2.subSequence(0, length5), 0, length5);
            }
            if (length6 > 0) {
                part(regionCallback3, charSequence.subSequence(0, length6), 0, length6);
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                int iIntValue = ((Integer) arrayList.get(size)).intValue();
                if ((size % 2 == 0) != z6) {
                    int i10 = length5 + iIntValue;
                    part(regionCallback2, charSequence2.subSequence(length5, i10), length5, i10);
                    int i11 = length6 + iIntValue;
                    part(regionCallback3, charSequence.subSequence(length6, i11), length6, i11);
                } else if (charSequence2.length() > charSequence.length()) {
                    int i12 = length5 + iIntValue;
                    regionCallback.run(charSequence2.subSequence(length5, i12), length5, i12);
                } else {
                    int i13 = length6 + iIntValue;
                    regionCallback.run(charSequence.subSequence(length6, i13), length6, i13);
                }
                length5 += iIntValue;
                length6 += iIntValue;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setText$0(int i, ArrayList arrayList, ArrayList arrayList2, CharSequence charSequence, int i2, int i3) {
            StaticLayout staticLayoutMakeLayout = makeLayout(charSequence, i - ((int) Math.ceil(Math.min(this.currentWidth, this.oldWidth))));
            Part part = new Part(staticLayoutMakeLayout, this.currentWidth, arrayList.size());
            Part part2 = new Part(staticLayoutMakeLayout, this.oldWidth, arrayList.size());
            arrayList2.add(part);
            arrayList.add(part2);
            float f = part.width;
            this.currentWidth += f;
            this.oldWidth += f;
            this.currentHeight = Math.max(this.currentHeight, staticLayoutMakeLayout.getHeight());
            this.oldHeight = Math.max(this.oldHeight, staticLayoutMakeLayout.getHeight());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setText$1(int i, ArrayList arrayList, CharSequence charSequence, int i2, int i3) {
            Part part = new Part(makeLayout(charSequence, i - ((int) Math.ceil(this.currentWidth))), this.currentWidth, -1);
            arrayList.add(part);
            this.currentWidth += part.width;
            this.currentHeight = Math.max(this.currentHeight, r1.getHeight());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setText$2(int i, ArrayList arrayList, CharSequence charSequence, int i2, int i3) {
            Part part = new Part(makeLayout(charSequence, i - ((int) Math.ceil(this.oldWidth))), this.oldWidth, -1);
            arrayList.add(part);
            this.oldWidth += part.width;
            this.oldHeight = Math.max(this.oldHeight, r1.getHeight());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setText$3(ValueAnimator valueAnimator) {
            this.t = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidateSelf();
            Runnable runnable = this.widthUpdatedListener;
            if (runnable != null) {
                runnable.run();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setTextColor$9(int i, int i2, ValueAnimator valueAnimator) {
            setTextColor(ColorUtils.blendARGB(i, i2, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
            invalidateSelf();
        }

        private StaticLayout makeLayout(CharSequence charSequence, int i) {
            if (i <= 0) {
                android.graphics.Point point = AndroidUtilities.displaySize;
                i = Math.min(point.x, point.y);
            }
            int i2 = i;
            return Build.VERSION.SDK_INT >= 23 ? StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.textPaint, i2).setMaxLines(1).setLineSpacing(BitmapDescriptorFactory.HUE_RED, 1.0f).setAlignment(Layout.Alignment.ALIGN_NORMAL).setEllipsize(TextUtils.TruncateAt.END).setEllipsizedWidth(i2).setIncludePad(this.includeFontPadding).build() : new StaticLayout(charSequence, 0, charSequence.length(), this.textPaint, i2, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, this.includeFontPadding, TextUtils.TruncateAt.END, i2);
        }

        private void part(RegionCallback regionCallback, CharSequence charSequence, int i, int i2) {
            if (!this.enforceByLetter || charSequence.length() <= 1) {
                regionCallback.run(charSequence, i, i2);
                return;
            }
            int i3 = 0;
            while (i3 < charSequence.length()) {
                int i4 = i3 + 1;
                CharSequence charSequenceSubSequence = charSequence.subSequence(i3, i4);
                int i5 = i3 + i;
                regionCallback.run(charSequenceSubSequence, i5, i5 + 1);
                i3 = i4;
            }
        }

        public static boolean partEquals(CharSequence charSequence, CharSequence charSequence2, int i, int i2) {
            if (!(charSequence instanceof WordSequence) || !(charSequence2 instanceof WordSequence)) {
                return (charSequence == null && charSequence2 == null) || !(charSequence == null || charSequence2 == null || charSequence.charAt(i) != charSequence2.charAt(i2));
            }
            CharSequence charSequenceWordAt = ((WordSequence) charSequence).wordAt(i);
            CharSequence charSequenceWordAt2 = ((WordSequence) charSequence2).wordAt(i2);
            return (charSequenceWordAt == null && charSequenceWordAt2 == null) || (charSequenceWordAt != null && charSequenceWordAt.equals(charSequenceWordAt2));
        }

        public void cancelAnimation() {
            ValueAnimator valueAnimator = this.animator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:53:0x00fd, code lost:
        
            if (r25.ignoreRTL == false) goto L54;
         */
        /* JADX WARN: Code restructure failed: missing block: B:93:0x019f, code lost:
        
            if (r25.ignoreRTL == false) goto L94;
         */
        /* JADX WARN: Removed duplicated region for block: B:100:0x01d0  */
        @Override // android.graphics.drawable.Drawable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void draw(Canvas canvas) {
            float f;
            float f2;
            float fLerp;
            float f3;
            float f4;
            if (this.ellipsizeByGradient) {
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(this.bounds);
                rectF.right -= this.rightPadding;
                canvas.saveLayerAlpha(rectF, 255, 31);
            }
            canvas.save();
            android.graphics.Rect rect = this.bounds;
            canvas.translate(rect.left, rect.top);
            int iWidth = this.bounds.width();
            int iHeight = this.bounds.height();
            if (this.currentParts == null || this.oldParts == null) {
                if (this.centerY) {
                    canvas.translate(BitmapDescriptorFactory.HUE_RED, (iHeight - this.currentHeight) / 2.0f);
                }
                if (this.currentParts != null) {
                    applyAlphaInternal(1.0f);
                    for (int i = 0; i < this.currentParts.length; i++) {
                        canvas.save();
                        Part part = this.currentParts[i];
                        float f5 = part.offset;
                        boolean z = this.isRTL;
                        if (z && !this.ignoreRTL) {
                            f5 = this.currentWidth - (f5 + part.width);
                        }
                        float f6 = f5 - part.left;
                        int i2 = this.gravity;
                        if ((i2 | (-4)) != -1) {
                            if ((i2 | (-6)) == -1) {
                                f = iWidth - this.currentWidth;
                                f6 += f;
                            } else if ((i2 | (-2)) == -1) {
                                f = (iWidth - this.currentWidth) / 2.0f;
                                f6 += f;
                            } else {
                                if (!z || this.ignoreRTL) {
                                }
                                f = iWidth - this.currentWidth;
                                f6 += f;
                            }
                        }
                        canvas.translate(f6, BitmapDescriptorFactory.HUE_RED);
                        part.draw(canvas, 1.0f);
                        canvas.restore();
                    }
                }
            } else {
                float f7 = this.t;
                if (f7 != 1.0f) {
                    float fLerp2 = AndroidUtilities.lerp(this.oldWidth, this.currentWidth, f7);
                    float fLerp3 = AndroidUtilities.lerp(this.oldHeight, this.currentHeight, this.t);
                    if (this.centerY) {
                        canvas.translate(BitmapDescriptorFactory.HUE_RED, (iHeight - fLerp3) / 2.0f);
                    }
                    int i3 = 0;
                    while (true) {
                        Part[] partArr = this.currentParts;
                        if (i3 >= partArr.length) {
                            break;
                        }
                        Part part2 = partArr[i3];
                        int i4 = part2.toOppositeIndex;
                        float f8 = part2.offset;
                        if (this.isRTL && !this.ignoreRTL) {
                            f8 = this.currentWidth - (f8 + part2.width);
                        }
                        float fCascade = this.t;
                        float f9 = this.animateWave;
                        if (f9 > BitmapDescriptorFactory.HUE_RED) {
                            fCascade = AndroidUtilities.cascade(fCascade, i3, partArr.length, f9);
                        }
                        if (i4 >= 0) {
                            Part part3 = this.oldParts[i4];
                            float f10 = part3.offset;
                            if (this.isRTL && !this.ignoreRTL) {
                                f10 = this.oldWidth - (f10 + part3.width);
                            }
                            fLerp = AndroidUtilities.lerp(f10 - part3.left, f8 - part2.left, this.t);
                            applyAlphaInternal(1.0f);
                            f3 = BitmapDescriptorFactory.HUE_RED;
                        } else {
                            fLerp = f8 - part2.left;
                            f3 = (-this.textPaint.getTextSize()) * this.moveAmplitude * (1.0f - fCascade) * (this.moveDown ? 1.0f : -1.0f);
                            applyAlphaInternal(fCascade);
                        }
                        canvas.save();
                        float f11 = i4 >= 0 ? fLerp2 : this.currentWidth;
                        int i5 = this.gravity;
                        if ((i5 | (-4)) != -1) {
                            if ((i5 | (-6)) == -1) {
                                f4 = iWidth - f11;
                                fLerp += f4;
                            } else if ((i5 | (-2)) == -1) {
                                f4 = (iWidth - f11) / 2.0f;
                                fLerp += f4;
                            } else if (this.isRTL) {
                            }
                        }
                        canvas.translate(fLerp, f3);
                        if (i4 < 0) {
                            float f12 = this.scaleAmplitude;
                            if (f12 > BitmapDescriptorFactory.HUE_RED) {
                                float fLerp4 = AndroidUtilities.lerp(1.0f - f12, 1.0f, this.t);
                                canvas.scale(fLerp4, fLerp4, part2.width / 2.0f, part2.layout.getHeight() / 2.0f);
                            }
                        }
                        part2.draw(canvas, i4 >= 0 ? 1.0f : this.t);
                        canvas.restore();
                        i3++;
                    }
                    int i6 = 0;
                    while (true) {
                        Part[] partArr2 = this.oldParts;
                        if (i6 >= partArr2.length) {
                            break;
                        }
                        Part part4 = partArr2[i6];
                        if (part4.toOppositeIndex < 0) {
                            float fCascade2 = this.t;
                            float f13 = this.animateWave;
                            if (f13 > BitmapDescriptorFactory.HUE_RED) {
                                fCascade2 = AndroidUtilities.cascade(fCascade2, i6, partArr2.length, f13);
                            }
                            float f14 = part4.offset;
                            float textSize = this.textPaint.getTextSize() * this.moveAmplitude * fCascade2 * (this.moveDown ? 1.0f : -1.0f);
                            float f15 = 1.0f - fCascade2;
                            applyAlphaInternal(f15);
                            canvas.save();
                            boolean z2 = this.isRTL;
                            if (z2 && !this.ignoreRTL) {
                                f14 = this.oldWidth - (f14 + part4.width);
                            }
                            float f16 = f14 - part4.left;
                            int i7 = this.gravity;
                            if ((i7 | (-4)) != -1) {
                                if ((i7 | (-6)) == -1) {
                                    f2 = iWidth - this.oldWidth;
                                    f16 += f2;
                                } else if ((i7 | (-2)) == -1) {
                                    f2 = (iWidth - this.oldWidth) / 2.0f;
                                    f16 += f2;
                                } else if (z2) {
                                }
                            }
                            canvas.translate(f16, textSize);
                            float f17 = this.scaleAmplitude;
                            if (f17 > BitmapDescriptorFactory.HUE_RED) {
                                float fLerp5 = AndroidUtilities.lerp(1.0f, 1.0f - f17, this.t);
                                canvas.scale(fLerp5, fLerp5, part4.width / 2.0f, part4.layout.getHeight() / 2.0f);
                            }
                            part4.draw(canvas, f15);
                            canvas.restore();
                        }
                        i6++;
                    }
                }
            }
            canvas.restore();
            if (this.ellipsizeByGradient) {
                float fDp = AndroidUtilities.dp(16.0f);
                if (this.ellipsizeGradient == null) {
                    this.ellipsizeGradient = new LinearGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, fDp, BitmapDescriptorFactory.HUE_RED, new int[]{16711680, -65536}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
                    this.ellipsizeGradientMatrix = new Matrix();
                    Paint paint = new Paint(1);
                    this.ellipsizePaint = paint;
                    paint.setShader(this.ellipsizeGradient);
                    this.ellipsizePaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
                }
                this.ellipsizeGradientMatrix.reset();
                this.ellipsizeGradientMatrix.postTranslate((this.bounds.right - this.rightPadding) - fDp, BitmapDescriptorFactory.HUE_RED);
                this.ellipsizeGradient.setLocalMatrix(this.ellipsizeGradientMatrix);
                canvas.save();
                android.graphics.Rect rect2 = this.bounds;
                float f18 = rect2.right - this.rightPadding;
                canvas.drawRect(f18 - fDp, rect2.top, f18 + AndroidUtilities.dp(1.0f), this.bounds.bottom, this.ellipsizePaint);
                canvas.restore();
                canvas.restore();
            }
        }

        public float getAnimateToWidth() {
            return this.currentWidth;
        }

        public float getCurrentWidth() {
            return (this.currentParts == null || this.oldParts == null) ? this.currentWidth : AndroidUtilities.lerp(this.oldWidth, this.currentWidth, this.t);
        }

        @Override // android.graphics.drawable.Drawable
        public android.graphics.Rect getDirtyBounds() {
            return this.bounds;
        }

        public int getGravity() {
            return this.gravity;
        }

        public float getHeight() {
            return this.currentHeight;
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        public TextPaint getPaint() {
            return this.textPaint;
        }

        public float getRightPadding() {
            return this.rightPadding;
        }

        public CharSequence getText() {
            return this.currentText;
        }

        public int getTextColor() {
            return this.textPaint.getColor();
        }

        public float getTextSize() {
            return this.textPaint.getTextSize();
        }

        public float getWidth() {
            return Math.max(this.currentWidth, this.oldWidth);
        }

        public boolean isAnimating() {
            ValueAnimator valueAnimator = this.animator;
            return valueAnimator != null && valueAnimator.isRunning();
        }

        public float isNotEmpty() {
            CharSequence charSequence = this.oldText;
            float f = BitmapDescriptorFactory.HUE_RED;
            float f2 = (charSequence == null || charSequence.length() <= 0) ? BitmapDescriptorFactory.HUE_RED : 1.0f;
            CharSequence charSequence2 = this.currentText;
            if (charSequence2 != null && charSequence2.length() > 0) {
                f = 1.0f;
            }
            return AndroidUtilities.lerp(f2, f, this.oldText != null ? this.t : 1.0f);
        }

        public void setAllowCancel(boolean z) {
            this.allowCancel = z;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.alpha = i;
        }

        public void setAnimationProperties(float f, long j, long j2, float f2, TimeInterpolator timeInterpolator) {
            this.moveAmplitude = f;
            this.animateDelay = j;
            this.animateDuration = j2;
            this.animateWave = f2;
            this.animateInterpolator = timeInterpolator;
        }

        public void setAnimationProperties(float f, long j, long j2, TimeInterpolator timeInterpolator) {
            setAnimationProperties(f, j, j2, 1.0f, timeInterpolator);
        }

        public void setBounds(float f, float f2, float f3, float f4) {
            int i = (int) f;
            int i2 = (int) f2;
            int i3 = (int) f3;
            int i4 = (int) f4;
            super.setBounds(i, i2, i3, i4);
            this.bounds.set(i, i2, i3, i4);
        }

        @Override // android.graphics.drawable.Drawable
        public void setBounds(int i, int i2, int i3, int i4) {
            super.setBounds(i, i2, i3, i4);
            this.bounds.set(i, i2, i3, i4);
        }

        @Override // android.graphics.drawable.Drawable
        public void setBounds(android.graphics.Rect rect) {
            super.setBounds(rect);
            this.bounds.set(rect);
        }

        public void setBounds(RectF rectF) {
            setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            this.textPaint.setColorFilter(colorFilter);
        }

        public void setEllipsizeByGradient(boolean z) {
            this.ellipsizeByGradient = z;
            invalidateSelf();
        }

        public void setEmojiCacheType(int i) {
            this.emojiCacheType = i;
        }

        public void setEmojiColor(int i) {
            if (this.emojiColor != i) {
                this.emojiColor = i;
                this.emojiColorFilter = new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN);
            }
        }

        public void setEmojiColorFilter(ColorFilter colorFilter) {
            this.emojiColorFilter = colorFilter;
        }

        public void setGravity(int i) {
            this.gravity = i;
        }

        public void setHacks(boolean z, boolean z2, boolean z3) {
            setHacks(z, z2, z3, false);
        }

        public void setHacks(boolean z, boolean z2, boolean z3, boolean z4) {
            this.splitByWords = z;
            this.preserveIndex = z2;
            this.startFromEnd = z3;
            this.enforceByLetter = z4;
        }

        public void setIncludeFontPadding(boolean z) {
            this.includeFontPadding = z;
        }

        public void setOnAnimationFinishListener(Runnable runnable) {
            this.onAnimationFinishListener = runnable;
        }

        public void setOnWidthUpdatedListener(Runnable runnable) {
            this.widthUpdatedListener = runnable;
        }

        public void setOverrideFullWidth(int i) {
            this.overrideFullWidth = i;
        }

        public void setRightPadding(float f) {
            this.rightPadding = f;
            invalidateSelf();
        }

        public void setScaleProperty(float f) {
            this.scaleAmplitude = f;
        }

        public void setShadowLayer(float f, float f2, float f3, int i) {
            this.shadowed = true;
            TextPaint textPaint = this.textPaint;
            this.shadowRadius = f;
            this.shadowDx = f2;
            this.shadowDy = f3;
            this.shadowColor = i;
            textPaint.setShadowLayer(f, f2, f3, i);
        }

        public void setSplitByWords(boolean z) {
            this.splitByWords = z;
        }

        public void setText(CharSequence charSequence) {
            setText(charSequence, true);
        }

        public void setText(CharSequence charSequence, boolean z) {
            setText(charSequence, z, true);
        }

        public void setText(CharSequence charSequence, boolean z, boolean z2) {
            if (this.currentText == null || charSequence == null) {
                z = false;
            }
            if (charSequence == null) {
                charSequence = "";
            }
            final int iWidth = this.overrideFullWidth;
            if (iWidth <= 0) {
                iWidth = this.bounds.width();
            }
            if (!z) {
                ValueAnimator valueAnimator = this.animator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                }
                this.animator = null;
                this.toSetText = null;
                this.toSetTextMoveDown = false;
                this.t = BitmapDescriptorFactory.HUE_RED;
                if (!charSequence.equals(this.currentText)) {
                    clearCurrentParts();
                    this.currentParts = new Part[]{new Part(makeLayout(charSequence, iWidth), BitmapDescriptorFactory.HUE_RED, -1)};
                    this.currentText = charSequence;
                    this.currentWidth = this.currentParts[0].width;
                    this.currentHeight = r11.layout.getHeight();
                    this.isRTL = AndroidUtilities.isRTL(this.currentText);
                }
                clearOldParts();
                this.oldText = null;
                this.oldWidth = BitmapDescriptorFactory.HUE_RED;
                this.oldHeight = BitmapDescriptorFactory.HUE_RED;
                invalidateSelf();
                Runnable runnable = this.widthUpdatedListener;
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            }
            if (this.allowCancel) {
                ValueAnimator valueAnimator2 = this.animator;
                if (valueAnimator2 != null) {
                    valueAnimator2.cancel();
                    this.animator = null;
                }
            } else if (isAnimating()) {
                this.toSetText = charSequence;
                this.toSetTextMoveDown = z2;
                return;
            }
            if (charSequence.equals(this.currentText)) {
                return;
            }
            this.oldText = this.currentText;
            this.currentText = charSequence;
            final ArrayList arrayList = new ArrayList();
            final ArrayList arrayList2 = new ArrayList();
            this.currentHeight = BitmapDescriptorFactory.HUE_RED;
            this.currentWidth = BitmapDescriptorFactory.HUE_RED;
            this.oldHeight = BitmapDescriptorFactory.HUE_RED;
            this.oldWidth = BitmapDescriptorFactory.HUE_RED;
            this.isRTL = AndroidUtilities.isRTL(this.currentText);
            diff(this.splitByWords ? new WordSequence(this.oldText) : this.oldText, this.splitByWords ? new WordSequence(this.currentText) : this.currentText, new RegionCallback() { // from class: org.telegram.ui.Components.AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda1
                @Override // org.telegram.ui.Components.AnimatedTextView.AnimatedTextDrawable.RegionCallback
                public final void run(CharSequence charSequence2, int i, int i2) {
                    this.f$0.lambda$setText$0(iWidth, arrayList2, arrayList, charSequence2, i, i2);
                }
            }, new RegionCallback() { // from class: org.telegram.ui.Components.AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda2
                @Override // org.telegram.ui.Components.AnimatedTextView.AnimatedTextDrawable.RegionCallback
                public final void run(CharSequence charSequence2, int i, int i2) {
                    this.f$0.lambda$setText$1(iWidth, arrayList, charSequence2, i, i2);
                }
            }, new RegionCallback() { // from class: org.telegram.ui.Components.AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda3
                @Override // org.telegram.ui.Components.AnimatedTextView.AnimatedTextDrawable.RegionCallback
                public final void run(CharSequence charSequence2, int i, int i2) {
                    this.f$0.lambda$setText$2(iWidth, arrayList2, charSequence2, i, i2);
                }
            });
            clearCurrentParts();
            Part[] partArr = this.currentParts;
            if (partArr == null || partArr.length != arrayList.size()) {
                this.currentParts = new Part[arrayList.size()];
            }
            arrayList.toArray(this.currentParts);
            clearOldParts();
            Part[] partArr2 = this.oldParts;
            if (partArr2 == null || partArr2.length != arrayList2.size()) {
                this.oldParts = new Part[arrayList2.size()];
            }
            arrayList2.toArray(this.oldParts);
            ValueAnimator valueAnimator3 = this.animator;
            if (valueAnimator3 != null) {
                valueAnimator3.cancel();
            }
            this.moveDown = z2;
            this.t = BitmapDescriptorFactory.HUE_RED;
            this.animator = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            Runnable runnable2 = this.widthUpdatedListener;
            if (runnable2 != null) {
                runnable2.run();
            }
            this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator4) {
                    this.f$0.lambda$setText$3(valueAnimator4);
                }
            });
            this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.AnimatedTextView.AnimatedTextDrawable.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    AnimatedTextDrawable.this.clearOldParts();
                    AnimatedTextDrawable.this.oldText = null;
                    AnimatedTextDrawable.this.oldWidth = BitmapDescriptorFactory.HUE_RED;
                    AnimatedTextDrawable.this.t = BitmapDescriptorFactory.HUE_RED;
                    AnimatedTextDrawable.this.invalidateSelf();
                    if (AnimatedTextDrawable.this.widthUpdatedListener != null) {
                        AnimatedTextDrawable.this.widthUpdatedListener.run();
                    }
                    AnimatedTextDrawable.this.animator = null;
                    if (AnimatedTextDrawable.this.toSetText == null) {
                        if (AnimatedTextDrawable.this.onAnimationFinishListener != null) {
                            AnimatedTextDrawable.this.onAnimationFinishListener.run();
                        }
                    } else {
                        AnimatedTextDrawable animatedTextDrawable = AnimatedTextDrawable.this;
                        animatedTextDrawable.setText(animatedTextDrawable.toSetText, true, AnimatedTextDrawable.this.toSetTextMoveDown);
                        AnimatedTextDrawable.this.toSetText = null;
                        AnimatedTextDrawable.this.toSetTextMoveDown = false;
                    }
                }
            });
            this.animator.setStartDelay(this.animateDelay);
            this.animator.setDuration(this.animateDuration);
            this.animator.setInterpolator(this.animateInterpolator);
            this.animator.start();
        }

        public void setTextColor(int i) {
            this.textPaint.setColor(i);
            this.alpha = Color.alpha(i);
        }

        public void setTextColor(final int i, boolean z) {
            ValueAnimator valueAnimator = this.colorAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.colorAnimator = null;
            }
            if (!z) {
                setTextColor(i);
                return;
            }
            final int textColor = getTextColor();
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.colorAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$setTextColor$9(textColor, i, valueAnimator2);
                }
            });
            this.colorAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.AnimatedTextView.AnimatedTextDrawable.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    AnimatedTextDrawable.this.setTextColor(i);
                }
            });
            this.colorAnimator.setDuration(240L);
            this.colorAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.colorAnimator.start();
        }

        public void setTextSize(float f) {
            float textSize = this.textPaint.getTextSize();
            this.textPaint.setTextSize(f);
            if (Math.abs(textSize - f) > 0.5f) {
                int iWidth = this.overrideFullWidth;
                if (iWidth <= 0) {
                    iWidth = this.bounds.width();
                }
                int i = 0;
                if (this.currentParts != null) {
                    this.currentWidth = BitmapDescriptorFactory.HUE_RED;
                    this.currentHeight = BitmapDescriptorFactory.HUE_RED;
                    int i2 = 0;
                    while (true) {
                        Part[] partArr = this.currentParts;
                        if (i2 >= partArr.length) {
                            break;
                        }
                        StaticLayout staticLayoutMakeLayout = makeLayout(partArr[i2].layout.getText(), iWidth - ((int) Math.ceil(Math.min(this.currentWidth, this.oldWidth))));
                        Part[] partArr2 = this.currentParts;
                        Part part = partArr2[i2];
                        partArr2[i2] = new Part(staticLayoutMakeLayout, part.offset, part.toOppositeIndex);
                        this.currentWidth = this.currentWidth + this.currentParts[i2].width;
                        this.currentHeight = Math.max(this.currentHeight, r4.layout.getHeight());
                        i2++;
                    }
                }
                if (this.oldParts != null) {
                    this.oldWidth = BitmapDescriptorFactory.HUE_RED;
                    this.oldHeight = BitmapDescriptorFactory.HUE_RED;
                    while (true) {
                        Part[] partArr3 = this.oldParts;
                        if (i >= partArr3.length) {
                            break;
                        }
                        StaticLayout staticLayoutMakeLayout2 = makeLayout(partArr3[i].layout.getText(), iWidth - ((int) Math.ceil(Math.min(this.currentWidth, this.oldWidth))));
                        Part[] partArr4 = this.oldParts;
                        Part part2 = partArr4[i];
                        partArr4[i] = new Part(staticLayoutMakeLayout2, part2.offset, part2.toOppositeIndex);
                        this.oldWidth = this.oldWidth + this.oldParts[i].width;
                        this.oldHeight = Math.max(this.oldHeight, r2.layout.getHeight());
                        i++;
                    }
                }
                invalidateSelf();
            }
        }

        public void setTypeface(Typeface typeface) {
            this.textPaint.setTypeface(typeface);
        }
    }

    public AnimatedTextView(Context context) {
        this(context, false, false, false);
    }

    public AnimatedTextView(Context context, boolean z, boolean z2, boolean z3) {
        super(context);
        this.adaptWidth = true;
        this.first = true;
        AnimatedTextDrawable animatedTextDrawable = new AnimatedTextDrawable(z, z2, z3);
        this.drawable = animatedTextDrawable;
        animatedTextDrawable.setCallback(this);
        animatedTextDrawable.setOnAnimationFinishListener(new Runnable() { // from class: org.telegram.ui.Components.AnimatedTextView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        CharSequence charSequence = this.toSetText;
        if (charSequence != null) {
            setText(charSequence, this.toSetMoveDown, true);
            this.toSetText = null;
            this.toSetMoveDown = false;
        }
    }

    public void cancelAnimation() {
        this.drawable.cancelAnimation();
    }

    public AnimatedTextDrawable getDrawable() {
        return this.drawable;
    }

    public TextPaint getPaint() {
        return this.drawable.getPaint();
    }

    public float getRightPadding() {
        return this.drawable.getRightPadding();
    }

    public CharSequence getText() {
        return this.drawable.getText();
    }

    public int getTextColor() {
        return this.drawable.getTextColor();
    }

    public int getTextHeight() {
        return getPaint().getFontMetricsInt().descent - getPaint().getFontMetricsInt().ascent;
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        super.invalidateDrawable(drawable);
        invalidate();
    }

    public boolean isAnimating() {
        return this.drawable.isAnimating();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Drawable drawable = this.backgroundDrawable;
        if (drawable != null) {
            drawable.setBounds(0, 0, (int) (getPaddingLeft() + this.drawable.getCurrentWidth() + getPaddingRight()), getHeight());
            this.backgroundDrawable.draw(canvas);
        }
        this.drawable.setBounds(getPaddingLeft(), getPaddingTop(), getMeasuredWidth() - getPaddingRight(), getMeasuredHeight() - getPaddingBottom());
        this.drawable.draw(canvas);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.TextView");
        accessibilityNodeInfo.setText(getText());
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int i3 = this.maxWidth;
        if (i3 > 0) {
            size = Math.min(size, i3);
        }
        if (this.lastMaxWidth != size && getLayoutParams().width != 0) {
            this.drawable.setBounds(getPaddingLeft(), getPaddingTop(), size - getPaddingRight(), size2 - getPaddingBottom());
            AnimatedTextDrawable animatedTextDrawable = this.drawable;
            animatedTextDrawable.setText(animatedTextDrawable.getText(), false, true);
        }
        this.lastMaxWidth = size;
        if (this.adaptWidth && View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            size = getPaddingRight() + getPaddingLeft() + ((int) Math.ceil(this.drawable.getWidth()));
        }
        setMeasuredDimension(size, size2);
    }

    public void setAnimationProperties(float f, long j, long j2, TimeInterpolator timeInterpolator) {
        this.drawable.setAnimationProperties(f, j, j2, timeInterpolator);
    }

    public void setEllipsizeByGradient(boolean z) {
        this.drawable.setEllipsizeByGradient(z);
    }

    public void setEmojiCacheType(int i) {
        this.drawable.setEmojiCacheType(i);
    }

    public void setEmojiColor(int i) {
        this.drawable.setEmojiColor(i);
        invalidate();
    }

    public void setEmojiColorFilter(ColorFilter colorFilter) {
        this.drawable.setEmojiColorFilter(colorFilter);
        invalidate();
    }

    public void setGravity(int i) {
        this.drawable.setGravity(i);
    }

    public void setIgnoreRTL(boolean z) {
        this.drawable.ignoreRTL = z;
    }

    public void setIncludeFontPadding(boolean z) {
        this.drawable.setIncludeFontPadding(z);
    }

    public void setMaxWidth(int i) {
        this.maxWidth = i;
    }

    public void setOnWidthUpdatedListener(Runnable runnable) {
        this.drawable.setOnWidthUpdatedListener(runnable);
    }

    public void setRightPadding(float f) {
        this.drawable.setRightPadding(f);
    }

    public void setScaleProperty(float f) {
        this.drawable.setScaleProperty(f);
    }

    public void setSizeableBackground(Drawable drawable) {
        this.backgroundDrawable = drawable;
        invalidate();
    }

    public void setText(CharSequence charSequence) {
        setText(charSequence, true, true);
    }

    public void setText(CharSequence charSequence, boolean z) {
        setText(charSequence, z, true);
    }

    public void setText(CharSequence charSequence, boolean z, boolean z2) {
        boolean z3 = !this.first && z;
        this.first = false;
        if (z3) {
            if (this.drawable.allowCancel) {
                if (this.drawable.animator != null) {
                    this.drawable.animator.cancel();
                    this.drawable.animator = null;
                }
            } else if (this.drawable.isAnimating()) {
                this.toSetText = charSequence;
                this.toSetMoveDown = z2;
                return;
            }
        }
        int width = (int) this.drawable.getWidth();
        this.drawable.setBounds(getPaddingLeft(), getPaddingTop(), this.lastMaxWidth - getPaddingRight(), getMeasuredHeight() - getPaddingBottom());
        this.drawable.setText(charSequence, z3, z2);
        float f = width;
        if (f < this.drawable.getWidth() || !(z3 || f == this.drawable.getWidth())) {
            requestLayout();
        }
    }

    public void setTextColor(int i) {
        this.drawable.setTextColor(i);
        invalidate();
    }

    public void setTextColor(int i, boolean z) {
        this.drawable.setTextColor(i, z);
        invalidate();
    }

    public void setTextSize(float f) {
        this.drawable.setTextSize(f);
    }

    public void setTypeface(Typeface typeface) {
        this.drawable.setTypeface(typeface);
    }

    public int width() {
        return getPaddingLeft() + ((int) Math.ceil(this.drawable.getCurrentWidth())) + getPaddingRight();
    }
}
