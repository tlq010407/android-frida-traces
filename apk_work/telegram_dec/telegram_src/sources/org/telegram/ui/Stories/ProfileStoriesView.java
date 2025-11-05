package org.telegram.ui.Stories;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.OvershootInterpolator;
import androidx.core.graphics.ColorUtils;
import com.google.zxing.common.detector.MathUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stories$PeerStories;
import org.telegram.tgnet.tl.TL_stories$StoryItem;
import org.telegram.tgnet.tl.TL_stories$TL_storyItemDeleted;
import org.telegram.tgnet.tl.TL_stories$TL_storyItemSkipped;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.RadialProgress;
import org.telegram.ui.ProfileActivity;
import org.telegram.ui.Stories.ProfileStoriesView;
import org.telegram.ui.Stories.StoriesController;
import org.telegram.ui.Stories.StoriesUtilities;
import org.telegram.ui.Stories.StoryViewer;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public abstract class ProfileStoriesView extends View implements NotificationCenter.NotificationCenterDelegate {
    private float actionBarProgress;
    private boolean attached;
    private final View avatarContainer;
    private final ProfileActivity.AvatarImageView avatarImage;
    private float bounceScale;
    private final ArrayList circles;
    private final Paint clipOutAvatar;
    private final Path clipPath;
    private int count;
    private final int currentAccount;
    private float cy;
    private final long dialogId;
    private float expandProgress;
    private float expandRight;
    private boolean expandRightPad;
    private final AnimatedFloat expandRightPadAnimated;
    private float expandY;
    private final Matrix forumRoundRectMatrix;
    private final Path forumRoundRectPath;
    private final PathMeasure forumRoundRectPathMeasure;
    private final Path forumSegmentPath;
    private float fragmentTransitionProgress;
    private final StoriesUtilities.StoryGradientTools gradientTools;
    private final boolean isTopic;
    private StoriesController.UploadingStory lastUploadingStory;
    private float left;
    private StoryCircle mainCircle;
    private ValueAnimator newStoryBounce;
    private float newStoryBounceT;
    private Runnable onLongPressRunnable;
    Paint paint;
    private TL_stories$PeerStories peerStories;
    private boolean progressIsDone;
    private float progressToInsets;
    private final AnimatedFloat progressToUploading;
    private boolean progressWasDrawn;
    private final StoryViewer.PlaceProvider provider;
    private RadialProgress radialProgress;
    private final Paint readPaint;
    private int readPaintAlpha;
    private final RectF rect1;
    private final RectF rect2;
    private final RectF rect3;
    private float right;
    private final AnimatedFloat rightAnimated;
    private final AnimatedFloat segmentsCountAnimated;
    private final AnimatedFloat segmentsUnreadCountAnimated;
    StoriesController storiesController;
    private long tapTime;
    private float tapX;
    private float tapY;
    private final AnimatedTextView.AnimatedTextDrawable titleDrawable;
    private int unreadCount;
    private int uploadingStoriesCount;
    float w;
    private final Paint whitePaint;

    /* renamed from: org.telegram.ui.Stories.ProfileStoriesView$3, reason: invalid class name */
    class AnonymousClass3 implements StoryViewer.PlaceProvider {
        AnonymousClass3() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$findView$0(RectF rectF, StoryCircle storyCircle, RectF rectF2, StoryCircle storyCircle2, Canvas canvas, RectF rectF3, float f, boolean z) {
            rectF.set(storyCircle.cachedRect);
            rectF2.set(storyCircle2.cachedRect);
            storyCircle.cachedRect.set(rectF3);
            try {
                float fWidth = rectF3.width() / rectF.width();
                float fCenterX = rectF3.centerX() - ((rectF.centerX() - rectF2.centerX()) * (((1.0f - f) * 2.0f) + fWidth));
                float fCenterY = rectF3.centerY();
                float fWidth2 = (rectF2.width() / 2.0f) * fWidth;
                float fHeight = (rectF2.height() / 2.0f) * fWidth;
                storyCircle2.cachedRect.set(fCenterX - fWidth2, fCenterY - fHeight, fCenterX + fWidth2, fCenterY + fHeight);
            } catch (Exception unused) {
            }
            ProfileStoriesView.this.clipCircle(canvas, storyCircle, storyCircle2);
            storyCircle.cachedRect.set(rectF);
            storyCircle2.cachedRect.set(rectF2);
        }

        @Override // org.telegram.ui.Stories.StoryViewer.PlaceProvider
        public boolean findView(long j, int i, int i2, int i3, StoryViewer.TransitionViewHolder transitionViewHolder) {
            ImageReceiver imageReceiver;
            final StoryCircle storyCircle;
            final StoryCircle storyCircle2;
            StoryViewer.HolderClip holderClip = null;
            transitionViewHolder.avatarImage = null;
            transitionViewHolder.storyImage = null;
            if (ProfileStoriesView.this.expandProgress < 0.2f) {
                transitionViewHolder.avatarImage = ProfileStoriesView.this.avatarImage.getImageReceiver();
                transitionViewHolder.storyImage = null;
                transitionViewHolder.view = ProfileStoriesView.this.avatarImage;
                transitionViewHolder.clipTop = BitmapDescriptorFactory.HUE_RED;
                transitionViewHolder.clipBottom = AndroidUtilities.displaySize.y;
                transitionViewHolder.clipParent = (View) ProfileStoriesView.this.getParent();
                transitionViewHolder.radialProgressUpload = ProfileStoriesView.this.radialProgress;
                transitionViewHolder.checkParentScale = true;
                return true;
            }
            int i4 = 0;
            while (true) {
                if (i4 >= ProfileStoriesView.this.circles.size()) {
                    imageReceiver = null;
                    storyCircle = null;
                    storyCircle2 = null;
                    break;
                }
                StoryCircle storyCircle3 = (StoryCircle) ProfileStoriesView.this.circles.get(i4);
                if (storyCircle3.scale < 1.0f || storyCircle3.storyId != i2) {
                    i4++;
                } else {
                    ProfileStoriesView profileStoriesView = ProfileStoriesView.this;
                    int i5 = i4 - 1;
                    int i6 = i4 - 2;
                    StoryCircle storyCircleNearest = profileStoriesView.nearest(i5 >= 0 ? (StoryCircle) profileStoriesView.circles.get(i5) : null, i6 >= 0 ? (StoryCircle) ProfileStoriesView.this.circles.get(i6) : null, storyCircle3);
                    imageReceiver = storyCircle3.imageReceiver;
                    storyCircle2 = storyCircleNearest;
                    storyCircle = storyCircle3;
                }
            }
            if (imageReceiver == null) {
                return false;
            }
            transitionViewHolder.storyImage = imageReceiver;
            transitionViewHolder.avatarImage = null;
            ProfileStoriesView profileStoriesView2 = ProfileStoriesView.this;
            transitionViewHolder.view = profileStoriesView2;
            transitionViewHolder.clipTop = BitmapDescriptorFactory.HUE_RED;
            transitionViewHolder.clipBottom = AndroidUtilities.displaySize.y;
            transitionViewHolder.clipParent = (View) profileStoriesView2.getParent();
            if (storyCircle != null && storyCircle2 != null) {
                final RectF rectF = new RectF(storyCircle.cachedRect);
                final RectF rectF2 = new RectF(storyCircle2.cachedRect);
                holderClip = new StoryViewer.HolderClip() { // from class: org.telegram.ui.Stories.ProfileStoriesView$3$$ExternalSyntheticLambda0
                    @Override // org.telegram.ui.Stories.StoryViewer.HolderClip
                    public final void clip(Canvas canvas, RectF rectF3, float f, boolean z) {
                        this.f$0.lambda$findView$0(rectF, storyCircle, rectF2, storyCircle2, canvas, rectF3, f, z);
                    }
                };
            }
            transitionViewHolder.drawClip = holderClip;
            return true;
        }

        @Override // org.telegram.ui.Stories.StoryViewer.PlaceProvider
        public /* synthetic */ void loadNext(boolean z) {
            StoryViewer.PlaceProvider.CC.$default$loadNext(this, z);
        }

        @Override // org.telegram.ui.Stories.StoryViewer.PlaceProvider
        public void preLayout(long j, int i, Runnable runnable) {
            ProfileStoriesView.this.updateStories(true, false);
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class StoryCircle {
        final RectF borderRect;
        float cachedIndex;
        float cachedRead;
        final RectF cachedRect;
        float cachedScale;
        final AnimatedFloat indexAnimated;
        final AnimatedFloat readAnimated;
        final AnimatedFloat scaleAnimated;
        int storyId;
        ImageReceiver imageReceiver = new ImageReceiver();
        int index = 0;
        boolean read = false;
        float scale = 1.0f;

        public StoryCircle(TL_stories$StoryItem tL_stories$StoryItem) {
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.readAnimated = new AnimatedFloat(ProfileStoriesView.this, 420L, cubicBezierInterpolator);
            this.indexAnimated = new AnimatedFloat(ProfileStoriesView.this, 420L, cubicBezierInterpolator);
            this.scaleAnimated = new AnimatedFloat(ProfileStoriesView.this, 420L, cubicBezierInterpolator);
            this.cachedRect = new RectF();
            this.borderRect = new RectF();
            this.storyId = tL_stories$StoryItem.id;
            this.imageReceiver.setRoundRadius(AndroidUtilities.dp(200.0f));
            this.imageReceiver.setParentView(ProfileStoriesView.this);
            if (ProfileStoriesView.this.attached) {
                this.imageReceiver.onAttachedToWindow();
            }
            StoriesUtilities.setThumbImage(this.imageReceiver, tL_stories$StoryItem, 25, 25);
        }

        public void apply() {
            this.readAnimated.set(this.read, true);
            this.indexAnimated.set(this.index, true);
            this.scaleAnimated.set(this.scale, true);
        }

        public void destroy() {
            this.imageReceiver.onDetachedFromWindow();
        }
    }

    public ProfileStoriesView(Context context, int i, long j, boolean z, View view, ProfileActivity.AvatarImageView avatarImageView, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        Paint paint = new Paint(1);
        this.readPaint = paint;
        Paint paint2 = new Paint(1);
        this.whitePaint = paint2;
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
        this.titleDrawable = animatedTextDrawable;
        Paint paint3 = new Paint(1);
        this.clipOutAvatar = paint3;
        this.circles = new ArrayList();
        this.paint = new Paint(1);
        this.bounceScale = 1.0f;
        this.progressToInsets = 1.0f;
        this.gradientTools = new StoriesUtilities.StoryGradientTools((View) this, false);
        this.rect1 = new RectF();
        this.rect2 = new RectF();
        this.rect3 = new RectF();
        this.clipPath = new Path();
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.segmentsCountAnimated = new AnimatedFloat(this, 0L, 480L, cubicBezierInterpolator);
        this.segmentsUnreadCountAnimated = new AnimatedFloat(this, 0L, 240L, cubicBezierInterpolator);
        this.progressToUploading = new AnimatedFloat(this, 0L, 150L, CubicBezierInterpolator.DEFAULT);
        this.newStoryBounceT = 1.0f;
        this.forumRoundRectPath = new Path();
        this.forumRoundRectMatrix = new Matrix();
        this.forumRoundRectPathMeasure = new PathMeasure();
        this.forumSegmentPath = new Path();
        this.expandRightPadAnimated = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
        this.rightAnimated = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
        this.provider = new AnonymousClass3();
        this.onLongPressRunnable = new Runnable() { // from class: org.telegram.ui.Stories.ProfileStoriesView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$4();
            }
        };
        this.currentAccount = i;
        this.dialogId = j;
        this.isTopic = z;
        this.avatarContainer = view;
        this.avatarImage = avatarImageView;
        this.storiesController = MessagesController.getInstance(i).getStoriesController();
        paint.setColor(1526726655);
        this.readPaintAlpha = paint.getAlpha();
        paint.setStrokeWidth(AndroidUtilities.dpf2(1.5f));
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint2.setColor(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider));
        animatedTextDrawable.setTextSize(AndroidUtilities.dp(18.0f));
        animatedTextDrawable.setAnimationProperties(0.4f, 0L, 320L, cubicBezierInterpolator);
        animatedTextDrawable.setTypeface(AndroidUtilities.bold());
        animatedTextDrawable.setTextColor(Theme.getColor(Theme.key_actionBarDefaultTitle, resourcesProvider));
        animatedTextDrawable.setEllipsizeByGradient(true);
        animatedTextDrawable.setCallback(this);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.paint.setStrokeWidth(AndroidUtilities.dpf2(2.33f));
        this.paint.setStyle(style);
        updateStories(false, false);
    }

    private void animateBounce() {
        AnimatorSet animatorSet = new AnimatorSet();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 1.05f);
        valueAnimatorOfFloat.setDuration(100L);
        valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.EASE_OUT);
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(1.05f, 1.0f);
        valueAnimatorOfFloat2.setDuration(250L);
        valueAnimatorOfFloat2.setInterpolator(new OvershootInterpolator());
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.ProfileStoriesView$$ExternalSyntheticLambda4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$animateBounce$3(valueAnimator);
            }
        };
        valueAnimatorOfFloat.addUpdateListener(animatorUpdateListener);
        valueAnimatorOfFloat2.addUpdateListener(animatorUpdateListener);
        animatorSet.playSequentially(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.ProfileStoriesView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ProfileStoriesView.this.avatarImage.bounceScale = ProfileStoriesView.this.bounceScale = 1.0f;
                ProfileStoriesView.this.avatarImage.invalidate();
                ProfileStoriesView.this.invalidate();
            }
        });
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clipCircle(Canvas canvas, StoryCircle storyCircle, StoryCircle storyCircle2) {
        if (storyCircle2 == null) {
            return;
        }
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(storyCircle2.cachedRect);
        float f = -(AndroidUtilities.dpf2(1.66f) * storyCircle2.cachedScale);
        rectF.inset(f, f);
        float fCenterX = storyCircle2.cachedRect.centerX();
        float fWidth = storyCircle2.cachedRect.width() / 2.0f;
        float fCenterX2 = storyCircle.cachedRect.centerX();
        float fWidth2 = storyCircle.cachedRect.width() / 2.0f;
        this.clipPath.rewind();
        if (fCenterX > fCenterX2) {
            float degrees = (float) Math.toDegrees(Math.acos(Math.abs((((fCenterX - fWidth) + (fCenterX2 + fWidth2)) / 2.0f) - fCenterX2) / fWidth2));
            this.clipPath.arcTo(rectF, 180.0f + degrees, (-degrees) * 2.0f);
            this.clipPath.arcTo(storyCircle.cachedRect, degrees, 360.0f - (2.0f * degrees));
        } else {
            float degrees2 = (float) Math.toDegrees(Math.acos(Math.abs((((fCenterX + fWidth) + (fCenterX2 - fWidth2)) / 2.0f) - fCenterX2) / fWidth2));
            float f2 = 2.0f * degrees2;
            this.clipPath.arcTo(rectF, -degrees2, f2);
            this.clipPath.arcTo(storyCircle.cachedRect, 180.0f - degrees2, -(360.0f - f2));
        }
        this.clipPath.close();
        canvas.save();
        canvas.clipPath(this.clipPath);
    }

    private void drawArc(Canvas canvas, RectF rectF, float f, float f2, boolean z, Paint paint) {
        if (!ChatObject.isForum(UserConfig.selectedAccount, this.dialogId)) {
            canvas.drawArc(rectF, f, f2, z, paint);
            return;
        }
        float fHeight = rectF.height() * 0.32f;
        if (Math.abs(f2) == 360.0f) {
            canvas.drawRoundRect(rectF, fHeight, fHeight, paint);
            return;
        }
        float f3 = f + f2;
        float f4 = (((int) f3) / 90) * 90;
        float f5 = (-199.0f) + f4;
        this.forumRoundRectPath.rewind();
        this.forumRoundRectPath.addRoundRect(rectF, fHeight, fHeight, Path.Direction.CW);
        this.forumRoundRectMatrix.reset();
        this.forumRoundRectMatrix.postRotate(f4, rectF.centerX(), rectF.centerY());
        this.forumRoundRectPath.transform(this.forumRoundRectMatrix);
        this.forumRoundRectPathMeasure.setPath(this.forumRoundRectPath, false);
        float length = this.forumRoundRectPathMeasure.getLength();
        this.forumSegmentPath.reset();
        this.forumRoundRectPathMeasure.getSegment(((f3 - f5) / 360.0f) * length, length * (((f3 - f2) - f5) / 360.0f), this.forumSegmentPath, true);
        this.forumSegmentPath.rLineTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        canvas.drawPath(this.forumSegmentPath, paint);
    }

    private void drawArcs(Canvas canvas, StoryCircle storyCircle, StoryCircle storyCircle2, StoryCircle storyCircle3, Paint paint) {
        float degrees;
        float f;
        float f2;
        float f3;
        float f4;
        RectF rectF;
        float f5;
        boolean z;
        ProfileStoriesView profileStoriesView;
        Canvas canvas2;
        float fMax;
        StoryCircle storyCircle4 = storyCircle;
        if (storyCircle4 != null || storyCircle3 != null) {
            if (storyCircle4 != null && storyCircle3 != null) {
                float fCenterX = storyCircle4.borderRect.centerX();
                float fWidth = storyCircle4.borderRect.width() / 2.0f;
                float fCenterX2 = storyCircle2.borderRect.centerX();
                float fWidth2 = storyCircle2.borderRect.width() / 2.0f;
                float fCenterX3 = storyCircle3.borderRect.centerX();
                float fWidth3 = storyCircle3.borderRect.width() / 2.0f;
                boolean z2 = fCenterX > fCenterX2;
                if (z2) {
                    f = fCenterX - fWidth;
                    f2 = fCenterX2 + fWidth2;
                } else {
                    f = fCenterX + fWidth;
                    f2 = fCenterX2 - fWidth2;
                }
                float degrees2 = (float) Math.toDegrees(Math.acos(Math.abs(((f + f2) / 2.0f) - fCenterX2) / fWidth2));
                boolean z3 = fCenterX3 > fCenterX2;
                if (z3) {
                    f3 = fCenterX3 - fWidth3;
                    f4 = fCenterX2 + fWidth2;
                } else {
                    f3 = fCenterX3 + fWidth3;
                    f4 = fCenterX2 - fWidth2;
                }
                float degrees3 = (float) Math.toDegrees(Math.acos(Math.abs(((f3 + f4) / 2.0f) - fCenterX2) / fWidth2));
                if (z2 && z3) {
                    fMax = Math.max(degrees2, degrees3);
                    rectF = storyCircle2.borderRect;
                    f5 = 360.0f - (2.0f * fMax);
                    z = false;
                    profileStoriesView = this;
                    canvas2 = canvas;
                } else if (z2) {
                    drawArc(canvas, storyCircle2.borderRect, degrees3 + 180.0f, 180.0f - (degrees2 + degrees3), false, paint);
                    rectF = storyCircle2.borderRect;
                    f5 = (180.0f - degrees3) - degrees2;
                    z = false;
                    profileStoriesView = this;
                    canvas2 = canvas;
                    fMax = degrees2;
                } else if (z3) {
                    drawArc(canvas, storyCircle2.borderRect, degrees2 + 180.0f, 180.0f - (degrees3 + degrees2), false, paint);
                    rectF = storyCircle2.borderRect;
                    f5 = (180.0f - degrees3) - degrees2;
                    z = false;
                    profileStoriesView = this;
                    canvas2 = canvas;
                    fMax = degrees3;
                } else {
                    degrees = Math.max(degrees2, degrees3);
                }
                profileStoriesView.drawArc(canvas2, rectF, fMax, f5, z, paint);
                return;
            }
            if (storyCircle4 == null && storyCircle3 == null) {
                return;
            }
            if (storyCircle4 == null) {
                storyCircle4 = storyCircle3;
            }
            float fCenterX4 = storyCircle4.borderRect.centerX();
            float fWidth4 = storyCircle4.borderRect.width() / 2.0f;
            float fCenterX5 = storyCircle2.borderRect.centerX();
            if (Math.abs(fCenterX4 - fCenterX5) <= fWidth4 + (storyCircle2.borderRect.width() / 2.0f)) {
                if (fCenterX4 > fCenterX5) {
                    float degrees4 = (float) Math.toDegrees(Math.acos(Math.abs((((fCenterX4 - fWidth4) + (fCenterX5 + r7)) / 2.0f) - fCenterX5) / r7));
                    drawArc(canvas, storyCircle2.borderRect, degrees4, 360.0f - (2.0f * degrees4), false, paint);
                    return;
                }
                degrees = (float) Math.toDegrees(Math.acos(Math.abs((((fCenterX4 + fWidth4) + (fCenterX5 - r7)) / 2.0f) - fCenterX5) / r7));
            }
            drawArc(canvas, storyCircle2.borderRect, degrees + 180.0f, 360.0f - (degrees * 2.0f), false, paint);
            return;
        }
        drawArc(canvas, storyCircle2.borderRect, BitmapDescriptorFactory.HUE_RED, 360.0f, false, paint);
    }

    private float getExpandRight() {
        return this.expandRight - (this.expandRightPadAnimated.set(this.expandRightPad) * AndroidUtilities.dp(71.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateBounce$3(ValueAnimator valueAnimator) {
        ProfileActivity.AvatarImageView avatarImageView = this.avatarImage;
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.bounceScale = fFloatValue;
        avatarImageView.bounceScale = fFloatValue;
        this.avatarImage.invalidate();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateNewStory$1(boolean[] zArr, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        if (!zArr[0] && fFloatValue > 0.2f) {
            zArr[0] = true;
            vibrateNewStory();
        }
        this.newStoryBounceT = Math.max(1.0f, fFloatValue);
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$dispatchDraw$2(StoryCircle storyCircle, StoryCircle storyCircle2) {
        return (int) (storyCircle2.cachedIndex - storyCircle.cachedIndex);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$vibrateNewStory$0() {
        AndroidUtilities.vibrateCursor(this);
    }

    private void lerpCentered(RectF rectF, RectF rectF2, float f, RectF rectF3) {
        float fLerp = AndroidUtilities.lerp(rectF.centerX(), rectF2.centerX(), f);
        float fLerp2 = AndroidUtilities.lerp(rectF.centerY(), rectF2.centerY(), f);
        float fLerp3 = AndroidUtilities.lerp(Math.min(rectF.width(), rectF.height()), Math.min(rectF2.width(), rectF2.height()), f) / 2.0f;
        rectF3.set(fLerp - fLerp3, fLerp2 - fLerp3, fLerp + fLerp3, fLerp2 + fLerp3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public StoryCircle nearest(StoryCircle storyCircle, StoryCircle storyCircle2, StoryCircle storyCircle3) {
        if (storyCircle3 == null) {
            return null;
        }
        if (storyCircle == null && storyCircle2 == null) {
            return null;
        }
        return (storyCircle == null || storyCircle2 == null) ? storyCircle != null ? storyCircle : storyCircle2 : Math.min(Math.abs(storyCircle.borderRect.left - storyCircle3.borderRect.right), Math.abs(storyCircle.borderRect.right - storyCircle3.borderRect.left)) > Math.min(Math.abs(storyCircle2.borderRect.left - storyCircle3.borderRect.right), Math.abs(storyCircle2.borderRect.right - storyCircle3.borderRect.left)) ? storyCircle : storyCircle2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:105:0x018b A[PHI: r7
      0x018b: PHI (r7v15 org.telegram.tgnet.tl.TL_stories$StoryItem) = (r7v14 org.telegram.tgnet.tl.TL_stories$StoryItem), (r7v17 org.telegram.tgnet.tl.TL_stories$StoryItem) binds: [B:82:0x0139, B:103:0x0188] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0306 A[PHI: r3
      0x0306: PHI (r3v17 org.telegram.tgnet.TLRPC$EmojiStatus) = (r3v16 org.telegram.tgnet.TLRPC$EmojiStatus), (r3v21 org.telegram.tgnet.TLRPC$EmojiStatus) binds: [B:213:0x0304, B:207:0x02ec] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateStories(boolean z, boolean z2) {
        ArrayList arrayList;
        int i;
        TLRPC.EmojiStatus emojiStatus;
        TL_stories$StoryItem tL_stories$StoryItem;
        int i2;
        if (this.isTopic) {
            return;
        }
        boolean z3 = this.dialogId == UserConfig.getInstance(this.currentAccount).getClientUserId();
        int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
        TL_stories$PeerStories storiesFromFullPeer = MessagesController.getInstance(this.currentAccount).getStoriesController().getStoriesFromFullPeer(this.dialogId);
        TL_stories$PeerStories stories = MessagesController.getInstance(this.currentAccount).getStoriesController().getStories(this.dialogId);
        TL_stories$PeerStories tL_stories$PeerStories = this.dialogId == 0 ? null : storiesFromFullPeer;
        int iMax = storiesFromFullPeer != null ? Math.max(0, storiesFromFullPeer.max_read_id) : 0;
        if (stories != null) {
            iMax = Math.max(iMax, stories.max_read_id);
        }
        if (tL_stories$PeerStories == null || (arrayList = tL_stories$PeerStories.stories) == null) {
            arrayList = new ArrayList();
        }
        ArrayList arrayList2 = new ArrayList();
        int i3 = this.unreadCount;
        this.unreadCount = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            TL_stories$StoryItem tL_stories$StoryItem2 = (TL_stories$StoryItem) arrayList.get(i5);
            if (!(tL_stories$StoryItem2 instanceof TL_stories$TL_storyItemDeleted)) {
                if (tL_stories$StoryItem2.id > iMax) {
                    this.unreadCount++;
                }
                i4++;
            }
        }
        int i6 = 0;
        while (true) {
            if (i6 >= arrayList.size()) {
                i = 3;
                break;
            }
            TL_stories$StoryItem tL_stories$StoryItem3 = (TL_stories$StoryItem) arrayList.get(i6);
            if (!(tL_stories$StoryItem3 instanceof TL_stories$TL_storyItemDeleted)) {
                if (tL_stories$StoryItem3 instanceof TL_stories$TL_storyItemSkipped) {
                    int i7 = tL_stories$StoryItem3.id;
                    if (stories != null) {
                        for (int i8 = 0; i8 < stories.stories.size(); i8++) {
                            if (((TL_stories$StoryItem) stories.stories.get(i8)).id == i7) {
                                tL_stories$StoryItem3 = (TL_stories$StoryItem) stories.stories.get(i8);
                                break;
                            }
                        }
                    }
                    tL_stories$StoryItem3 = tL_stories$StoryItem3;
                    boolean z4 = tL_stories$StoryItem3 instanceof TL_stories$TL_storyItemSkipped;
                    if (z4) {
                        if (storiesFromFullPeer != null) {
                            int i9 = 0;
                            while (true) {
                                if (i9 >= storiesFromFullPeer.stories.size()) {
                                    break;
                                }
                                if (((TL_stories$StoryItem) storiesFromFullPeer.stories.get(i9)).id == i7) {
                                    break;
                                }
                                i9++;
                            }
                        }
                    } else if (z4) {
                        continue;
                    }
                }
                int i10 = tL_stories$StoryItem3.expire_date;
                if ((i10 == 0 || currentTime <= i10) && (z3 || tL_stories$StoryItem3.id > iMax)) {
                    arrayList2.add(tL_stories$StoryItem3);
                    i = 3;
                    if (arrayList2.size() >= 3) {
                        break;
                    }
                }
            }
            i6++;
        }
        if (arrayList2.size() < i) {
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                TL_stories$StoryItem tL_stories$StoryItem4 = (TL_stories$StoryItem) arrayList.get(i11);
                if (tL_stories$StoryItem4 instanceof TL_stories$TL_storyItemSkipped) {
                    int i12 = tL_stories$StoryItem4.id;
                    if (stories != null) {
                        int i13 = 0;
                        while (true) {
                            if (i13 >= stories.stories.size()) {
                                break;
                            }
                            if (((TL_stories$StoryItem) stories.stories.get(i13)).id == i12) {
                                tL_stories$StoryItem4 = (TL_stories$StoryItem) stories.stories.get(i13);
                                break;
                            }
                            i13++;
                        }
                    }
                    boolean z5 = tL_stories$StoryItem4 instanceof TL_stories$TL_storyItemSkipped;
                    if (!z5) {
                        if (z5) {
                            break;
                        }
                        if (!(tL_stories$StoryItem4 instanceof TL_stories$TL_storyItemDeleted) && (((i2 = tL_stories$StoryItem4.expire_date) == 0 || currentTime <= i2) && !arrayList2.contains(tL_stories$StoryItem4))) {
                            arrayList2.add(tL_stories$StoryItem4);
                            if (arrayList2.size() >= 3) {
                                break;
                            }
                        }
                    } else if (storiesFromFullPeer != null) {
                        int i14 = 0;
                        while (true) {
                            if (i14 >= storiesFromFullPeer.stories.size()) {
                                break;
                            }
                            if (((TL_stories$StoryItem) storiesFromFullPeer.stories.get(i14)).id == i12) {
                                break;
                            }
                            i14++;
                        }
                    }
                }
            }
        }
        for (int i15 = 0; i15 < this.circles.size(); i15++) {
            StoryCircle storyCircle = (StoryCircle) this.circles.get(i15);
            int i16 = 0;
            while (true) {
                if (i16 >= arrayList2.size()) {
                    i16 = -1;
                    tL_stories$StoryItem = null;
                    break;
                } else {
                    tL_stories$StoryItem = (TL_stories$StoryItem) arrayList2.get(i16);
                    if (tL_stories$StoryItem.id == storyCircle.storyId) {
                        break;
                    } else {
                        i16++;
                    }
                }
            }
            if (i16 == -1) {
                storyCircle.scale = BitmapDescriptorFactory.HUE_RED;
            } else {
                storyCircle.index = i16;
                storyCircle.read = z3 || !(tL_stories$PeerStories == null || tL_stories$StoryItem == null || tL_stories$StoryItem.id > this.storiesController.getMaxStoriesReadId(this.dialogId));
            }
            if (!z) {
                storyCircle.apply();
            }
        }
        for (int i17 = 0; i17 < arrayList2.size(); i17++) {
            TL_stories$StoryItem tL_stories$StoryItem5 = (TL_stories$StoryItem) arrayList2.get(i17);
            int i18 = 0;
            while (true) {
                if (i18 >= this.circles.size()) {
                    i18 = -1;
                    break;
                } else if (((StoryCircle) this.circles.get(i18)).storyId == tL_stories$StoryItem5.id) {
                    break;
                } else {
                    i18++;
                }
            }
            if (i18 == -1) {
                tL_stories$StoryItem5.dialogId = this.dialogId;
                StoryCircle storyCircle2 = new StoryCircle(tL_stories$StoryItem5);
                storyCircle2.index = i17;
                storyCircle2.scale = 1.0f;
                storyCircle2.scaleAnimated.set(BitmapDescriptorFactory.HUE_RED, true);
                storyCircle2.read = z3 || (tL_stories$PeerStories != null && tL_stories$StoryItem5.id <= tL_stories$PeerStories.max_read_id);
                if (!z) {
                    storyCircle2.apply();
                }
                this.circles.add(storyCircle2);
            }
        }
        this.mainCircle = null;
        int i19 = 0;
        while (true) {
            if (i19 >= this.circles.size()) {
                break;
            }
            StoryCircle storyCircle3 = (StoryCircle) this.circles.get(i19);
            if (storyCircle3.scale > BitmapDescriptorFactory.HUE_RED) {
                this.mainCircle = storyCircle3;
                break;
            }
            i19++;
        }
        ArrayList uploadingStories = this.storiesController.getUploadingStories(this.dialogId);
        this.uploadingStoriesCount = uploadingStories == null ? 0 : uploadingStories.size();
        int iMax2 = Math.max(arrayList2.size(), i4);
        if (iMax2 == 0 && this.uploadingStoriesCount != 0) {
            iMax2 = 1;
        }
        if (z2 && z) {
            if (iMax2 == this.count + 1 && this.unreadCount == i3 + 1) {
                animateNewStory();
            }
        }
        this.count = iMax2;
        this.titleDrawable.setText(iMax2 > 0 ? LocaleController.formatPluralString("Stories", iMax2, new Object[0]) : "", z && !LocaleController.isRTL);
        long j = this.dialogId;
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        long j2 = this.dialogId;
        if (j >= 0) {
            TLRPC.User user = messagesController.getUser(Long.valueOf(j2));
            if (user != null) {
                emojiStatus = user.emoji_status;
                if (emojiStatus instanceof TLRPC.TL_emojiStatusCollectible) {
                    this.gradientTools.setColor(MessagesController.PeerColor.fromCollectible(emojiStatus), z);
                }
            }
            this.gradientTools.setUser(user, z);
        } else {
            TLRPC.Chat chat = messagesController.getChat(Long.valueOf(-j2));
            if (chat != null) {
                emojiStatus = chat.emoji_status;
                if (emojiStatus instanceof TLRPC.TL_emojiStatusCollectible) {
                }
            }
            this.gradientTools.setChat(chat, z);
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void vibrateNewStory() {
        if (SharedConfig.getDevicePerformanceClass() <= 0) {
            return;
        }
        AndroidUtilities.vibrateCursor(this);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.ProfileStoriesView$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$vibrateNewStory$0();
            }
        }, 180L);
    }

    public void animateNewStory() {
        ValueAnimator valueAnimator = this.newStoryBounce;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        final boolean[] zArr = {false};
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.newStoryBounce = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.ProfileStoriesView$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$animateNewStory$1(zArr, valueAnimator2);
            }
        });
        this.newStoryBounce.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.ProfileStoriesView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                boolean[] zArr2 = zArr;
                if (!zArr2[0]) {
                    zArr2[0] = true;
                    ProfileStoriesView.this.vibrateNewStory();
                }
                ProfileStoriesView.this.newStoryBounceT = 1.0f;
                ProfileStoriesView.this.invalidate();
            }
        });
        this.newStoryBounce.setInterpolator(new OvershootInterpolator(3.0f));
        this.newStoryBounce.setDuration(400L);
        this.newStoryBounce.setStartDelay(120L);
        this.newStoryBounce.start();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.storiesUpdated) {
            updateStories(true, true);
        }
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        float f;
        Paint paint;
        StoryCircle storyCircle;
        float fClamp;
        float f2;
        int i;
        float f3;
        float f4;
        int i2;
        Paint paint2;
        float size;
        StoriesController.UploadingStory uploadingStory;
        this.rightAnimated.set(this.right);
        float fClamp2 = Utilities.clamp((this.avatarContainer.getScaleX() - 1.0f) / 0.4f, 1.0f, BitmapDescriptorFactory.HUE_RED);
        float fLerp = AndroidUtilities.lerp(AndroidUtilities.dpf2(4.0f), AndroidUtilities.dpf2(3.5f), fClamp2) * this.progressToInsets;
        float x = this.avatarContainer.getX() + (this.avatarContainer.getScaleX() * fLerp);
        float y = this.avatarContainer.getY() + (this.avatarContainer.getScaleY() * fLerp);
        float f5 = fLerp * 2.0f;
        this.rect1.set(x, y, ((this.avatarContainer.getWidth() - f5) * this.avatarContainer.getScaleX()) + x, ((this.avatarContainer.getHeight() - f5) * this.avatarContainer.getScaleY()) + y);
        float fMax = this.left;
        int i3 = 0;
        while (true) {
            if (i3 >= this.circles.size()) {
                break;
            }
            StoryCircle storyCircle2 = (StoryCircle) this.circles.get(i3);
            float f6 = storyCircle2.scaleAnimated.set(storyCircle2.scale);
            storyCircle2.cachedScale = f6;
            if (f6 > BitmapDescriptorFactory.HUE_RED || storyCircle2.scale > BitmapDescriptorFactory.HUE_RED) {
                storyCircle2.cachedIndex = storyCircle2.indexAnimated.set(storyCircle2.index);
                storyCircle2.cachedRead = storyCircle2.readAnimated.set(storyCircle2.read);
                if (i3 > 0 && ((StoryCircle) this.circles.get(i3 - 1)).cachedIndex > storyCircle2.cachedIndex) {
                    Collections.sort(this.circles, new Comparator() { // from class: org.telegram.ui.Stories.ProfileStoriesView$$ExternalSyntheticLambda0
                        @Override // java.util.Comparator
                        public final int compare(Object obj, Object obj2) {
                            return ProfileStoriesView.lambda$dispatchDraw$2((ProfileStoriesView.StoryCircle) obj, (ProfileStoriesView.StoryCircle) obj2);
                        }
                    });
                    break;
                }
            } else {
                storyCircle2.destroy();
                this.circles.remove(i3);
                i3--;
            }
            i3++;
        }
        float fClamp3 = Utilities.clamp(1.0f - (this.expandProgress / 0.2f), 1.0f, BitmapDescriptorFactory.HUE_RED);
        boolean zIsLastUploadingFailed = this.storiesController.isLastUploadingFailed(this.dialogId);
        boolean zHasUploadingStories = this.storiesController.hasUploadingStories(this.dialogId);
        if (!zHasUploadingStories && (uploadingStory = this.lastUploadingStory) != null && uploadingStory.canceled) {
            this.progressWasDrawn = false;
            this.progressIsDone = false;
            this.progressToUploading.set(false, true);
        }
        float fLerp2 = AndroidUtilities.lerp(BitmapDescriptorFactory.HUE_RED, this.progressToUploading.set((zHasUploadingStories && !zIsLastUploadingFailed) || (this.progressWasDrawn && !this.progressIsDone)), this.fragmentTransitionProgress);
        canvas.save();
        float f7 = this.bounceScale;
        canvas.scale(f7, f7, this.rect1.centerX(), this.rect1.centerY());
        float fLerp3 = AndroidUtilities.lerp(this.rect1.centerY(), this.expandY, this.expandProgress);
        this.lastUploadingStory = null;
        if (fLerp2 > BitmapDescriptorFactory.HUE_RED) {
            this.rect2.set(this.rect1);
            this.rect2.inset(-AndroidUtilities.dpf2(3.775f), -AndroidUtilities.dpf2(3.775f));
            paint = this.gradientTools.getPaint(this.rect2);
            if (this.radialProgress == null) {
                RadialProgress radialProgress = new RadialProgress(this);
                this.radialProgress = radialProgress;
                radialProgress.setBackground(null, true, false);
                this.radialProgress.setRoundRectProgress(ChatObject.isForum(UserConfig.selectedAccount, this.dialogId));
            }
            f = fLerp3;
            if (!this.storiesController.hasUploadingStories(this.dialogId) || this.storiesController.isLastUploadingFailed(this.dialogId)) {
                size = 1.0f;
            } else {
                ArrayList uploadingStories = this.storiesController.getUploadingStories(this.dialogId);
                if (uploadingStories != null) {
                    if (uploadingStories.size() > 0) {
                        this.lastUploadingStory = (StoriesController.UploadingStory) uploadingStories.get(0);
                    }
                    float f8 = BitmapDescriptorFactory.HUE_RED;
                    for (int i4 = 0; i4 < uploadingStories.size(); i4++) {
                        f8 += ((StoriesController.UploadingStory) uploadingStories.get(i4)).progress;
                    }
                    size = f8 / uploadingStories.size();
                } else {
                    size = BitmapDescriptorFactory.HUE_RED;
                }
            }
            this.radialProgress.setDiff(0);
            paint.setAlpha((int) (fClamp3 * 255.0f * fLerp2));
            paint.setStrokeWidth(AndroidUtilities.dpf2(2.33f));
            this.radialProgress.setPaint(paint);
            RadialProgress radialProgress2 = this.radialProgress;
            RectF rectF = this.rect2;
            radialProgress2.setProgressRect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
            this.radialProgress.setProgress(Utilities.clamp(size, 1.0f, BitmapDescriptorFactory.HUE_RED), true);
            if (this.avatarImage.drawAvatar) {
                this.radialProgress.draw(canvas);
            }
            this.progressWasDrawn = true;
            boolean z = this.progressIsDone;
            boolean z2 = this.radialProgress.getAnimatedProgress() >= 0.98f;
            this.progressIsDone = z2;
            if (z != z2) {
                this.segmentsCountAnimated.set(this.count, true);
                this.segmentsUnreadCountAnimated.set(this.unreadCount, true);
                animateBounce();
            }
        } else {
            f = fLerp3;
            this.progressWasDrawn = false;
            paint = null;
        }
        if (fLerp2 < 1.0f) {
            fClamp = Utilities.clamp(1.0f - (this.expandProgress / 0.2f), 1.0f, BitmapDescriptorFactory.HUE_RED) * (1.0f - fLerp2);
            float f9 = this.segmentsCountAnimated.set(this.count);
            float f10 = this.segmentsUnreadCountAnimated.set(this.unreadCount);
            if (zIsLastUploadingFailed) {
                this.rect2.set(this.rect1);
                this.rect2.inset(-AndroidUtilities.dpf2(3.775f), -AndroidUtilities.dpf2(3.775f));
                Paint errorPaint = StoriesUtilities.getErrorPaint(this.rect2);
                errorPaint.setStrokeWidth(AndroidUtilities.dp(2.0f));
                errorPaint.setAlpha((int) (fClamp * 255.0f));
                if (ChatObject.isForum(UserConfig.selectedAccount, this.dialogId)) {
                    float fHeight = this.rect2.height() * 0.32f;
                    canvas.drawRoundRect(this.rect2, fHeight, fHeight, errorPaint);
                } else {
                    canvas.drawCircle(this.rect2.centerX(), this.rect2.centerY(), this.rect2.width() / 2.0f, errorPaint);
                }
            } else if ((this.mainCircle != null || this.uploadingStoriesCount > 0) && fClamp > BitmapDescriptorFactory.HUE_RED) {
                this.rect2.set(this.rect1);
                this.rect2.inset(-AndroidUtilities.dpf2(3.775f), -AndroidUtilities.dpf2(3.775f));
                this.rect3.set(this.rect1);
                this.rect3.inset(-AndroidUtilities.dpf2(3.41f), -AndroidUtilities.dpf2(3.41f));
                RectF rectF2 = this.rect2;
                RectF rectF3 = this.rect3;
                AndroidUtilities.lerp(rectF2, rectF3, fClamp2, rectF3);
                double dDpf2 = AndroidUtilities.dpf2(4.23f);
                double dWidth = this.rect1.width();
                Double.isNaN(dWidth);
                Double.isNaN(dDpf2);
                float fLerp4 = AndroidUtilities.lerp(BitmapDescriptorFactory.HUE_RED, (float) ((dDpf2 / (dWidth * 3.141592653589793d)) * 360.0d), Utilities.clamp(f9 - 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED) * fClamp);
                int iMin = Math.min(this.count, 50);
                float fMin = Math.min(f9, 50.0f);
                int i5 = iMin > 20 ? 3 : 5;
                if (iMin <= 1) {
                    i5 = 0;
                }
                float fLerp5 = AndroidUtilities.lerp(i5 * 2, fLerp4, fClamp2);
                float fMax2 = (360.0f - (Math.max(BitmapDescriptorFactory.HUE_RED, fMin) * fLerp5)) / Math.max(1.0f, fMin);
                this.readPaint.setColor(ColorUtils.blendARGB(1526726655, 973078528, this.actionBarProgress));
                this.readPaintAlpha = this.readPaint.getAlpha();
                float f11 = (-90.0f) - (fLerp5 / 2.0f);
                int i6 = 0;
                while (i6 < iMin) {
                    float f12 = i6;
                    float fClamp4 = 1.0f - Utilities.clamp(f10 - f12, 1.0f, BitmapDescriptorFactory.HUE_RED);
                    float fClamp5 = 1.0f - Utilities.clamp((iMin - fMin) - f12, 1.0f, BitmapDescriptorFactory.HUE_RED);
                    if (fClamp5 < BitmapDescriptorFactory.HUE_RED) {
                        i = i6;
                        f3 = fMax2;
                        f4 = fMin;
                        i2 = iMin;
                    } else {
                        float f13 = i6 == 0 ? ((this.newStoryBounceT - 1.0f) / 2.5f) + 1.0f : 1.0f;
                        if (f13 != 1.0f) {
                            canvas.save();
                            canvas.scale(f13, f13, this.rect2.centerX(), this.rect2.centerY());
                        }
                        if (fClamp4 < 1.0f) {
                            paint2 = this.gradientTools.getPaint(this.rect2);
                            paint2.setAlpha((int) ((1.0f - fClamp4) * 255.0f * fClamp));
                            paint2.setStrokeWidth(AndroidUtilities.dpf2(2.33f));
                            f2 = f13;
                            i = i6;
                            f3 = fMax2;
                            f4 = fMin;
                            i2 = iMin;
                            drawArc(canvas, this.rect2, f11, (-fMax2) * fClamp5, false, paint2);
                        } else {
                            f2 = f13;
                            i = i6;
                            f3 = fMax2;
                            f4 = fMin;
                            i2 = iMin;
                            paint2 = paint;
                        }
                        if (fClamp4 > BitmapDescriptorFactory.HUE_RED) {
                            this.readPaint.setAlpha((int) (this.readPaintAlpha * fClamp4 * fClamp));
                            this.readPaint.setStrokeWidth(AndroidUtilities.dpf2(1.5f));
                            drawArc(canvas, this.rect3, f11, (-f3) * fClamp5, false, this.readPaint);
                        }
                        if (f2 != 1.0f) {
                            canvas.restore();
                        }
                        f11 -= (f3 * fClamp5) + (fClamp5 * fLerp5);
                        paint = paint2;
                    }
                    i6 = i + 1;
                    fMin = f4;
                    fMax2 = f3;
                    iMin = i2;
                }
            }
            storyCircle = null;
        } else {
            storyCircle = null;
            fClamp = fClamp3;
        }
        float expandRight = getExpandRight();
        if (this.expandProgress > BitmapDescriptorFactory.HUE_RED && fClamp < 1.0f) {
            this.w = BitmapDescriptorFactory.HUE_RED;
            for (int i7 = 0; i7 < this.circles.size(); i7++) {
                this.w += AndroidUtilities.dp(14.0f) * ((StoryCircle) this.circles.get(i7)).cachedScale;
            }
            float fDp = BitmapDescriptorFactory.HUE_RED;
            for (int i8 = 0; i8 < this.circles.size(); i8++) {
                StoryCircle storyCircle3 = (StoryCircle) this.circles.get(i8);
                float f14 = storyCircle3.cachedScale;
                float f15 = storyCircle3.cachedRead;
                float fDp2 = (AndroidUtilities.dp(28.0f) / 2.0f) * f14;
                float f16 = (expandRight - this.w) + fDp2 + fDp;
                fDp += AndroidUtilities.dp(18.0f) * f14;
                float f17 = f16 + fDp2;
                fMax = Math.max(fMax, f17);
                this.rect2.set(f16 - fDp2, f - fDp2, f17, fDp2 + f);
                lerpCentered(this.rect1, this.rect2, this.expandProgress, this.rect3);
                storyCircle3.cachedRect.set(this.rect3);
                storyCircle3.borderRect.set(this.rect3);
                float f18 = (-AndroidUtilities.lerp(AndroidUtilities.dpf2(2.66f), AndroidUtilities.lerp(AndroidUtilities.dpf2(1.33f), AndroidUtilities.dpf2(2.33f), this.expandProgress), f15 * this.expandProgress)) * f14;
                storyCircle3.borderRect.inset(f18, f18);
            }
            this.readPaint.setColor(ColorUtils.blendARGB(1526726655, -2135178036, this.expandProgress));
            this.readPaintAlpha = this.readPaint.getAlpha();
            Paint paint3 = this.gradientTools.getPaint(this.rect2);
            paint3.setStrokeWidth(AndroidUtilities.lerp(AndroidUtilities.dpf2(2.33f), AndroidUtilities.dpf2(1.5f), this.expandProgress));
            this.readPaint.setStrokeWidth(AndroidUtilities.lerp(AndroidUtilities.dpf2(1.125f), AndroidUtilities.dpf2(1.5f), this.expandProgress));
            if (this.expandProgress > BitmapDescriptorFactory.HUE_RED) {
                for (int i9 = 0; i9 < this.circles.size(); i9++) {
                    StoryCircle storyCircle4 = (StoryCircle) this.circles.get(i9);
                    int alpha = this.whitePaint.getAlpha();
                    this.whitePaint.setAlpha((int) (alpha * this.expandProgress));
                    canvas.drawCircle(storyCircle4.cachedRect.centerX(), storyCircle4.cachedRect.centerY(), (Math.min(storyCircle4.cachedRect.width(), storyCircle4.cachedRect.height()) / 2.0f) + (AndroidUtilities.lerp(AndroidUtilities.dpf2(2.66f) + (paint3.getStrokeWidth() / 2.0f), AndroidUtilities.dpf2(2.33f) - (this.readPaint.getStrokeWidth() / 2.0f), storyCircle4.cachedRead) * this.expandProgress), this.whitePaint);
                    this.whitePaint.setAlpha(alpha);
                }
            }
            int i10 = 0;
            while (i10 < this.circles.size()) {
                StoryCircle storyCircle5 = (StoryCircle) this.circles.get(i10);
                int i11 = i10 - 2;
                int i12 = i10 - 1;
                StoryCircle storyCircleNearest = nearest(i11 >= 0 ? (StoryCircle) this.circles.get(i11) : storyCircle, i12 >= 0 ? (StoryCircle) this.circles.get(i12) : storyCircle, storyCircle5);
                int i13 = i10 + 1;
                int i14 = i10 + 2;
                StoryCircle storyCircleNearest2 = nearest(i13 < this.circles.size() ? (StoryCircle) this.circles.get(i13) : storyCircle, i14 < this.circles.size() ? (StoryCircle) this.circles.get(i14) : storyCircle, storyCircle5);
                StoryCircle storyCircle6 = (storyCircleNearest == null || (Math.abs(storyCircleNearest.borderRect.centerX() - storyCircle5.borderRect.centerX()) >= Math.abs((storyCircle5.borderRect.width() / 2.0f) - (storyCircleNearest.borderRect.width() / 2.0f)) && Math.abs(storyCircleNearest.borderRect.centerX() - storyCircle5.borderRect.centerX()) <= (storyCircleNearest.borderRect.width() / 2.0f) + (storyCircle5.borderRect.width() / 2.0f))) ? storyCircleNearest : storyCircle;
                StoryCircle storyCircle7 = (storyCircleNearest2 == null || (Math.abs(storyCircleNearest2.borderRect.centerX() - storyCircle5.borderRect.centerX()) >= Math.abs((storyCircle5.borderRect.width() / 2.0f) - (storyCircleNearest2.borderRect.width() / 2.0f)) && Math.abs(storyCircleNearest2.borderRect.centerX() - storyCircle5.borderRect.centerX()) <= (storyCircleNearest2.borderRect.width() / 2.0f) + (storyCircle5.borderRect.width() / 2.0f))) ? storyCircleNearest2 : storyCircle;
                float f19 = storyCircle5.cachedRead;
                if (f19 < 1.0f) {
                    paint3.setAlpha((int) (storyCircle5.cachedScale * 255.0f * (1.0f - f19) * (1.0f - fClamp)));
                    drawArcs(canvas, storyCircle6, storyCircle5, storyCircle7, paint3);
                }
                float f20 = storyCircle5.cachedRead;
                if (f20 > BitmapDescriptorFactory.HUE_RED) {
                    this.readPaint.setAlpha((int) (this.readPaintAlpha * storyCircle5.cachedScale * f20 * (1.0f - fClamp)));
                    drawArcs(canvas, storyCircle6, storyCircle5, storyCircle7, this.readPaint);
                }
                i10 = i13;
            }
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), (int) (this.expandProgress * 255.0f * (1.0f - fClamp)), 31);
            for (int size2 = this.circles.size() - 1; size2 >= 0; size2--) {
                StoryCircle storyCircle8 = (StoryCircle) this.circles.get(size2);
                if (storyCircle8.imageReceiver.getVisible()) {
                    int saveCount = canvas.getSaveCount();
                    int i15 = size2 - 1;
                    StoryCircle storyCircle9 = i15 >= 0 ? (StoryCircle) this.circles.get(i15) : storyCircle;
                    int i16 = size2 - 2;
                    clipCircle(canvas, storyCircle8, nearest(storyCircle9, i16 >= 0 ? (StoryCircle) this.circles.get(i16) : storyCircle, storyCircle8));
                    storyCircle8.imageReceiver.setImageCoords(storyCircle8.cachedRect);
                    storyCircle8.imageReceiver.draw(canvas);
                    canvas.restoreToCount(saveCount);
                }
            }
            canvas.restore();
            paint = paint3;
        }
        if (paint != null) {
            paint.setStrokeWidth(AndroidUtilities.dpf2(2.3f));
        }
        canvas.restore();
    }

    public float getFragmentTransitionProgress() {
        return this.fragmentTransitionProgress;
    }

    public boolean isEmpty() {
        return this.circles.isEmpty();
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attached = true;
        for (int i = 0; i < this.circles.size(); i++) {
            ((StoryCircle) this.circles.get(i)).imageReceiver.onAttachedToWindow();
        }
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.storiesUpdated);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attached = false;
        for (int i = 0; i < this.circles.size(); i++) {
            ((StoryCircle) this.circles.get(i)).imageReceiver.onDetachedFromWindow();
        }
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.storiesUpdated);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: onLongPress, reason: merged with bridge method [inline-methods] */
    public abstract void lambda$new$4();

    protected abstract void onTap(StoryViewer.PlaceProvider placeProvider);

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zContains = this.expandProgress < 0.9f ? this.rect2.contains(motionEvent.getX(), motionEvent.getY()) : motionEvent.getX() >= (getExpandRight() - this.w) - ((float) AndroidUtilities.dp(32.0f)) && motionEvent.getX() <= getExpandRight() + ((float) AndroidUtilities.dp(32.0f)) && Math.abs(motionEvent.getY() - this.expandY) < ((float) AndroidUtilities.dp(32.0f));
        if (zContains && motionEvent.getAction() == 0) {
            this.tapTime = System.currentTimeMillis();
            this.tapX = motionEvent.getX();
            this.tapY = motionEvent.getY();
            AndroidUtilities.cancelRunOnUIThread(this.onLongPressRunnable);
            AndroidUtilities.runOnUIThread(this.onLongPressRunnable, ViewConfiguration.getLongPressTimeout());
            return true;
        }
        if (motionEvent.getAction() == 1) {
            AndroidUtilities.cancelRunOnUIThread(this.onLongPressRunnable);
            if (zContains && System.currentTimeMillis() - this.tapTime <= ViewConfiguration.getTapTimeout() && MathUtils.distance(this.tapX, this.tapY, motionEvent.getX(), motionEvent.getY()) <= AndroidUtilities.dp(12.0f) && (this.storiesController.hasUploadingStories(this.dialogId) || this.storiesController.hasStories(this.dialogId) || !this.circles.isEmpty())) {
                onTap(this.provider);
                return true;
            }
        } else if (motionEvent.getAction() == 3) {
            this.tapTime = -1L;
            AndroidUtilities.cancelRunOnUIThread(this.onLongPressRunnable);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setActionBarActionMode(float f) {
        if (Theme.isCurrentThemeDark()) {
            return;
        }
        this.actionBarProgress = f;
        invalidate();
    }

    public void setBounds(float f, float f2, float f3, boolean z) {
        boolean z2 = Math.abs(f - this.left) > 0.1f || Math.abs(f2 - this.right) > 0.1f || Math.abs(f3 - this.cy) > 0.1f;
        this.left = f;
        this.right = f2;
        if (!z) {
            this.rightAnimated.set(f2, true);
        }
        this.cy = f3;
        if (z2) {
            invalidate();
        }
    }

    public void setExpandCoords(float f, boolean z, float f2) {
        this.expandRight = f;
        this.expandRightPad = z;
        this.expandY = f2;
        invalidate();
    }

    public void setExpandProgress(float f) {
        if (this.expandProgress != f) {
            this.expandProgress = f;
            invalidate();
        }
    }

    public void setFragmentTransitionProgress(float f) {
        if (this.fragmentTransitionProgress == f) {
            return;
        }
        this.fragmentTransitionProgress = f;
        invalidate();
    }

    public void setProgressToStoriesInsets(float f) {
        if (this.progressToInsets == f) {
            return;
        }
        this.progressToInsets = f;
        invalidate();
    }

    public void setStories(TL_stories$PeerStories tL_stories$PeerStories) {
        this.peerStories = tL_stories$PeerStories;
        updateStories(true, false);
    }

    public void update() {
        updateStories(true, true);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.titleDrawable || super.verifyDrawable(drawable);
    }
}
