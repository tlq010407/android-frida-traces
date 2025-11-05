package org.telegram.ui.Stories;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.util.Consumer;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import com.huawei.wisesecurity.ucs.credential.nativelib.UcsLib;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.R;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stories$PeerStories;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.ButtonBounce;
import org.telegram.ui.Components.CanvasButton;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EllipsizeSpanAnimator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.ListView.AdapterWithDiffUtils;
import org.telegram.ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.ui.Components.RadialProgress;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.TypefaceSpan;
import org.telegram.ui.PremiumPreviewFragment;
import org.telegram.ui.Stories.DialogStoriesCell;
import org.telegram.ui.Stories.StoriesController;
import org.telegram.ui.Stories.StoriesListPlaceProvider;
import org.telegram.ui.Stories.StoriesUtilities;
import org.telegram.ui.Stories.recorder.HintView2;
import org.telegram.ui.Stories.recorder.StoryRecorder;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public abstract class DialogStoriesCell extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    float K;
    private ActionBar actionBar;
    Adapter adapter;
    Paint addCirclePaint;
    private final Drawable addNewStoryDrawable;
    private int addNewStoryLastColor;
    ArrayList afterNextLayout;
    public boolean allowGlobalUpdates;
    ArrayList animateToDialogIds;
    private Runnable animationRunnable;
    Paint backgroundPaint;
    private long checkedStoryNotificationDeletion;
    private int clipTop;
    boolean collapsed;
    float collapsedProgress;
    private float collapsedProgress1;
    private float collapsedProgress2;
    Comparator comparator;
    int currentAccount;
    public int currentCellWidth;
    int currentState;
    private CharSequence currentTitle;
    boolean drawCircleForce;
    EllipsizeSpanAnimator ellipsizeSpanAnimator;
    BaseFragment fragment;
    private StoriesUtilities.EnsureStoryFileLoadedObject globalCancelable;
    Paint grayPaint;
    private boolean hasOverlayText;
    DefaultItemAnimator itemAnimator;
    ArrayList items;
    private boolean lastUploadingCloseFriends;
    LinearLayoutManager layoutManager;
    RecyclerListView listViewMini;
    Adapter miniAdapter;
    private final DefaultItemAnimator miniItemAnimator;
    ArrayList miniItems;
    CanvasButton miniItemsClickArea;
    ArrayList oldItems;
    ArrayList oldMiniItems;
    private int overlayTextId;
    private float overscrollPrgoress;
    private int overscrollSelectedPosition;
    private StoryCell overscrollSelectedView;
    private HintView2 premiumHint;
    public RadialProgress radialProgress;
    public RecyclerListView recyclerListView;
    StoriesController storiesController;
    private ValueAnimator textAnimator;
    AnimatedTextView titleView;
    private final int type;
    boolean updateOnIdleState;
    private SpannableStringBuilder uploadingString;
    ValueAnimator valueAnimator;
    ArrayList viewsDrawInParent;

    private class Adapter extends AdapterWithDiffUtils {
        boolean mini;

        public Adapter(boolean z) {
            this.mini = z;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return (this.mini ? DialogStoriesCell.this.miniItems : DialogStoriesCell.this.items).size();
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            StoryCell storyCell = (StoryCell) viewHolder.itemView;
            storyCell.position = i;
            storyCell.setDialogId(((Item) (this.mini ? DialogStoriesCell.this.miniItems : DialogStoriesCell.this.items).get(i)).dialogId);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            StoryCell storyCell = DialogStoriesCell.this.new StoryCell(viewGroup.getContext());
            storyCell.mini = this.mini;
            if (this.mini) {
                storyCell.setProgressToCollapsed(1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            }
            return new RecyclerListView.Holder(storyCell);
        }
    }

    private class Item extends AdapterWithDiffUtils.Item {
        final long dialogId;

        public Item(long j) {
            super(0, false);
            this.dialogId = j;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Item) && this.dialogId == ((Item) obj).dialogId;
        }

        public int hashCode() {
            return Objects.hash(Long.valueOf(this.dialogId));
        }
    }

    public class StoryCell extends FrameLayout {
        AvatarDrawable avatarDrawable;
        public ImageReceiver avatarImage;
        private float bounceScale;
        public StoriesUtilities.EnsureStoryFileLoadedObject cancellable;
        TLRPC.Chat chat;
        AvatarDrawable crossfadeAvatarDrawable;
        boolean crossfadeToDialog;
        long crossfadeToDialogId;
        public ImageReceiver crossfageToAvatarImage;
        private float cx;
        private float cy;
        long dialogId;
        public boolean drawAvatar;
        public boolean drawInParent;
        private final AnimatedFloat failT;
        boolean isFail;
        public boolean isFirst;
        public boolean isLast;
        boolean isSelf;
        private boolean isUploadingState;
        private boolean mini;
        private float overscrollProgress;
        public final StoriesUtilities.AvatarStoryParams params;
        public int position;
        float progressToCollapsed;
        float progressToCollapsed2;
        boolean progressWasDrawn;
        public RadialProgress radialProgress;
        private boolean selectedForOverscroll;
        float textAlpha;
        float textAlphaTransition;
        SimpleTextView textView;
        FrameLayout textViewContainer;
        TLRPC.User user;
        private Drawable verifiedDrawable;

        public StoryCell(Context context) {
            super(context);
            this.avatarDrawable = new AvatarDrawable();
            this.avatarImage = new ImageReceiver(this);
            this.crossfageToAvatarImage = new ImageReceiver(this);
            this.crossfadeAvatarDrawable = new AvatarDrawable();
            this.drawAvatar = true;
            StoriesUtilities.AvatarStoryParams avatarStoryParams = new StoriesUtilities.AvatarStoryParams(true);
            this.params = avatarStoryParams;
            this.textAlpha = 1.0f;
            this.textAlphaTransition = 1.0f;
            this.bounceScale = 1.0f;
            this.failT = new AnimatedFloat(this, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
            avatarStoryParams.isArchive = DialogStoriesCell.this.type == 1;
            avatarStoryParams.isDialogStoriesCell = true;
            this.avatarImage.setInvalidateAll(true);
            this.avatarImage.setAllowLoadingOnAttachedOnly(true);
            FrameLayout frameLayout = new FrameLayout(getContext());
            this.textViewContainer = frameLayout;
            frameLayout.setClipChildren(false);
            if (!this.mini) {
                setClipChildren(false);
            }
            createTextView();
            addView(this.textViewContainer, LayoutHelper.createFrame(-1, -2.0f));
            this.avatarImage.setRoundRadius(AndroidUtilities.dp(48.0f) / 2);
            this.crossfageToAvatarImage.setRoundRadius(AndroidUtilities.dp(48.0f) / 2);
        }

        private void animateBounce() {
            AnimatorSet animatorSet = new AnimatorSet();
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 1.05f);
            valueAnimatorOfFloat.setDuration(100L);
            valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.EASE_OUT);
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(1.05f, 1.0f);
            valueAnimatorOfFloat2.setDuration(250L);
            valueAnimatorOfFloat2.setInterpolator(new OvershootInterpolator());
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell$StoryCell$$ExternalSyntheticLambda2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$animateBounce$2(valueAnimator);
                }
            };
            setClipInParent(false);
            valueAnimatorOfFloat.addUpdateListener(animatorUpdateListener);
            valueAnimatorOfFloat2.addUpdateListener(animatorUpdateListener);
            animatorSet.playSequentially(valueAnimatorOfFloat, valueAnimatorOfFloat2);
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.DialogStoriesCell.StoryCell.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    StoryCell.this.bounceScale = 1.0f;
                    StoryCell.this.invalidate();
                    StoryCell.this.setClipInParent(true);
                }
            });
            animatorSet.start();
            if (DialogStoriesCell.this.animationRunnable != null) {
                AndroidUtilities.cancelRunOnUIThread(DialogStoriesCell.this.animationRunnable);
                DialogStoriesCell.this.animationRunnable.run();
                DialogStoriesCell.this.animationRunnable = null;
            }
        }

        private void createTextView() {
            SimpleTextView simpleTextView = new SimpleTextView(getContext());
            this.textView = simpleTextView;
            simpleTextView.setTypeface(AndroidUtilities.bold());
            this.textView.setGravity(17);
            this.textView.setTextSize(11);
            this.textView.setTextColor(DialogStoriesCell.this.getTextColor());
            NotificationCenter.listenEmojiLoading(this.textView);
            this.textView.setMaxLines(1);
            this.textViewContainer.addView(this.textView, LayoutHelper.createFrame(-1, -2.0f, 0, 1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED));
            this.avatarImage.setRoundRadius(AndroidUtilities.dp(48.0f) / 2);
            this.crossfageToAvatarImage.setRoundRadius(AndroidUtilities.dp(48.0f) / 2);
        }

        private float getArcProgress(float f, float f2) {
            if (!this.isLast && DialogStoriesCell.this.overscrollPrgoress <= BitmapDescriptorFactory.HUE_RED) {
                if (AndroidUtilities.lerp(getMeasuredWidth(), AndroidUtilities.dp(18.0f), CubicBezierInterpolator.EASE_OUT.getInterpolation(this.progressToCollapsed)) < (f2 + AndroidUtilities.dpf2(3.5f)) * 2.0f) {
                    return ((float) Math.toDegrees(Math.acos((r4 / 2.0f) / r5))) * 2.0f;
                }
            }
            return BitmapDescriptorFactory.HUE_RED;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$animateBounce$2(ValueAnimator valueAnimator) {
            this.bounceScale = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$dispatchDraw$1(ValueAnimator valueAnimator) {
            this.params.progressToSegments = AndroidUtilities.lerp(BitmapDescriptorFactory.HUE_RED, 1.0f - DialogStoriesCell.this.collapsedProgress2, ((Float) valueAnimator.getAnimatedValue()).floatValue());
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setDialogId$0() {
            if (DialogStoriesCell.this.textAnimator != null) {
                DialogStoriesCell.this.textAnimator.start();
            }
            DialogStoriesCell.this.animationRunnable = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setClipInParent(boolean z) {
            if (getParent() != null) {
                ((ViewGroup) getParent()).setClipChildren(z);
            }
            if (getParent() == null || getParent().getParent() == null || getParent().getParent().getParent() == null) {
                return;
            }
            ((ViewGroup) getParent().getParent().getParent()).setClipChildren(z);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            Paint paint;
            int color;
            float f;
            float f2;
            float f3;
            float f4;
            boolean z;
            float f5;
            float f6;
            float f7;
            float f8;
            long j;
            ImageReceiver imageReceiver;
            boolean zHasStories;
            StoriesUtilities.AvatarStoryParams avatarStoryParams;
            Canvas canvas2;
            RadialProgress radialProgress;
            float fDp = AndroidUtilities.dp(48.0f);
            float fDp2 = AndroidUtilities.dp(28.0f);
            float fDp3 = AndroidUtilities.dp(8.0f) * Utilities.clamp(DialogStoriesCell.this.overscrollPrgoress / 0.5f, 1.0f, BitmapDescriptorFactory.HUE_RED);
            if (this.selectedForOverscroll) {
                fDp3 += AndroidUtilities.dp(16.0f) * Utilities.clamp((DialogStoriesCell.this.overscrollPrgoress - 0.5f) / 0.5f, 1.0f, BitmapDescriptorFactory.HUE_RED);
            }
            float fLerp = AndroidUtilities.lerp(fDp + fDp3, fDp2, this.progressToCollapsed);
            float f9 = fLerp / 2.0f;
            float measuredWidth = (getMeasuredWidth() / 2.0f) - f9;
            float fLerp2 = AndroidUtilities.lerp(measuredWidth, BitmapDescriptorFactory.HUE_RED, this.progressToCollapsed);
            float fLerp3 = AndroidUtilities.lerp(AndroidUtilities.dp(5.0f), (ActionBar.getCurrentActionBarHeight() - fDp2) / 2.0f, this.progressToCollapsed);
            float fClamp = Utilities.clamp(this.progressToCollapsed / 0.5f, 1.0f, BitmapDescriptorFactory.HUE_RED);
            StoriesUtilities.AvatarStoryParams avatarStoryParams2 = this.params;
            avatarStoryParams2.drawSegments = true;
            if (!avatarStoryParams2.forceAnimateProgressToSegments) {
                avatarStoryParams2.progressToSegments = 1.0f - DialogStoriesCell.this.collapsedProgress2;
            }
            float f10 = fLerp3 + fLerp;
            this.params.originalAvatarRect.set(fLerp2, fLerp3, fLerp2 + fLerp, f10);
            this.avatarImage.setAlpha(1.0f);
            this.avatarImage.setRoundRadius((int) f9);
            float f11 = fLerp2 + f9;
            this.cx = f11;
            float f12 = fLerp3 + f9;
            this.cy = f12;
            if (DialogStoriesCell.this.type == 0) {
                paint = DialogStoriesCell.this.backgroundPaint;
                color = Theme.getColor(Theme.key_actionBarDefault);
            } else {
                paint = DialogStoriesCell.this.backgroundPaint;
                color = Theme.getColor(Theme.key_actionBarDefaultArchived);
            }
            paint.setColor(color);
            if (this.progressToCollapsed != BitmapDescriptorFactory.HUE_RED) {
                canvas.drawCircle(this.cx, this.cy, AndroidUtilities.dp(3.0f) + f9, DialogStoriesCell.this.backgroundPaint);
            }
            canvas.save();
            float f13 = this.bounceScale;
            canvas.scale(f13, f13, this.cx, this.cy);
            if (this.radialProgress == null) {
                this.radialProgress = DialogStoriesCell.this.radialProgress;
            }
            ArrayList uploadingAndEditingStories = DialogStoriesCell.this.storiesController.getUploadingAndEditingStories(this.dialogId);
            boolean z2 = (uploadingAndEditingStories == null || uploadingAndEditingStories.isEmpty()) ? false : true;
            if (z2 || (this.progressWasDrawn && (radialProgress = this.radialProgress) != null && radialProgress.getAnimatedProgress() < 0.98f)) {
                f = fLerp3;
                f2 = fLerp2;
                f3 = f10;
                if (z2) {
                    float f14 = BitmapDescriptorFactory.HUE_RED;
                    for (int i = 0; i < uploadingAndEditingStories.size(); i++) {
                        f14 += ((StoriesController.UploadingStory) uploadingAndEditingStories.get(i)).progress;
                    }
                    float size = (DialogStoriesCell.this.storiesController.uploadedStories + f14) / (r5 + uploadingAndEditingStories.size());
                    DialogStoriesCell dialogStoriesCell = DialogStoriesCell.this;
                    boolean zIsCloseFriends = ((StoriesController.UploadingStory) uploadingAndEditingStories.get(uploadingAndEditingStories.size() - 1)).isCloseFriends();
                    dialogStoriesCell.lastUploadingCloseFriends = zIsCloseFriends;
                    f4 = size;
                    z = zIsCloseFriends;
                } else {
                    z = DialogStoriesCell.this.lastUploadingCloseFriends;
                    f4 = 1.0f;
                }
                invalidate();
                if (this.radialProgress == null) {
                    DialogStoriesCell dialogStoriesCell2 = DialogStoriesCell.this;
                    RadialProgress radialProgress2 = dialogStoriesCell2.radialProgress;
                    if (radialProgress2 != null) {
                        this.radialProgress = radialProgress2;
                    } else {
                        RadialProgress radialProgress3 = new RadialProgress(this);
                        this.radialProgress = radialProgress3;
                        dialogStoriesCell2.radialProgress = radialProgress3;
                        radialProgress3.setBackground(null, true, false);
                    }
                }
                if (this.drawAvatar) {
                    canvas.save();
                    canvas.scale(this.params.getScale(), this.params.getScale(), this.params.originalAvatarRect.centerX(), this.params.originalAvatarRect.centerY());
                    this.avatarImage.setImageCoords(this.params.originalAvatarRect);
                    this.avatarImage.draw(canvas);
                    canvas.restore();
                }
                this.radialProgress.setDiff(0);
                Paint closeFriendsPaint = z ? StoriesUtilities.getCloseFriendsPaint(this.avatarImage) : StoriesUtilities.getUnreadCirclePaint(this.avatarImage, true);
                closeFriendsPaint.setAlpha(255);
                this.radialProgress.setPaint(closeFriendsPaint);
                this.radialProgress.setProgressRect((int) (this.avatarImage.getImageX() - AndroidUtilities.dp(3.0f)), (int) (this.avatarImage.getImageY() - AndroidUtilities.dp(3.0f)), (int) (this.avatarImage.getImageX2() + AndroidUtilities.dp(3.0f)), (int) (this.avatarImage.getImageY2() + AndroidUtilities.dp(3.0f)));
                this.radialProgress.setProgress(Utilities.clamp(f4, 1.0f, BitmapDescriptorFactory.HUE_RED), this.progressWasDrawn);
                if (this.avatarImage.getVisible()) {
                    this.radialProgress.draw(canvas);
                }
                this.progressWasDrawn = true;
                DialogStoriesCell.this.drawCircleForce = true;
                invalidate();
            } else {
                float f15 = this.failT.set(this.isFail);
                if (this.drawAvatar) {
                    if (this.progressWasDrawn) {
                        animateBounce();
                        StoriesUtilities.AvatarStoryParams avatarStoryParams3 = this.params;
                        avatarStoryParams3.forceAnimateProgressToSegments = true;
                        avatarStoryParams3.progressToSegments = BitmapDescriptorFactory.HUE_RED;
                        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell$StoryCell$$ExternalSyntheticLambda0
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                this.f$0.lambda$dispatchDraw$1(valueAnimator);
                            }
                        });
                        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.DialogStoriesCell.StoryCell.3
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                super.onAnimationEnd(animator);
                                StoryCell.this.params.forceAnimateProgressToSegments = false;
                            }
                        });
                        valueAnimatorOfFloat.setDuration(100L);
                        valueAnimatorOfFloat.start();
                    }
                    StoriesUtilities.AvatarStoryParams avatarStoryParams4 = this.params;
                    f15 *= avatarStoryParams4.progressToSegments;
                    avatarStoryParams4.animate = true ^ this.progressWasDrawn;
                    avatarStoryParams4.progressToArc = getArcProgress(this.cx, f9);
                    StoriesUtilities.AvatarStoryParams avatarStoryParams5 = this.params;
                    avatarStoryParams5.isLast = this.isLast;
                    avatarStoryParams5.isFirst = this.isFirst;
                    avatarStoryParams5.alpha = 1.0f - f15;
                    boolean z3 = this.isSelf;
                    if (z3 || !this.crossfadeToDialog) {
                        avatarStoryParams5.crossfadeToDialog = 0L;
                    } else {
                        avatarStoryParams5.crossfadeToDialog = this.crossfadeToDialogId;
                        avatarStoryParams5.crossfadeToDialogProgress = this.progressToCollapsed2;
                    }
                    if (z3) {
                        f6 = f12;
                        j = this.dialogId;
                        f7 = f11;
                        canvas2 = canvas;
                        f8 = fLerp3;
                        imageReceiver = this.avatarImage;
                        f5 = fLerp2;
                        zHasStories = DialogStoriesCell.this.storiesController.hasSelfStories();
                        f3 = f10;
                        avatarStoryParams = this.params;
                    } else {
                        f6 = f12;
                        f7 = f11;
                        f8 = fLerp3;
                        f5 = fLerp2;
                        f3 = f10;
                        j = this.dialogId;
                        imageReceiver = this.avatarImage;
                        zHasStories = DialogStoriesCell.this.storiesController.hasStories(j);
                        avatarStoryParams = this.params;
                        canvas2 = canvas;
                    }
                    StoriesUtilities.drawAvatarWithStory(j, canvas2, imageReceiver, zHasStories, avatarStoryParams);
                    f = f8;
                    if (f15 > BitmapDescriptorFactory.HUE_RED) {
                        Paint errorPaint = StoriesUtilities.getErrorPaint(this.avatarImage);
                        errorPaint.setStrokeWidth(AndroidUtilities.dp(2.0f));
                        errorPaint.setAlpha((int) (255.0f * f15));
                        canvas.drawCircle(f7, f6, (f9 + AndroidUtilities.dp(4.0f)) * this.params.getScale(), errorPaint);
                    }
                } else {
                    f = fLerp3;
                    f5 = fLerp2;
                    f3 = f10;
                }
                this.progressWasDrawn = false;
                if (this.drawAvatar) {
                    canvas.save();
                    float f16 = 1.0f - fClamp;
                    canvas.scale(f16, f16, this.cx + AndroidUtilities.dp(16.0f), this.cy + AndroidUtilities.dp(16.0f));
                    drawPlus(canvas, this.cx, this.cy, 1.0f);
                    drawFail(canvas, this.cx, this.cy, f15);
                    canvas.restore();
                }
                f2 = f5;
            }
            canvas.restore();
            if (this.crossfadeToDialog && this.progressToCollapsed2 > BitmapDescriptorFactory.HUE_RED) {
                this.crossfageToAvatarImage.setImageCoords(f2, f, fLerp, fLerp);
                this.crossfageToAvatarImage.setAlpha(this.progressToCollapsed2);
                this.crossfageToAvatarImage.draw(canvas);
            }
            this.textViewContainer.setTranslationY(f3 + (AndroidUtilities.dp(7.0f) * (1.0f - this.progressToCollapsed)));
            this.textViewContainer.setTranslationX(f2 - measuredWidth);
            if (!this.mini) {
                if (this.isSelf) {
                    this.textAlpha = 1.0f;
                } else {
                    StoriesUtilities.AvatarStoryParams avatarStoryParams6 = this.params;
                    float f17 = avatarStoryParams6.progressToSate;
                    this.textAlpha = avatarStoryParams6.globalState == 2 ? 0.7f : 1.0f;
                }
                this.textViewContainer.setAlpha(this.textAlphaTransition * this.textAlpha);
            }
            super.dispatchDraw(canvas);
        }

        public void drawFail(Canvas canvas, float f, float f2, float f3) {
            Paint paint;
            int i;
            if (f3 <= BitmapDescriptorFactory.HUE_RED) {
                return;
            }
            float fDp = f + AndroidUtilities.dp(17.0f);
            float fDp2 = f2 + AndroidUtilities.dp(17.0f);
            DialogStoriesCell.this.addCirclePaint.setColor(Theme.multAlpha(Theme.getColor(Theme.key_text_RedBold), f3));
            if (DialogStoriesCell.this.type == 0) {
                paint = DialogStoriesCell.this.backgroundPaint;
                i = Theme.key_actionBarDefault;
            } else {
                paint = DialogStoriesCell.this.backgroundPaint;
                i = Theme.key_actionBarDefaultArchived;
            }
            paint.setColor(Theme.multAlpha(Theme.getColor(i), f3));
            float fDp3 = AndroidUtilities.dp(9.0f) * CubicBezierInterpolator.EASE_OUT_BACK.getInterpolation(f3);
            canvas.drawCircle(fDp, fDp2, AndroidUtilities.dp(2.0f) + fDp3, DialogStoriesCell.this.backgroundPaint);
            canvas.drawCircle(fDp, fDp2, fDp3, DialogStoriesCell.this.addCirclePaint);
            DialogStoriesCell dialogStoriesCell = DialogStoriesCell.this;
            dialogStoriesCell.addCirclePaint.setColor(Theme.multAlpha(dialogStoriesCell.getTextColor(), f3));
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(fDp - AndroidUtilities.dp(1.0f), fDp2 - AndroidUtilities.dpf2(4.6f), AndroidUtilities.dp(1.0f) + fDp, AndroidUtilities.dpf2(1.6f) + fDp2);
            canvas.drawRoundRect(rectF, AndroidUtilities.dp(3.0f), AndroidUtilities.dp(3.0f), DialogStoriesCell.this.addCirclePaint);
            rectF.set(fDp - AndroidUtilities.dp(1.0f), AndroidUtilities.dpf2(2.6f) + fDp2, fDp + AndroidUtilities.dp(1.0f), fDp2 + AndroidUtilities.dpf2(4.6f));
            canvas.drawRoundRect(rectF, AndroidUtilities.dp(3.0f), AndroidUtilities.dp(3.0f), DialogStoriesCell.this.addCirclePaint);
        }

        public void drawPlus(Canvas canvas, float f, float f2, float f3) {
            Paint paint;
            int i;
            if (this.isSelf && !DialogStoriesCell.this.storiesController.hasStories(this.dialogId) && Utilities.isNullOrEmpty(DialogStoriesCell.this.storiesController.getUploadingStories(this.dialogId))) {
                float fDp = f + AndroidUtilities.dp(16.0f);
                float fDp2 = f2 + AndroidUtilities.dp(16.0f);
                DialogStoriesCell dialogStoriesCell = DialogStoriesCell.this;
                dialogStoriesCell.addCirclePaint.setColor(Theme.multAlpha(dialogStoriesCell.getTextColor(), f3));
                if (DialogStoriesCell.this.type == 0) {
                    paint = DialogStoriesCell.this.backgroundPaint;
                    i = Theme.key_actionBarDefault;
                } else {
                    paint = DialogStoriesCell.this.backgroundPaint;
                    i = Theme.key_actionBarDefaultArchived;
                }
                paint.setColor(Theme.multAlpha(Theme.getColor(i), f3));
                canvas.drawCircle(fDp, fDp2, AndroidUtilities.dp(11.0f), DialogStoriesCell.this.backgroundPaint);
                canvas.drawCircle(fDp, fDp2, AndroidUtilities.dp(9.0f), DialogStoriesCell.this.addCirclePaint);
                int color = Theme.getColor(DialogStoriesCell.this.type == 0 ? Theme.key_actionBarDefault : Theme.key_actionBarDefaultArchived);
                if (color != DialogStoriesCell.this.addNewStoryLastColor) {
                    DialogStoriesCell.this.addNewStoryDrawable.setColorFilter(new PorterDuffColorFilter(DialogStoriesCell.this.addNewStoryLastColor = color, PorterDuff.Mode.MULTIPLY));
                }
                DialogStoriesCell.this.addNewStoryDrawable.setAlpha((int) (f3 * 255.0f));
                DialogStoriesCell.this.addNewStoryDrawable.setBounds((int) (fDp - (DialogStoriesCell.this.addNewStoryDrawable.getIntrinsicWidth() / 2.0f)), (int) (fDp2 - (DialogStoriesCell.this.addNewStoryDrawable.getIntrinsicHeight() / 2.0f)), (int) (fDp + (DialogStoriesCell.this.addNewStoryDrawable.getIntrinsicWidth() / 2.0f)), (int) (fDp2 + (DialogStoriesCell.this.addNewStoryDrawable.getIntrinsicHeight() / 2.0f)));
                DialogStoriesCell.this.addNewStoryDrawable.draw(canvas);
            }
        }

        float getCy() {
            float fDp = AndroidUtilities.dp(48.0f);
            float fDp2 = AndroidUtilities.dp(28.0f);
            return AndroidUtilities.lerp(AndroidUtilities.dp(5.0f), (ActionBar.getCurrentActionBarHeight() - fDp2) / 2.0f, DialogStoriesCell.this.collapsedProgress1) + (AndroidUtilities.lerp(fDp, fDp2, this.progressToCollapsed) / 2.0f);
        }

        @Override // android.view.View
        public void invalidate() {
            if (this.mini || (this.drawInParent && getParent() != null)) {
                ViewParent parent = getParent();
                DialogStoriesCell dialogStoriesCell = DialogStoriesCell.this;
                RecyclerListView recyclerListView = dialogStoriesCell.listViewMini;
                if (parent == recyclerListView) {
                    recyclerListView.invalidate();
                } else {
                    dialogStoriesCell.invalidate();
                }
            }
            super.invalidate();
        }

        @Override // android.view.View
        public void invalidate(int i, int i2, int i3, int i4) {
            if (this.mini || (this.drawInParent && getParent() != null)) {
                ViewParent parent = getParent();
                RecyclerListView recyclerListView = DialogStoriesCell.this.listViewMini;
                if (parent == recyclerListView) {
                    recyclerListView.invalidate();
                }
                DialogStoriesCell.this.invalidate();
            }
            super.invalidate(i, i2, i3, i4);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.avatarImage.onAttachedToWindow();
            this.crossfageToAvatarImage.onAttachedToWindow();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.avatarImage.onDetachedFromWindow();
            this.crossfageToAvatarImage.onDetachedFromWindow();
            this.params.onDetachFromWindow();
            StoriesUtilities.EnsureStoryFileLoadedObject ensureStoryFileLoadedObject = this.cancellable;
            if (ensureStoryFileLoadedObject != null) {
                ensureStoryFileLoadedObject.cancel();
                this.cancellable = null;
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.mini ? AndroidUtilities.dp(70.0f) : DialogStoriesCell.this.currentCellWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(81.0f), 1073741824));
        }

        public void setCrossfadeTo(long j) {
            TLRPC.Chat chat;
            if (this.crossfadeToDialogId != j) {
                this.crossfadeToDialogId = j;
                boolean z = j != -1;
                this.crossfadeToDialog = z;
                if (!z) {
                    this.crossfageToAvatarImage.clearImage();
                    return;
                }
                MessagesController messagesController = MessagesController.getInstance(DialogStoriesCell.this.currentAccount);
                if (j > 0) {
                    TLRPC.User user = messagesController.getUser(Long.valueOf(j));
                    this.user = user;
                    this.chat = null;
                    chat = user;
                } else {
                    TLRPC.Chat chat2 = messagesController.getChat(Long.valueOf(-j));
                    this.chat = chat2;
                    this.user = null;
                    chat = chat2;
                }
                if (chat != null) {
                    this.crossfadeAvatarDrawable.setInfo(DialogStoriesCell.this.currentAccount, (TLObject) chat);
                    this.crossfageToAvatarImage.setForUserOrChat(chat, this.crossfadeAvatarDrawable);
                }
            }
        }

        public void setDialogId(long j) {
            TLRPC.Chat chat;
            CharSequence charSequenceReplaceEmoji;
            long j2 = this.dialogId;
            boolean z = j2 == j;
            if (!z && this.cancellable != null) {
                DialogStoriesCell.this.storiesController.setLoading(j2, false);
                this.cancellable.cancel();
                this.cancellable = null;
            }
            this.dialogId = j;
            this.isSelf = j == UserConfig.getInstance(DialogStoriesCell.this.currentAccount).getClientUserId();
            this.isFail = DialogStoriesCell.this.storiesController.isLastUploadingFailed(j);
            MessagesController messagesController = MessagesController.getInstance(DialogStoriesCell.this.currentAccount);
            if (j > 0) {
                TLRPC.User user = messagesController.getUser(Long.valueOf(j));
                this.user = user;
                this.chat = null;
                chat = user;
            } else {
                TLRPC.Chat chat2 = messagesController.getChat(Long.valueOf(-j));
                this.chat = chat2;
                this.user = null;
                chat = chat2;
            }
            if (chat == null) {
                this.textView.setText("");
                this.avatarImage.clearImage();
                return;
            }
            this.avatarDrawable.setInfo(DialogStoriesCell.this.currentAccount, (TLObject) chat);
            this.avatarImage.setForUserOrChat(chat, this.avatarDrawable);
            if (this.mini) {
                return;
            }
            this.textView.setRightDrawable((Drawable) null);
            if (DialogStoriesCell.this.storiesController.isLastUploadingFailed(j)) {
                this.textView.setTextSize(10);
                this.textView.setText(LocaleController.getString(R.string.FailedStory));
                this.isUploadingState = false;
                return;
            }
            if (!Utilities.isNullOrEmpty(DialogStoriesCell.this.storiesController.getUploadingStories(j)) || DialogStoriesCell.this.storiesController.getEditingStory(j) != null) {
                this.textView.setTextSize(10);
                StoriesUtilities.applyUploadingStr(this.textView, true, false);
                this.isUploadingState = true;
                return;
            }
            if (!this.isSelf) {
                if (this.user != null) {
                    this.textView.setTextSize(11);
                    String str = this.user.first_name;
                    String strTrim = str != null ? str.trim() : "";
                    int iIndexOf = strTrim.indexOf(" ");
                    if (iIndexOf > 0) {
                        strTrim = strTrim.substring(0, iIndexOf);
                    }
                    if (this.user.verified) {
                        if (this.verifiedDrawable == null) {
                            this.verifiedDrawable = DialogStoriesCell.this.createVerifiedDrawable();
                        }
                        this.textView.setText(Emoji.replaceEmoji(strTrim, this.textView.getPaint().getFontMetricsInt(), false));
                        this.textView.setRightDrawable(this.verifiedDrawable);
                        return;
                    }
                    charSequenceReplaceEmoji = Emoji.replaceEmoji(strTrim, this.textView.getPaint().getFontMetricsInt(), false);
                } else {
                    this.textView.setTextSize(11);
                    charSequenceReplaceEmoji = Emoji.replaceEmoji(this.chat.title, this.textView.getPaint().getFontMetricsInt(), false);
                }
                this.textView.setText(charSequenceReplaceEmoji);
                this.textView.setRightDrawable((Drawable) null);
                return;
            }
            if (z && this.isUploadingState && !this.mini) {
                final SimpleTextView simpleTextView = this.textView;
                createTextView();
                if (DialogStoriesCell.this.textAnimator != null) {
                    DialogStoriesCell.this.textAnimator.cancel();
                    DialogStoriesCell.this.textAnimator = null;
                }
                DialogStoriesCell.this.textAnimator = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                DialogStoriesCell.this.textAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell.StoryCell.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        float f = 1.0f - fFloatValue;
                        simpleTextView.setAlpha(f);
                        simpleTextView.setTranslationY((-AndroidUtilities.dp(5.0f)) * fFloatValue);
                        StoryCell.this.textView.setAlpha(fFloatValue);
                        StoryCell.this.textView.setTranslationY(AndroidUtilities.dp(5.0f) * f);
                    }
                });
                DialogStoriesCell.this.textAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.DialogStoriesCell.StoryCell.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        DialogStoriesCell.this.textAnimator = null;
                        AndroidUtilities.removeFromParent(simpleTextView);
                    }
                });
                DialogStoriesCell.this.textAnimator.setDuration(150L);
                this.textView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.textView.setTranslationY(AndroidUtilities.dp(5.0f));
                DialogStoriesCell.this.animationRunnable = new Runnable() { // from class: org.telegram.ui.Stories.DialogStoriesCell$StoryCell$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setDialogId$0();
                    }
                };
            }
            AndroidUtilities.runOnUIThread(DialogStoriesCell.this.animationRunnable, 500L);
            this.isUploadingState = false;
            this.textView.setTextSize(10);
            this.textView.setText(LocaleController.getString(R.string.MyStory));
        }

        @Override // android.view.View
        public void setPressed(boolean z) {
            super.setPressed(z);
            if (z) {
                StoriesUtilities.AvatarStoryParams avatarStoryParams = this.params;
                if (avatarStoryParams.buttonBounce == null) {
                    avatarStoryParams.buttonBounce = new ButtonBounce(this, 1.5f, 5.0f);
                }
            }
            ButtonBounce buttonBounce = this.params.buttonBounce;
            if (buttonBounce != null) {
                buttonBounce.setPressed(z);
            }
        }

        public void setProgressToCollapsed(float f, float f2, float f3, boolean z) {
            float f4 = this.progressToCollapsed;
            float fClamp = BitmapDescriptorFactory.HUE_RED;
            if (f4 != f || this.progressToCollapsed2 != f2 || this.overscrollProgress != f3 || this.selectedForOverscroll != z) {
                this.selectedForOverscroll = z;
                this.progressToCollapsed = f;
                this.progressToCollapsed2 = f2;
                Utilities.clamp(f / 0.5f, 1.0f, BitmapDescriptorFactory.HUE_RED);
                AndroidUtilities.dp(48.0f);
                AndroidUtilities.dp(28.0f);
                invalidate();
                DialogStoriesCell.this.recyclerListView.invalidate();
            }
            if (!this.mini) {
                DialogStoriesCell dialogStoriesCell = DialogStoriesCell.this;
                fClamp = 1.0f - Utilities.clamp(dialogStoriesCell.collapsedProgress / dialogStoriesCell.K, 1.0f, BitmapDescriptorFactory.HUE_RED);
            }
            this.textAlphaTransition = fClamp;
            this.textViewContainer.setAlpha(fClamp * this.textAlpha);
        }
    }

    public DialogStoriesCell(Context context, BaseFragment baseFragment, int i, int i2) {
        super(context);
        this.oldItems = new ArrayList();
        this.oldMiniItems = new ArrayList();
        this.items = new ArrayList();
        this.miniItems = new ArrayList();
        this.adapter = new Adapter(false);
        this.miniAdapter = new Adapter(true);
        this.grayPaint = new Paint();
        this.addCirclePaint = new Paint(1);
        this.backgroundPaint = new Paint(1);
        this.miniItemsClickArea = new CanvasButton(this);
        this.collapsedProgress = -1.0f;
        this.currentState = -1;
        this.viewsDrawInParent = new ArrayList();
        this.animateToDialogIds = new ArrayList();
        this.afterNextLayout = new ArrayList();
        this.collapsedProgress1 = -1.0f;
        this.allowGlobalUpdates = true;
        this.comparator = new Comparator() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda2
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return DialogStoriesCell.lambda$new$6((DialogStoriesCell.StoryCell) obj, (DialogStoriesCell.StoryCell) obj2);
            }
        };
        this.K = 0.3f;
        this.ellipsizeSpanAnimator = new EllipsizeSpanAnimator(this);
        this.type = i2;
        this.currentAccount = i;
        this.fragment = baseFragment;
        this.storiesController = MessagesController.getInstance(i).getStoriesController();
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.Stories.DialogStoriesCell.1
            @Override // org.telegram.ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0 || (DialogStoriesCell.this.collapsedProgress1 <= 0.2f && DialogStoriesCell.this.getAlpha() != BitmapDescriptorFactory.HUE_RED)) {
                    return super.dispatchTouchEvent(motionEvent);
                }
                return false;
            }

            @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j) {
                if (DialogStoriesCell.this.viewsDrawInParent.contains(view)) {
                    return true;
                }
                return super.drawChild(canvas, view, j);
            }

            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i3, int i4, int i5, int i6) {
                super.onLayout(z, i3, i4, i5, i6);
                for (int i7 = 0; i7 < DialogStoriesCell.this.afterNextLayout.size(); i7++) {
                    ((Runnable) DialogStoriesCell.this.afterNextLayout.get(i7)).run();
                }
                DialogStoriesCell.this.afterNextLayout.clear();
            }
        };
        this.recyclerListView = recyclerListView;
        recyclerListView.setPadding(AndroidUtilities.dp(3.0f), 0, AndroidUtilities.dp(3.0f), 0);
        this.recyclerListView.setClipToPadding(false);
        this.recyclerListView.setClipChildren(false);
        this.miniItemsClickArea.setDelegate(new Runnable() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        });
        this.recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                super.onScrolled(recyclerView, i3, i4);
                DialogStoriesCell.this.invalidate();
                DialogStoriesCell.this.lambda$didReceivedNotification$7();
                if (DialogStoriesCell.this.premiumHint != null) {
                    DialogStoriesCell.this.premiumHint.hide();
                }
            }
        });
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        this.itemAnimator = defaultItemAnimator;
        defaultItemAnimator.setDelayAnimations(false);
        this.itemAnimator.setDurations(150L);
        this.itemAnimator.setSupportsChangeAnimations(false);
        this.recyclerListView.setItemAnimator(this.itemAnimator);
        RecyclerListView recyclerListView2 = this.recyclerListView;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 0, false);
        this.layoutManager = linearLayoutManager;
        recyclerListView2.setLayoutManager(linearLayoutManager);
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda4
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i3) {
                this.f$0.lambda$new$1(view, i3);
            }
        });
        this.recyclerListView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda5
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i3) {
                return this.f$0.lambda$new$2(view, i3);
            }
        });
        this.recyclerListView.setAdapter(this.adapter);
        addView(this.recyclerListView, LayoutHelper.createFrame(-1, -2.0f, 0, BitmapDescriptorFactory.HUE_RED, 4.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        AnimatedTextView animatedTextView = new AnimatedTextView(getContext(), true, true, false);
        this.titleView = animatedTextView;
        animatedTextView.setGravity(3);
        this.titleView.setTextColor(getTextColor());
        this.titleView.setEllipsizeByGradient(true);
        this.titleView.setTypeface(AndroidUtilities.bold());
        this.titleView.setPadding(0, AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f));
        this.titleView.setTextSize(AndroidUtilities.dp((AndroidUtilities.isTablet() || getResources().getConfiguration().orientation != 2) ? 20.0f : 18.0f));
        addView(this.titleView, LayoutHelper.createFrame(-1, -2.0f));
        this.titleView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.grayPaint.setColor(-2762018);
        this.grayPaint.setStyle(Paint.Style.STROKE);
        this.grayPaint.setStrokeWidth(AndroidUtilities.dp(1.0f));
        this.addNewStoryDrawable = ContextCompat.getDrawable(getContext(), R.drawable.msg_mini_addstory);
        RecyclerListView recyclerListView3 = new RecyclerListView(getContext()) { // from class: org.telegram.ui.Stories.DialogStoriesCell.3
            @Override // org.telegram.ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                DialogStoriesCell.this.viewsDrawInParent.clear();
                for (int i3 = 0; i3 < getChildCount(); i3++) {
                    StoryCell storyCell = (StoryCell) getChildAt(i3);
                    int childAdapterPosition = getChildAdapterPosition(storyCell);
                    storyCell.position = childAdapterPosition;
                    boolean z = true;
                    storyCell.drawInParent = true;
                    storyCell.isFirst = childAdapterPosition == 0;
                    if (childAdapterPosition != DialogStoriesCell.this.miniItems.size() - 1) {
                        z = false;
                    }
                    storyCell.isLast = z;
                    DialogStoriesCell.this.viewsDrawInParent.add(storyCell);
                }
                DialogStoriesCell dialogStoriesCell = DialogStoriesCell.this;
                Collections.sort(dialogStoriesCell.viewsDrawInParent, dialogStoriesCell.comparator);
                for (int i4 = 0; i4 < DialogStoriesCell.this.viewsDrawInParent.size(); i4++) {
                    StoryCell storyCell2 = (StoryCell) DialogStoriesCell.this.viewsDrawInParent.get(i4);
                    int iSave = canvas.save();
                    canvas.translate(storyCell2.getX(), storyCell2.getY());
                    if (storyCell2.getAlpha() != 1.0f) {
                        canvas.saveLayerAlpha(-AndroidUtilities.dp(4.0f), -AndroidUtilities.dp(4.0f), AndroidUtilities.dp(50.0f), AndroidUtilities.dp(50.0f), (int) (storyCell2.getAlpha() * 255.0f), 31);
                    }
                    canvas.scale(storyCell2.getScaleX(), storyCell2.getScaleY(), AndroidUtilities.dp(14.0f), storyCell2.getCy());
                    storyCell2.draw(canvas);
                    canvas.restoreToCount(iSave);
                }
            }

            @Override // org.telegram.ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                return false;
            }

            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                return false;
            }

            @Override // androidx.recyclerview.widget.RecyclerView
            public void onScrolled(int i3, int i4) {
                super.onScrolled(i3, i4);
                if (DialogStoriesCell.this.premiumHint != null) {
                    DialogStoriesCell.this.premiumHint.hide();
                }
            }

            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                return false;
            }
        };
        this.listViewMini = recyclerListView3;
        recyclerListView3.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        this.listViewMini.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: org.telegram.ui.Stories.DialogStoriesCell.4
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                int childLayoutPosition = recyclerView.getChildLayoutPosition(view);
                rect.setEmpty();
                if (childLayoutPosition == 1 || childLayoutPosition == 2) {
                    rect.left = (-AndroidUtilities.dp(85.0f)) + AndroidUtilities.dp(33.0f);
                }
            }
        });
        DefaultItemAnimator defaultItemAnimator2 = new DefaultItemAnimator() { // from class: org.telegram.ui.Stories.DialogStoriesCell.5
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            protected float animateByScale(View view) {
                return 0.6f;
            }
        };
        this.miniItemAnimator = defaultItemAnimator2;
        defaultItemAnimator2.setDelayAnimations(false);
        defaultItemAnimator2.setSupportsChangeAnimations(false);
        this.listViewMini.setItemAnimator(defaultItemAnimator2);
        this.listViewMini.setAdapter(this.miniAdapter);
        this.listViewMini.setClipChildren(false);
        addView(this.listViewMini, LayoutHelper.createFrame(-1, -2.0f, 0, BitmapDescriptorFactory.HUE_RED, 4.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        setClipChildren(false);
        setClipToPadding(false);
        updateItems(false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkCollapsedProgres() {
        this.collapsedProgress = 1.0f - AndroidUtilities.lerp(1.0f - this.collapsedProgress1, 1.0f, 1.0f - this.collapsedProgress2);
        updateCollapsedProgress();
        float f = this.collapsedProgress;
        updateCurrentState(f == 1.0f ? 2 : f != BitmapDescriptorFactory.HUE_RED ? 1 : 0);
        invalidate();
    }

    private void checkExpanded() {
        if (System.currentTimeMillis() < this.checkedStoryNotificationDeletion) {
            return;
        }
        this.checkedStoryNotificationDeletion = System.currentTimeMillis() + UcsLib.NATIVE_VERIFY_SIGNATURE_FAIL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: checkLoadMore, reason: merged with bridge method [inline-methods] */
    public void lambda$didReceivedNotification$7() {
        if (this.layoutManager.findLastVisibleItemPosition() + 10 > this.items.size() || isReadAtPosition(this.layoutManager.findLastVisibleItemPosition() + 9)) {
            this.storiesController.loadNextStories(this.type == 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable createVerifiedDrawable() {
        final Drawable drawableMutate = ContextCompat.getDrawable(getContext(), R.drawable.verified_area).mutate();
        final Drawable drawableMutate2 = ContextCompat.getDrawable(getContext(), R.drawable.verified_check).mutate();
        CombinedDrawable combinedDrawable = new CombinedDrawable(drawableMutate, drawableMutate2) { // from class: org.telegram.ui.Stories.DialogStoriesCell.7
            int lastColor;

            @Override // org.telegram.ui.Components.CombinedDrawable, android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                int color = Theme.getColor(DialogStoriesCell.this.type == 0 ? Theme.key_actionBarDefault : Theme.key_actionBarDefaultArchived);
                if (this.lastColor != color) {
                    this.lastColor = color;
                    int color2 = Theme.getColor(DialogStoriesCell.this.type == 0 ? Theme.key_actionBarDefaultTitle : Theme.key_actionBarDefaultArchivedTitle);
                    Drawable drawable = drawableMutate;
                    int iBlendARGB = ColorUtils.blendARGB(color2, color, 0.1f);
                    PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
                    drawable.setColorFilter(new PorterDuffColorFilter(iBlendARGB, mode));
                    drawableMutate2.setColorFilter(new PorterDuffColorFilter(color, mode));
                }
                super.draw(canvas);
            }
        };
        combinedDrawable.setFullsize(true);
        return combinedDrawable;
    }

    static float getAvatarRight(int i, float f) {
        float fLerp = AndroidUtilities.lerp(AndroidUtilities.dp(48.0f), AndroidUtilities.dp(28.0f), f) / 2.0f;
        return AndroidUtilities.lerp((i / 2.0f) - fLerp, BitmapDescriptorFactory.HUE_RED, f) + (fLerp * 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTextColor() {
        return Theme.getColor(this.type == 0 ? Theme.key_actionBarDefaultTitle : Theme.key_actionBarDefaultArchivedTitle);
    }

    private boolean isReadAtPosition(int i) {
        return i < this.items.size() && this.storiesController.getUnreadState(((Item) this.items.get(i)).dialogId) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$makePremiumHint$14() {
        HintView2 hintView2 = this.premiumHint;
        if (hintView2 != null) {
            hintView2.hide();
        }
        this.fragment.presentFragment(new PremiumPreviewFragment("stories"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view, int i) {
        openStoryForCell((StoryCell) view, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$2(View view, int i) {
        if (this.collapsedProgress != BitmapDescriptorFactory.HUE_RED || this.overscrollPrgoress != BitmapDescriptorFactory.HUE_RED) {
            return false;
        }
        onUserLongPressed(view, ((StoryCell) view).dialogId);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$new$6(StoryCell storyCell, StoryCell storyCell2) {
        return storyCell2.position - storyCell.position;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openStoryForCell$3(long j) {
        this.storiesController.setLoading(j, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openStoryForCell$4(boolean z, boolean z2) {
        if (!z && z2) {
            this.storiesController.loadNextStories(this.type == 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$openStoryForCell$5(StoryCell storyCell, final long j) {
        boolean z;
        final boolean z2;
        boolean z3;
        BaseFragment baseFragment = this.fragment;
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        int size = storyCell.position;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            if (i >= this.items.size()) {
                z = true;
                break;
            }
            long j2 = ((Item) this.items.get(i)).dialogId;
            if (j2 != UserConfig.getInstance(this.currentAccount).clientUserId && this.storiesController.hasUnreadStories(j2)) {
                z = false;
                break;
            }
            i++;
        }
        if (storyCell.isSelf && (!z || this.items.size() == 1)) {
            arrayList.add(Long.valueOf(storyCell.dialogId));
            z2 = true;
        } else {
            if (!storyCell.isSelf && this.storiesController.hasUnreadStories(storyCell.dialogId)) {
                for (int i2 = 0; i2 < this.items.size(); i2++) {
                    long j3 = ((Item) this.items.get(i2)).dialogId;
                    if (!storyCell.isSelf && this.storiesController.hasUnreadStories(j3)) {
                        arrayList.add(Long.valueOf(j3));
                    }
                    if (j3 == storyCell.dialogId) {
                        size = arrayList.size() - 1;
                    }
                }
                z2 = false;
                z3 = true;
                StoryViewer orCreateStoryViewer = this.fragment.getOrCreateStoryViewer();
                orCreateStoryViewer.doOnAnimationReady(new Runnable() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda12
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$openStoryForCell$3(j);
                    }
                });
                orCreateStoryViewer.open(getContext(), null, arrayList, size, null, null, StoriesListPlaceProvider.of(this.recyclerListView).with(new StoriesListPlaceProvider.LoadNextInterface() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda13
                    @Override // org.telegram.ui.Stories.StoriesListPlaceProvider.LoadNextInterface
                    public final void loadNext(boolean z4) {
                        this.f$0.lambda$openStoryForCell$4(z2, z4);
                    }
                }).setPaginationParaments(this.type == 1, z3, z2), false);
            }
            for (int i3 = 0; i3 < this.items.size(); i3++) {
                if (this.storiesController.hasStories(((Item) this.items.get(i3)).dialogId)) {
                    arrayList.add(Long.valueOf(((Item) this.items.get(i3)).dialogId));
                } else if (i3 <= size) {
                    size--;
                }
            }
            z2 = false;
        }
        z3 = false;
        StoryViewer orCreateStoryViewer2 = this.fragment.getOrCreateStoryViewer();
        orCreateStoryViewer2.doOnAnimationReady(new Runnable() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openStoryForCell$3(j);
            }
        });
        orCreateStoryViewer2.open(getContext(), null, arrayList, size, null, null, StoriesListPlaceProvider.of(this.recyclerListView).with(new StoriesListPlaceProvider.LoadNextInterface() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda13
            @Override // org.telegram.ui.Stories.StoriesListPlaceProvider.LoadNextInterface
            public final void loadNext(boolean z4) {
                this.f$0.lambda$openStoryForCell$4(z2, z4);
            }
        }).setPaginationParaments(this.type == 1, z3, z2), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openStoryRecorder$11(AlertDialog alertDialog, long j, StoryCell storyCell, Boolean bool) throws IOException {
        alertDialog.dismiss();
        if (bool.booleanValue()) {
            StoryRecorder.getInstance(this.fragment.getParentActivity(), this.currentAccount).selectedPeerId(j).canChangePeer(false).open(StoryRecorder.SourceView.fromStoryCell(storyCell));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setProgressToCollapse$8(ValueAnimator valueAnimator) {
        this.collapsedProgress2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        checkCollapsedProgres();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateColors$10(View view) {
        ((StoryCell) view).invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateColors$9(int i, View view) {
        StoryCell storyCell = (StoryCell) view;
        storyCell.invalidate();
        storyCell.textView.setTextColor(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateCurrentState$12() {
        updateItems(true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateCurrentState$13(View view) {
        view.setAlpha(1.0f);
        view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
    }

    private HintView2 makePremiumHint() {
        HintView2 hintView2 = this.premiumHint;
        if (hintView2 != null) {
            return hintView2;
        }
        this.premiumHint = new HintView2(getContext(), 1).setBgColor(Theme.getColor(Theme.key_undo_background)).setMultilineText(true).setTextAlign(Layout.Alignment.ALIGN_CENTER).setJoint(BitmapDescriptorFactory.HUE_RED, 29.0f);
        SpannableStringBuilder spannableStringBuilderReplaceSingleTag = AndroidUtilities.replaceSingleTag(LocaleController.getString("StoriesPremiumHint2").replace('\n', ' '), Theme.key_undo_cancelColor, 0, new Runnable() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$makePremiumHint$14();
            }
        });
        ClickableSpan[] clickableSpanArr = (ClickableSpan[]) spannableStringBuilderReplaceSingleTag.getSpans(0, spannableStringBuilderReplaceSingleTag.length(), ClickableSpan.class);
        if (clickableSpanArr != null && clickableSpanArr.length >= 1) {
            spannableStringBuilderReplaceSingleTag.setSpan(new TypefaceSpan(AndroidUtilities.bold()), spannableStringBuilderReplaceSingleTag.getSpanStart(clickableSpanArr[0]), spannableStringBuilderReplaceSingleTag.getSpanEnd(clickableSpanArr[0]), 33);
        }
        HintView2 hintView22 = this.premiumHint;
        hintView22.setMaxWidthPx(HintView2.cutInFancyHalf(spannableStringBuilderReplaceSingleTag, hintView22.getTextPaint()));
        this.premiumHint.setText(spannableStringBuilderReplaceSingleTag);
        this.premiumHint.setPadding(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(24.0f), AndroidUtilities.dp(8.0f), 0);
        if (getParent() instanceof FrameLayout) {
            ((FrameLayout) getParent()).addView(this.premiumHint, LayoutHelper.createFrame(-1, ImageReceiver.DEFAULT_CROSSFADE_DURATION, 51));
        }
        return this.premiumHint;
    }

    private void openStoryForCell(final StoryCell storyCell, boolean z) {
        if (storyCell == null) {
            return;
        }
        if (storyCell.isSelf && !this.storiesController.hasSelfStories()) {
            if (MessagesController.getInstance(this.currentAccount).storiesEnabled()) {
                openStoryRecorder();
                return;
            } else {
                showPremiumHint();
                return;
            }
        }
        if (this.storiesController.hasStories(storyCell.dialogId) || this.storiesController.hasUploadingStories(storyCell.dialogId)) {
            TL_stories$PeerStories stories = this.storiesController.getStories(storyCell.dialogId);
            final long j = storyCell.dialogId;
            StoriesUtilities.EnsureStoryFileLoadedObject ensureStoryFileLoadedObject = this.globalCancelable;
            if (ensureStoryFileLoadedObject != null) {
                ensureStoryFileLoadedObject.cancel();
                this.globalCancelable = null;
            }
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openStoryForCell$5(storyCell, j);
                }
            };
            if (z) {
                runnable.run();
                return;
            }
            StoriesUtilities.EnsureStoryFileLoadedObject ensureStoryFileLoadedObjectEnsureStoryFileLoaded = StoriesUtilities.ensureStoryFileLoaded(stories, runnable);
            storyCell.cancellable = ensureStoryFileLoadedObjectEnsureStoryFileLoaded;
            this.globalCancelable = ensureStoryFileLoadedObjectEnsureStoryFileLoaded;
            if (ensureStoryFileLoadedObjectEnsureStoryFileLoaded != null) {
                this.storiesController.setLoading(storyCell.dialogId, true);
            }
        }
    }

    private boolean shouldDrawSelfInMini() {
        if (this.storiesController.hasUnreadStories(UserConfig.getInstance(this.currentAccount).clientUserId)) {
            return true;
        }
        return this.storiesController.hasSelfStories() && this.storiesController.getDialogListStories().size() <= 3;
    }

    private void updateCurrentState(int i) {
        if (this.currentState == i) {
            return;
        }
        this.currentState = i;
        if (i != 1 && this.updateOnIdleState) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateCurrentState$12();
                }
            });
        }
        int i2 = this.currentState;
        if (i2 == 0) {
            AndroidUtilities.forEachViews((RecyclerView) this.recyclerListView, new Consumer() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda10
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    DialogStoriesCell.lambda$updateCurrentState$13((View) obj);
                }
            });
            this.listViewMini.setVisibility(4);
            this.recyclerListView.setVisibility(0);
            checkExpanded();
        } else if (i2 == 1) {
            this.animateToDialogIds.clear();
            for (int i3 = 0; i3 < this.items.size(); i3++) {
                if (((Item) this.items.get(i3)).dialogId != UserConfig.getInstance(this.currentAccount).getClientUserId() || shouldDrawSelfInMini()) {
                    this.animateToDialogIds.add(Long.valueOf(((Item) this.items.get(i3)).dialogId));
                    if (this.animateToDialogIds.size() == 3) {
                        break;
                    }
                }
            }
            this.listViewMini.setVisibility(4);
            this.recyclerListView.setVisibility(0);
        } else if (i2 == 2) {
            this.listViewMini.setVisibility(0);
            this.recyclerListView.setVisibility(4);
            this.layoutManager.scrollToPositionWithOffset(0, 0);
            MessagesController.getInstance(this.currentAccount).getStoriesController().scheduleSort();
            StoriesUtilities.EnsureStoryFileLoadedObject ensureStoryFileLoadedObject = this.globalCancelable;
            if (ensureStoryFileLoadedObject != null) {
                ensureStoryFileLoadedObject.cancel();
                this.globalCancelable = null;
            }
        }
        invalidate();
    }

    public void afterNextLayout(Runnable runnable) {
        this.afterNextLayout.add(runnable);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.storiesUpdated && this.allowGlobalUpdates) {
            updateItems(getVisibility() == 0, false);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$didReceivedNotification$7();
                }
            });
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int iFindFirstCompletelyVisibleItemPosition;
        float f;
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        int childAdapterPosition;
        canvas.save();
        int i5 = this.clipTop;
        if (i5 > 0) {
            canvas.clipRect(0, i5, getMeasuredWidth(), getMeasuredHeight());
        }
        float fLerp = AndroidUtilities.lerp(0, (getMeasuredHeight() - ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.dp(4.0f), this.collapsedProgress1);
        this.recyclerListView.setTranslationY(fLerp);
        this.listViewMini.setTranslationY(fLerp);
        this.listViewMini.setTranslationX(AndroidUtilities.dp(68.0f));
        for (int i6 = 0; i6 < this.viewsDrawInParent.size(); i6++) {
            ((StoryCell) this.viewsDrawInParent.get(i6)).drawInParent = false;
        }
        this.viewsDrawInParent.clear();
        int i7 = -1;
        if (this.currentState != 1 || this.animateToDialogIds.isEmpty()) {
            iFindFirstCompletelyVisibleItemPosition = this.currentState == 2 ? 0 : -1;
        } else {
            iFindFirstCompletelyVisibleItemPosition = -1;
            for (int i8 = 0; i8 < this.recyclerListView.getChildCount(); i8++) {
                StoryCell storyCell = (StoryCell) this.recyclerListView.getChildAt(i8);
                if (storyCell.dialogId == ((Long) this.animateToDialogIds.get(0)).longValue()) {
                    iFindFirstCompletelyVisibleItemPosition = this.recyclerListView.getChildAdapterPosition(storyCell);
                }
            }
        }
        int i9 = this.currentState;
        if (i9 < 0 || i9 == 2) {
            f = BitmapDescriptorFactory.HUE_RED;
            for (int i10 = 0; i10 < this.listViewMini.getChildCount(); i10++) {
                float x = this.listViewMini.getX() + ((StoryCell) this.listViewMini.getChildAt(i10)).getX() + r5.getMeasuredWidth();
                if (f == BitmapDescriptorFactory.HUE_RED || x > f) {
                    f = x;
                }
            }
        } else {
            if (iFindFirstCompletelyVisibleItemPosition == -1) {
                iFindFirstCompletelyVisibleItemPosition = this.layoutManager.findFirstCompletelyVisibleItemPosition();
                if (iFindFirstCompletelyVisibleItemPosition == -1) {
                    iFindFirstCompletelyVisibleItemPosition = this.layoutManager.findFirstVisibleItemPosition();
                }
                z = true;
            } else {
                z = false;
            }
            this.recyclerListView.setAlpha(1.0f - Utilities.clamp(this.collapsedProgress / this.K, 1.0f, BitmapDescriptorFactory.HUE_RED));
            this.overscrollSelectedPosition = -1;
            if (this.overscrollPrgoress != BitmapDescriptorFactory.HUE_RED) {
                int i11 = 0;
                int i12 = -1;
                while (i11 < this.recyclerListView.getChildCount()) {
                    View childAt = this.recyclerListView.getChildAt(i11);
                    if (childAt.getX() < BitmapDescriptorFactory.HUE_RED || childAt.getX() + childAt.getMeasuredWidth() > getMeasuredWidth() || (childAdapterPosition = this.recyclerListView.getChildAdapterPosition(childAt)) < 0 || (i12 != i7 && childAdapterPosition >= i12)) {
                        i4 = iFindFirstCompletelyVisibleItemPosition;
                    } else {
                        i4 = iFindFirstCompletelyVisibleItemPosition;
                        if (((Item) this.items.get(childAdapterPosition)).dialogId != UserConfig.getInstance(this.currentAccount).clientUserId) {
                            this.overscrollSelectedView = (StoryCell) childAt;
                            i12 = childAdapterPosition;
                        }
                    }
                    i11++;
                    iFindFirstCompletelyVisibleItemPosition = i4;
                    i7 = -1;
                }
                i = iFindFirstCompletelyVisibleItemPosition;
                this.overscrollSelectedPosition = i12;
            } else {
                i = iFindFirstCompletelyVisibleItemPosition;
            }
            int i13 = 0;
            f = BitmapDescriptorFactory.HUE_RED;
            while (i13 < this.recyclerListView.getChildCount()) {
                StoryCell storyCell2 = (StoryCell) this.recyclerListView.getChildAt(i13);
                storyCell2.setProgressToCollapsed(this.collapsedProgress, this.collapsedProgress2, this.overscrollPrgoress, this.overscrollSelectedPosition == storyCell2.position);
                float fClamp = Utilities.clamp((this.overscrollPrgoress - 0.5f) / 0.5f, 1.0f, BitmapDescriptorFactory.HUE_RED);
                float fDp = AndroidUtilities.dp(16.0f) * fClamp;
                double d = (1.0f - fClamp) * 0.5f;
                Double.isNaN(d);
                float f2 = (float) (d + 0.5d);
                if (this.collapsedProgress > BitmapDescriptorFactory.HUE_RED) {
                    int childAdapterPosition2 = this.recyclerListView.getChildAdapterPosition(storyCell2);
                    i2 = i;
                    boolean z2 = childAdapterPosition2 >= i2 && childAdapterPosition2 <= i2 + 2;
                    storyCell2.setCrossfadeTo((!z || (i3 = childAdapterPosition2 - i2) < 0 || i3 >= this.animateToDialogIds.size()) ? -1L : ((Long) this.animateToDialogIds.get(i3)).longValue());
                    storyCell2.drawInParent = z2;
                    storyCell2.isFirst = childAdapterPosition2 == i2;
                    storyCell2.isLast = childAdapterPosition2 >= (this.animateToDialogIds.size() + i2) - 1;
                    storyCell2.setTranslationX(AndroidUtilities.lerp(BitmapDescriptorFactory.HUE_RED, ((childAdapterPosition2 <= i2 ? BitmapDescriptorFactory.HUE_RED : childAdapterPosition2 == i2 + 1 ? AndroidUtilities.dp(18.0f) : AndroidUtilities.dp(18.0f) * 2) + AndroidUtilities.dp(68.0f)) - storyCell2.getLeft(), CubicBezierInterpolator.EASE_OUT.getInterpolation(this.collapsedProgress)));
                    if (z2) {
                        this.viewsDrawInParent.add(storyCell2);
                    }
                } else {
                    i2 = i;
                    if (this.recyclerListView.getItemAnimator() == null || !this.recyclerListView.getItemAnimator().isRunning()) {
                        if (this.overscrollPrgoress > BitmapDescriptorFactory.HUE_RED) {
                            int i14 = storyCell2.position;
                            int i15 = this.overscrollSelectedPosition;
                            if (i14 < i15) {
                                storyCell2.setTranslationX(-fDp);
                            } else if (i14 > i15) {
                                storyCell2.setTranslationX(fDp);
                            } else {
                                storyCell2.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                                storyCell2.setTranslationY((-fDp) / 2.0f);
                            }
                            storyCell2.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                            storyCell2.setAlpha(f2);
                        } else {
                            storyCell2.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                            storyCell2.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                        }
                        storyCell2.setAlpha(1.0f);
                    }
                }
                if (storyCell2.drawInParent) {
                    float x2 = this.recyclerListView.getX() + storyCell2.getX() + (storyCell2.getMeasuredWidth() / 2.0f) + (AndroidUtilities.dp(70.0f) / 2.0f);
                    if (f == BitmapDescriptorFactory.HUE_RED || x2 > f) {
                        f = x2;
                    }
                }
                i13++;
                i = i2;
            }
        }
        if (this.premiumHint != null) {
            float fLerp2 = AndroidUtilities.lerp(29, 74, CubicBezierInterpolator.EASE_OUT.getInterpolation(this.collapsedProgress));
            if (this.recyclerListView.getChildCount() > 0) {
                fLerp2 += this.recyclerListView.getChildAt(0).getLeft();
            }
            this.premiumHint.setJoint(BitmapDescriptorFactory.HUE_RED, fLerp2);
        }
        float fMin = Math.min(this.collapsedProgress, this.collapsedProgress2);
        if (fMin != BitmapDescriptorFactory.HUE_RED) {
            this.titleView.setTranslationY(((fLerp + AndroidUtilities.dp(14.0f)) - ((this.titleView.getMeasuredHeight() - this.titleView.getTextHeight()) / 2.0f)) + AndroidUtilities.dp(4.0f));
            float fDp2 = f + (-r2) + AndroidUtilities.dp(6.0f) + getAvatarRight(AndroidUtilities.dp(72.0f), this.collapsedProgress) + AndroidUtilities.dp(12.0f);
            this.titleView.setTranslationX(fDp2);
            this.titleView.getDrawable().setRightPadding(fDp2 + (this.actionBar.menu.getItemsMeasuredWidth(false) * fMin));
            this.titleView.setAlpha(fMin);
            this.titleView.setVisibility(0);
        } else {
            this.titleView.setVisibility(8);
        }
        super.dispatchDraw(canvas);
        int i16 = this.currentState;
        if (i16 >= 0 && i16 != 2) {
            Collections.sort(this.viewsDrawInParent, this.comparator);
            for (int i17 = 0; i17 < this.viewsDrawInParent.size(); i17++) {
                StoryCell storyCell3 = (StoryCell) this.viewsDrawInParent.get(i17);
                canvas.save();
                canvas.translate(this.recyclerListView.getX() + storyCell3.getX(), this.recyclerListView.getY() + storyCell3.getY());
                storyCell3.draw(canvas);
                canvas.restore();
            }
        }
        canvas.restore();
    }

    public StoryCell findStoryCell(long j) {
        RecyclerListView recyclerListView = this.recyclerListView;
        if (this.currentState == 2) {
            recyclerListView = this.listViewMini;
        }
        for (int i = 0; i < recyclerListView.getChildCount(); i++) {
            View childAt = recyclerListView.getChildAt(i);
            if (childAt instanceof StoryCell) {
                StoryCell storyCell = (StoryCell) childAt;
                if (storyCell.dialogId == j) {
                    return storyCell;
                }
            }
        }
        return null;
    }

    public float getCollapsedProgress() {
        return this.collapsedProgress;
    }

    public HintView2 getPremiumHint() {
        return this.premiumHint;
    }

    public boolean isExpanded() {
        int i = this.currentState;
        return i == 0 || i == 1;
    }

    public boolean isFullExpanded() {
        return this.currentState == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        updateItems(false, false);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.storiesUpdated);
        this.ellipsizeSpanAnimator.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.storiesUpdated);
        this.ellipsizeSpanAnimator.onDetachedFromWindow();
        StoriesUtilities.EnsureStoryFileLoadedObject ensureStoryFileLoadedObject = this.globalCancelable;
        if (ensureStoryFileLoadedObject != null) {
            ensureStoryFileLoadedObject.cancel();
            this.globalCancelable = null;
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        this.titleView.setTextSize(AndroidUtilities.dp((AndroidUtilities.isTablet() || getResources().getConfiguration().orientation != 2) ? 20.0f : 18.0f));
        this.currentCellWidth = AndroidUtilities.dp(70.0f);
        AndroidUtilities.rectTmp.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(89.0f), 1073741824));
    }

    /* renamed from: onMiniListClicked, reason: merged with bridge method [inline-methods] */
    public void lambda$new$0() {
    }

    public void onResume() {
        this.storiesController.checkExpiredStories();
        for (int i = 0; i < this.items.size(); i++) {
            TL_stories$PeerStories stories = this.storiesController.getStories(((Item) this.items.get(i)).dialogId);
            if (stories != null) {
                this.storiesController.preloadUserStories(stories);
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.currentState == 2) {
            int size = this.miniItems.size();
            this.miniItemsClickArea.setRect((int) this.listViewMini.getX(), (int) this.listViewMini.getY(), (int) (this.listViewMini.getX() + AndroidUtilities.dp((size * 28) - (Math.max(0, size - 1) * 18.0f))), (int) (this.listViewMini.getY() + this.listViewMini.getHeight()));
            if (this.miniItemsClickArea.checkTouchEvent(motionEvent)) {
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public abstract void onUserLongPressed(View view, long j);

    public void openOverscrollSelectedStory() {
        openStoryForCell(this.overscrollSelectedView, true);
        performHapticFeedback(3);
    }

    public void openSelfStories() {
        if (this.storiesController.hasSelfStories()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(Long.valueOf(UserConfig.getInstance(this.currentAccount).clientUserId));
            this.fragment.getOrCreateStoryViewer().open(getContext(), null, arrayList, 0, null, null, StoriesListPlaceProvider.of(this.listViewMini), false);
        }
    }

    public void openStoryForCell(StoryCell storyCell) {
        openStoryForCell(storyCell, false);
    }

    public void openStoryRecorder() {
        openStoryRecorder(0L);
    }

    public void openStoryRecorder(final long j) {
        final StoryCell storyCell;
        StoriesController.StoryLimit storyLimitCheckStoryLimit;
        if (j == 0 && (storyLimitCheckStoryLimit = MessagesController.getInstance(this.currentAccount).getStoriesController().checkStoryLimit()) != null && storyLimitCheckStoryLimit.active(this.currentAccount)) {
            this.fragment.showDialog(new LimitReachedBottomSheet(this.fragment, getContext(), storyLimitCheckStoryLimit.getLimitReachedType(), this.currentAccount, null));
            return;
        }
        for (int i = 0; i < this.recyclerListView.getChildCount(); i++) {
            StoryCell storyCell2 = (StoryCell) this.recyclerListView.getChildAt(i);
            if (j == 0) {
                if (storyCell2.isSelf) {
                    storyCell = storyCell2;
                    break;
                }
            } else {
                if (storyCell2.dialogId == j) {
                    storyCell = storyCell2;
                    break;
                }
            }
        }
        storyCell = null;
        if (storyCell == null) {
            return;
        }
        BaseFragment baseFragment = this.fragment;
        if (j == 0) {
            StoryRecorder.getInstance(baseFragment.getParentActivity(), this.currentAccount).open(StoryRecorder.SourceView.fromStoryCell(storyCell));
            return;
        }
        Theme.ResourcesProvider resourceProvider = baseFragment != null ? baseFragment.getResourceProvider() : null;
        final AlertDialog alertDialog = new AlertDialog(getContext(), 3, resourceProvider);
        alertDialog.showDelayed(500L);
        MessagesController.getInstance(this.currentAccount).getStoriesController().canSendStoryFor(j, new Consumer() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda14
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) throws IOException {
                this.f$0.lambda$openStoryRecorder$11(alertDialog, j, storyCell, (Boolean) obj);
            }
        }, true, resourceProvider);
    }

    public float overscrollProgress() {
        return this.overscrollPrgoress;
    }

    public boolean scrollTo(long j) {
        int i = 0;
        while (true) {
            if (i >= this.items.size()) {
                i = -1;
                break;
            }
            if (((Item) this.items.get(i)).dialogId == j) {
                break;
            }
            i++;
        }
        if (i >= 0) {
            if (i < this.layoutManager.findFirstCompletelyVisibleItemPosition()) {
                this.layoutManager.scrollToPositionWithOffset(i, 0);
                return true;
            }
            if (i > this.layoutManager.findLastCompletelyVisibleItemPosition()) {
                this.layoutManager.scrollToPositionWithOffset(i, 0, true);
                return true;
            }
        }
        return false;
    }

    public boolean scrollToFirst() {
        if (this.layoutManager.findFirstVisibleItemPosition() == 0) {
            return false;
        }
        this.recyclerListView.smoothScrollToPosition(0);
        return true;
    }

    public void scrollToFirstCell() {
        this.layoutManager.scrollToPositionWithOffset(0, 0);
    }

    public void setActionBar(ActionBar actionBar) {
        this.actionBar = actionBar;
    }

    public void setClipTop(int i) {
        if (i < 0) {
            i = 0;
        }
        if (this.clipTop != i) {
            this.clipTop = i;
            invalidate();
        }
    }

    public void setOverscoll(float f) {
        this.overscrollPrgoress = f / AndroidUtilities.dp(90.0f);
        invalidate();
        this.recyclerListView.invalidate();
        if (this.overscrollPrgoress == BitmapDescriptorFactory.HUE_RED) {
            ((ViewGroup) getParent()).setClipChildren(true);
            return;
        }
        setClipChildren(false);
        this.recyclerListView.setClipChildren(false);
        ((ViewGroup) getParent()).setClipChildren(false);
    }

    public void setProgressToCollapse(float f) {
        setProgressToCollapse(f, true);
    }

    public void setProgressToCollapse(float f, boolean z) {
        if (this.collapsedProgress1 == f) {
            return;
        }
        this.collapsedProgress1 = f;
        checkCollapsedProgres();
        final boolean z2 = f > this.K;
        if (z2 != this.collapsed) {
            this.collapsed = z2;
            ValueAnimator valueAnimator = this.valueAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.valueAnimator.cancel();
                this.valueAnimator = null;
            }
            float f2 = BitmapDescriptorFactory.HUE_RED;
            if (z) {
                float f3 = this.collapsedProgress2;
                if (z2) {
                    f2 = 1.0f;
                }
                this.valueAnimator = ValueAnimator.ofFloat(f3, f2);
            } else {
                if (z2) {
                    f2 = 1.0f;
                }
                this.collapsedProgress2 = f2;
                checkCollapsedProgres();
            }
            ValueAnimator valueAnimator2 = this.valueAnimator;
            if (valueAnimator2 != null) {
                valueAnimator2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        this.f$0.lambda$setProgressToCollapse$8(valueAnimator3);
                    }
                });
                this.valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.DialogStoriesCell.6
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        DialogStoriesCell.this.collapsedProgress2 = z2 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                        DialogStoriesCell.this.checkCollapsedProgres();
                    }
                });
                this.valueAnimator.setDuration(450L);
                this.valueAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.valueAnimator.start();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setTitleOverlayText(String str, int i) {
        boolean z = false;
        if (str != null) {
            this.hasOverlayText = true;
            if (this.overlayTextId != i) {
                this.overlayTextId = i;
                String string = LocaleController.getString(str, i);
                boolean zIsEmpty = TextUtils.isEmpty(string);
                String str2 = string;
                if (!zIsEmpty) {
                    int iIndexOf = TextUtils.indexOf(string, "...");
                    str2 = string;
                    if (iIndexOf >= 0) {
                        SpannableString spannableStringValueOf = SpannableString.valueOf(string);
                        this.ellipsizeSpanAnimator.wrap(spannableStringValueOf, iIndexOf);
                        z = true;
                        str2 = spannableStringValueOf;
                    }
                }
                this.titleView.setText(str2, true ^ LocaleController.isRTL);
            }
        } else {
            this.hasOverlayText = false;
            this.overlayTextId = 0;
            this.titleView.setText(this.currentTitle, true ^ LocaleController.isRTL);
        }
        EllipsizeSpanAnimator ellipsizeSpanAnimator = this.ellipsizeSpanAnimator;
        AnimatedTextView animatedTextView = this.titleView;
        if (z) {
            ellipsizeSpanAnimator.addView(animatedTextView);
        } else {
            ellipsizeSpanAnimator.removeView(animatedTextView);
        }
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        HintView2 hintView2 = this.premiumHint;
        if (hintView2 != null) {
            hintView2.setTranslationY(f);
        }
    }

    public void showPremiumHint() {
        makePremiumHint();
        HintView2 hintView2 = this.premiumHint;
        if (hintView2 != null) {
            if (hintView2.shown()) {
                BotWebViewVibrationEffect.APP_ERROR.vibrate();
            }
            this.premiumHint.show();
        }
    }

    public void updateCollapsedProgress() {
    }

    public void updateColors() {
        StoriesUtilities.updateColors();
        final int textColor = getTextColor();
        this.titleView.setTextColor(textColor);
        AndroidUtilities.forEachViews((RecyclerView) this.recyclerListView, new Consumer() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda7
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                DialogStoriesCell.lambda$updateColors$9(textColor, (View) obj);
            }
        });
        AndroidUtilities.forEachViews((RecyclerView) this.listViewMini, new Consumer() { // from class: org.telegram.ui.Stories.DialogStoriesCell$$ExternalSyntheticLambda8
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                DialogStoriesCell.lambda$updateColors$10((View) obj);
            }
        });
    }

    public void updateItems(boolean z, boolean z2) {
        CharSequence pluralString;
        RecyclerListView recyclerListView;
        if ((this.currentState == 1 || this.overscrollPrgoress != BitmapDescriptorFactory.HUE_RED) && !z2) {
            this.updateOnIdleState = true;
            return;
        }
        this.oldItems.clear();
        this.oldItems.addAll(this.items);
        this.oldMiniItems.clear();
        this.oldMiniItems.addAll(this.miniItems);
        this.items.clear();
        if (this.type != 1) {
            this.items.add(new Item(UserConfig.getInstance(this.currentAccount).getClientUserId()));
        }
        ArrayList hiddenList = this.type == 1 ? this.storiesController.getHiddenList() : this.storiesController.getDialogListStories();
        for (int i = 0; i < hiddenList.size(); i++) {
            long peerDialogId = DialogObject.getPeerDialogId(((TL_stories$PeerStories) hiddenList.get(i)).peer);
            if (peerDialogId != UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                this.items.add(new Item(peerDialogId));
            }
        }
        int size = this.items.size();
        if (!this.storiesController.hasSelfStories()) {
            size--;
        }
        int iMax = Math.max(1, Math.max(this.storiesController.getTotalStoriesCount(this.type == 1), size));
        if (!this.storiesController.hasOnlySelfStories()) {
            pluralString = LocaleController.formatPluralString("Stories", iMax, new Object[0]);
        } else if (this.storiesController.hasUploadingStories(UserConfig.getInstance(this.currentAccount).getClientUserId())) {
            String string = LocaleController.getString(R.string.UploadingStory);
            int iIndexOf = string.indexOf("…");
            pluralString = string;
            if (iIndexOf > 0) {
                if (this.uploadingString == null) {
                    SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(string);
                    UploadingDotsSpannable uploadingDotsSpannable = new UploadingDotsSpannable();
                    spannableStringBuilderValueOf.setSpan(uploadingDotsSpannable, spannableStringBuilderValueOf.length() - 1, spannableStringBuilderValueOf.length(), 0);
                    uploadingDotsSpannable.setParent(this.titleView, true);
                    this.uploadingString = spannableStringBuilderValueOf;
                }
                pluralString = this.uploadingString;
            }
        } else {
            pluralString = LocaleController.getString(R.string.MyStory);
        }
        this.currentTitle = pluralString;
        if (!this.hasOverlayText) {
            this.titleView.setText(this.currentTitle, z && !LocaleController.isRTL);
        }
        this.miniItems.clear();
        for (int i2 = 0; i2 < this.items.size(); i2++) {
            if (((Item) this.items.get(i2)).dialogId != UserConfig.getInstance(this.currentAccount).clientUserId || shouldDrawSelfInMini()) {
                this.miniItems.add((Item) this.items.get(i2));
                if (this.miniItems.size() >= 3) {
                    break;
                }
            }
        }
        if (!z) {
            this.recyclerListView.setItemAnimator(null);
        } else {
            if (this.currentState == 2) {
                this.listViewMini.setItemAnimator(this.miniItemAnimator);
                recyclerListView = this.recyclerListView;
                recyclerListView.setItemAnimator(null);
                this.adapter.setItems(this.oldItems, this.items);
                this.miniAdapter.setItems(this.oldMiniItems, this.miniItems);
                this.oldItems.clear();
                invalidate();
            }
            this.recyclerListView.setItemAnimator(this.itemAnimator);
        }
        recyclerListView = this.listViewMini;
        recyclerListView.setItemAnimator(null);
        this.adapter.setItems(this.oldItems, this.items);
        this.miniAdapter.setItems(this.oldMiniItems, this.miniItems);
        this.oldItems.clear();
        invalidate();
    }
}
