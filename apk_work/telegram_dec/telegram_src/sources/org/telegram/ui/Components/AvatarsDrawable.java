package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.View;
import android.view.animation.Interpolator;
import androidx.core.graphics.ColorUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.Random;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.voip.VoIPService;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stories$StoryItem;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.GroupCallUserCell;
import org.telegram.ui.Stories.StoriesGradientTools;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class AvatarsDrawable {
    private boolean attached;
    boolean centered;
    public int count;
    int currentStyle;
    public boolean drawStoriesCircle;
    public int height;
    private boolean isInCall;
    public float maxX;
    private int overrideSize;
    View parent;
    private boolean showSavedMessages;
    StoriesGradientTools storiesTools;
    private boolean transitionInProgress;
    ValueAnimator transitionProgressAnimator;
    boolean updateAfterTransition;
    Runnable updateDelegate;
    boolean wasDraw;
    public int width;
    public DrawingState[] currentStates = new DrawingState[3];
    public DrawingState[] animatingStates = new DrawingState[3];
    float transitionProgress = 1.0f;
    private Paint paint = new Paint(1);
    private Paint xRefP = new Paint(1);
    public int strokeWidth = AndroidUtilities.dp(1.67f);
    private float overrideSizeStepFactor = 0.8f;
    private float overrideAlpha = 1.0f;
    public long transitionDuration = 220;
    public Interpolator transitionInterpolator = CubicBezierInterpolator.DEFAULT;
    Random random = new Random();

    public static class DrawingState {
        private int animationType;
        public AvatarDrawable avatarDrawable;
        private long id;
        private ImageReceiver imageReceiver;
        private long lastSpeakTime;
        private long lastUpdateTime;
        private int moveFromIndex;
        private TLObject object;
        TLRPC.GroupCallParticipant participant;
        private GroupCallUserCell.AvatarWavesDrawable wavesDrawable;
    }

    public AvatarsDrawable(View view, boolean z) {
        this.parent = view;
        for (int i = 0; i < 3; i++) {
            this.currentStates[i] = new DrawingState();
            this.currentStates[i].imageReceiver = new ImageReceiver(view);
            this.currentStates[i].imageReceiver.setInvalidateAll(true);
            this.currentStates[i].imageReceiver.setRoundRadius(AndroidUtilities.dp(12.0f));
            this.currentStates[i].avatarDrawable = new AvatarDrawable();
            this.currentStates[i].avatarDrawable.setTextSize(AndroidUtilities.dp(12.0f));
            this.animatingStates[i] = new DrawingState();
            this.animatingStates[i].imageReceiver = new ImageReceiver(view);
            this.animatingStates[i].imageReceiver.setInvalidateAll(true);
            this.animatingStates[i].imageReceiver.setRoundRadius(AndroidUtilities.dp(12.0f));
            this.animatingStates[i].avatarDrawable = new AvatarDrawable();
            this.animatingStates[i].avatarDrawable.setTextSize(AndroidUtilities.dp(12.0f));
        }
        this.isInCall = z;
        this.xRefP.setColor(0);
        this.xRefP.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidate() {
        View view = this.parent;
        if (view != null) {
            view.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$commitTransition$0(ValueAnimator valueAnimator) {
        this.transitionProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void swapStates() {
        for (int i = 0; i < 3; i++) {
            DrawingState[] drawingStateArr = this.currentStates;
            DrawingState drawingState = drawingStateArr[i];
            DrawingState[] drawingStateArr2 = this.animatingStates;
            drawingStateArr[i] = drawingStateArr2[i];
            drawingStateArr2[i] = drawingState;
        }
    }

    public void animateFromState(AvatarsDrawable avatarsDrawable, int i, boolean z) {
        if (avatarsDrawable == null) {
            return;
        }
        ValueAnimator valueAnimator = avatarsDrawable.transitionProgressAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            if (this.transitionInProgress) {
                this.transitionInProgress = false;
                swapStates();
            }
        }
        TLObject[] tLObjectArr = new TLObject[3];
        for (int i2 = 0; i2 < 3; i2++) {
            tLObjectArr[i2] = this.currentStates[i2].object;
            setObject(i2, i, avatarsDrawable.currentStates[i2].object);
        }
        commitTransition(false);
        for (int i3 = 0; i3 < 3; i3++) {
            setObject(i3, i, tLObjectArr[i3]);
        }
        this.wasDraw = true;
        commitTransition(true, z);
    }

    public void commitTransition(boolean z) {
        commitTransition(z, true);
    }

    public void commitTransition(boolean z, boolean z2) {
        if (!this.wasDraw || !z) {
            this.transitionProgress = 1.0f;
            swapStates();
            return;
        }
        DrawingState[] drawingStateArr = new DrawingState[3];
        boolean z3 = false;
        for (int i = 0; i < 3; i++) {
            DrawingState[] drawingStateArr2 = this.currentStates;
            drawingStateArr[i] = drawingStateArr2[i];
            if (drawingStateArr2[i].id != this.animatingStates[i].id) {
                z3 = true;
            } else {
                this.currentStates[i].lastSpeakTime = this.animatingStates[i].lastSpeakTime;
            }
        }
        if (!z3) {
            this.transitionProgress = 1.0f;
            return;
        }
        for (int i2 = 0; i2 < 3; i2++) {
            int i3 = 0;
            while (true) {
                if (i3 >= 3) {
                    this.animatingStates[i2].animationType = 0;
                    break;
                }
                if (this.currentStates[i3].id == this.animatingStates[i2].id) {
                    drawingStateArr[i3] = null;
                    if (i2 == i3) {
                        this.animatingStates[i2].animationType = -1;
                        GroupCallUserCell.AvatarWavesDrawable avatarWavesDrawable = this.animatingStates[i2].wavesDrawable;
                        this.animatingStates[i2].wavesDrawable = this.currentStates[i2].wavesDrawable;
                        this.currentStates[i2].wavesDrawable = avatarWavesDrawable;
                    } else {
                        this.animatingStates[i2].animationType = 2;
                        this.animatingStates[i2].moveFromIndex = i3;
                    }
                } else {
                    i3++;
                }
            }
        }
        for (int i4 = 0; i4 < 3; i4++) {
            DrawingState drawingState = drawingStateArr[i4];
            if (drawingState != null) {
                drawingState.animationType = 1;
            }
        }
        ValueAnimator valueAnimator = this.transitionProgressAnimator;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.transitionProgressAnimator.cancel();
            if (this.transitionInProgress) {
                swapStates();
                this.transitionInProgress = false;
            }
        }
        this.transitionProgress = BitmapDescriptorFactory.HUE_RED;
        if (z2) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.transitionProgressAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.AvatarsDrawable$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$commitTransition$0(valueAnimator2);
                }
            });
            this.transitionProgressAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.AvatarsDrawable.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    AvatarsDrawable avatarsDrawable = AvatarsDrawable.this;
                    if (avatarsDrawable.transitionProgressAnimator != null) {
                        avatarsDrawable.transitionProgress = 1.0f;
                        avatarsDrawable.swapStates();
                        AvatarsDrawable avatarsDrawable2 = AvatarsDrawable.this;
                        if (avatarsDrawable2.updateAfterTransition) {
                            avatarsDrawable2.updateAfterTransition = false;
                            Runnable runnable = avatarsDrawable2.updateDelegate;
                            if (runnable != null) {
                                runnable.run();
                            }
                        }
                        AvatarsDrawable.this.invalidate();
                    }
                    AvatarsDrawable.this.transitionProgressAnimator = null;
                }
            });
            this.transitionProgressAnimator.setDuration(this.transitionDuration);
            this.transitionProgressAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.transitionProgressAnimator.start();
        } else {
            this.transitionInProgress = true;
        }
        invalidate();
    }

    public float getMaxX() {
        return this.maxX;
    }

    public int getSize() {
        int i = this.overrideSize;
        if (i != 0) {
            return i;
        }
        int i2 = this.currentStyle;
        return AndroidUtilities.dp((i2 == 4 || i2 == 10) ? 32.0f : 24.0f);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public float getUsedWidth() {
        float f;
        int iDp;
        int i;
        int i2 = this.currentStyle;
        boolean z = i2 == 4 || i2 == 10;
        if (i2 == 11) {
            f = 12.0f;
        } else {
            int i3 = this.overrideSize;
            if (i3 != 0) {
                iDp = (int) (i3 * this.overrideSizeStepFactor);
                int i4 = 0;
                for (i = 0; i < 3; i++) {
                    if (this.currentStates[i].id != 0) {
                        i4++;
                    }
                }
                return (Math.max(0, i4 - 1) * iDp) + (i4 > 0 ? getSize() : 0);
            }
            f = z ? 24.0f : 20.0f;
        }
        iDp = AndroidUtilities.dp(f);
        int i42 = 0;
        while (i < 3) {
        }
        return (Math.max(0, i42 - 1) * iDp) + (i42 > 0 ? getSize() : 0);
    }

    public void onAttachedToWindow() {
        if (this.attached) {
            return;
        }
        this.attached = true;
        for (int i = 0; i < 3; i++) {
            this.currentStates[i].imageReceiver.onAttachedToWindow();
            this.animatingStates[i].imageReceiver.onAttachedToWindow();
        }
    }

    public void onDetachedFromWindow() {
        if (this.attached) {
            this.attached = false;
            this.wasDraw = false;
            for (int i = 0; i < 3; i++) {
                this.currentStates[i].imageReceiver.onDetachedFromWindow();
                this.animatingStates[i].imageReceiver.onDetachedFromWindow();
            }
            if (this.currentStyle == 3) {
                Theme.getFragmentContextViewWavesDrawable().setAmplitude(BitmapDescriptorFactory.HUE_RED);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:155:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x03be  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0040 A[LOOP:0: B:20:0x003d->B:22:0x0040, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0400  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0407  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0585  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x05a4  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x05d1  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0610  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x0642  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x0665  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x067a  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x0695  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x06a7  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x0293 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:345:0x0698 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:346:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0128  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onDraw(Canvas canvas) {
        float f;
        int iDp;
        int i;
        int i2;
        int i3;
        boolean z;
        float f2;
        int i4;
        int i5;
        int iDp2;
        float fDp;
        boolean z2;
        float f3;
        int i6;
        int i7;
        DrawingState drawingState;
        float avatarScale;
        DrawingState drawingState2;
        TLRPC.GroupCallParticipant groupCallParticipant;
        DrawingState drawingState3;
        GroupCallUserCell.AvatarWavesDrawable avatarWavesDrawable;
        GroupCallUserCell.AvatarWavesDrawable avatarWavesDrawable2;
        int i8;
        GroupCallUserCell.AvatarWavesDrawable avatarWavesDrawable3;
        double dNextInt;
        float f4;
        int iDp3;
        float f5;
        boolean z3;
        int i9;
        int iDp4;
        int i10 = 1;
        this.wasDraw = true;
        int i11 = this.currentStyle;
        int i12 = 10;
        boolean z4 = i11 == 4 || i11 == 10;
        int size = getSize();
        int i13 = 11;
        if (this.currentStyle == 11) {
            f = 12.0f;
        } else {
            int i14 = this.overrideSize;
            if (i14 != 0) {
                iDp = (int) (i14 * this.overrideSizeStepFactor);
                int i15 = iDp;
                for (i = 0; i < 3; i++) {
                    long unused = this.currentStates[i].id;
                }
                int i16 = this.currentStyle;
                int iDp5 = (i16 != 0 || i16 == 10 || i16 == 11) ? 0 : AndroidUtilities.dp(10.0f);
                int usedWidth = !this.centered ? (this.width - ((int) getUsedWidth())) / 2 : iDp5;
                boolean z5 = VoIPService.getSharedInstance() == null && VoIPService.getSharedInstance().isMicMute();
                i2 = this.currentStyle;
                if (i2 != 4) {
                    this.paint.setColor(Theme.getColor(Theme.key_inappPlayerBackground));
                } else if (i2 != 3) {
                    this.paint.setColor(Theme.getColor(z5 ? Theme.key_returnToCallMutedBackground : Theme.key_returnToCallBackground));
                }
                int i17 = 0;
                for (i3 = 0; i3 < 3; i3++) {
                    if (this.animatingStates[i3].id != 0) {
                        i17++;
                    }
                }
                int i18 = this.currentStyle;
                z = i18 != 0 || i18 == 1 || i18 == 3 || i18 == 4 || i18 == 5 || i18 == 10 || i18 == 11;
                if (z) {
                    f2 = BitmapDescriptorFactory.HUE_RED;
                    i4 = 2;
                } else {
                    float fDp2 = i18 == 10 ? AndroidUtilities.dp(16.0f) : BitmapDescriptorFactory.HUE_RED;
                    if (this.drawStoriesCircle) {
                        fDp2 += AndroidUtilities.dp(20.0f);
                    }
                    float f6 = -fDp2;
                    f2 = BitmapDescriptorFactory.HUE_RED;
                    i4 = 2;
                    canvas.saveLayerAlpha(f6, f6, this.width + fDp2, this.height + fDp2, 255, 31);
                }
                this.maxX = f2;
                int i19 = -1;
                float f7 = 2.0f;
                float f8 = 1.0f;
                if (this.drawStoriesCircle) {
                    int i20 = 2;
                    while (i20 >= 0) {
                        int i21 = 0;
                        while (i21 < i4) {
                            if (i21 != 0 || this.transitionProgress != 1.0f) {
                                DrawingState[] drawingStateArr = i21 == 0 ? this.animatingStates : this.currentStates;
                                if (i21 != i10 || this.transitionProgress == 1.0f || drawingStateArr[i20].animationType == i10) {
                                    ImageReceiver imageReceiver = drawingStateArr[i20].imageReceiver;
                                    if (imageReceiver.hasImageSet()) {
                                        if (i21 == 0) {
                                            iDp3 = (this.centered ? ((this.width - (i17 * i15)) - AndroidUtilities.dp(z4 ? 8.0f : 4.0f)) / i4 : iDp5) + (i15 * i20);
                                        } else {
                                            iDp3 = usedWidth + (i15 * i20);
                                        }
                                        imageReceiver.setImageX(iDp3);
                                        int i22 = this.currentStyle;
                                        imageReceiver.setImageY((i22 == 0 || i22 == i12 || i22 == i13) ? (this.height - size) / f7 : AndroidUtilities.dp(i22 == 4 ? 8.0f : 6.0f));
                                        if (this.transitionProgress == 1.0f) {
                                            f5 = 1.0f;
                                            z3 = false;
                                            float f9 = f5 * this.overrideAlpha;
                                            float size2 = (getSize() / f7) + AndroidUtilities.dp(4.0f);
                                            if (this.storiesTools == null) {
                                                this.storiesTools = new StoriesGradientTools();
                                            }
                                            this.storiesTools.setBounds(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.parent.getMeasuredHeight(), AndroidUtilities.dp(40.0f));
                                            this.storiesTools.paint.setAlpha((int) (f9 * 255.0f));
                                            canvas.drawCircle(imageReceiver.getCenterX(), imageReceiver.getCenterY(), size2, this.storiesTools.paint);
                                            if (!z3) {
                                                canvas.restore();
                                            }
                                        } else {
                                            if (drawingStateArr[i20].animationType == i10) {
                                                canvas.save();
                                                float f10 = 1.0f - this.transitionProgress;
                                                canvas.scale(f10, f10, imageReceiver.getCenterX(), imageReceiver.getCenterY());
                                                f5 = 1.0f - this.transitionProgress;
                                            } else if (drawingStateArr[i20].animationType == 0) {
                                                canvas.save();
                                                float f11 = this.transitionProgress;
                                                canvas.scale(f11, f11, imageReceiver.getCenterX(), imageReceiver.getCenterY());
                                                f5 = this.transitionProgress;
                                            } else {
                                                if (drawingStateArr[i20].animationType == i4) {
                                                    iDp4 = (this.centered ? ((this.width - (i17 * i15)) - AndroidUtilities.dp(z4 ? 8.0f : 4.0f)) / i4 : iDp5) + (i15 * i20);
                                                    i9 = drawingStateArr[i20].moveFromIndex * i15;
                                                } else {
                                                    if (drawingStateArr[i20].animationType == i19 && this.centered) {
                                                        i9 = i15 * i20;
                                                        iDp4 = (((this.width - (i17 * i15)) - AndroidUtilities.dp(z4 ? 8.0f : 4.0f)) / i4) + i9;
                                                    }
                                                    f5 = 1.0f;
                                                    z3 = false;
                                                    float f92 = f5 * this.overrideAlpha;
                                                    float size22 = (getSize() / f7) + AndroidUtilities.dp(4.0f);
                                                    if (this.storiesTools == null) {
                                                    }
                                                    this.storiesTools.setBounds(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.parent.getMeasuredHeight(), AndroidUtilities.dp(40.0f));
                                                    this.storiesTools.paint.setAlpha((int) (f92 * 255.0f));
                                                    canvas.drawCircle(imageReceiver.getCenterX(), imageReceiver.getCenterY(), size22, this.storiesTools.paint);
                                                    if (!z3) {
                                                    }
                                                }
                                                float f12 = this.transitionProgress;
                                                imageReceiver.setImageX((int) ((iDp4 * f12) + ((usedWidth + i9) * (1.0f - f12))));
                                                f5 = 1.0f;
                                                z3 = false;
                                                float f922 = f5 * this.overrideAlpha;
                                                float size222 = (getSize() / f7) + AndroidUtilities.dp(4.0f);
                                                if (this.storiesTools == null) {
                                                }
                                                this.storiesTools.setBounds(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.parent.getMeasuredHeight(), AndroidUtilities.dp(40.0f));
                                                this.storiesTools.paint.setAlpha((int) (f922 * 255.0f));
                                                canvas.drawCircle(imageReceiver.getCenterX(), imageReceiver.getCenterY(), size222, this.storiesTools.paint);
                                                if (!z3) {
                                                }
                                            }
                                            z3 = true;
                                            float f9222 = f5 * this.overrideAlpha;
                                            float size2222 = (getSize() / f7) + AndroidUtilities.dp(4.0f);
                                            if (this.storiesTools == null) {
                                            }
                                            this.storiesTools.setBounds(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.parent.getMeasuredHeight(), AndroidUtilities.dp(40.0f));
                                            this.storiesTools.paint.setAlpha((int) (f9222 * 255.0f));
                                            canvas.drawCircle(imageReceiver.getCenterX(), imageReceiver.getCenterY(), size2222, this.storiesTools.paint);
                                            if (!z3) {
                                            }
                                        }
                                    }
                                }
                            }
                            i21++;
                            i19 = -1;
                            f7 = 2.0f;
                            i10 = 1;
                            i12 = 10;
                            i13 = 11;
                        }
                        i20--;
                        i19 = -1;
                        f7 = 2.0f;
                        i10 = 1;
                        i12 = 10;
                        i13 = 11;
                    }
                }
                i5 = 2;
                while (i5 >= 0) {
                    int i23 = 0;
                    while (i23 < i4) {
                        if (i23 != 0 || this.transitionProgress != f8) {
                            DrawingState[] drawingStateArr2 = i23 == 0 ? this.animatingStates : this.currentStates;
                            if (i23 != 1 || this.transitionProgress == f8 || drawingStateArr2[i5].animationType == 1) {
                                ImageReceiver imageReceiver2 = drawingStateArr2[i5].imageReceiver;
                                if (imageReceiver2.hasImageSet()) {
                                    if (i23 == 0) {
                                        iDp2 = (this.centered ? ((this.width - (i17 * i15)) - AndroidUtilities.dp(z4 ? 8.0f : 4.0f)) / i4 : iDp5) + (i15 * i5);
                                    } else {
                                        iDp2 = usedWidth + (i15 * i5);
                                    }
                                    imageReceiver2.setImageX(iDp2);
                                    int i24 = this.currentStyle;
                                    if (i24 != 0 && i24 != 10) {
                                        if (i24 != 11) {
                                            fDp = AndroidUtilities.dp(i24 == 4 ? 8.0f : 6.0f);
                                        }
                                        imageReceiver2.setImageY(fDp);
                                        if (this.transitionProgress == f8) {
                                            z2 = false;
                                            f3 = 1.0f;
                                            float f13 = f3 * this.overrideAlpha;
                                            if (i5 == drawingStateArr2.length - 1 || this.drawStoriesCircle) {
                                                i6 = this.currentStyle;
                                                if (i6 != 1 || i6 == 3) {
                                                    i7 = 5;
                                                } else {
                                                    i7 = 5;
                                                    if (i6 != 5) {
                                                        if (i6 == 4 || i6 == 10) {
                                                            canvas.drawCircle(imageReceiver2.getCenterX(), imageReceiver2.getCenterY(), AndroidUtilities.dp(17.0f), this.xRefP);
                                                            if (drawingStateArr2[i5].wavesDrawable == null) {
                                                                drawingStateArr2[i5].wavesDrawable = new GroupCallUserCell.AvatarWavesDrawable(AndroidUtilities.dp(17.0f), AndroidUtilities.dp(21.0f));
                                                            }
                                                            if (this.currentStyle == 10) {
                                                                avatarWavesDrawable2 = drawingStateArr2[i5].wavesDrawable;
                                                                i8 = Theme.key_voipgroup_speakingText;
                                                            } else {
                                                                avatarWavesDrawable2 = drawingStateArr2[i5].wavesDrawable;
                                                                i8 = Theme.key_voipgroup_listeningText;
                                                            }
                                                            avatarWavesDrawable2.setColor(ColorUtils.setAlphaComponent(Theme.getColor(i8), (int) (f13 * 76.5f)));
                                                            long jCurrentTimeMillis = System.currentTimeMillis();
                                                            if (jCurrentTimeMillis - drawingStateArr2[i5].lastUpdateTime > 100) {
                                                                drawingStateArr2[i5].lastUpdateTime = jCurrentTimeMillis;
                                                                if (this.currentStyle == 10) {
                                                                    DrawingState drawingState4 = drawingStateArr2[i5];
                                                                    TLRPC.GroupCallParticipant groupCallParticipant2 = drawingState4.participant;
                                                                    if (groupCallParticipant2 == null || groupCallParticipant2.amplitude <= BitmapDescriptorFactory.HUE_RED) {
                                                                        drawingState4.wavesDrawable.setShowWaves(false, this.parent);
                                                                    } else {
                                                                        drawingState4.wavesDrawable.setShowWaves(true, this.parent);
                                                                        DrawingState drawingState5 = drawingStateArr2[i5];
                                                                        float f14 = drawingState5.participant.amplitude * 15.0f;
                                                                        avatarWavesDrawable3 = drawingState5.wavesDrawable;
                                                                        dNextInt = f14;
                                                                    }
                                                                } else if (ConnectionsManager.getInstance(UserConfig.selectedAccount).getCurrentTime() - drawingStateArr2[i5].lastSpeakTime <= 5) {
                                                                    drawingStateArr2[i5].wavesDrawable.setShowWaves(true, this.parent);
                                                                    avatarWavesDrawable3 = drawingStateArr2[i5].wavesDrawable;
                                                                    dNextInt = this.random.nextInt() % 100;
                                                                } else {
                                                                    drawingStateArr2[i5].wavesDrawable.setShowWaves(false, this.parent);
                                                                    avatarWavesDrawable3 = drawingStateArr2[i5].wavesDrawable;
                                                                    dNextInt = 0.0d;
                                                                }
                                                                avatarWavesDrawable3.setAmplitude(dNextInt);
                                                            }
                                                            drawingStateArr2[i5].wavesDrawable.update();
                                                            drawingStateArr2[i5].wavesDrawable.draw(canvas, imageReceiver2.getCenterX(), imageReceiver2.getCenterY(), this.parent);
                                                            drawingState = drawingStateArr2[i5];
                                                        } else {
                                                            float size3 = (getSize() / 2.0f) + this.strokeWidth;
                                                            if (z) {
                                                                canvas.drawCircle(imageReceiver2.getCenterX(), imageReceiver2.getCenterY(), size3, this.xRefP);
                                                            } else {
                                                                int alpha = this.paint.getAlpha();
                                                                if (f13 != f8) {
                                                                    this.paint.setAlpha((int) (alpha * f13));
                                                                }
                                                                canvas.drawCircle(imageReceiver2.getCenterX(), imageReceiver2.getCenterY(), size3, this.paint);
                                                                if (f13 != f8) {
                                                                    this.paint.setAlpha(alpha);
                                                                }
                                                            }
                                                        }
                                                    }
                                                    avatarScale = drawingState.wavesDrawable.getAvatarScale();
                                                    imageReceiver2.setAlpha(f13);
                                                    f8 = 1.0f;
                                                    if (avatarScale == 1.0f) {
                                                        canvas.save();
                                                        canvas.scale(avatarScale, avatarScale, imageReceiver2.getCenterX(), imageReceiver2.getCenterY());
                                                        imageReceiver2.draw(canvas);
                                                        canvas.restore();
                                                    } else {
                                                        imageReceiver2.draw(canvas);
                                                    }
                                                    this.maxX = Math.max(this.maxX, imageReceiver2.getCenterX() + ((imageReceiver2.getImageWidth() / 2.0f) * avatarScale));
                                                    if (!z2) {
                                                        canvas.restore();
                                                    }
                                                }
                                                canvas.drawCircle(imageReceiver2.getCenterX(), imageReceiver2.getCenterY(), AndroidUtilities.dp(13.0f), this.xRefP);
                                                if (drawingStateArr2[i5].wavesDrawable == null) {
                                                    if (this.currentStyle == i7) {
                                                        drawingState3 = drawingStateArr2[i5];
                                                        avatarWavesDrawable = new GroupCallUserCell.AvatarWavesDrawable(AndroidUtilities.dp(14.0f), AndroidUtilities.dp(16.0f));
                                                    } else {
                                                        drawingState3 = drawingStateArr2[i5];
                                                        avatarWavesDrawable = new GroupCallUserCell.AvatarWavesDrawable(AndroidUtilities.dp(17.0f), AndroidUtilities.dp(21.0f));
                                                    }
                                                    drawingState3.wavesDrawable = avatarWavesDrawable;
                                                }
                                                if (this.currentStyle == i7) {
                                                    drawingStateArr2[i5].wavesDrawable.setColor(ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_voipgroup_speakingText), (int) (f13 * 76.5f)));
                                                }
                                                drawingState2 = drawingStateArr2[i5];
                                                groupCallParticipant = drawingState2.participant;
                                                if (groupCallParticipant != null || groupCallParticipant.amplitude <= BitmapDescriptorFactory.HUE_RED) {
                                                    drawingState2.wavesDrawable.setShowWaves(false, this.parent);
                                                } else {
                                                    drawingState2.wavesDrawable.setShowWaves(true, this.parent);
                                                    drawingStateArr2[i5].wavesDrawable.setAmplitude(r7.participant.amplitude * 15.0f);
                                                }
                                                if (this.currentStyle == i7 && SystemClock.uptimeMillis() - drawingStateArr2[i5].participant.lastSpeakTime > 500) {
                                                    this.updateDelegate.run();
                                                }
                                                drawingStateArr2[i5].wavesDrawable.update();
                                                if (this.currentStyle == i7) {
                                                    drawingStateArr2[i5].wavesDrawable.draw(canvas, imageReceiver2.getCenterX(), imageReceiver2.getCenterY(), this.parent);
                                                    invalidate();
                                                }
                                                drawingState = drawingStateArr2[i5];
                                                avatarScale = drawingState.wavesDrawable.getAvatarScale();
                                                imageReceiver2.setAlpha(f13);
                                                f8 = 1.0f;
                                                if (avatarScale == 1.0f) {
                                                }
                                                this.maxX = Math.max(this.maxX, imageReceiver2.getCenterX() + ((imageReceiver2.getImageWidth() / 2.0f) * avatarScale));
                                                if (!z2) {
                                                }
                                            }
                                            avatarScale = 1.0f;
                                            imageReceiver2.setAlpha(f13);
                                            f8 = 1.0f;
                                            if (avatarScale == 1.0f) {
                                            }
                                            this.maxX = Math.max(this.maxX, imageReceiver2.getCenterX() + ((imageReceiver2.getImageWidth() / 2.0f) * avatarScale));
                                            if (!z2) {
                                            }
                                        } else {
                                            if (drawingStateArr2[i5].animationType == 1) {
                                                canvas.save();
                                                float f15 = f8 - this.transitionProgress;
                                                canvas.scale(f15, f15, imageReceiver2.getCenterX(), imageReceiver2.getCenterY());
                                                f4 = f8 - this.transitionProgress;
                                            } else if (drawingStateArr2[i5].animationType == 0) {
                                                canvas.save();
                                                float f16 = this.transitionProgress;
                                                canvas.scale(f16, f16, imageReceiver2.getCenterX(), imageReceiver2.getCenterY());
                                                f4 = this.transitionProgress;
                                            } else if (drawingStateArr2[i5].animationType == i4) {
                                                int iDp6 = this.centered ? ((this.width - (i17 * i15)) - AndroidUtilities.dp(z4 ? 8.0f : 4.0f)) / i4 : iDp5;
                                                int i25 = usedWidth + (drawingStateArr2[i5].moveFromIndex * i15);
                                                float f17 = this.transitionProgress;
                                                imageReceiver2.setImageX((int) (((iDp6 + (i15 * i5)) * f17) + (i25 * (f8 - f17))));
                                                z2 = false;
                                                f3 = 1.0f;
                                                float f132 = f3 * this.overrideAlpha;
                                                if (i5 == drawingStateArr2.length - 1) {
                                                    i6 = this.currentStyle;
                                                    if (i6 != 1) {
                                                        i7 = 5;
                                                        canvas.drawCircle(imageReceiver2.getCenterX(), imageReceiver2.getCenterY(), AndroidUtilities.dp(13.0f), this.xRefP);
                                                        if (drawingStateArr2[i5].wavesDrawable == null) {
                                                        }
                                                        if (this.currentStyle == i7) {
                                                        }
                                                        drawingState2 = drawingStateArr2[i5];
                                                        groupCallParticipant = drawingState2.participant;
                                                        if (groupCallParticipant != null) {
                                                            drawingState2.wavesDrawable.setShowWaves(false, this.parent);
                                                            if (this.currentStyle == i7) {
                                                                this.updateDelegate.run();
                                                            }
                                                            drawingStateArr2[i5].wavesDrawable.update();
                                                            if (this.currentStyle == i7) {
                                                            }
                                                            drawingState = drawingStateArr2[i5];
                                                            avatarScale = drawingState.wavesDrawable.getAvatarScale();
                                                            imageReceiver2.setAlpha(f132);
                                                            f8 = 1.0f;
                                                            if (avatarScale == 1.0f) {
                                                            }
                                                            this.maxX = Math.max(this.maxX, imageReceiver2.getCenterX() + ((imageReceiver2.getImageWidth() / 2.0f) * avatarScale));
                                                            if (!z2) {
                                                            }
                                                        }
                                                    }
                                                }
                                            } else {
                                                if (drawingStateArr2[i5].animationType == -1 && this.centered) {
                                                    int iDp7 = ((this.width - (i17 * i15)) - AndroidUtilities.dp(z4 ? 8.0f : 4.0f)) / i4;
                                                    int i26 = i15 * i5;
                                                    float f18 = this.transitionProgress;
                                                    imageReceiver2.setImageX((int) (((iDp7 + i26) * f18) + ((usedWidth + i26) * (f8 - f18))));
                                                }
                                                z2 = false;
                                                f3 = 1.0f;
                                                float f1322 = f3 * this.overrideAlpha;
                                                if (i5 == drawingStateArr2.length - 1) {
                                                }
                                            }
                                            f3 = f4;
                                            z2 = true;
                                            float f13222 = f3 * this.overrideAlpha;
                                            if (i5 == drawingStateArr2.length - 1) {
                                            }
                                        }
                                    }
                                    fDp = (this.height - size) / 2.0f;
                                    imageReceiver2.setImageY(fDp);
                                    if (this.transitionProgress == f8) {
                                    }
                                }
                            }
                        }
                        i23++;
                        i4 = 2;
                    }
                    i5--;
                    i4 = 2;
                }
                if (z) {
                    return;
                }
                canvas.restore();
                return;
            }
            f = z4 ? 24.0f : 20.0f;
        }
        iDp = AndroidUtilities.dp(f);
        int i152 = iDp;
        while (i < 3) {
        }
        int i162 = this.currentStyle;
        if (i162 != 0) {
        }
        if (!this.centered) {
        }
        if (VoIPService.getSharedInstance() == null) {
        }
        i2 = this.currentStyle;
        if (i2 != 4) {
        }
        int i172 = 0;
        while (i3 < 3) {
        }
        int i182 = this.currentStyle;
        if (i182 != 0) {
        }
        if (z) {
        }
        this.maxX = f2;
        int i192 = -1;
        float f72 = 2.0f;
        float f82 = 1.0f;
        if (this.drawStoriesCircle) {
        }
        i5 = 2;
        while (i5 >= 0) {
        }
        if (z) {
        }
    }

    public void reset() {
        for (int i = 0; i < this.animatingStates.length; i++) {
            setObject(0, 0, null);
        }
    }

    public void setAlpha(float f) {
        this.overrideAlpha = f;
    }

    public void setAvatarsTextSize(int i) {
        AvatarDrawable avatarDrawable;
        AvatarDrawable avatarDrawable2;
        for (int i2 = 0; i2 < 3; i2++) {
            DrawingState drawingState = this.currentStates[i2];
            if (drawingState != null && (avatarDrawable2 = drawingState.avatarDrawable) != null) {
                avatarDrawable2.setTextSize(i);
            }
            DrawingState drawingState2 = this.animatingStates[i2];
            if (drawingState2 != null && (avatarDrawable = drawingState2.avatarDrawable) != null) {
                avatarDrawable.setTextSize(i);
            }
        }
    }

    public void setCentered(boolean z) {
        this.centered = z;
    }

    public void setCount(int i) {
        this.count = i;
        View view = this.parent;
        if (view != null) {
            view.requestLayout();
        }
    }

    public void setDelegate(Runnable runnable) {
        this.updateDelegate = runnable;
    }

    public void setObject(int i, int i2, TLObject tLObject) {
        TLRPC.User user;
        TLRPC.Chat chat;
        ImageReceiver imageReceiver;
        ImageLocation forPhoto;
        String str;
        ImageLocation forPhoto2;
        StringBuilder sb;
        DrawingState drawingState;
        long j;
        this.animatingStates[i].id = 0L;
        DrawingState drawingState2 = this.animatingStates[i];
        drawingState2.participant = null;
        if (tLObject == null) {
            drawingState2.imageReceiver.setImageBitmap((Drawable) null);
        } else {
            drawingState2.lastSpeakTime = -1L;
            this.animatingStates[i].object = tLObject;
            if (tLObject instanceof TLRPC.GroupCallParticipant) {
                TLRPC.GroupCallParticipant groupCallParticipant = (TLRPC.GroupCallParticipant) tLObject;
                this.animatingStates[i].participant = groupCallParticipant;
                long peerId = MessageObject.getPeerId(groupCallParticipant.peer);
                if (DialogObject.isUserDialog(peerId)) {
                    user = MessagesController.getInstance(i2).getUser(Long.valueOf(peerId));
                    this.animatingStates[i].avatarDrawable.setInfo(i2, user);
                    chat = null;
                } else {
                    TLRPC.Chat chat2 = MessagesController.getInstance(i2).getChat(Long.valueOf(-peerId));
                    this.animatingStates[i].avatarDrawable.setInfo(i2, chat2);
                    chat = chat2;
                    user = null;
                }
                if (this.currentStyle != 4) {
                    drawingState = this.animatingStates[i];
                } else if (peerId == AccountInstance.getInstance(i2).getUserConfig().getClientUserId()) {
                    this.animatingStates[i].lastSpeakTime = 0L;
                    this.animatingStates[i].id = peerId;
                } else if (this.isInCall) {
                    drawingState = this.animatingStates[i];
                    j = groupCallParticipant.lastActiveDate;
                    drawingState.lastSpeakTime = j;
                    this.animatingStates[i].id = peerId;
                } else {
                    drawingState = this.animatingStates[i];
                }
                j = groupCallParticipant.active_date;
                drawingState.lastSpeakTime = j;
                this.animatingStates[i].id = peerId;
            } else if (tLObject instanceof TLRPC.User) {
                user = (TLRPC.User) tLObject;
                if (user.self && this.showSavedMessages) {
                    this.animatingStates[i].avatarDrawable.setAvatarType(1);
                    this.animatingStates[i].avatarDrawable.setScaleSize(0.6f);
                } else {
                    this.animatingStates[i].avatarDrawable.setAvatarType(0);
                    this.animatingStates[i].avatarDrawable.setScaleSize(1.0f);
                    this.animatingStates[i].avatarDrawable.setInfo(i2, user);
                }
                this.animatingStates[i].id = user.id;
                chat = null;
            } else if (tLObject instanceof TLRPC.Chat) {
                chat = (TLRPC.Chat) tLObject;
                this.animatingStates[i].avatarDrawable.setAvatarType(0);
                this.animatingStates[i].avatarDrawable.setScaleSize(1.0f);
                this.animatingStates[i].avatarDrawable.setInfo(i2, chat);
                this.animatingStates[i].id = -chat.id;
                user = null;
            } else {
                user = null;
                chat = null;
            }
            int size = getSize();
            if (tLObject instanceof TL_stories$StoryItem) {
                TL_stories$StoryItem tL_stories$StoryItem = (TL_stories$StoryItem) tLObject;
                this.animatingStates[i].id = tL_stories$StoryItem.id;
                TLRPC.MessageMedia messageMedia = tL_stories$StoryItem.media;
                TLRPC.Document document = messageMedia.document;
                if (document != null) {
                    TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 50, true, null, false);
                    TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(tL_stories$StoryItem.media.document.thumbs, 50, true, closestPhotoSizeWithSize, true);
                    imageReceiver = this.animatingStates[i].imageReceiver;
                    forPhoto = ImageLocation.getForDocument(closestPhotoSizeWithSize2, tL_stories$StoryItem.media.document);
                    str = size + "_" + size;
                    forPhoto2 = ImageLocation.getForDocument(closestPhotoSizeWithSize, tL_stories$StoryItem.media.document);
                    sb = new StringBuilder();
                } else {
                    TLRPC.Photo photo = messageMedia.photo;
                    if (photo != null) {
                        TLRPC.PhotoSize closestPhotoSizeWithSize3 = FileLoader.getClosestPhotoSizeWithSize(photo.sizes, 50, true, null, false);
                        TLRPC.PhotoSize closestPhotoSizeWithSize4 = FileLoader.getClosestPhotoSizeWithSize(tL_stories$StoryItem.media.photo.sizes, 50, true, closestPhotoSizeWithSize3, true);
                        imageReceiver = this.animatingStates[i].imageReceiver;
                        forPhoto = ImageLocation.getForPhoto(closestPhotoSizeWithSize4, tL_stories$StoryItem.media.photo);
                        str = size + "_" + size;
                        forPhoto2 = ImageLocation.getForPhoto(closestPhotoSizeWithSize3, tL_stories$StoryItem.media.photo);
                        sb = new StringBuilder();
                    }
                }
                sb.append(size);
                sb.append("_");
                sb.append(size);
                imageReceiver.setImage(forPhoto, str, forPhoto2, sb.toString(), 0L, null, tL_stories$StoryItem, 0);
            } else if (user == null) {
                this.animatingStates[i].imageReceiver.setForUserOrChat(chat, this.animatingStates[i].avatarDrawable);
            } else if (user.self && this.showSavedMessages) {
                this.animatingStates[i].imageReceiver.setImageBitmap(this.animatingStates[i].avatarDrawable);
            } else {
                this.animatingStates[i].imageReceiver.setForUserOrChat(user, this.animatingStates[i].avatarDrawable);
            }
            this.animatingStates[i].imageReceiver.setRoundRadius(size / 2);
            float f = size;
            this.animatingStates[i].imageReceiver.setImageCoords(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f, f);
        }
        invalidate();
    }

    public void setShowSavedMessages(boolean z) {
        this.showSavedMessages = z;
    }

    public void setSize(int i) {
        this.overrideSize = i;
    }

    public void setStepFactor(float f) {
        this.overrideSizeStepFactor = f;
    }

    public void setStyle(int i) {
        this.currentStyle = i;
        invalidate();
    }

    public void setTransitionProgress(float f) {
        if (!this.transitionInProgress || this.transitionProgress == f) {
            return;
        }
        this.transitionProgress = f;
        if (f == 1.0f) {
            swapStates();
            this.transitionInProgress = false;
        }
    }

    public void updateAfterTransitionEnd() {
        this.updateAfterTransition = true;
    }
}
