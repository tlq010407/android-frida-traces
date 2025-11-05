package org.telegram.ui.Components.Reactions;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.R;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.EmojiAnimationsOverlay;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class AnimatedEmojiEffect {
    private static int currentIndex;
    public AnimatedEmojiDrawable animatedEmojiDrawable;
    int currentAccount;
    ImageReceiver effectImageReceiver;
    long lastGenerateTime;
    boolean longAnimation;
    View parentView;
    boolean showGeneric;
    Rect bounds = new Rect();
    ArrayList particles = new ArrayList();
    boolean firsDraw = true;
    int animationIndex = -1;
    long startTime = System.currentTimeMillis();

    private class Particle {
        long duration;
        float fromSize;
        float fromX;
        float fromY;
        boolean mirror;
        float progress;
        float randomRotation;
        float toSize;
        float toX;
        float toY1;
        float toY2;

        private Particle() {
        }

        private float randX() {
            AnimatedEmojiEffect animatedEmojiEffect = AnimatedEmojiEffect.this;
            boolean z = animatedEmojiEffect.longAnimation;
            float fWidth = animatedEmojiEffect.bounds.width();
            return z ? (fWidth * (-0.25f)) + (AnimatedEmojiEffect.this.bounds.width() * 1.5f * (Math.abs(Utilities.fastRandom.nextInt() % 100) / 100.0f)) : fWidth * (Math.abs(Utilities.fastRandom.nextInt() % 100) / 100.0f);
        }

        private float randY() {
            return AnimatedEmojiEffect.this.bounds.height() * 0.5f * (Math.abs(Utilities.fastRandom.nextInt() % 100) / 100.0f);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0088  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void draw(Canvas canvas) {
            float fClamp;
            float fMin = this.progress + (Math.min(40.0f, 1000.0f / AndroidUtilities.screenRefreshRate) / this.duration);
            this.progress = fMin;
            float fClamp2 = Utilities.clamp(fMin, 1.0f, BitmapDescriptorFactory.HUE_RED);
            this.progress = fClamp2;
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT;
            float interpolation = cubicBezierInterpolator.getInterpolation(fClamp2);
            float fLerp = AndroidUtilities.lerp(this.fromX, this.toX, interpolation);
            boolean z = AnimatedEmojiEffect.this.longAnimation;
            float f = this.progress;
            float fLerp2 = f < 0.3f ? AndroidUtilities.lerp(this.fromY, this.toY1, cubicBezierInterpolator.getInterpolation(f / 0.3f)) : AndroidUtilities.lerp(this.toY1, this.toY2, CubicBezierInterpolator.EASE_IN.getInterpolation((f - 0.3f) / 0.7f));
            float fLerp3 = AndroidUtilities.lerp(this.fromSize, this.toSize, interpolation);
            if (!AnimatedEmojiEffect.this.longAnimation) {
                float fHeight = r5.bounds.height() * 0.8f;
                fClamp = fLerp2 > fHeight ? 1.0f - Utilities.clamp((fLerp2 - fHeight) / AndroidUtilities.dp(16.0f), 1.0f, BitmapDescriptorFactory.HUE_RED) : 1.0f;
            }
            float f2 = (fLerp3 / 2.0f) * fClamp;
            canvas.save();
            if (this.mirror) {
                canvas.scale(-1.0f, 1.0f, fLerp, fLerp2);
            }
            canvas.rotate(this.randomRotation, fLerp, fLerp2);
            AnimatedEmojiEffect.this.animatedEmojiDrawable.setAlpha((int) (fClamp * 255.0f * Utilities.clamp(this.progress / 0.2f, 1.0f, BitmapDescriptorFactory.HUE_RED)));
            AnimatedEmojiEffect.this.animatedEmojiDrawable.setBounds((int) (fLerp - f2), (int) (fLerp2 - f2), (int) (fLerp + f2), (int) (fLerp2 + f2));
            AnimatedEmojiEffect.this.animatedEmojiDrawable.draw(canvas);
            AnimatedEmojiEffect.this.animatedEmojiDrawable.setAlpha(255);
            canvas.restore();
        }

        public void generate() {
            long jAbs;
            float f = BitmapDescriptorFactory.HUE_RED;
            this.progress = BitmapDescriptorFactory.HUE_RED;
            float fRandX = randX();
            float fRandY = randY();
            for (int i = 0; i < 20; i++) {
                float fRandX2 = randX();
                float fRandY2 = randY();
                float f2 = 2.14748365E9f;
                for (int i2 = 0; i2 < AnimatedEmojiEffect.this.particles.size(); i2++) {
                    float f3 = ((Particle) AnimatedEmojiEffect.this.particles.get(i2)).toX - fRandX2;
                    float f4 = ((Particle) AnimatedEmojiEffect.this.particles.get(i2)).toY1 - fRandY2;
                    float f5 = (f3 * f3) + (f4 * f4);
                    if (f5 < f2) {
                        f2 = f5;
                    }
                }
                if (f2 > f) {
                    fRandX = fRandX2;
                    fRandY = fRandY2;
                    f = f2;
                }
            }
            float f6 = AnimatedEmojiEffect.this.longAnimation ? 0.8f : 0.5f;
            this.toX = fRandX;
            if (fRandX > r0.bounds.width() * f6) {
                this.fromX = AnimatedEmojiEffect.this.bounds.width() * f6;
            } else {
                float fWidth = AnimatedEmojiEffect.this.bounds.width() * f6;
                this.fromX = fWidth;
                if (this.toX > fWidth) {
                    this.toX = fWidth - 0.1f;
                }
            }
            this.fromY = (AnimatedEmojiEffect.this.bounds.height() * 0.45f) + (AnimatedEmojiEffect.this.bounds.height() * 0.1f * (Math.abs(Utilities.fastRandom.nextInt() % 100) / 100.0f));
            float fWidth2 = r0.bounds.width() * 0.05f;
            if (AnimatedEmojiEffect.this.longAnimation) {
                float fWidth3 = fWidth2 + (AnimatedEmojiEffect.this.bounds.width() * 0.1f * (Math.abs(Utilities.fastRandom.nextInt() % 100) / 100.0f));
                this.fromSize = fWidth3;
                this.toSize = fWidth3 * (((Math.abs(Utilities.fastRandom.nextInt() % 100) / 100.0f) * 1.5f) + 1.5f);
                this.toY1 = (this.fromSize / 2.0f) + (AnimatedEmojiEffect.this.bounds.height() * 0.1f * (Math.abs(Utilities.fastRandom.nextInt() % 100) / 100.0f));
                this.toY2 = AnimatedEmojiEffect.this.bounds.height() + this.fromSize;
                jAbs = Math.abs(Utilities.fastRandom.nextInt() % 600) + 1000;
            } else {
                float fWidth4 = fWidth2 + (AnimatedEmojiEffect.this.bounds.width() * 0.1f * (Math.abs(Utilities.fastRandom.nextInt() % 100) / 100.0f));
                this.fromSize = fWidth4;
                this.toSize = fWidth4 * (((Math.abs(Utilities.fastRandom.nextInt() % 100) / 100.0f) * 0.5f) + 1.5f);
                this.toY1 = fRandY;
                this.toY2 = fRandY + AnimatedEmojiEffect.this.bounds.height();
                jAbs = 1800;
            }
            this.duration = jAbs;
            this.duration = (long) (this.duration / 1.75f);
            this.mirror = Utilities.fastRandom.nextBoolean();
            this.randomRotation = ((Utilities.fastRandom.nextInt() % 100) / 100.0f) * 20.0f;
        }
    }

    private AnimatedEmojiEffect(AnimatedEmojiDrawable animatedEmojiDrawable, int i, boolean z, boolean z2) {
        this.animatedEmojiDrawable = animatedEmojiDrawable;
        this.longAnimation = z;
        this.currentAccount = i;
        this.showGeneric = z2;
        if (z2 && LiteMode.isEnabled(LiteMode.FLAG_ANIMATED_EMOJI_CHAT)) {
            ImageReceiver imageReceiver = new ImageReceiver();
            this.effectImageReceiver = imageReceiver;
            if (z) {
                imageReceiver.setAllowDrawWhileCacheGenerating(true);
            }
        }
    }

    public static AnimatedEmojiEffect createFrom(AnimatedEmojiDrawable animatedEmojiDrawable, boolean z, boolean z2) {
        return new AnimatedEmojiEffect(animatedEmojiDrawable, UserConfig.selectedAccount, z, z2);
    }

    public void draw(Canvas canvas) {
        if (this.longAnimation) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (this.particles.size() < 12) {
                long j = jCurrentTimeMillis - this.startTime;
                if (j < 1500 && j > 200 && jCurrentTimeMillis - this.lastGenerateTime > 50 && Utilities.fastRandom.nextInt() % 6 == 0) {
                    Particle particle = new Particle();
                    particle.generate();
                    this.particles.add(particle);
                    this.lastGenerateTime = jCurrentTimeMillis;
                }
            }
        } else if (this.firsDraw) {
            for (int i = 0; i < 7; i++) {
                Particle particle2 = new Particle();
                particle2.generate();
                this.particles.add(particle2);
            }
        }
        ImageReceiver imageReceiver = this.effectImageReceiver;
        if (imageReceiver != null && this.showGeneric && (imageReceiver.getLottieAnimation() == null || !this.effectImageReceiver.getLottieAnimation().isLastFrame())) {
            if (this.longAnimation) {
                canvas.save();
                canvas.translate(this.bounds.width() / 3.0f, BitmapDescriptorFactory.HUE_RED);
                this.effectImageReceiver.draw(canvas);
                canvas.restore();
            } else {
                this.effectImageReceiver.draw(canvas);
            }
        }
        canvas.save();
        Rect rect = this.bounds;
        canvas.translate(rect.left, rect.top);
        int i2 = 0;
        while (i2 < this.particles.size()) {
            ((Particle) this.particles.get(i2)).draw(canvas);
            if (((Particle) this.particles.get(i2)).progress >= 1.0f) {
                this.particles.remove(i2);
                i2--;
            }
            i2++;
        }
        canvas.restore();
        View view = this.parentView;
        if (view != null) {
            view.invalidate();
        }
        this.firsDraw = false;
    }

    public boolean isDone() {
        return System.currentTimeMillis() - this.startTime > 2500;
    }

    public void removeView(View view) {
        this.animatedEmojiDrawable.removeView(view);
        ImageReceiver imageReceiver = this.effectImageReceiver;
        if (imageReceiver != null) {
            imageReceiver.onDetachedFromWindow();
            this.effectImageReceiver.clearImage();
        }
    }

    public void setBounds(int i, int i2, int i3, int i4) {
        this.bounds.set(i, i2, i3, i4);
        ImageReceiver imageReceiver = this.effectImageReceiver;
        if (imageReceiver != null) {
            imageReceiver.setImageCoords(this.bounds);
        }
    }

    public void setView(View view) {
        boolean z;
        TLRPC.TL_availableReaction tL_availableReaction;
        TLRPC.Document document;
        this.animatedEmojiDrawable.addView(view);
        this.parentView = view;
        ImageReceiver imageReceiver = this.effectImageReceiver;
        if (imageReceiver == null || !this.showGeneric) {
            return;
        }
        imageReceiver.onAttachedToWindow();
        TLRPC.TL_messages_stickerSet stickerSetByName = null;
        String strFindAnimatedEmojiEmoticon = MessageObject.findAnimatedEmojiEmoticon(this.animatedEmojiDrawable.getDocument(), null);
        if (strFindAnimatedEmojiEmoticon == null || (tL_availableReaction = MediaDataController.getInstance(this.currentAccount).getReactionsMap().get(strFindAnimatedEmojiEmoticon)) == null || (document = tL_availableReaction.around_animation) == null) {
            z = false;
        } else {
            if (this.longAnimation) {
                ImageReceiver imageReceiver2 = this.effectImageReceiver;
                StringBuilder sb = new StringBuilder();
                int i = currentIndex;
                currentIndex = i + 1;
                sb.append(i);
                sb.append(" ");
                imageReceiver2.setUniqKeyPrefix(sb.toString());
                int filterWidth = EmojiAnimationsOverlay.getFilterWidth();
                this.effectImageReceiver.setImage(ImageLocation.getForDocument(tL_availableReaction.around_animation), filterWidth + "_" + filterWidth + "_pcache_compress", null, null, tL_availableReaction.around_animation, 0);
            } else {
                this.effectImageReceiver.setImage(ImageLocation.getForDocument(document), ReactionsEffectOverlay.getFilterForAroundAnimation(), null, null, tL_availableReaction.around_animation, 0);
            }
            z = true;
        }
        if (!z) {
            String str = UserConfig.getInstance(this.currentAccount).genericAnimationsStickerPack;
            if (str != null && (stickerSetByName = MediaDataController.getInstance(this.currentAccount).getStickerSetByName(str)) == null) {
                stickerSetByName = MediaDataController.getInstance(this.currentAccount).getStickerSetByEmojiOrName(str);
            }
            if (stickerSetByName != null) {
                if (this.animationIndex < 0) {
                    this.animationIndex = Math.abs(Utilities.fastRandom.nextInt() % stickerSetByName.documents.size());
                }
                if (this.longAnimation) {
                    ImageReceiver imageReceiver3 = this.effectImageReceiver;
                    StringBuilder sb2 = new StringBuilder();
                    int i2 = currentIndex;
                    currentIndex = i2 + 1;
                    sb2.append(i2);
                    sb2.append(" ");
                    imageReceiver3.setUniqKeyPrefix(sb2.toString());
                    int filterWidth2 = EmojiAnimationsOverlay.getFilterWidth();
                    this.effectImageReceiver.setImage(ImageLocation.getForDocument((TLRPC.Document) stickerSetByName.documents.get(this.animationIndex)), filterWidth2 + "_" + filterWidth2 + "_pcache_compress", null, null, stickerSetByName.documents.get(this.animationIndex), 0);
                } else {
                    this.effectImageReceiver.setImage(ImageLocation.getForDocument((TLRPC.Document) stickerSetByName.documents.get(this.animationIndex)), "60_60", null, null, stickerSetByName.documents.get(this.animationIndex), 0);
                }
                z = true;
            }
        }
        if (z) {
            if (this.effectImageReceiver.getLottieAnimation() != null) {
                this.effectImageReceiver.getLottieAnimation().setCurrentFrame(0, false, true);
            }
            this.effectImageReceiver.setAutoRepeat(0);
        } else {
            int i3 = R.raw.custom_emoji_reaction;
            this.effectImageReceiver.setImageBitmap(new RLottieDrawable(i3, "" + i3, AndroidUtilities.dp(60.0f), AndroidUtilities.dp(60.0f), false, null));
        }
    }
}
