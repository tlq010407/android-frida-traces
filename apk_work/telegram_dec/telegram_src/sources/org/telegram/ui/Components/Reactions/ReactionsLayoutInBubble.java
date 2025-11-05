package org.telegram.ui.Components.Reactions;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.ChatListItemAnimator;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.R;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.ChatActionCell;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.AnimatedFileDrawable;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.AvatarsDrawable;
import org.telegram.ui.Components.ButtonBounce;
import org.telegram.ui.Components.CounterView;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Stars.StarsReactionsSheet;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class ReactionsLayoutInBubble {
    private static int animationUniq;
    private int animateFromTotalHeight;
    public boolean animateHeight;
    private boolean animateMove;
    private boolean animateWidth;
    boolean attached;
    int availableWidth;
    public float drawServiceShaderBackground;
    public int fromWidth;
    private float fromX;
    private float fromY;
    public boolean hasPaidReaction;
    public boolean hasUnreadReactions;
    public int height;
    public boolean isEmpty;
    public boolean isSmall;
    private int lastDrawTotalHeight;
    private int lastDrawnWidth;
    private float lastDrawnX;
    private float lastDrawnY;
    public int lastLineX;
    ReactionButton lastSelectedButton;
    float lastX;
    float lastY;
    Runnable longPressRunnable;
    MessageObject messageObject;
    View parentView;
    public int positionOffsetY;
    boolean pressed;
    Theme.ResourcesProvider resourcesProvider;
    private boolean scrimDirection;
    private float scrimProgress;
    private Integer scrimViewReaction;
    public boolean tags;
    public int totalHeight;
    private float touchSlop;
    private boolean wasDrawn;
    public int width;
    public int x;
    public int y;
    private static final Paint paint = new Paint(1);
    private static final Paint tagPaint = new Paint(1);
    private static final Paint cutTagPaint = new Paint(1);
    private static final TextPaint textPaint = new TextPaint(1);
    private static final ButtonsComparator comparator = new ButtonsComparator();
    private static int pointer = 1;
    private static final Comparator usersComparator = new Comparator() { // from class: org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble$$ExternalSyntheticLambda0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return ReactionsLayoutInBubble.lambda$static$0((TLObject) obj, (TLObject) obj2);
        }
    };
    public ArrayList reactionButtons = new ArrayList();
    ArrayList outButtons = new ArrayList();
    HashMap lastDrawingReactionButtons = new HashMap();
    HashMap lastDrawingReactionButtonsTmp = new HashMap();
    final HashMap animatedReactions = new HashMap();
    private final ArrayList reactionLineWidths = new ArrayList();
    private final RectF scrimRect = new RectF();
    private final Rect scrimRect2 = new Rect();
    int currentAccount = UserConfig.selectedAccount;

    private static class ButtonsComparator implements Comparator {
        int currentAccount;
        long dialogId;

        private ButtonsComparator() {
        }

        @Override // java.util.Comparator
        public int compare(ReactionButton reactionButton, ReactionButton reactionButton2) {
            int i;
            int i2;
            long j = this.dialogId;
            boolean z = reactionButton.paid;
            boolean z2 = reactionButton2.paid;
            if (j >= 0) {
                if (z != z2) {
                    return z ? -1 : 1;
                }
                boolean z3 = reactionButton.isSelected;
                if (z3 != reactionButton2.isSelected) {
                    return z3 ? -1 : 1;
                }
                if (z3 && (i = reactionButton.choosenOrder) != (i2 = reactionButton2.choosenOrder)) {
                    return i - i2;
                }
            } else {
                if (z != z2) {
                    return z ? -1 : 1;
                }
                int i3 = reactionButton.realCount;
                int i4 = reactionButton2.realCount;
                if (i3 != i4) {
                    return i4 - i3;
                }
            }
            return reactionButton.reactionCount.lastDrawnPosition - reactionButton2.reactionCount.lastDrawnPosition;
        }
    }

    public static class ReactionButton {
        public int animateFromWidth;
        public int animateFromX;
        public int animateFromY;
        public AnimatedEmojiDrawable animatedEmojiDrawable;
        int animatedEmojiDrawableColor;
        public int animationType;
        public boolean attached;
        AvatarsDrawable avatarsDrawable;
        int backgroundColor;
        public final ButtonBounce bounce;
        public boolean choosen;
        public int choosenOrder;
        public int count;
        public String countText;
        public CounterView.CounterDrawable counterDrawable;
        private final int currentAccount;
        public int fromBackgroundColor;
        public int fromTagDotColor;
        public int fromTextColor;
        public boolean hasName;
        public int height;
        public ImageReceiver imageReceiver;
        public boolean inGroup;
        boolean isSelected;
        private final boolean isSmall;
        public boolean isTag;
        public String key;
        public int lastDrawnBackgroundColor;
        public int lastDrawnTagDotColor;
        public int lastDrawnTextColor;
        public boolean lastImageDrawn;
        private boolean lastScrimProgressDirection;
        public String name;
        public boolean paid;
        private final View parentView;
        private StarsReactionsSheet.Particles particles;
        public AnimatedEmojiDrawable previewAnimatedEmojiDrawable;
        public ImageReceiver previewImageReceiver;
        public TLRPC.Reaction reaction;
        private final TLRPC.ReactionCount reactionCount;
        public int realCount;
        private final Theme.ResourcesProvider resourcesProvider;
        public AnimatedTextView.AnimatedTextDrawable scrimPreviewCounterDrawable;
        int serviceBackgroundColor;
        int serviceTextColor;
        private final Drawable.Callback supercallback;
        int textColor;
        public AnimatedTextView.AnimatedTextDrawable textDrawable;
        public int top;
        ArrayList users;
        VisibleReaction visibleReaction;
        public boolean wasDrawn;
        public int width;
        public int x;
        public int y;
        public boolean drawImage = true;
        Rect drawingImageRect = new Rect();
        private RectF bounds = new RectF();
        private RectF rect2 = new RectF();
        private final Path tagPath = new Path();

        public ReactionButton(ReactionButton reactionButton, int i, View view, TLRPC.ReactionCount reactionCount, boolean z, boolean z2, Theme.ResourcesProvider resourcesProvider) {
            String string;
            StarsReactionsSheet.Particles particles;
            Drawable.Callback callback = new Drawable.Callback() { // from class: org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble.ReactionButton.1
                @Override // android.graphics.drawable.Drawable.Callback
                public void invalidateDrawable(Drawable drawable) {
                    if (ReactionButton.this.parentView != null) {
                        ReactionButton.this.parentView.invalidate();
                        ReactionButton reactionButton2 = ReactionButton.this;
                        if (reactionButton2.inGroup && reactionButton2.parentView.getParent() != null && (ReactionButton.this.parentView.getParent().getParent() instanceof View)) {
                            ((View) ReactionButton.this.parentView.getParent().getParent()).invalidate();
                        }
                    }
                }

                @Override // android.graphics.drawable.Drawable.Callback
                public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
                    if (ReactionButton.this.parentView != null) {
                        ReactionButton.this.parentView.scheduleDrawable(drawable, runnable, j);
                    }
                }

                @Override // android.graphics.drawable.Drawable.Callback
                public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
                    if (ReactionButton.this.parentView != null) {
                        ReactionButton.this.parentView.unscheduleDrawable(drawable, runnable);
                    }
                }
            };
            this.supercallback = callback;
            this.currentAccount = i;
            this.parentView = view;
            this.bounce = new ButtonBounce(view);
            this.resourcesProvider = resourcesProvider;
            this.isTag = z2;
            if (reactionButton != null) {
                this.counterDrawable = reactionButton.counterDrawable;
            }
            if (this.imageReceiver == null) {
                this.imageReceiver = new ImageReceiver();
            }
            if (this.counterDrawable == null) {
                this.counterDrawable = new CounterView.CounterDrawable(view, false, null);
            }
            if (this.textDrawable == null) {
                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(true, true, true);
                this.textDrawable = animatedTextDrawable;
                animatedTextDrawable.setAnimationProperties(0.4f, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
                this.textDrawable.setTextSize(AndroidUtilities.dp(13.0f));
                this.textDrawable.setCallback(callback);
                this.textDrawable.setTypeface(AndroidUtilities.bold());
                this.textDrawable.setOverrideFullWidth(AndroidUtilities.displaySize.x);
            }
            if (this.scrimPreviewCounterDrawable == null) {
                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = new AnimatedTextView.AnimatedTextDrawable(false, false, false, true);
                this.scrimPreviewCounterDrawable = animatedTextDrawable2;
                animatedTextDrawable2.setTextSize(AndroidUtilities.dp(12.0f));
                this.scrimPreviewCounterDrawable.setCallback(callback);
                this.scrimPreviewCounterDrawable.setTypeface(AndroidUtilities.bold());
                this.scrimPreviewCounterDrawable.setOverrideFullWidth(AndroidUtilities.displaySize.x);
                this.scrimPreviewCounterDrawable.setScaleProperty(0.35f);
            }
            this.reactionCount = reactionCount;
            TLRPC.Reaction reaction = reactionCount.reaction;
            this.reaction = reaction;
            this.visibleReaction = VisibleReaction.fromTL(reaction);
            int i2 = reactionCount.count;
            this.count = i2;
            this.choosen = reactionCount.chosen;
            this.realCount = i2;
            this.choosenOrder = reactionCount.chosen_order;
            this.isSmall = z;
            TLRPC.Reaction reaction2 = this.reaction;
            if (reaction2 instanceof TLRPC.TL_reactionPaid) {
                string = "stars";
            } else if (reaction2 instanceof TLRPC.TL_reactionEmoji) {
                string = ((TLRPC.TL_reactionEmoji) reaction2).emoticon;
            } else {
                if (!(reaction2 instanceof TLRPC.TL_reactionCustomEmoji)) {
                    throw new RuntimeException("unsupported");
                }
                string = Long.toString(((TLRPC.TL_reactionCustomEmoji) reaction2).document_id);
            }
            this.key = string;
            this.imageReceiver.setParentView(view);
            this.isSelected = reactionCount.chosen;
            CounterView.CounterDrawable counterDrawable = this.counterDrawable;
            counterDrawable.updateVisibility = false;
            counterDrawable.shortFormat = true;
            if (this.reaction != null) {
                VisibleReaction visibleReaction = this.visibleReaction;
                if (visibleReaction.isStar) {
                    this.paid = true;
                    if (LiteMode.isEnabled(8200)) {
                        this.imageReceiver.setImageBitmap(new RLottieDrawable(R.raw.star_reaction_click, "star_reaction_click", AndroidUtilities.dp(40.0f), AndroidUtilities.dp(40.0f)));
                    } else {
                        this.imageReceiver.setImageBitmap(ApplicationLoader.applicationContext.getResources().getDrawable(R.drawable.star_reaction).mutate());
                    }
                    if (reactionButton == null || (particles = reactionButton.particles) == null) {
                        particles = new StarsReactionsSheet.Particles(1, SharedConfig.getDevicePerformanceClass() == 2 ? 25 : 8);
                    }
                    this.particles = particles;
                } else if (visibleReaction.emojicon != null) {
                    TLRPC.TL_availableReaction tL_availableReaction = MediaDataController.getInstance(i).getReactionsMap().get(this.visibleReaction.emojicon);
                    if (tL_availableReaction != null) {
                        this.imageReceiver.setImage(ImageLocation.getForDocument(tL_availableReaction.center_icon), "40_40_lastreactframe", DocumentObject.getSvgThumb(tL_availableReaction.static_icon, Theme.key_windowBackgroundGray, 1.0f), "webp", tL_availableReaction, 1);
                    }
                } else if (visibleReaction.documentId != 0) {
                    this.animatedEmojiDrawable = new AnimatedEmojiDrawable(getCacheType(), i, this.visibleReaction.documentId);
                }
            }
            this.counterDrawable.setSize(AndroidUtilities.dp(26.0f), AndroidUtilities.dp(100.0f));
            this.counterDrawable.textPaint = ReactionsLayoutInBubble.textPaint;
            if (z2) {
                this.name = MessagesController.getInstance(i).getSavedTagName(this.reaction);
                this.hasName = !TextUtils.isEmpty(r1);
            }
            if (this.hasName) {
                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable3 = this.textDrawable;
                animatedTextDrawable3.setText(Emoji.replaceEmoji(this.name, animatedTextDrawable3.getPaint().getFontMetricsInt(), false), !LocaleController.isRTL);
                if (!drawTextWithCounter()) {
                    this.countText = "";
                    this.counterDrawable.setCount(0, false);
                }
                this.counterDrawable.setType(2);
                this.counterDrawable.gravity = 3;
            }
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable4 = this.textDrawable;
            if (animatedTextDrawable4 != null) {
                animatedTextDrawable4.setText("", false);
            }
            this.countText = Integer.toString(reactionCount.count);
            this.counterDrawable.setCount(this.count, false);
            this.counterDrawable.setType(2);
            this.counterDrawable.gravity = 3;
        }

        private void drawImage(Canvas canvas, Rect rect, float f) {
            boolean z;
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
            ImageReceiver imageReceiver = (animatedEmojiDrawable == null || animatedEmojiDrawable.getImageReceiver() == null) ? this.imageReceiver : this.animatedEmojiDrawable.getImageReceiver();
            if (imageReceiver != null && rect != null) {
                imageReceiver.setImageCoords(rect);
            }
            AnimatedEmojiDrawable animatedEmojiDrawable2 = this.animatedEmojiDrawable;
            if (animatedEmojiDrawable2 != null && this.animatedEmojiDrawableColor != this.lastDrawnTextColor) {
                int i = this.lastDrawnTextColor;
                this.animatedEmojiDrawableColor = i;
                animatedEmojiDrawable2.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
            }
            if (!this.drawImage || (!this.paid && this.realCount <= 1 && isPlaying() && this.isSelected)) {
                imageReceiver.setAlpha(BitmapDescriptorFactory.HUE_RED);
                imageReceiver.draw(canvas);
                this.lastImageDrawn = false;
                return;
            }
            ImageReceiver imageReceiver2 = getImageReceiver();
            if (imageReceiver2 != null) {
                z = imageReceiver2.getLottieAnimation() == null || !imageReceiver2.getLottieAnimation().hasBitmap();
                if (f != 1.0f) {
                    imageReceiver2.setAlpha(f);
                    if (f <= BitmapDescriptorFactory.HUE_RED) {
                        imageReceiver2.onDetachedFromWindow();
                        removeImageReceiver();
                    }
                } else if (imageReceiver2.getLottieAnimation() != null && !imageReceiver2.getLottieAnimation().isRunning()) {
                    float alpha = imageReceiver2.getAlpha() - 0.08f;
                    if (alpha <= BitmapDescriptorFactory.HUE_RED) {
                        imageReceiver2.onDetachedFromWindow();
                        removeImageReceiver();
                    } else {
                        imageReceiver2.setAlpha(alpha);
                    }
                    this.parentView.invalidate();
                    z = true;
                }
                imageReceiver2.setImageCoords(imageReceiver.getImageX() - (imageReceiver.getImageWidth() / 2.0f), imageReceiver.getImageY() - (imageReceiver.getImageWidth() / 2.0f), imageReceiver.getImageWidth() * 2.0f, imageReceiver.getImageHeight() * 2.0f);
                imageReceiver2.draw(canvas);
            } else {
                z = true;
            }
            if (z) {
                imageReceiver.draw(canvas);
            }
            this.lastImageDrawn = true;
        }

        private void drawRoundRect(Canvas canvas, RectF rectF, float f, Paint paint) {
            if (!this.isTag) {
                canvas.drawRoundRect(rectF, f, f, paint);
                return;
            }
            RectF rectF2 = this.bounds;
            if (rectF2.left != rectF.left || rectF2.top != rectF.top || rectF2.right != rectF.right || rectF2.bottom != rectF.bottom) {
                rectF2.set(rectF);
                ReactionsLayoutInBubble.fillTagPath(this.bounds, this.rect2, this.tagPath);
            }
            canvas.drawPath(this.tagPath, paint);
        }

        public void attach() {
            this.attached = true;
            ImageReceiver imageReceiver = this.imageReceiver;
            if (imageReceiver != null) {
                imageReceiver.onAttachedToWindow();
            }
            AvatarsDrawable avatarsDrawable = this.avatarsDrawable;
            if (avatarsDrawable != null) {
                avatarsDrawable.onAttachedToWindow();
            }
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.addView(this.parentView);
            }
        }

        public void attachPreview(View view) {
            if (this.previewImageReceiver == null && this.previewAnimatedEmojiDrawable == null) {
                View view2 = this.parentView;
                View view3 = (view2 == null || !(view2.getParent() instanceof View)) ? this.parentView : (View) this.parentView.getParent();
                if (this.reaction != null) {
                    VisibleReaction visibleReaction = this.visibleReaction;
                    if (visibleReaction.isStar) {
                        return;
                    }
                    if (visibleReaction.emojicon == null) {
                        if (visibleReaction.documentId != 0) {
                            AnimatedEmojiDrawable animatedEmojiDrawable = new AnimatedEmojiDrawable(24, this.currentAccount, this.visibleReaction.documentId);
                            this.previewAnimatedEmojiDrawable = animatedEmojiDrawable;
                            animatedEmojiDrawable.addView(view3);
                            return;
                        }
                        return;
                    }
                    TLRPC.TL_availableReaction tL_availableReaction = MediaDataController.getInstance(this.currentAccount).getReactionsMap().get(this.visibleReaction.emojicon);
                    if (tL_availableReaction == null || tL_availableReaction.activate_animation == null) {
                        return;
                    }
                    SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(tL_availableReaction.static_icon, Theme.key_windowBackgroundGray, 1.0f);
                    ImageReceiver imageReceiver = new ImageReceiver(view3);
                    this.previewImageReceiver = imageReceiver;
                    imageReceiver.setLayerNum(7);
                    this.previewImageReceiver.onAttachedToWindow();
                    this.previewImageReceiver.setRoundRadius(AndroidUtilities.dp(14.0f));
                    this.previewImageReceiver.setAllowStartLottieAnimation(true);
                    this.previewImageReceiver.setAllowStartAnimation(true);
                    this.previewImageReceiver.setAutoRepeat(1);
                    this.previewImageReceiver.setAllowDecodeSingleFrame(true);
                    this.previewImageReceiver.setImage(ImageLocation.getForDocument(tL_availableReaction.activate_animation), "140_140", svgThumb, null, tL_availableReaction, 1);
                }
            }
        }

        public void detach() {
            this.attached = false;
            ImageReceiver imageReceiver = this.imageReceiver;
            if (imageReceiver != null) {
                imageReceiver.onDetachedFromWindow();
            }
            AvatarsDrawable avatarsDrawable = this.avatarsDrawable;
            if (avatarsDrawable != null) {
                avatarsDrawable.onDetachedFromWindow();
            }
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.removeView(this.parentView);
            }
            detachPreview();
        }

        public void detachPreview() {
            ImageReceiver imageReceiver = this.previewImageReceiver;
            if (imageReceiver == null && this.previewAnimatedEmojiDrawable == null) {
                return;
            }
            if (imageReceiver != null) {
                imageReceiver.onDetachedFromWindow();
                this.previewImageReceiver = null;
            } else if (this.previewAnimatedEmojiDrawable != null) {
                View view = this.parentView;
                this.previewAnimatedEmojiDrawable.removeView((view == null || !(view.getParent() instanceof View)) ? this.parentView : (View) this.parentView.getParent());
                this.previewAnimatedEmojiDrawable = null;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:209:0x0518  */
        /* JADX WARN: Removed duplicated region for block: B:211:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void draw(Canvas canvas, float f, float f2, float f3, float f4, boolean z, boolean z2, float f5) {
            boolean z3;
            float fDp;
            float f6;
            float f7;
            float f8;
            int iDp;
            int iDp2;
            Paint paint;
            Theme.MessageDrawable currentBackgroundDrawable;
            int i;
            this.wasDrawn = true;
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
            ImageReceiver imageReceiver = animatedEmojiDrawable != null ? animatedEmojiDrawable.getImageReceiver() : this.imageReceiver;
            if (this.isSmall && imageReceiver != null) {
                imageReceiver.setAlpha(f4);
                this.drawingImageRect.set((int) f, (int) f2, AndroidUtilities.dp(14.0f), AndroidUtilities.dp(14.0f));
                imageReceiver.setImageCoords(this.drawingImageRect);
                imageReceiver.setRoundRadius(0);
                drawImage(canvas, this.drawingImageRect, f4);
                return;
            }
            if (!this.choosen) {
                if (this.paid) {
                    this.textColor = -1529086;
                    this.backgroundColor = 1088989954;
                    this.serviceTextColor = -1;
                } else {
                    this.textColor = Theme.getColor(isOutOwner() ? Theme.key_chat_outReactionButtonText : Theme.key_chat_inReactionButtonText, this.resourcesProvider);
                    int color = Theme.getColor(isOutOwner() ? Theme.key_chat_outReactionButtonBackground : Theme.key_chat_inReactionButtonBackground, this.resourcesProvider);
                    this.backgroundColor = color;
                    this.backgroundColor = ColorUtils.setAlphaComponent(color, (int) (Color.alpha(color) * 0.156f));
                    this.serviceTextColor = Theme.getColor(Theme.key_chat_serviceText, this.resourcesProvider);
                }
                this.serviceBackgroundColor = 0;
            } else if (this.paid) {
                this.backgroundColor = -1529086;
                this.textColor = -1;
                this.serviceTextColor = -1;
                this.serviceBackgroundColor = -1529086;
            } else {
                this.backgroundColor = Theme.getColor(isOutOwner() ? Theme.key_chat_outReactionButtonBackground : Theme.key_chat_inReactionButtonBackground, this.resourcesProvider);
                this.textColor = Theme.getColor(isOutOwner() ? Theme.key_chat_outReactionButtonTextSelected : Theme.key_chat_inReactionButtonTextSelected, this.resourcesProvider);
                if (this.parentView instanceof ChatActionCell) {
                    this.serviceTextColor = Theme.getColor(Theme.key_chat_reactionServiceButtonTextSelected, this.resourcesProvider);
                    i = Theme.key_chat_reactionServiceButtonBackgroundSelected;
                } else {
                    this.serviceTextColor = Theme.getColor(isOutOwner() ? Theme.key_chat_outReactionButtonBackground : Theme.key_chat_inReactionButtonBackground, this.resourcesProvider);
                    i = isOutOwner() ? Theme.key_chat_outBubble : Theme.key_chat_inBubble;
                }
                this.serviceBackgroundColor = Theme.getColor(i, this.resourcesProvider);
            }
            updateColors(f3);
            ReactionsLayoutInBubble.textPaint.setColor(this.lastDrawnTextColor);
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.textDrawable;
            if (animatedTextDrawable != null) {
                animatedTextDrawable.setTextColor(this.lastDrawnTextColor);
            }
            ReactionsLayoutInBubble.paint.setColor(this.lastDrawnBackgroundColor);
            boolean z4 = this.isTag && drawTagDot() && Color.alpha(this.lastDrawnTagDotColor) == 0;
            if (f4 != 1.0f) {
                ReactionsLayoutInBubble.textPaint.setAlpha((int) (ReactionsLayoutInBubble.textPaint.getAlpha() * f4));
                ReactionsLayoutInBubble.paint.setAlpha((int) (ReactionsLayoutInBubble.paint.getAlpha() * f4));
            }
            if (imageReceiver != null) {
                imageReceiver.setAlpha(f4);
            }
            if (f5 > BitmapDescriptorFactory.HUE_RED && this.lastScrimProgressDirection != z2) {
                if (z2) {
                    this.scrimPreviewCounterDrawable.setAnimationProperties(0.6f, 0L, 650L, 1.6f, CubicBezierInterpolator.EASE_OUT_BACK);
                    this.scrimPreviewCounterDrawable.setText(AndroidUtilities.formatWholeNumber(this.count, 0), false);
                    this.scrimPreviewCounterDrawable.setText(LocaleController.formatNumber(this.count, ','), true);
                } else {
                    this.scrimPreviewCounterDrawable.setAnimationProperties(0.6f, 0L, 320L, 1.6f, CubicBezierInterpolator.EASE_OUT_QUINT);
                    this.scrimPreviewCounterDrawable.setText(AndroidUtilities.formatWholeNumber(this.count, 0), true);
                }
                this.lastScrimProgressDirection = z2;
            }
            float scale = this.bounce.getScale(0.1f);
            int iDp3 = this.width;
            if (f5 > BitmapDescriptorFactory.HUE_RED && !this.isTag && this.scrimPreviewCounterDrawable != null && this.avatarsDrawable == null) {
                iDp3 = (int) (AndroidUtilities.dp(8.0f) + AndroidUtilities.dp(20.0f) + AndroidUtilities.dp(this.animatedEmojiDrawable != null ? 6.0f : 4.0f) + this.scrimPreviewCounterDrawable.getCurrentWidth() + AndroidUtilities.dp(8.0f));
                this.scrimPreviewCounterDrawable.setTextColor(this.lastDrawnTextColor);
            } else if (f3 != 1.0f && this.animationType == 3) {
                iDp3 = (int) ((iDp3 * f3) + (this.animateFromWidth * (1.0f - f3)));
            }
            RectF rectF = AndroidUtilities.rectTmp;
            float f9 = iDp3;
            rectF.set(f, f2, f + f9, this.height + f2);
            if (scale != 1.0f) {
                canvas.save();
                canvas.scale(scale, scale, (f9 / 2.0f) + f, (this.height / 2.0f) + f2);
                z3 = true;
            } else {
                z3 = false;
            }
            float f10 = this.height / 2.0f;
            if (getDrawServiceShaderBackground() > BitmapDescriptorFactory.HUE_RED) {
                Paint themePaint = Theme.getThemePaint("paintChatActionBackground", this.resourcesProvider);
                Paint themePaint2 = Theme.getThemePaint("paintChatActionBackgroundDarken", this.resourcesProvider);
                int alpha = themePaint.getAlpha();
                int alpha2 = themePaint2.getAlpha();
                themePaint.setAlpha((int) (alpha * f4 * getDrawServiceShaderBackground()));
                themePaint2.setAlpha((int) (alpha2 * f4 * getDrawServiceShaderBackground()));
                drawRoundRect(canvas, rectF, f10, themePaint);
                Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
                if (resourcesProvider == null ? Theme.hasGradientService() : resourcesProvider.hasGradientService()) {
                    drawRoundRect(canvas, rectF, f10, themePaint2);
                }
                themePaint.setAlpha(alpha);
                themePaint2.setAlpha(alpha2);
            }
            if (z && getDrawServiceShaderBackground() < 1.0f) {
                View view = this.parentView;
                if ((view instanceof ChatMessageCell) && (currentBackgroundDrawable = ((ChatMessageCell) view).getCurrentBackgroundDrawable(false)) != null && !this.isTag) {
                    canvas.drawRoundRect(rectF, f10, f10, currentBackgroundDrawable.getPaint());
                }
            }
            if (z4) {
                rectF.right += AndroidUtilities.dp(4.0f);
                canvas.saveLayerAlpha(rectF, 255, 31);
                rectF.right -= AndroidUtilities.dp(4.0f);
            }
            if (this.particles != null) {
                LiteMode.isEnabled(8200);
            }
            drawRoundRect(canvas, rectF, f10, ReactionsLayoutInBubble.paint);
            if (this.isTag && drawTagDot()) {
                if (z4) {
                    paint = ReactionsLayoutInBubble.cutTagPaint;
                } else {
                    ReactionsLayoutInBubble.tagPaint.setColor(this.lastDrawnTagDotColor);
                    ReactionsLayoutInBubble.tagPaint.setAlpha((int) (ReactionsLayoutInBubble.tagPaint.getAlpha() * f4));
                    paint = ReactionsLayoutInBubble.tagPaint;
                }
                canvas.drawCircle(rectF.right - AndroidUtilities.dp(8.4f), rectF.centerY(), AndroidUtilities.dp(2.66f), paint);
            }
            if (z4) {
                canvas.restore();
            }
            if (imageReceiver != null) {
                if (this.paid) {
                    iDp = AndroidUtilities.dp(22.0f);
                    iDp2 = AndroidUtilities.dp(4.0f);
                } else if (this.animatedEmojiDrawable != null) {
                    iDp = AndroidUtilities.dp(24.0f);
                    int iDp4 = AndroidUtilities.dp(6.0f);
                    imageReceiver.setRoundRadius(AndroidUtilities.dp(6.0f));
                    iDp2 = iDp4;
                } else {
                    iDp = AndroidUtilities.dp(20.0f);
                    int iDp5 = AndroidUtilities.dp(8.0f);
                    imageReceiver.setRoundRadius(0);
                    iDp2 = iDp5;
                }
                int i2 = (int) ((this.height - iDp) / 2.0f);
                if (this.isTag) {
                    iDp2 -= AndroidUtilities.dp(2.0f);
                }
                int i3 = ((int) f) + iDp2;
                int i4 = ((int) f2) + i2;
                this.drawingImageRect.set(i3, i4, i3 + iDp, iDp + i4);
                drawImage(canvas, this.drawingImageRect, f4);
            }
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = this.textDrawable;
            if (animatedTextDrawable2 == null || animatedTextDrawable2.isNotEmpty() <= BitmapDescriptorFactory.HUE_RED) {
                fDp = BitmapDescriptorFactory.HUE_RED;
            } else {
                canvas.save();
                if (!this.hasName || drawTagDot()) {
                    f8 = this.hasName ? 9 : 8;
                } else {
                    f8 = 10.0f;
                }
                canvas.translate(AndroidUtilities.dp(f8) + f + AndroidUtilities.dp(20.0f) + AndroidUtilities.dp(2.0f), f2);
                this.textDrawable.setBounds(0, 0, this.width, this.height);
                this.textDrawable.draw(canvas);
                this.textDrawable.setAlpha((int) (f4 * 255.0f));
                canvas.restore();
                fDp = (AndroidUtilities.dp(4.0f) * this.textDrawable.isNotEmpty()) + this.textDrawable.getCurrentWidth();
            }
            if (f5 <= BitmapDescriptorFactory.HUE_RED || this.isTag || this.scrimPreviewCounterDrawable == null || this.avatarsDrawable != null) {
                if (this.counterDrawable != null && drawCounter()) {
                    canvas.save();
                    if (!this.hasName || drawTagDot()) {
                        f6 = this.hasName ? 9 : 8;
                    } else {
                        f6 = 10.0f;
                    }
                    canvas.translate(AndroidUtilities.dp(f6) + f + AndroidUtilities.dp(20.0f) + AndroidUtilities.dp(this.animatedEmojiDrawable != null ? 5.0f : 2.0f) + fDp + (this.paid ? -AndroidUtilities.dp(1.0f) : 0), f2);
                    this.counterDrawable.draw(canvas);
                }
                if (!this.isTag && this.avatarsDrawable != null) {
                    canvas.save();
                    canvas.translate(f + AndroidUtilities.dp(10.0f) + AndroidUtilities.dp(20.0f) + AndroidUtilities.dp(2.0f), f2);
                    this.avatarsDrawable.setAlpha(f4);
                    this.avatarsDrawable.setTransitionProgress(f3);
                    this.avatarsDrawable.onDraw(canvas);
                    canvas.restore();
                }
                if (z3) {
                    return;
                }
                canvas.restore();
                return;
            }
            canvas.save();
            if (!this.hasName || drawTagDot()) {
                f7 = this.hasName ? 9 : 8;
            } else {
                f7 = 10.0f;
            }
            canvas.translate(AndroidUtilities.dp(f7) + f + AndroidUtilities.dp(20.0f) + AndroidUtilities.dp(this.animatedEmojiDrawable != null ? 5.0f : 2.0f), f2 - AndroidUtilities.dp(1.0f));
            this.scrimPreviewCounterDrawable.setBounds(0, 0, this.width, this.height);
            this.scrimPreviewCounterDrawable.draw(canvas);
            this.scrimPreviewCounterDrawable.setAlpha((int) (255.0f * f4));
            canvas.restore();
            if (!this.isTag) {
                canvas.save();
                canvas.translate(f + AndroidUtilities.dp(10.0f) + AndroidUtilities.dp(20.0f) + AndroidUtilities.dp(2.0f), f2);
                this.avatarsDrawable.setAlpha(f4);
                this.avatarsDrawable.setTransitionProgress(f3);
                this.avatarsDrawable.onDraw(canvas);
                canvas.restore();
            }
            if (z3) {
            }
        }

        protected boolean drawCounter() {
            int i = this.count;
            return ((i == 0 || (this.isTag && !this.hasName && i == 1)) && this.counterDrawable.countChangeProgress == 1.0f) ? false : true;
        }

        public void drawOverlay(Canvas canvas, float f, float f2, float f3, float f4, boolean z) {
            if (this.particles != null && LiteMode.isEnabled(8200)) {
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(f, f2, this.width + f, this.height + f2);
                float f5 = this.height / 2.0f;
                this.tagPath.rewind();
                this.tagPath.addRoundRect(rectF, f5, f5, Path.Direction.CW);
                this.particles.bounds.set(rectF);
                this.particles.bounds.inset(-AndroidUtilities.dp(4.0f), -AndroidUtilities.dp(4.0f));
                StarsReactionsSheet.Particles particles = this.particles;
                particles.setBounds(particles.bounds);
                this.particles.process();
                View view = this.parentView;
                if (view != null) {
                    view.invalidate();
                }
                this.particles.draw(canvas, ColorUtils.blendARGB(ColorUtils.setAlphaComponent(this.backgroundColor, 255), ColorUtils.blendARGB(this.serviceTextColor, ColorUtils.setAlphaComponent(this.backgroundColor, 255), 0.4f), getDrawServiceShaderBackground()));
                canvas.save();
                canvas.clipPath(this.tagPath);
                this.particles.draw(canvas, this.textColor);
                canvas.restore();
            }
        }

        public void drawPreview(View view, Canvas canvas, RectF rectF, float f) {
            if (f <= BitmapDescriptorFactory.HUE_RED) {
                return;
            }
            ImageReceiver imageReceiver = this.previewImageReceiver;
            if (imageReceiver != null) {
                imageReceiver.setImageCoords(rectF);
                this.previewImageReceiver.setAlpha(f);
                this.previewImageReceiver.draw(canvas);
            } else {
                AnimatedEmojiDrawable animatedEmojiDrawable = this.previewAnimatedEmojiDrawable;
                if (animatedEmojiDrawable != null) {
                    animatedEmojiDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
                    this.previewAnimatedEmojiDrawable.setAlpha((int) (f * 255.0f));
                    this.previewAnimatedEmojiDrawable.draw(canvas);
                }
            }
            if (view != null) {
                view.invalidate();
            }
        }

        protected boolean drawTagDot() {
            return true;
        }

        protected boolean drawTextWithCounter() {
            return false;
        }

        protected int getCacheType() {
            return this.isTag ? 18 : 3;
        }

        protected float getDrawServiceShaderBackground() {
            return BitmapDescriptorFactory.HUE_RED;
        }

        protected ImageReceiver getImageReceiver() {
            return null;
        }

        protected boolean isOutOwner() {
            return false;
        }

        protected boolean isPlaying() {
            return false;
        }

        protected void removeImageReceiver() {
        }

        public void setUsers(ArrayList arrayList) {
            this.users = arrayList;
            if (arrayList != null) {
                Collections.sort(arrayList, ReactionsLayoutInBubble.usersComparator);
                if (this.avatarsDrawable == null) {
                    AvatarsDrawable avatarsDrawable = new AvatarsDrawable(this.parentView, false);
                    this.avatarsDrawable = avatarsDrawable;
                    avatarsDrawable.transitionDuration = 250L;
                    avatarsDrawable.transitionInterpolator = ChatListItemAnimator.DEFAULT_INTERPOLATOR;
                    avatarsDrawable.setSize(AndroidUtilities.dp(20.0f));
                    this.avatarsDrawable.width = AndroidUtilities.dp(100.0f);
                    AvatarsDrawable avatarsDrawable2 = this.avatarsDrawable;
                    avatarsDrawable2.height = this.height;
                    avatarsDrawable2.setAvatarsTextSize(AndroidUtilities.dp(22.0f));
                }
                if (this.attached) {
                    this.avatarsDrawable.onAttachedToWindow();
                }
                for (int i = 0; i < arrayList.size() && i != 3; i++) {
                    this.avatarsDrawable.setObject(i, this.currentAccount, (TLObject) arrayList.get(i));
                }
                this.avatarsDrawable.commitTransition(false);
            }
        }

        public void startAnimation() {
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
            ImageReceiver imageReceiver = (animatedEmojiDrawable == null || animatedEmojiDrawable.getImageReceiver() == null) ? this.imageReceiver : this.animatedEmojiDrawable.getImageReceiver();
            if (imageReceiver != null) {
                RLottieDrawable lottieAnimation = imageReceiver.getLottieAnimation();
                if (lottieAnimation != null) {
                    lottieAnimation.restart(true);
                    return;
                }
                AnimatedFileDrawable animation = imageReceiver.getAnimation();
                if (animation != null) {
                    animation.start();
                }
            }
        }

        public void stopAnimation() {
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
            ImageReceiver imageReceiver = (animatedEmojiDrawable == null || animatedEmojiDrawable.getImageReceiver() == null) ? this.imageReceiver : this.animatedEmojiDrawable.getImageReceiver();
            if (imageReceiver != null) {
                RLottieDrawable lottieAnimation = imageReceiver.getLottieAnimation();
                if (lottieAnimation != null) {
                    lottieAnimation.stop();
                    return;
                }
                AnimatedFileDrawable animation = imageReceiver.getAnimation();
                if (animation != null) {
                    animation.stop();
                }
            }
        }

        protected void updateColors(float f) {
            this.lastDrawnTextColor = ColorUtils.blendARGB(this.fromTextColor, ColorUtils.blendARGB(this.textColor, this.serviceTextColor, getDrawServiceShaderBackground()), f);
            int iBlendARGB = ColorUtils.blendARGB(this.fromBackgroundColor, ColorUtils.blendARGB(this.backgroundColor, this.serviceBackgroundColor, getDrawServiceShaderBackground()), f);
            this.lastDrawnBackgroundColor = iBlendARGB;
            this.lastDrawnTagDotColor = ColorUtils.blendARGB(this.fromTagDotColor, AndroidUtilities.computePerceivedBrightness(iBlendARGB) > 0.8f ? 0 : 1526726655, f);
        }
    }

    public class ReactionLayoutButton extends ReactionButton {
        public ReactionLayoutButton(ReactionButton reactionButton, TLRPC.ReactionCount reactionCount, boolean z, boolean z2) {
            super(reactionButton, ReactionsLayoutInBubble.this.currentAccount, ReactionsLayoutInBubble.this.parentView, reactionCount, z, z2, ReactionsLayoutInBubble.this.resourcesProvider);
        }

        @Override // org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble.ReactionButton
        protected float getDrawServiceShaderBackground() {
            return ReactionsLayoutInBubble.this.drawServiceShaderBackground;
        }

        @Override // org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble.ReactionButton
        protected ImageReceiver getImageReceiver() {
            return (ImageReceiver) ReactionsLayoutInBubble.this.animatedReactions.get(this.visibleReaction);
        }

        @Override // org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble.ReactionButton
        protected boolean isOutOwner() {
            return ReactionsLayoutInBubble.this.messageObject.isOutOwner();
        }

        @Override // org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble.ReactionButton
        protected boolean isPlaying() {
            return ReactionsEffectOverlay.isPlaying(ReactionsLayoutInBubble.this.messageObject.getId(), ReactionsLayoutInBubble.this.messageObject.getGroupId(), this.visibleReaction);
        }

        @Override // org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble.ReactionButton
        protected void removeImageReceiver() {
            ReactionsLayoutInBubble.this.animatedReactions.remove(this.visibleReaction);
        }
    }

    public static class VisibleReaction {
        public long documentId;
        public long effectId;
        public String emojicon;
        public long hash;
        public boolean isEffect;
        public boolean isStar;
        public boolean premium;
        public boolean sticker;

        public static VisibleReaction asStar() {
            VisibleReaction visibleReaction = new VisibleReaction();
            visibleReaction.isStar = true;
            return visibleReaction;
        }

        public static VisibleReaction fromCustomEmoji(Long l) {
            VisibleReaction visibleReaction = new VisibleReaction();
            long jLongValue = l.longValue();
            visibleReaction.documentId = jLongValue;
            visibleReaction.hash = jLongValue;
            return visibleReaction;
        }

        public static VisibleReaction fromEmojicon(String str) {
            if (str == null) {
                str = "";
            }
            VisibleReaction visibleReaction = new VisibleReaction();
            if (str.startsWith("animated_")) {
                try {
                    long j = Long.parseLong(str.substring(9));
                    visibleReaction.documentId = j;
                    visibleReaction.hash = j;
                } catch (Exception unused) {
                }
            } else {
                visibleReaction.emojicon = str;
                visibleReaction.hash = str.hashCode();
            }
            return visibleReaction;
        }

        public static VisibleReaction fromEmojicon(TLRPC.TL_availableReaction tL_availableReaction) {
            VisibleReaction visibleReaction = new VisibleReaction();
            visibleReaction.emojicon = tL_availableReaction.reaction;
            visibleReaction.hash = r3.hashCode();
            return visibleReaction;
        }

        public static VisibleReaction fromTL(TLRPC.Reaction reaction) {
            long jHashCode;
            VisibleReaction visibleReaction = new VisibleReaction();
            if (reaction instanceof TLRPC.TL_reactionPaid) {
                visibleReaction.isStar = true;
            } else {
                if (reaction instanceof TLRPC.TL_reactionEmoji) {
                    String str = ((TLRPC.TL_reactionEmoji) reaction).emoticon;
                    visibleReaction.emojicon = str;
                    jHashCode = str.hashCode();
                } else if (reaction instanceof TLRPC.TL_reactionCustomEmoji) {
                    jHashCode = ((TLRPC.TL_reactionCustomEmoji) reaction).document_id;
                    visibleReaction.documentId = jHashCode;
                }
                visibleReaction.hash = jHashCode;
            }
            return visibleReaction;
        }

        public static VisibleReaction fromTL(TLRPC.TL_availableEffect tL_availableEffect) {
            VisibleReaction visibleReaction = new VisibleReaction();
            visibleReaction.isEffect = true;
            long j = tL_availableEffect.id;
            visibleReaction.effectId = j;
            visibleReaction.sticker = tL_availableEffect.effect_animation_id == 0;
            visibleReaction.documentId = tL_availableEffect.effect_sticker_id;
            visibleReaction.hash = j;
            visibleReaction.premium = tL_availableEffect.premium_required;
            visibleReaction.emojicon = tL_availableEffect.emoticon;
            return visibleReaction;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            VisibleReaction visibleReaction = (VisibleReaction) obj;
            return this.documentId == visibleReaction.documentId && Objects.equals(this.emojicon, visibleReaction.emojicon);
        }

        public VisibleReaction flatten() {
            String strFindAnimatedEmojiEmoticon;
            long j = this.documentId;
            return (j == 0 || (strFindAnimatedEmojiEmoticon = MessageObject.findAnimatedEmojiEmoticon(AnimatedEmojiDrawable.findDocument(UserConfig.selectedAccount, j), null)) == null) ? this : fromEmojicon(strFindAnimatedEmojiEmoticon);
        }

        public int hashCode() {
            return Objects.hash(this.emojicon, Long.valueOf(this.documentId));
        }

        public boolean isSame(TLRPC.Reaction reaction) {
            return reaction instanceof TLRPC.TL_reactionEmoji ? TextUtils.equals(((TLRPC.TL_reactionEmoji) reaction).emoticon, this.emojicon) : (reaction instanceof TLRPC.TL_reactionCustomEmoji) && ((TLRPC.TL_reactionCustomEmoji) reaction).document_id == this.documentId;
        }

        public CharSequence toCharSequence(int i) {
            TextPaint textPaint = new TextPaint();
            textPaint.setTextSize(AndroidUtilities.dp(i));
            if (!TextUtils.isEmpty(this.emojicon)) {
                return Emoji.replaceEmoji(this.emojicon, textPaint.getFontMetricsInt(), false);
            }
            SpannableString spannableString = new SpannableString("😀");
            spannableString.setSpan(new AnimatedEmojiSpan(this.documentId, textPaint.getFontMetricsInt()), 0, spannableString.length(), 17);
            return spannableString;
        }

        public CharSequence toCharSequence(Paint.FontMetricsInt fontMetricsInt) {
            if (!TextUtils.isEmpty(this.emojicon)) {
                return this.emojicon;
            }
            SpannableString spannableString = new SpannableString("😀");
            spannableString.setSpan(new AnimatedEmojiSpan(this.documentId, fontMetricsInt), 0, spannableString.length(), 17);
            return spannableString;
        }

        public String toString() {
            TLRPC.Document documentFindDocument;
            if (!TextUtils.isEmpty(this.emojicon)) {
                return this.emojicon;
            }
            long j = this.documentId;
            if (j != 0 && (documentFindDocument = AnimatedEmojiDrawable.findDocument(UserConfig.selectedAccount, j)) != null) {
                return MessageObject.findAnimatedEmojiEmoticon(documentFindDocument, null);
            }
            return "VisibleReaction{" + this.documentId + ", " + this.emojicon + "}";
        }

        public TLRPC.Reaction toTLReaction() {
            if (this.isStar) {
                return new TLRPC.TL_reactionPaid();
            }
            if (this.emojicon != null) {
                TLRPC.TL_reactionEmoji tL_reactionEmoji = new TLRPC.TL_reactionEmoji();
                tL_reactionEmoji.emoticon = this.emojicon;
                return tL_reactionEmoji;
            }
            TLRPC.TL_reactionCustomEmoji tL_reactionCustomEmoji = new TLRPC.TL_reactionCustomEmoji();
            tL_reactionCustomEmoji.document_id = this.documentId;
            return tL_reactionCustomEmoji;
        }
    }

    public ReactionsLayoutInBubble(View view) {
        this.parentView = view;
        initPaints(this.resourcesProvider);
        this.touchSlop = ViewConfiguration.get(ApplicationLoader.applicationContext).getScaledTouchSlop();
    }

    private void didPressReaction(TLRPC.ReactionCount reactionCount, boolean z, float f, float f2) {
        ChatActionCell chatActionCell;
        ChatActionCell.ChatActionCellDelegate delegate;
        View view = this.parentView;
        if (!(view instanceof ChatMessageCell)) {
            if (!(view instanceof ChatActionCell) || (delegate = (chatActionCell = (ChatActionCell) view).getDelegate()) == null) {
                return;
            }
            delegate.didPressReaction(chatActionCell, reactionCount, z, f, f2);
            return;
        }
        ChatMessageCell chatMessageCell = (ChatMessageCell) view;
        ChatMessageCell.ChatMessageCellDelegate delegate2 = chatMessageCell.getDelegate();
        if (delegate2 == null) {
            return;
        }
        delegate2.didPressReaction(chatMessageCell, reactionCount, z, f, f2);
    }

    public static boolean equalsTLReaction(TLRPC.Reaction reaction, TLRPC.Reaction reaction2) {
        return ((reaction instanceof TLRPC.TL_reactionEmoji) && (reaction2 instanceof TLRPC.TL_reactionEmoji)) ? TextUtils.equals(((TLRPC.TL_reactionEmoji) reaction).emoticon, ((TLRPC.TL_reactionEmoji) reaction2).emoticon) : (reaction instanceof TLRPC.TL_reactionCustomEmoji) && (reaction2 instanceof TLRPC.TL_reactionCustomEmoji) && ((TLRPC.TL_reactionCustomEmoji) reaction).document_id == ((TLRPC.TL_reactionCustomEmoji) reaction2).document_id;
    }

    private boolean equalsUsersList(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList == null || arrayList2 == null || arrayList.size() != arrayList2.size()) {
            return false;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            TLObject tLObject = (TLObject) arrayList.get(i);
            TLObject tLObject2 = (TLObject) arrayList2.get(i);
            if (tLObject == null || tLObject2 == null || getPeerId(tLObject) != getPeerId(tLObject2)) {
                return false;
            }
        }
        return true;
    }

    public static void fillTagPath(RectF rectF, Path path) {
        fillTagPath(rectF, AndroidUtilities.rectTmp, path);
    }

    public static void fillTagPath(RectF rectF, RectF rectF2, Path path) {
        path.rewind();
        float f = rectF.left;
        rectF2.set(f, rectF.top, AndroidUtilities.dp(12.0f) + f, rectF.top + AndroidUtilities.dp(12.0f));
        path.arcTo(rectF2, -90.0f, -90.0f, false);
        rectF2.set(rectF.left, rectF.bottom - AndroidUtilities.dp(12.0f), rectF.left + AndroidUtilities.dp(12.0f), rectF.bottom);
        path.arcTo(rectF2, -180.0f, -90.0f, false);
        float f2 = rectF.height() > ((float) AndroidUtilities.dp(26.0f)) ? 1.4f : BitmapDescriptorFactory.HUE_RED;
        float fDpf2 = rectF.right - AndroidUtilities.dpf2(9.09f);
        float fDpf22 = fDpf2 - AndroidUtilities.dpf2(0.056f);
        float fDpf23 = fDpf2 + AndroidUtilities.dpf2(1.22f);
        float fDpf24 = fDpf2 + AndroidUtilities.dpf2(3.07f);
        float fDpf25 = fDpf2 + AndroidUtilities.dpf2(2.406f);
        float fDpf26 = fDpf2 + AndroidUtilities.dpf2(8.27f + f2);
        float fDpf27 = fDpf2 + AndroidUtilities.dpf2(8.923f + f2);
        float fDpf28 = rectF.top + AndroidUtilities.dpf2(1.753f);
        float fDpf29 = rectF.bottom - AndroidUtilities.dpf2(1.753f);
        float fDpf210 = rectF.top + AndroidUtilities.dpf2(0.663f);
        float fDpf211 = rectF.bottom - AndroidUtilities.dpf2(0.663f);
        float f3 = 10.263f + f2;
        float fDpf212 = rectF.top + AndroidUtilities.dpf2(f3);
        float fDpf213 = rectF.bottom - AndroidUtilities.dpf2(f3);
        float f4 = f2 + 11.333f;
        float fDpf214 = rectF.top + AndroidUtilities.dpf2(f4);
        float fDpf215 = rectF.bottom - AndroidUtilities.dpf2(f4);
        path.lineTo(fDpf22, rectF.bottom);
        path.cubicTo(fDpf23, rectF.bottom, fDpf25, fDpf211, fDpf24, fDpf29);
        path.lineTo(fDpf26, fDpf213);
        path.cubicTo(fDpf27, fDpf215, fDpf27, fDpf214, fDpf26, fDpf212);
        path.lineTo(fDpf24, fDpf28);
        float f5 = rectF.top;
        path.cubicTo(fDpf25, fDpf210, fDpf23, f5, fDpf22, f5);
        path.close();
    }

    private int getParentWidth() {
        View view = this.parentView;
        return view instanceof ChatMessageCell ? ((ChatMessageCell) view).getParentWidth() : AndroidUtilities.displaySize.x;
    }

    private static long getPeerId(TLObject tLObject) {
        if (tLObject instanceof TLRPC.User) {
            return ((TLRPC.User) tLObject).id;
        }
        if (tLObject instanceof TLRPC.Chat) {
            return ((TLRPC.Chat) tLObject).id;
        }
        return 0L;
    }

    public static void initPaints(Theme.ResourcesProvider resourcesProvider) {
        paint.setColor(Theme.getColor(Theme.key_chat_inLoader, resourcesProvider));
        TextPaint textPaint2 = textPaint;
        textPaint2.setColor(Theme.getColor(Theme.key_featuredStickers_buttonText, resourcesProvider));
        textPaint2.setTextSize(AndroidUtilities.dp(12.0f));
        textPaint2.setTypeface(AndroidUtilities.bold());
        cutTagPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkTouchEvent$1(ReactionButton reactionButton) {
        didPressReaction(reactionButton.reactionCount, true, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        reactionButton.bounce.setPressed(false);
        this.lastSelectedButton = null;
        this.pressed = false;
        this.longPressRunnable = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$static$0(TLObject tLObject, TLObject tLObject2) {
        return (int) (getPeerId(tLObject) - getPeerId(tLObject2));
    }

    public static boolean reactionsEqual(TLRPC.Reaction reaction, TLRPC.Reaction reaction2) {
        if (!(reaction instanceof TLRPC.TL_reactionEmoji)) {
            return (reaction instanceof TLRPC.TL_reactionCustomEmoji) && (reaction2 instanceof TLRPC.TL_reactionCustomEmoji) && ((TLRPC.TL_reactionCustomEmoji) reaction).document_id == ((TLRPC.TL_reactionCustomEmoji) reaction2).document_id;
        }
        if (reaction2 instanceof TLRPC.TL_reactionEmoji) {
            return TextUtils.equals(((TLRPC.TL_reactionEmoji) reaction).emoticon, ((TLRPC.TL_reactionEmoji) reaction2).emoticon);
        }
        return false;
    }

    public boolean animateChange() {
        AvatarsDrawable avatarsDrawable;
        CounterView.CounterDrawable counterDrawable;
        if (this.messageObject == null) {
            return false;
        }
        this.lastDrawingReactionButtonsTmp.clear();
        for (int i = 0; i < this.outButtons.size(); i++) {
            ((ReactionButton) this.outButtons.get(i)).detach();
        }
        this.outButtons.clear();
        this.lastDrawingReactionButtonsTmp.putAll(this.lastDrawingReactionButtons);
        boolean z = false;
        for (int i2 = 0; i2 < this.reactionButtons.size(); i2++) {
            ReactionButton reactionButton = (ReactionButton) this.reactionButtons.get(i2);
            ReactionButton reactionButton2 = (ReactionButton) this.lastDrawingReactionButtonsTmp.get(reactionButton.key);
            if (reactionButton2 != null && reactionButton.isSmall != reactionButton2.isSmall) {
                reactionButton2 = null;
            }
            if (reactionButton2 != null) {
                this.lastDrawingReactionButtonsTmp.remove(reactionButton.key);
                int i3 = reactionButton.x;
                int i4 = reactionButton2.x;
                if (i3 == i4 && reactionButton.y == reactionButton2.y && reactionButton.width == reactionButton2.width && reactionButton.count == reactionButton2.count && reactionButton.choosen == reactionButton2.choosen && reactionButton.avatarsDrawable == null && reactionButton2.avatarsDrawable == null) {
                    reactionButton.animationType = 0;
                } else {
                    reactionButton.animateFromX = i4;
                    reactionButton.animateFromY = reactionButton2.y;
                    reactionButton.animateFromWidth = reactionButton2.width;
                    reactionButton.fromTextColor = reactionButton2.lastDrawnTextColor;
                    reactionButton.fromBackgroundColor = reactionButton2.lastDrawnBackgroundColor;
                    reactionButton.fromTagDotColor = reactionButton2.lastDrawnTagDotColor;
                    reactionButton.animationType = 3;
                    int i5 = reactionButton.count;
                    int i6 = reactionButton2.count;
                    if (i5 != i6 && (counterDrawable = reactionButton.counterDrawable) != null) {
                        counterDrawable.setCount(i6, false);
                        reactionButton.counterDrawable.setCount(reactionButton.count, true);
                    }
                    AvatarsDrawable avatarsDrawable2 = reactionButton.avatarsDrawable;
                    if (avatarsDrawable2 != null || reactionButton2.avatarsDrawable != null) {
                        if (avatarsDrawable2 == null) {
                            reactionButton.setUsers(new ArrayList());
                        }
                        if (reactionButton2.avatarsDrawable == null) {
                            reactionButton2.setUsers(new ArrayList());
                        }
                        if (!equalsUsersList(reactionButton2.users, reactionButton.users) && (avatarsDrawable = reactionButton.avatarsDrawable) != null) {
                            avatarsDrawable.animateFromState(reactionButton2.avatarsDrawable, this.currentAccount, false);
                        }
                    }
                }
            } else {
                reactionButton.animationType = 1;
            }
            z = true;
        }
        if (!this.lastDrawingReactionButtonsTmp.isEmpty()) {
            this.outButtons.addAll(this.lastDrawingReactionButtonsTmp.values());
            for (int i7 = 0; i7 < this.outButtons.size(); i7++) {
                ((ReactionButton) this.outButtons.get(i7)).drawImage = ((ReactionButton) this.outButtons.get(i7)).lastImageDrawn;
                ((ReactionButton) this.outButtons.get(i7)).attach();
            }
            z = true;
        }
        if (this.wasDrawn) {
            float f = this.lastDrawnX;
            if (f != this.x || this.lastDrawnY != this.y) {
                this.animateMove = true;
                this.fromX = f;
                this.fromY = this.lastDrawnY;
                z = true;
            }
        }
        int i8 = this.lastDrawnWidth;
        if (i8 != this.width) {
            this.animateWidth = true;
            this.fromWidth = i8;
            z = true;
        }
        int i9 = this.lastDrawTotalHeight;
        if (i9 == this.totalHeight) {
            return z;
        }
        this.animateHeight = true;
        this.animateFromTotalHeight = i9;
        return true;
    }

    public void animateReaction(VisibleReaction visibleReaction) {
        if (visibleReaction.documentId != 0 || this.animatedReactions.get(visibleReaction) != null) {
            if (!this.tags || visibleReaction.documentId == 0) {
                return;
            }
            for (int i = 0; i < this.reactionButtons.size(); i++) {
                if (visibleReaction.isSame(((ReactionButton) this.reactionButtons.get(i)).reaction)) {
                    ((ReactionButton) this.reactionButtons.get(i)).startAnimation();
                    return;
                }
            }
            return;
        }
        ImageReceiver imageReceiver = new ImageReceiver();
        imageReceiver.setParentView(this.parentView);
        int i2 = animationUniq;
        animationUniq = i2 + 1;
        imageReceiver.setUniqKeyPrefix(Integer.toString(i2));
        TLRPC.TL_availableReaction tL_availableReaction = MediaDataController.getInstance(this.currentAccount).getReactionsMap().get(visibleReaction.emojicon);
        if (tL_availableReaction != null) {
            imageReceiver.setImage(ImageLocation.getForDocument(tL_availableReaction.center_icon), "40_40_nolimit", null, "tgs", tL_availableReaction, 1);
        }
        imageReceiver.setAutoRepeat(0);
        imageReceiver.onAttachedToWindow();
        this.animatedReactions.put(visibleReaction, imageReceiver);
    }

    public boolean checkTouchEvent(MotionEvent motionEvent) {
        MessageObject messageObject;
        TLRPC.Message message;
        int i = 0;
        if (this.isEmpty || this.isSmall || (messageObject = this.messageObject) == null || (message = messageObject.messageOwner) == null || message.reactions == null) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        View view = this.parentView;
        if (view instanceof ChatMessageCell) {
            y -= view.getPaddingTop();
        } else if (view instanceof ChatActionCell) {
            x -= ((ChatActionCell) view).sideMenuWidth / 2.0f;
            y -= view.getPaddingTop();
        }
        float f = x - this.x;
        float f2 = y - this.y;
        if (motionEvent.getAction() == 0) {
            int size = this.reactionButtons.size();
            while (true) {
                if (i >= size) {
                    break;
                }
                if (f <= ((ReactionButton) this.reactionButtons.get(i)).x || f >= ((ReactionButton) this.reactionButtons.get(i)).x + ((ReactionButton) this.reactionButtons.get(i)).width || f2 <= ((ReactionButton) this.reactionButtons.get(i)).y || f2 >= ((ReactionButton) this.reactionButtons.get(i)).y + ((ReactionButton) this.reactionButtons.get(i)).height) {
                    i++;
                } else {
                    this.lastX = motionEvent.getX();
                    this.lastY = y;
                    this.lastSelectedButton = (ReactionButton) this.reactionButtons.get(i);
                    Runnable runnable = this.longPressRunnable;
                    if (runnable != null) {
                        AndroidUtilities.cancelRunOnUIThread(runnable);
                        this.longPressRunnable = null;
                    }
                    this.lastSelectedButton.bounce.setPressed(true);
                    final ReactionButton reactionButton = this.lastSelectedButton;
                    Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$checkTouchEvent$1(reactionButton);
                        }
                    };
                    this.longPressRunnable = runnable2;
                    AndroidUtilities.runOnUIThread(runnable2, ViewConfiguration.getLongPressTimeout());
                    this.pressed = true;
                }
            }
        } else if (motionEvent.getAction() == 2) {
            if ((this.pressed && Math.abs(motionEvent.getX() - this.lastX) > this.touchSlop) || Math.abs(y - this.lastY) > this.touchSlop) {
                this.pressed = false;
                ReactionButton reactionButton2 = this.lastSelectedButton;
                if (reactionButton2 != null) {
                    reactionButton2.bounce.setPressed(false);
                }
                this.lastSelectedButton = null;
                Runnable runnable3 = this.longPressRunnable;
                if (runnable3 != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable3);
                    this.longPressRunnable = null;
                }
            }
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            Runnable runnable4 = this.longPressRunnable;
            if (runnable4 != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable4);
                this.longPressRunnable = null;
            }
            if (this.pressed && this.lastSelectedButton != null && motionEvent.getAction() == 1) {
                didPressReaction(this.lastSelectedButton.reactionCount, false, motionEvent.getX(), y);
            }
            this.pressed = false;
            ReactionButton reactionButton3 = this.lastSelectedButton;
            if (reactionButton3 != null) {
                reactionButton3.bounce.setPressed(false);
            }
            this.lastSelectedButton = null;
        }
        return this.pressed;
    }

    public void draw(Canvas canvas, float f, Integer num) {
        float f2;
        if (this.isEmpty && this.outButtons.isEmpty()) {
            return;
        }
        float f3 = this.x;
        float f4 = this.y;
        if (this.isEmpty) {
            f3 = this.lastDrawnX;
            f4 = this.lastDrawnY;
        } else if (this.animateMove) {
            float f5 = 1.0f - f;
            f3 = (f3 * f) + (this.fromX * f5);
            f4 = (f4 * f) + (this.fromY * f5);
        }
        float f6 = f3;
        float f7 = f4;
        for (int i = 0; i < this.reactionButtons.size(); i++) {
            ReactionButton reactionButton = (ReactionButton) this.reactionButtons.get(i);
            if (this.scrimViewReaction == null && num == null && this.scrimProgress < 0.5f) {
                reactionButton.detachPreview();
            }
            if (!Integer.valueOf(reactionButton.reaction.hashCode()).equals(this.scrimViewReaction) && (num == null || reactionButton.reaction.hashCode() == num.intValue())) {
                canvas.save();
                float f8 = reactionButton.x;
                float f9 = reactionButton.y;
                if (f != 1.0f && reactionButton.animationType == 3) {
                    float f10 = 1.0f - f;
                    f8 = (f8 * f) + (reactionButton.animateFromX * f10);
                    f9 = (f9 * f) + (reactionButton.animateFromY * f10);
                }
                if (f == 1.0f || reactionButton.animationType != 1) {
                    f2 = 1.0f;
                } else {
                    float f11 = (f * 0.5f) + 0.5f;
                    canvas.scale(f11, f11, f6 + f8 + (reactionButton.width / 2.0f), f7 + f9 + (reactionButton.height / 2.0f));
                    f2 = f;
                }
                reactionButton.draw(canvas, f6 + f8, f7 + f9, reactionButton.animationType == 3 ? f : 1.0f, f2, num != null, this.scrimDirection, this.scrimProgress);
                canvas.restore();
            }
        }
        for (int i2 = 0; i2 < this.outButtons.size(); i2++) {
            ReactionButton reactionButton2 = (ReactionButton) this.outButtons.get(i2);
            float f12 = 1.0f - f;
            float f13 = (f12 * 0.5f) + 0.5f;
            canvas.save();
            canvas.scale(f13, f13, reactionButton2.x + f6 + (reactionButton2.width / 2.0f), reactionButton2.y + f7 + (reactionButton2.height / 2.0f));
            ((ReactionButton) this.outButtons.get(i2)).draw(canvas, reactionButton2.x + f6, f7 + reactionButton2.y, 1.0f, f12, false, this.scrimDirection, this.scrimProgress);
            canvas.restore();
        }
    }

    public void drawOverlay(Canvas canvas, float f) {
        float f2;
        if (this.isEmpty && this.outButtons.isEmpty()) {
            return;
        }
        float f3 = this.x;
        float f4 = this.y;
        if (this.isEmpty) {
            f3 = this.lastDrawnX;
            f4 = this.lastDrawnY;
        } else if (this.animateMove) {
            float f5 = 1.0f - f;
            f3 = (f3 * f) + (this.fromX * f5);
            f4 = (f4 * f) + (this.fromY * f5);
        }
        float f6 = f3;
        float f7 = f4;
        for (int i = 0; i < this.reactionButtons.size(); i++) {
            ReactionButton reactionButton = (ReactionButton) this.reactionButtons.get(i);
            if (reactionButton.paid) {
                canvas.save();
                float f8 = reactionButton.x;
                float f9 = reactionButton.y;
                if (f != 1.0f && reactionButton.animationType == 3) {
                    float f10 = 1.0f - f;
                    f8 = (f8 * f) + (reactionButton.animateFromX * f10);
                    f9 = (f9 * f) + (reactionButton.animateFromY * f10);
                }
                if (f == 1.0f || reactionButton.animationType != 1) {
                    f2 = 1.0f;
                } else {
                    float f11 = (f * 0.5f) + 0.5f;
                    canvas.scale(f11, f11, f6 + f8 + (reactionButton.width / 2.0f), f7 + f9 + (reactionButton.height / 2.0f));
                    f2 = f;
                }
                reactionButton.drawOverlay(canvas, f6 + f8, f7 + f9, reactionButton.animationType == 3 ? f : 1.0f, f2, false);
                canvas.restore();
            }
        }
        for (int i2 = 0; i2 < this.outButtons.size(); i2++) {
            if (((ReactionButton) this.outButtons.get(i2)).paid) {
                float f12 = 1.0f - f;
                float f13 = (f12 * 0.5f) + 0.5f;
                canvas.save();
                canvas.scale(f13, f13, r1.x + f6 + (r1.width / 2.0f), r1.y + f7 + (r1.height / 2.0f));
                ((ReactionButton) this.outButtons.get(i2)).drawOverlay(canvas, r1.x + f6, f7 + r1.y, 1.0f, f12, false);
                canvas.restore();
            }
        }
    }

    public void drawPreview(View view, Canvas canvas, int i, Integer num) {
        if (this.isEmpty && this.outButtons.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < this.reactionButtons.size(); i2++) {
            ReactionButton reactionButton = (ReactionButton) this.reactionButtons.get(i2);
            if ((num == null || reactionButton.reaction.hashCode() == num.intValue()) && num != null) {
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(reactionButton.drawingImageRect);
                float fDp = AndroidUtilities.dp(140.0f);
                float fDp2 = AndroidUtilities.dp(14.0f);
                float fClamp = Utilities.clamp(rectF.left - AndroidUtilities.dp(12.0f), (getParentWidth() - fDp) - AndroidUtilities.dp(24.0f), AndroidUtilities.dp(24.0f));
                RectF rectF2 = this.scrimRect;
                float f = rectF.top - fDp2;
                float f2 = i;
                rectF2.set(fClamp, (f - fDp) + f2, fDp + fClamp, f + f2);
                float interpolation = CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(this.scrimProgress);
                RectF rectF3 = this.scrimRect;
                AndroidUtilities.lerp(rectF, rectF3, interpolation, rectF3);
                reactionButton.attachPreview(view);
                Rect rect = this.scrimRect2;
                RectF rectF4 = this.scrimRect;
                rect.set((int) rectF4.left, (int) rectF4.top, (int) rectF4.right, (int) rectF4.bottom);
                reactionButton.drawPreview(view, canvas, this.scrimRect, interpolation);
            }
        }
    }

    public float getCurrentTotalHeight(float f) {
        return this.animateHeight ? (this.animateFromTotalHeight * (1.0f - f)) + (this.totalHeight * f) : this.totalHeight;
    }

    public float getCurrentWidth(float f) {
        return this.animateWidth ? (this.fromWidth * (1.0f - f)) + (this.width * f) : this.width;
    }

    public ReactionButton getReactionButton(String str) {
        if (this.isSmall) {
            ReactionButton reactionButton = (ReactionButton) this.lastDrawingReactionButtons.get(str + "_");
            if (reactionButton != null) {
                return reactionButton;
            }
        }
        return (ReactionButton) this.lastDrawingReactionButtons.get(str);
    }

    public ReactionButton getReactionButton(VisibleReaction visibleReaction) {
        String string;
        if (visibleReaction.isStar) {
            string = "stars";
        } else {
            String str = visibleReaction.emojicon;
            string = str != null ? str : Long.toString(visibleReaction.documentId);
        }
        return getReactionButton(string);
    }

    public boolean hasOverlay() {
        return this.hasPaidReaction && !(this.isEmpty && this.outButtons.isEmpty()) && LiteMode.isEnabled(8200);
    }

    public void measure(int i, int i2) {
        this.height = 0;
        this.width = 0;
        this.positionOffsetY = 0;
        this.totalHeight = 0;
        if (this.isEmpty) {
            return;
        }
        this.availableWidth = i;
        this.reactionLineWidths.clear();
        int iDp = 0;
        int i3 = 0;
        int iDp2 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < this.reactionButtons.size(); i5++) {
            ReactionButton reactionButton = (ReactionButton) this.reactionButtons.get(i5);
            if (reactionButton.isSmall) {
                reactionButton.width = AndroidUtilities.dp(14.0f);
                reactionButton.height = AndroidUtilities.dp(14.0f);
            } else if (reactionButton.isTag) {
                reactionButton.width = AndroidUtilities.dp(42.0f);
                reactionButton.height = AndroidUtilities.dp(26.0f);
                if (reactionButton.hasName) {
                    reactionButton.width = (int) (reactionButton.width + reactionButton.textDrawable.getAnimateToWidth() + AndroidUtilities.dp(8.0f));
                } else {
                    CounterView.CounterDrawable counterDrawable = reactionButton.counterDrawable;
                    if (counterDrawable != null && reactionButton.count > 1) {
                        reactionButton.width += counterDrawable.getCurrentWidth() + AndroidUtilities.dp(8.0f);
                    }
                }
            } else {
                reactionButton.width = AndroidUtilities.dp(8.0f) + AndroidUtilities.dp(20.0f) + AndroidUtilities.dp(reactionButton.animatedEmojiDrawable != null ? 6.0f : 4.0f);
                if (reactionButton.avatarsDrawable == null || reactionButton.users.size() <= 0) {
                    reactionButton.width = reactionButton.hasName ? (int) (reactionButton.width + reactionButton.textDrawable.getAnimateToWidth() + AndroidUtilities.dp(8.0f)) : reactionButton.width + reactionButton.counterDrawable.getCurrentWidth() + AndroidUtilities.dp(8.0f);
                } else {
                    reactionButton.users.size();
                    reactionButton.width = (int) (reactionButton.width + AndroidUtilities.dp(2.0f) + AndroidUtilities.dp(20.0f) + ((reactionButton.users.size() > 1 ? reactionButton.users.size() - 1 : 0) * AndroidUtilities.dp(20.0f) * 0.8f) + AndroidUtilities.dp(1.0f));
                    reactionButton.avatarsDrawable.height = AndroidUtilities.dp(26.0f);
                }
                reactionButton.height = AndroidUtilities.dp(26.0f);
            }
            if (reactionButton.width + iDp > i) {
                this.reactionLineWidths.add(Integer.valueOf(iDp));
                iDp2 += reactionButton.height + AndroidUtilities.dp(4.0f);
                i4++;
                iDp = 0;
            }
            reactionButton.x = iDp;
            reactionButton.y = iDp2;
            reactionButton.top = i4;
            iDp += reactionButton.width + AndroidUtilities.dp(4.0f);
            if (iDp > i3) {
                i3 = iDp;
            }
        }
        this.reactionLineWidths.add(Integer.valueOf(iDp));
        if (i2 == 5 && !this.reactionButtons.isEmpty()) {
            int i6 = ((ReactionButton) this.reactionButtons.get(0)).y;
            int i7 = 0;
            for (int i8 = 0; i8 < this.reactionButtons.size(); i8++) {
                if (((ReactionButton) this.reactionButtons.get(i8)).y != i6) {
                    int i9 = i8 - 1;
                    int i10 = i - (((ReactionButton) this.reactionButtons.get(i9)).x + ((ReactionButton) this.reactionButtons.get(i9)).width);
                    while (i7 < i8) {
                        ((ReactionButton) this.reactionButtons.get(i7)).x += i10;
                        i7++;
                    }
                    i7 = i8;
                }
            }
            int size = this.reactionButtons.size() - 1;
            int i11 = i - (((ReactionButton) this.reactionButtons.get(size)).x + ((ReactionButton) this.reactionButtons.get(size)).width);
            while (i7 <= size) {
                ((ReactionButton) this.reactionButtons.get(i7)).x += i11;
                i7++;
            }
        } else if (i2 == 1 && !this.reactionButtons.isEmpty()) {
            for (int i12 = 0; i12 < this.reactionButtons.size(); i12++) {
                ReactionButton reactionButton2 = (ReactionButton) this.reactionButtons.get(i12);
                int i13 = reactionButton2.top;
                reactionButton2.x = (int) (reactionButton2.x + ((i - ((i13 < 0 || i13 >= this.reactionLineWidths.size()) ? BitmapDescriptorFactory.HUE_RED : ((Integer) this.reactionLineWidths.get(reactionButton2.top)).intValue())) / 2.0f));
            }
        }
        this.lastLineX = iDp;
        if (i2 == 5 || i2 == 1) {
            this.width = i;
        } else {
            this.width = i3;
        }
        this.height = iDp2 + (this.reactionButtons.size() == 0 ? 0 : AndroidUtilities.dp(26.0f));
        this.drawServiceShaderBackground = BitmapDescriptorFactory.HUE_RED;
    }

    public void onAttachToWindow() {
        this.attached = true;
        for (int i = 0; i < this.reactionButtons.size(); i++) {
            ((ReactionButton) this.reactionButtons.get(i)).attach();
        }
    }

    public void onDetachFromWindow() {
        this.attached = false;
        for (int i = 0; i < this.reactionButtons.size(); i++) {
            ((ReactionButton) this.reactionButtons.get(i)).detach();
        }
        if (!this.animatedReactions.isEmpty()) {
            Iterator it = this.animatedReactions.values().iterator();
            while (it.hasNext()) {
                ((ImageReceiver) it.next()).onDetachedFromWindow();
            }
        }
        this.animatedReactions.clear();
    }

    public void recordDrawingState() {
        this.lastDrawingReactionButtons.clear();
        for (int i = 0; i < this.reactionButtons.size(); i++) {
            this.lastDrawingReactionButtons.put(((ReactionButton) this.reactionButtons.get(i)).key, (ReactionButton) this.reactionButtons.get(i));
        }
        this.wasDrawn = !this.isEmpty;
        this.lastDrawnX = this.x;
        this.lastDrawnY = this.y;
        this.lastDrawnWidth = this.width;
        this.lastDrawTotalHeight = this.totalHeight;
    }

    public void resetAnimation() {
        for (int i = 0; i < this.outButtons.size(); i++) {
            ((ReactionButton) this.outButtons.get(i)).detach();
        }
        this.outButtons.clear();
        this.animateMove = false;
        this.animateWidth = false;
        this.animateHeight = false;
        for (int i2 = 0; i2 < this.reactionButtons.size(); i2++) {
            ((ReactionButton) this.reactionButtons.get(i2)).animationType = 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0211 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0237 A[LOOP:3: B:95:0x022f->B:97:0x0237, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setMessage(MessageObject messageObject, boolean z, boolean z2, Theme.ResourcesProvider resourcesProvider) {
        int i;
        ReactionButton reactionButton;
        int i2;
        this.resourcesProvider = resourcesProvider;
        this.isSmall = z;
        this.tags = z2;
        this.messageObject = messageObject;
        ArrayList arrayList = new ArrayList(this.reactionButtons);
        this.hasUnreadReactions = false;
        this.hasPaidReaction = false;
        this.reactionButtons.clear();
        if (messageObject != null) {
            comparator.dialogId = messageObject.getDialogId();
            TLRPC.TL_messageReactions tL_messageReactions = messageObject.messageOwner.reactions;
            if (tL_messageReactions == null || tL_messageReactions.results == null) {
                if (!z && !this.reactionButtons.isEmpty()) {
                    ButtonsComparator buttonsComparator = comparator;
                    buttonsComparator.currentAccount = this.currentAccount;
                    Collections.sort(this.reactionButtons, buttonsComparator);
                    for (i = 0; i < this.reactionButtons.size(); i++) {
                        TLRPC.ReactionCount reactionCount = ((ReactionButton) this.reactionButtons.get(i)).reactionCount;
                        int i3 = pointer;
                        pointer = i3 + 1;
                        reactionCount.lastDrawnPosition = i3;
                    }
                }
                this.hasUnreadReactions = MessageObject.hasUnreadReactions(messageObject.messageOwner);
            } else {
                int i4 = 0;
                for (int i5 = 0; i5 < messageObject.messageOwner.reactions.results.size(); i5++) {
                    i4 += ((TLRPC.ReactionCount) messageObject.messageOwner.reactions.results.get(i5)).count;
                }
                int i6 = 0;
                while (i6 < messageObject.messageOwner.reactions.results.size()) {
                    TLRPC.ReactionCount reactionCount2 = (TLRPC.ReactionCount) messageObject.messageOwner.reactions.results.get(i6);
                    int i7 = 0;
                    while (true) {
                        if (i7 >= arrayList.size()) {
                            reactionButton = null;
                            break;
                        }
                        ReactionButton reactionButton2 = (ReactionButton) arrayList.get(i7);
                        if (reactionButton2.reaction.equals(reactionCount2.reaction)) {
                            reactionButton = reactionButton2;
                            break;
                        }
                        i7++;
                    }
                    ReactionLayoutButton reactionLayoutButton = new ReactionLayoutButton(reactionButton, reactionCount2, z, z2);
                    reactionLayoutButton.inGroup = messageObject.hasValidGroupId();
                    this.reactionButtons.add(reactionLayoutButton);
                    this.hasPaidReaction = this.hasPaidReaction || reactionLayoutButton.paid;
                    if (z || z2 || messageObject.messageOwner.reactions.recent_reactions == null) {
                        i2 = i4;
                        if (!z && reactionCount2.count > 1 && reactionCount2.chosen) {
                            ReactionLayoutButton reactionLayoutButton2 = new ReactionLayoutButton(null, reactionCount2, z, z2);
                            reactionLayoutButton2.inGroup = messageObject.hasValidGroupId();
                            this.reactionButtons.add(reactionLayoutButton2);
                            ((ReactionButton) this.reactionButtons.get(0)).isSelected = false;
                            ((ReactionButton) this.reactionButtons.get(1)).isSelected = true;
                            ((ReactionButton) this.reactionButtons.get(0)).realCount = 1;
                            ((ReactionButton) this.reactionButtons.get(1)).realCount = 1;
                            ((ReactionButton) this.reactionButtons.get(1)).key = ((ReactionButton) this.reactionButtons.get(1)).key + "_";
                            break;
                        }
                        if (!z && i6 == 2) {
                            break;
                        }
                        if (!this.attached) {
                            reactionLayoutButton.attach();
                        }
                        i6++;
                        i4 = i2;
                    } else {
                        if (messageObject.getDialogId() > 0 && !UserObject.isReplyUser(messageObject.getDialogId())) {
                            ArrayList arrayList2 = new ArrayList();
                            TLRPC.User currentUser = UserConfig.getInstance(this.currentAccount).getCurrentUser();
                            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.getDialogId()));
                            if (reactionCount2.count == 2) {
                                if (currentUser != null) {
                                    arrayList2.add(currentUser);
                                }
                                if (user != null) {
                                    arrayList2.add(user);
                                }
                                reactionLayoutButton.setUsers(arrayList2);
                                if (!arrayList2.isEmpty()) {
                                    i2 = i4;
                                    reactionLayoutButton.count = 0;
                                    reactionLayoutButton.counterDrawable.setCount(0, false);
                                }
                                i2 = i4;
                            } else {
                                if (reactionCount2.chosen) {
                                    if (currentUser != null) {
                                        arrayList2.add(currentUser);
                                    }
                                } else if (user != null) {
                                }
                                reactionLayoutButton.setUsers(arrayList2);
                                if (!arrayList2.isEmpty()) {
                                }
                                i2 = i4;
                            }
                        } else if (reactionCount2.count <= 3 && i4 <= 3) {
                            ArrayList arrayList3 = null;
                            int i8 = 0;
                            while (i8 < messageObject.messageOwner.reactions.recent_reactions.size()) {
                                TLRPC.MessagePeerReaction messagePeerReaction = (TLRPC.MessagePeerReaction) messageObject.messageOwner.reactions.recent_reactions.get(i8);
                                VisibleReaction visibleReactionFromTL = VisibleReaction.fromTL(messagePeerReaction.reaction);
                                VisibleReaction visibleReactionFromTL2 = VisibleReaction.fromTL(reactionCount2.reaction);
                                int i9 = i4;
                                TLObject userOrChat = MessagesController.getInstance(this.currentAccount).getUserOrChat(MessageObject.getPeerId(messagePeerReaction.peer_id));
                                if (visibleReactionFromTL.equals(visibleReactionFromTL2) && userOrChat != null) {
                                    if (arrayList3 == null) {
                                        arrayList3 = new ArrayList();
                                    }
                                    arrayList3.add(userOrChat);
                                }
                                i8++;
                                i4 = i9;
                            }
                            i2 = i4;
                            reactionLayoutButton.setUsers(arrayList3);
                            if (arrayList3 != null && !arrayList3.isEmpty()) {
                                reactionLayoutButton.count = 0;
                                reactionLayoutButton.counterDrawable.setCount(0, false);
                            }
                        }
                        if (!z) {
                            if (!z) {
                            }
                            if (!this.attached) {
                            }
                            i6++;
                            i4 = i2;
                        }
                    }
                }
                if (!z) {
                    ButtonsComparator buttonsComparator2 = comparator;
                    buttonsComparator2.currentAccount = this.currentAccount;
                    Collections.sort(this.reactionButtons, buttonsComparator2);
                    while (i < this.reactionButtons.size()) {
                    }
                }
                this.hasUnreadReactions = MessageObject.hasUnreadReactions(messageObject.messageOwner);
            }
        }
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            ((ReactionButton) arrayList.get(i10)).detach();
        }
        this.isEmpty = this.reactionButtons.isEmpty();
    }

    public void setScrimProgress(float f) {
        this.scrimProgress = f;
    }

    public void setScrimProgress(float f, boolean z) {
        this.scrimProgress = f;
        this.scrimDirection = z;
    }

    public void setScrimReaction(Integer num) {
        this.scrimViewReaction = num;
    }

    public boolean verifyDrawable(Drawable drawable) {
        return drawable instanceof AnimatedTextView.AnimatedTextDrawable;
    }
}
