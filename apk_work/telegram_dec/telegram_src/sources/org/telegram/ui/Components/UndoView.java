package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.CharacterStyle;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.R;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.Forum.ForumUtilities;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.Premium.boosts.BoostRepository;
import org.telegram.ui.PaymentFormActivity;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class UndoView extends FrameLayout {
    public static int ACTION_RINGTONE_ADDED = 83;
    private float additionalTranslationY;
    private BackupImageView avatarImageView;
    Drawable backgroundDrawable;
    private int currentAccount;
    private int currentAction;
    private Runnable currentActionRunnable;
    private Runnable currentCancelRunnable;
    private ArrayList currentDialogIds;
    private Object currentInfoObject;
    private Object currentInfoObject2;
    float enterOffset;
    private int enterOffsetMargin;
    private boolean fromTop;
    private int hideAnimationType;
    private CharSequence infoText;
    private LinkSpanDrawable.LinksTextView infoTextView;
    private int infoTextViewEmojiCacheType;
    private boolean isShown;
    private long lastUpdateTime;
    private RLottieImageView leftImageView;
    private BaseFragment parentFragment;
    private int prevSeconds;
    private Paint progressPaint;
    private RectF rect;
    private final Theme.ResourcesProvider resourcesProvider;
    private TextView subinfoTextView;
    private TextPaint textPaint;
    private int textWidth;
    int textWidthOut;
    StaticLayout timeLayout;
    StaticLayout timeLayoutOut;
    private long timeLeft;
    private String timeLeftString;
    float timeReplaceProgress;
    private LinearLayout undoButton;
    private ImageView undoImageView;
    private TextView undoTextView;
    private int undoViewHeight;

    public class LinkMovementMethodMy extends LinkMovementMethod {
        public LinkMovementMethodMy() {
        }

        @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
        public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
            CharacterStyle[] characterStyleArr;
            try {
                if (motionEvent.getAction() != 0 || ((characterStyleArr = (CharacterStyle[]) spannable.getSpans(textView.getSelectionStart(), textView.getSelectionEnd(), CharacterStyle.class)) != null && characterStyleArr.length != 0)) {
                    if (motionEvent.getAction() != 1) {
                        return super.onTouchEvent(textView, spannable, motionEvent);
                    }
                    CharacterStyle[] characterStyleArr2 = (CharacterStyle[]) spannable.getSpans(textView.getSelectionStart(), textView.getSelectionEnd(), CharacterStyle.class);
                    if (characterStyleArr2 != null && characterStyleArr2.length > 0) {
                        UndoView.this.didPressUrl(characterStyleArr2[0]);
                    }
                    Selection.removeSelection(spannable);
                    return true;
                }
                return false;
            } catch (Exception e) {
                FileLog.e(e);
                return false;
            }
        }
    }

    public UndoView(Context context) {
        this(context, null, false, null);
    }

    public UndoView(Context context, BaseFragment baseFragment) {
        this(context, baseFragment, false, null);
    }

    public UndoView(Context context, BaseFragment baseFragment, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.infoTextViewEmojiCacheType = 0;
        this.currentAccount = UserConfig.selectedAccount;
        this.currentAction = -1;
        this.hideAnimationType = 1;
        this.enterOffsetMargin = AndroidUtilities.dp(8.0f);
        this.timeReplaceProgress = 1.0f;
        this.resourcesProvider = resourcesProvider;
        this.parentFragment = baseFragment;
        this.fromTop = z;
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, resourcesProvider) { // from class: org.telegram.ui.Components.UndoView.1
            @Override // org.telegram.ui.Components.LinkSpanDrawable.LinksTextView
            protected int emojiCacheType() {
                return UndoView.this.infoTextViewEmojiCacheType;
            }
        };
        this.infoTextView = linksTextView;
        linksTextView.setTextSize(1, 15.0f);
        LinkSpanDrawable.LinksTextView linksTextView2 = this.infoTextView;
        int i = Theme.key_undo_infoColor;
        linksTextView2.setTextColor(getThemedColor(i));
        LinkSpanDrawable.LinksTextView linksTextView3 = this.infoTextView;
        int i2 = Theme.key_undo_cancelColor;
        linksTextView3.setLinkTextColor(getThemedColor(i2));
        this.infoTextView.setMovementMethod(new LinkMovementMethodMy());
        addView(this.infoTextView, LayoutHelper.createFrame(-2, -2.0f, 51, 45.0f, 13.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        TextView textView = new TextView(context);
        this.subinfoTextView = textView;
        textView.setTextSize(1, 13.0f);
        this.subinfoTextView.setTextColor(getThemedColor(i));
        this.subinfoTextView.setLinkTextColor(getThemedColor(i2));
        this.subinfoTextView.setHighlightColor(0);
        this.subinfoTextView.setSingleLine(true);
        this.subinfoTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.subinfoTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        addView(this.subinfoTextView, LayoutHelper.createFrame(-2, -2.0f, 51, 58.0f, 27.0f, 8.0f, BitmapDescriptorFactory.HUE_RED));
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.leftImageView = rLottieImageView;
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        RLottieImageView rLottieImageView2 = this.leftImageView;
        int i3 = Theme.key_undo_background;
        rLottieImageView2.setLayerColor("info1.**", getThemedColor(i3) | (-16777216));
        this.leftImageView.setLayerColor("info2.**", getThemedColor(i3) | (-16777216));
        this.leftImageView.setLayerColor("luc12.**", getThemedColor(i));
        this.leftImageView.setLayerColor("luc11.**", getThemedColor(i));
        this.leftImageView.setLayerColor("luc10.**", getThemedColor(i));
        this.leftImageView.setLayerColor("luc9.**", getThemedColor(i));
        this.leftImageView.setLayerColor("luc8.**", getThemedColor(i));
        this.leftImageView.setLayerColor("luc7.**", getThemedColor(i));
        this.leftImageView.setLayerColor("luc6.**", getThemedColor(i));
        this.leftImageView.setLayerColor("luc5.**", getThemedColor(i));
        this.leftImageView.setLayerColor("luc4.**", getThemedColor(i));
        this.leftImageView.setLayerColor("luc3.**", getThemedColor(i));
        this.leftImageView.setLayerColor("luc2.**", getThemedColor(i));
        this.leftImageView.setLayerColor("luc1.**", getThemedColor(i));
        this.leftImageView.setLayerColor("Oval.**", getThemedColor(i));
        addView(this.leftImageView, LayoutHelper.createFrame(54, -2.0f, 19, 3.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        BackupImageView backupImageView = new BackupImageView(context);
        this.avatarImageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.dp(15.0f));
        addView(this.avatarImageView, LayoutHelper.createFrame(30, 30.0f, 19, 15.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        LinearLayout linearLayout = new LinearLayout(context);
        this.undoButton = linearLayout;
        linearLayout.setOrientation(0);
        this.undoButton.setBackground(Theme.createRadSelectorDrawable(getThemedColor(i2) & 587202559, AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f)));
        addView(this.undoButton, LayoutHelper.createFrame(-2, -2.0f, 21, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 11.0f, BitmapDescriptorFactory.HUE_RED));
        this.undoButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.UndoView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        ImageView imageView = new ImageView(context);
        this.undoImageView = imageView;
        imageView.setImageResource(R.drawable.chats_undo);
        this.undoImageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(i2), PorterDuff.Mode.MULTIPLY));
        this.undoButton.addView(this.undoImageView, LayoutHelper.createLinear(-2, -2, 19, 4, 4, 0, 4));
        TextView textView2 = new TextView(context);
        this.undoTextView = textView2;
        textView2.setTextSize(1, 14.0f);
        this.undoTextView.setTypeface(AndroidUtilities.bold());
        this.undoTextView.setTextColor(getThemedColor(i2));
        this.undoTextView.setText(LocaleController.getString(R.string.Undo));
        this.undoButton.addView(this.undoTextView, LayoutHelper.createLinear(-2, -2, 19, 6, 4, 8, 4));
        this.rect = new RectF(AndroidUtilities.dp(15.0f), AndroidUtilities.dp(15.0f), AndroidUtilities.dp(33.0f), AndroidUtilities.dp(33.0f));
        Paint paint = new Paint(1);
        this.progressPaint = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.progressPaint.setStrokeWidth(AndroidUtilities.dp(2.0f));
        this.progressPaint.setStrokeCap(Paint.Cap.ROUND);
        this.progressPaint.setColor(getThemedColor(i));
        TextPaint textPaint = new TextPaint(1);
        this.textPaint = textPaint;
        textPaint.setTextSize(AndroidUtilities.dp(12.0f));
        this.textPaint.setTypeface(AndroidUtilities.bold());
        this.textPaint.setColor(getThemedColor(i));
        setWillNotDraw(false);
        this.backgroundDrawable = Theme.createRoundRectDrawable(AndroidUtilities.dp(10.0f), getThemedColor(i3));
        setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.UndoView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return UndoView.lambda$new$1(view, motionEvent);
            }
        });
        setVisibility(4);
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    private boolean hasSubInfo() {
        int i;
        Object obj;
        int i2 = this.currentAction;
        return i2 == 11 || i2 == 24 || i2 == 6 || i2 == 3 || i2 == 5 || i2 == 13 || i2 == 14 || i2 == 74 || (i2 == 7 && MessagesController.getInstance(this.currentAccount).dialogFilters.isEmpty()) || (i = this.currentAction) == ACTION_RINGTONE_ADDED || i == 85 || (i == 88 && (obj = this.currentInfoObject2) != null && ((Integer) obj).intValue() > 0);
    }

    private boolean isTooltipAction() {
        int i = this.currentAction;
        return i == 6 || i == 3 || i == 5 || i == 7 || i == 8 || i == 87 || i == 9 || i == 10 || i == 13 || i == 14 || i == 19 || i == 20 || i == 21 || i == 22 || i == 23 || i == 30 || i == 31 || i == 32 || i == 102 || i == 33 || i == 34 || i == 35 || i == 36 || i == 74 || i == 37 || i == 38 || i == 39 || i == 40 || i == 42 || i == 43 || i == 77 || i == 44 || i == 78 || i == 79 || i == 100 || i == 101 || i == ACTION_RINGTONE_ADDED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        if (canUndo()) {
            hide(false, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$new$1(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showWithAction$2(View view) {
        hide(false, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$showWithAction$3(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showWithAction$4(TLObject tLObject) {
        if (tLObject instanceof TLRPC.PaymentReceipt) {
            this.parentFragment.presentFragment(new PaymentFormActivity((TLRPC.PaymentReceipt) tLObject));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showWithAction$5(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.UndoView$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showWithAction$4(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showWithAction$6(TLRPC.Message message, View view) {
        hide(true, 1);
        TLRPC.TL_payments_getPaymentReceipt tL_payments_getPaymentReceipt = new TLRPC.TL_payments_getPaymentReceipt();
        tL_payments_getPaymentReceipt.msg_id = message.id;
        tL_payments_getPaymentReceipt.peer = this.parentFragment.getMessagesController().getInputPeer(message.peer_id);
        this.parentFragment.getConnectionsManager().sendRequest(tL_payments_getPaymentReceipt, new RequestDelegate() { // from class: org.telegram.ui.Components.UndoView$$ExternalSyntheticLambda6
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$showWithAction$5(tLObject, tL_error);
            }
        }, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showWithAction$7() {
        try {
            this.leftImageView.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
    }

    private void updatePosition() {
        setTranslationY(((this.enterOffset - this.enterOffsetMargin) + AndroidUtilities.dp(8.0f)) - this.additionalTranslationY);
        invalidate();
    }

    protected boolean canUndo() {
        return true;
    }

    public void didPressUrl(CharacterStyle characterStyle) {
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.additionalTranslationY == BitmapDescriptorFactory.HUE_RED) {
            super.dispatchDraw(canvas);
            return;
        }
        canvas.save();
        float measuredHeight = (getMeasuredHeight() - this.enterOffset) + AndroidUtilities.dp(9.0f);
        if (measuredHeight > BitmapDescriptorFactory.HUE_RED) {
            canvas.clipRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), measuredHeight);
            super.dispatchDraw(canvas);
        }
        canvas.restore();
    }

    @Override // android.view.View
    public Drawable getBackground() {
        return this.backgroundDrawable;
    }

    public Object getCurrentInfoObject() {
        return this.currentInfoObject;
    }

    public float getEnterOffset() {
        return this.enterOffset;
    }

    public void hide(boolean z, int i) {
        long j;
        if (getVisibility() == 0 && this.isShown) {
            this.currentInfoObject = null;
            this.currentInfoObject2 = null;
            this.isShown = false;
            Runnable runnable = this.currentActionRunnable;
            if (runnable != null) {
                if (z) {
                    runnable.run();
                }
                this.currentActionRunnable = null;
            }
            Runnable runnable2 = this.currentCancelRunnable;
            if (runnable2 != null) {
                if (!z) {
                    runnable2.run();
                }
                this.currentCancelRunnable = null;
            }
            int i2 = this.currentAction;
            if (i2 == 0 || i2 == 1 || i2 == 26 || i2 == 27) {
                for (int i3 = 0; i3 < this.currentDialogIds.size(); i3++) {
                    long jLongValue = ((Long) this.currentDialogIds.get(i3)).longValue();
                    MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
                    int i4 = this.currentAction;
                    messagesController.removeDialogAction(jLongValue, i4 == 0 || i4 == 26, z);
                    onRemoveDialogAction(jLongValue, this.currentAction);
                }
            }
            if (i == 0) {
                setEnterOffset((this.fromTop ? -1.0f : 1.0f) * (this.enterOffsetMargin + this.undoViewHeight));
                setVisibility(4);
                return;
            }
            AnimatorSet animatorSet = new AnimatorSet();
            if (i == 1) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(this, "enterOffset", (this.fromTop ? -1.0f : 1.0f) * (this.enterOffsetMargin + this.undoViewHeight)));
                j = 250;
            } else {
                animatorSet.playTogether(ObjectAnimator.ofFloat(this, (Property<UndoView, Float>) View.SCALE_X, 0.8f), ObjectAnimator.ofFloat(this, (Property<UndoView, Float>) View.SCALE_Y, 0.8f), ObjectAnimator.ofFloat(this, (Property<UndoView, Float>) View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                j = 180;
            }
            animatorSet.setDuration(j);
            animatorSet.setInterpolator(new DecelerateInterpolator());
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.UndoView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    UndoView.this.setVisibility(4);
                    UndoView.this.setScaleX(1.0f);
                    UndoView.this.setScaleY(1.0f);
                    UndoView.this.setAlpha(1.0f);
                }
            });
            animatorSet.start();
        }
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        this.infoTextView.invalidate();
        this.leftImageView.invalidate();
    }

    public boolean isMultilineSubInfo() {
        int i = this.currentAction;
        return i == 12 || i == 15 || i == 24 || i == 74 || i == ACTION_RINGTONE_ADDED;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.additionalTranslationY != BitmapDescriptorFactory.HUE_RED) {
            canvas.save();
            float measuredHeight = (getMeasuredHeight() - this.enterOffset) + this.enterOffsetMargin + AndroidUtilities.dp(1.0f);
            if (measuredHeight > BitmapDescriptorFactory.HUE_RED) {
                canvas.clipRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), measuredHeight);
                super.dispatchDraw(canvas);
            }
            this.backgroundDrawable.draw(canvas);
            canvas.restore();
        } else {
            this.backgroundDrawable.draw(canvas);
        }
        int i = this.currentAction;
        if (i == 1 || i == 0 || i == 27 || i == 26 || i == 81 || i == 88) {
            int iCeil = this.timeLeft > 0 ? (int) Math.ceil(r10 / 1000.0f) : 0;
            if (this.prevSeconds != iCeil) {
                this.prevSeconds = iCeil;
                this.timeLeftString = String.format("%d", Integer.valueOf(Math.max(1, iCeil)));
                StaticLayout staticLayout = this.timeLayout;
                if (staticLayout != null) {
                    this.timeLayoutOut = staticLayout;
                    this.timeReplaceProgress = BitmapDescriptorFactory.HUE_RED;
                    this.textWidthOut = this.textWidth;
                }
                this.textWidth = (int) Math.ceil(this.textPaint.measureText(r2));
                this.timeLayout = new StaticLayout(this.timeLeftString, this.textPaint, Integer.MAX_VALUE, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            }
            float f = this.timeReplaceProgress;
            if (f < 1.0f) {
                float f2 = f + 0.10666667f;
                this.timeReplaceProgress = f2;
                if (f2 > 1.0f) {
                    this.timeReplaceProgress = 1.0f;
                } else {
                    invalidate();
                }
            }
            int alpha = this.textPaint.getAlpha();
            if (this.timeLayoutOut != null) {
                float f3 = this.timeReplaceProgress;
                if (f3 < 1.0f) {
                    this.textPaint.setAlpha((int) (alpha * (1.0f - f3)));
                    canvas.save();
                    canvas.translate(this.rect.centerX() - (this.textWidth / 2), AndroidUtilities.dp(17.2f) + (AndroidUtilities.dp(10.0f) * this.timeReplaceProgress));
                    this.timeLayoutOut.draw(canvas);
                    this.textPaint.setAlpha(alpha);
                    canvas.restore();
                }
            }
            if (this.timeLayout != null) {
                float f4 = this.timeReplaceProgress;
                if (f4 != 1.0f) {
                    this.textPaint.setAlpha((int) (alpha * f4));
                }
                canvas.save();
                canvas.translate(this.rect.centerX() - (this.textWidth / 2), AndroidUtilities.dp(17.2f) - (AndroidUtilities.dp(10.0f) * (1.0f - this.timeReplaceProgress)));
                this.timeLayout.draw(canvas);
                if (this.timeReplaceProgress != 1.0f) {
                    this.textPaint.setAlpha(alpha);
                }
                canvas.restore();
            }
            canvas.drawArc(this.rect, -90.0f, (-360.0f) * (this.timeLeft / 5000.0f), false, this.progressPaint);
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = this.timeLeft - (jElapsedRealtime - this.lastUpdateTime);
        this.timeLeft = j;
        this.lastUpdateTime = jElapsedRealtime;
        if (j <= 0) {
            hide(true, this.hideAnimationType);
        }
        if (this.currentAction != 82) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(this.undoViewHeight, 1073741824));
        this.backgroundDrawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
    }

    protected void onRemoveDialogAction(long j, int i) {
    }

    public void setAdditionalTranslationY(float f) {
        if (this.additionalTranslationY != f) {
            this.additionalTranslationY = f;
            updatePosition();
        }
    }

    public void setColors(int i, int i2) {
        Theme.setDrawableColor(this.backgroundDrawable, i);
        this.infoTextView.setTextColor(i2);
        this.subinfoTextView.setTextColor(i2);
        int i3 = i | (-16777216);
        this.leftImageView.setLayerColor("info1.**", i3);
        this.leftImageView.setLayerColor("info2.**", i3);
    }

    public void setEnterOffset(float f) {
        if (this.enterOffset != f) {
            this.enterOffset = f;
            updatePosition();
        }
    }

    public void setEnterOffsetMargin(int i) {
        this.enterOffsetMargin = i;
    }

    public void setHideAnimationType(int i) {
        this.hideAnimationType = i;
    }

    public void setInfoText(CharSequence charSequence) {
        this.infoText = charSequence;
    }

    public void showWithAction(long j, int i, Object obj) {
        showWithAction(j, i, obj, (Object) null, (Runnable) null, (Runnable) null);
    }

    public void showWithAction(long j, int i, Object obj, Object obj2, Runnable runnable, Runnable runnable2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Long.valueOf(j));
        showWithAction(arrayList, i, obj, obj2, runnable, runnable2);
    }

    public void showWithAction(long j, int i, Object obj, Runnable runnable, Runnable runnable2) {
        showWithAction(j, i, obj, (Object) null, runnable, runnable2);
    }

    public void showWithAction(long j, int i, Runnable runnable) {
        showWithAction(j, i, (Object) null, (Object) null, runnable, (Runnable) null);
    }

    public void showWithAction(long j, int i, Runnable runnable, Runnable runnable2) {
        showWithAction(j, i, (Object) null, (Object) null, runnable, runnable2);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:490:0x0e91. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:262:0x061e  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0633  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x07b6  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x07db  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x07ea  */
    /* JADX WARN: Removed duplicated region for block: B:320:0x0823  */
    /* JADX WARN: Removed duplicated region for block: B:473:0x0e1d  */
    /* JADX WARN: Removed duplicated region for block: B:683:0x1638  */
    /* JADX WARN: Removed duplicated region for block: B:686:0x1658  */
    /* JADX WARN: Removed duplicated region for block: B:689:0x167f  */
    /* JADX WARN: Removed duplicated region for block: B:694:0x16c5  */
    /* JADX WARN: Removed duplicated region for block: B:726:0x176a  */
    /* JADX WARN: Removed duplicated region for block: B:752:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v242, types: [java.lang.CharSequence] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void showWithAction(ArrayList arrayList, int i, Object obj, Object obj2, Runnable runnable, Runnable runnable2) {
        LinkSpanDrawable.LinksTextView linksTextView;
        int i2;
        LinkSpanDrawable.LinksTextView linksTextView2;
        String string;
        RLottieImageView rLottieImageView;
        int i3;
        LinkSpanDrawable.LinksTextView linksTextView3;
        SpannableStringBuilder spannableStringBuilderReplaceTags;
        long j;
        LinkSpanDrawable.LinksTextView linksTextView4;
        String string2;
        LinkSpanDrawable.LinksTextView linksTextView5;
        String string3;
        String string4;
        BulletinFactory$$ExternalSyntheticLambda0 bulletinFactory$$ExternalSyntheticLambda0;
        LinkSpanDrawable.LinksTextView linksTextView6;
        String string5;
        RLottieImageView rLottieImageView2;
        int i4;
        LinkSpanDrawable.LinksTextView linksTextView7;
        int i5;
        RLottieImageView rLottieImageView3;
        int i6;
        long j2;
        boolean z;
        TextView textView;
        String string6;
        LinkSpanDrawable.LinksTextView linksTextView8;
        CharSequence charSequenceReplaceEmoji;
        int iDp;
        LinkSpanDrawable.LinksTextView linksTextView9;
        CharSequence pluralString;
        int i7;
        RLottieImageView rLottieImageView4;
        int i8;
        TextView textView2;
        int i9;
        String string7;
        BackupImageView backupImageView;
        StringBuilder sb;
        String str;
        int i10;
        int i11;
        float f;
        int iMax;
        int i12;
        float f2;
        CharSequence charSequenceReplaceTags;
        int i13;
        SpannableStringBuilder spannableStringBuilder;
        CharSequence spannable;
        int i14;
        long jIntValue;
        int i15;
        String string8;
        int i16;
        int i17;
        int i18;
        String string9;
        String string10;
        String name;
        int i19;
        String string11;
        String string12;
        int i20;
        if (!AndroidUtilities.shouldShowClipboardToast() && ((i20 = this.currentAction) == 52 || i20 == 56 || i20 == 57 || i20 == 58 || i20 == 59 || i20 == 60 || i20 == 80 || i20 == 33)) {
            return;
        }
        Runnable runnable3 = this.currentActionRunnable;
        if (runnable3 != null) {
            runnable3.run();
        }
        this.isShown = true;
        this.currentActionRunnable = runnable;
        this.currentCancelRunnable = runnable2;
        this.currentDialogIds = arrayList;
        Long l = (Long) arrayList.get(0);
        long jLongValue = l.longValue();
        this.currentAction = i;
        this.timeLeft = 5000L;
        this.currentInfoObject = obj;
        this.currentInfoObject2 = obj2;
        this.lastUpdateTime = SystemClock.elapsedRealtime();
        this.undoTextView.setText(LocaleController.getString(R.string.Undo));
        this.undoImageView.setVisibility(0);
        this.leftImageView.setPadding(0, 0, 0, 0);
        this.leftImageView.setScaleX(1.0f);
        this.leftImageView.setScaleY(1.0f);
        this.infoTextView.setTextSize(1, 15.0f);
        this.avatarImageView.setVisibility(8);
        this.infoTextView.setGravity(51);
        ((FrameLayout.LayoutParams) this.subinfoTextView.getLayoutParams()).leftMargin = AndroidUtilities.dp(58.0f);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.infoTextView.getLayoutParams();
        layoutParams.height = -2;
        layoutParams.topMargin = AndroidUtilities.dp(13.0f);
        layoutParams.bottomMargin = 0;
        this.leftImageView.setScaleType(ImageView.ScaleType.CENTER);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.leftImageView.getLayoutParams();
        layoutParams2.gravity = 19;
        layoutParams2.bottomMargin = 0;
        layoutParams2.topMargin = 0;
        layoutParams2.leftMargin = AndroidUtilities.dp(3.0f);
        layoutParams2.width = AndroidUtilities.dp(54.0f);
        layoutParams2.height = -2;
        this.infoTextView.setMinHeight(0);
        if ((runnable == null && runnable2 == null) || i == ACTION_RINGTONE_ADDED) {
            setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.UndoView$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$showWithAction$2(view);
                }
            });
            setOnTouchListener(null);
        } else {
            setOnClickListener(null);
            setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.UndoView$$ExternalSyntheticLambda3
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return UndoView.lambda$showWithAction$3(view, motionEvent);
                }
            });
        }
        this.infoTextView.setMovementMethod(null);
        if (isTooltipAction()) {
            if (i == ACTION_RINGTONE_ADDED) {
                this.subinfoTextView.setSingleLine(false);
                charSequenceReplaceTags = LocaleController.getString(R.string.SoundAdded);
                SpannableStringBuilder spannableStringBuilderReplaceSingleTag = AndroidUtilities.replaceSingleTag(LocaleController.getString(R.string.SoundAddedSubtitle), runnable);
                this.currentActionRunnable = null;
                int i21 = R.raw.sound_download;
                this.timeLeft = 4000L;
                monoForumTitle = spannableStringBuilderReplaceSingleTag;
                i13 = i21;
            } else if (i == 74) {
                this.subinfoTextView.setSingleLine(false);
                charSequenceReplaceTags = LocaleController.getString(R.string.ReportChatSent);
                monoForumTitle = LocaleController.formatString("ReportSentInfo", R.string.ReportSentInfo, new Object[0]);
                i13 = R.raw.ic_admin;
                this.timeLeft = 4000L;
            } else {
                if (i == 34) {
                    TLRPC.User user = (TLRPC.User) obj;
                    SpannableStringBuilder spannableStringBuilderReplaceTags2 = AndroidUtilities.replaceTags(ChatObject.isChannelOrGiga((TLRPC.Chat) obj2) ? LocaleController.formatString("VoipChannelInvitedUser", R.string.VoipChannelInvitedUser, UserObject.getFirstName(user)) : LocaleController.formatString("VoipGroupInvitedUser", R.string.VoipGroupInvitedUser, UserObject.getFirstName(user)));
                    AvatarDrawable avatarDrawable = new AvatarDrawable();
                    avatarDrawable.setTextSize(AndroidUtilities.dp(12.0f));
                    avatarDrawable.setInfo(this.currentAccount, user);
                    this.avatarImageView.setForUserOrChat(user, avatarDrawable);
                    this.avatarImageView.setVisibility(0);
                    this.timeLeft = 3000L;
                    charSequenceReplaceTags = spannableStringBuilderReplaceTags2;
                } else if (i == 44) {
                    TLRPC.Chat chat = (TLRPC.Chat) obj2;
                    if (obj instanceof TLRPC.User) {
                        TLRPC.User user2 = (TLRPC.User) obj;
                        string12 = ChatObject.isChannelOrGiga(chat) ? LocaleController.formatString(R.string.VoipChannelUserJoined, UserObject.getFirstName(user2)) : LocaleController.formatString(R.string.VoipChatUserJoined, UserObject.getFirstName(user2));
                    } else if (obj instanceof TLRPC.Chat) {
                        TLRPC.Chat chat2 = (TLRPC.Chat) obj;
                        string12 = ChatObject.isChannelOrGiga(chat) ? LocaleController.formatString(R.string.VoipChannelChatJoined, chat2.title) : LocaleController.formatString(R.string.VoipChatChatJoined, chat2.title);
                    } else {
                        charSequenceReplaceTags = "";
                        AvatarDrawable avatarDrawable2 = new AvatarDrawable();
                        avatarDrawable2.setTextSize(AndroidUtilities.dp(12.0f));
                        TLObject tLObject = (TLObject) obj;
                        avatarDrawable2.setInfo(this.currentAccount, tLObject);
                        this.avatarImageView.setForUserOrChat(tLObject, avatarDrawable2);
                        this.avatarImageView.setVisibility(0);
                        this.timeLeft = 3000L;
                    }
                    charSequenceReplaceTags = AndroidUtilities.replaceTags(string12);
                    AvatarDrawable avatarDrawable22 = new AvatarDrawable();
                    avatarDrawable22.setTextSize(AndroidUtilities.dp(12.0f));
                    TLObject tLObject2 = (TLObject) obj;
                    avatarDrawable22.setInfo(this.currentAccount, tLObject2);
                    this.avatarImageView.setForUserOrChat(tLObject2, avatarDrawable22);
                    this.avatarImageView.setVisibility(0);
                    this.timeLeft = 3000L;
                } else if (i == 37) {
                    AvatarDrawable avatarDrawable3 = new AvatarDrawable();
                    avatarDrawable3.setTextSize(AndroidUtilities.dp(12.0f));
                    if (obj instanceof TLRPC.User) {
                        TLRPC.User user3 = (TLRPC.User) obj;
                        avatarDrawable3.setInfo(this.currentAccount, user3);
                        this.avatarImageView.setForUserOrChat(user3, avatarDrawable3);
                        name = ContactsController.formatName(user3.first_name, user3.last_name);
                    } else {
                        TLRPC.Chat chat3 = (TLRPC.Chat) obj;
                        avatarDrawable3.setInfo(this.currentAccount, chat3);
                        this.avatarImageView.setForUserOrChat(chat3, avatarDrawable3);
                        name = chat3.title;
                    }
                    if (ChatObject.isChannelOrGiga((TLRPC.Chat) obj2)) {
                        i19 = 0;
                        string11 = LocaleController.formatString("VoipChannelUserChanged", R.string.VoipChannelUserChanged, name);
                    } else {
                        i19 = 0;
                        string11 = LocaleController.formatString("VoipGroupUserChanged", R.string.VoipGroupUserChanged, name);
                    }
                    charSequenceReplaceTags = AndroidUtilities.replaceTags(string11);
                    this.avatarImageView.setVisibility(i19);
                    this.timeLeft = 3000L;
                } else if (i == 33) {
                    charSequenceReplaceTags = LocaleController.getString(R.string.VoipGroupCopyInviteLinkCopied);
                    i13 = R.raw.voip_invite;
                    this.timeLeft = 3000L;
                } else if (i == 77) {
                    charSequenceReplaceTags = (CharSequence) obj;
                    i13 = R.raw.payment_success;
                    this.timeLeft = 5000L;
                    if (this.parentFragment != null && (obj2 instanceof TLRPC.Message)) {
                        final TLRPC.Message message = (TLRPC.Message) obj2;
                        setOnTouchListener(null);
                        this.infoTextView.setMovementMethod(null);
                        setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.UndoView$$ExternalSyntheticLambda4
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$showWithAction$6(message, view);
                            }
                        });
                    }
                } else {
                    if (i == 30) {
                        string10 = LocaleController.formatString("VoipGroupUserCantNowSpeak", R.string.VoipGroupUserCantNowSpeak, obj instanceof TLRPC.User ? UserObject.getFirstName((TLRPC.User) obj) : ((TLRPC.Chat) obj).title);
                    } else if (i == 35) {
                        string10 = LocaleController.formatString("VoipGroupUserCantNowSpeakForYou", R.string.VoipGroupUserCantNowSpeakForYou, obj instanceof TLRPC.User ? UserObject.getFirstName((TLRPC.User) obj) : obj instanceof TLRPC.Chat ? ((TLRPC.Chat) obj).title : "");
                    } else {
                        if (i == 31) {
                            string9 = LocaleController.formatString("VoipGroupUserCanNowSpeak", R.string.VoipGroupUserCanNowSpeak, obj instanceof TLRPC.User ? UserObject.getFirstName((TLRPC.User) obj) : ((TLRPC.Chat) obj).title);
                        } else {
                            if (i == 38) {
                                charSequenceReplaceTags = AndroidUtilities.replaceTags(obj instanceof TLRPC.Chat ? LocaleController.formatString("VoipGroupYouCanNowSpeakIn", R.string.VoipGroupYouCanNowSpeakIn, ((TLRPC.Chat) obj).title) : LocaleController.getString(R.string.VoipGroupYouCanNowSpeak));
                                i13 = R.raw.voip_allow_talk;
                            } else if (i == 42) {
                                charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.getString(ChatObject.isChannelOrGiga((TLRPC.Chat) obj) ? R.string.VoipChannelSoundMuted : R.string.VoipGroupSoundMuted));
                                i13 = R.raw.ic_mute;
                            } else if (i == 43) {
                                charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.getString(ChatObject.isChannelOrGiga((TLRPC.Chat) obj) ? R.string.VoipChannelSoundUnmuted : R.string.VoipGroupSoundUnmuted));
                                i13 = R.raw.ic_unmute;
                            } else {
                                int i22 = this.currentAction;
                                if (i22 == 39 || i22 == 100) {
                                    charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.getString(i22 == 39 ? R.string.VoipGroupAudioRecordStarted : R.string.VoipGroupVideoRecordStarted));
                                    i13 = R.raw.voip_record_start;
                                } else {
                                    if (i22 == 40 || i22 == 101) {
                                        String string13 = LocaleController.getString(i22 == 40 ? R.string.VoipGroupAudioRecordSaved : R.string.VoipGroupVideoRecordSaved);
                                        i13 = R.raw.voip_record_saved;
                                        this.timeLeft = 4000L;
                                        this.infoTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
                                        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(string13);
                                        int iIndexOf = string13.indexOf("**");
                                        int iLastIndexOf = string13.lastIndexOf("**");
                                        spannableStringBuilder = spannableStringBuilder2;
                                        spannableStringBuilder = spannableStringBuilder2;
                                        spannableStringBuilder = spannableStringBuilder2;
                                        if (iIndexOf >= 0 && iLastIndexOf >= 0 && iIndexOf != iLastIndexOf) {
                                            spannableStringBuilder2.replace(iLastIndexOf, iLastIndexOf + 2, (CharSequence) "");
                                            spannableStringBuilder2.replace(iIndexOf, iIndexOf + 2, (CharSequence) "");
                                            try {
                                                spannableStringBuilder2.setSpan(new URLSpanNoUnderline("tg://openmessage?user_id=" + UserConfig.getInstance(this.currentAccount).getClientUserId()), iIndexOf, iLastIndexOf - 2, 33);
                                                spannableStringBuilder = spannableStringBuilder2;
                                            } catch (Exception e) {
                                                FileLog.e(e);
                                                spannableStringBuilder = spannableStringBuilder2;
                                            }
                                        }
                                    } else if (i == 36) {
                                        string9 = LocaleController.formatString("VoipGroupUserCanNowSpeakForYou", R.string.VoipGroupUserCanNowSpeakForYou, obj instanceof TLRPC.User ? UserObject.getFirstName((TLRPC.User) obj) : ((TLRPC.Chat) obj).title);
                                    } else if (i == 32 || i == 102) {
                                        String firstName = obj instanceof TLRPC.User ? UserObject.getFirstName((TLRPC.User) obj) : ((TLRPC.Chat) obj).title;
                                        charSequenceReplaceTags = AndroidUtilities.replaceTags(i == 102 ? LocaleController.formatString(R.string.VoipConferenceKicked, firstName) : LocaleController.formatString(R.string.VoipGroupRemovedFromGroup, firstName));
                                        i13 = R.raw.voip_group_removed;
                                    } else {
                                        if (i == 9 || i == 10) {
                                            TLRPC.User user4 = (TLRPC.User) obj;
                                            charSequenceReplaceTags = AndroidUtilities.replaceTags(i == 9 ? LocaleController.formatString("EditAdminTransferChannelToast", R.string.EditAdminTransferChannelToast, UserObject.getFirstName(user4)) : LocaleController.formatString("EditAdminTransferGroupToast", R.string.EditAdminTransferGroupToast, UserObject.getFirstName(user4)));
                                        } else if (i == 8) {
                                            charSequenceReplaceTags = LocaleController.formatString("NowInContacts", R.string.NowInContacts, UserObject.getFirstName((TLRPC.User) obj));
                                            i13 = R.raw.contact_check;
                                        } else if (i == 87) {
                                            charSequenceReplaceTags = LocaleController.formatString(R.string.ProxyAddedSuccess, new Object[0]);
                                        } else {
                                            if (i == 22) {
                                                if (DialogObject.isUserDialog(jLongValue)) {
                                                    i18 = obj == null ? R.string.MainProfilePhotoSetHint : R.string.MainProfileVideoSetHint;
                                                } else {
                                                    TLRPC.Chat chat4 = MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(-jLongValue));
                                                    i18 = (!ChatObject.isChannel(chat4) || chat4.megagroup) ? obj == null ? R.string.MainGroupProfilePhotoSetHint : R.string.MainGroupProfileVideoSetHint : obj == null ? R.string.MainChannelProfilePhotoSetHint : R.string.MainChannelProfileVideoSetHint;
                                                }
                                            } else if (i == 23) {
                                                i18 = R.string.ChatWasMovedToMainList;
                                            } else {
                                                if (i == 6) {
                                                    charSequenceReplaceTags = LocaleController.getString(R.string.ArchiveHidden);
                                                    monoForumTitle = LocaleController.getString(R.string.ArchiveHiddenInfo);
                                                    i13 = R.raw.chats_swipearchive;
                                                    i17 = 48;
                                                } else {
                                                    if (i22 == 13) {
                                                        string8 = LocaleController.getString(R.string.QuizWellDone);
                                                        monoForumTitle = LocaleController.getString(R.string.QuizWellDoneInfo);
                                                        i16 = R.raw.wallet_congrats;
                                                    } else if (i22 == 14) {
                                                        string8 = LocaleController.getString(R.string.QuizWrongAnswer);
                                                        monoForumTitle = LocaleController.getString(R.string.QuizWrongAnswerInfo);
                                                        i16 = R.raw.wallet_science;
                                                    } else {
                                                        if (i == 7) {
                                                            charSequenceReplaceTags = LocaleController.getString(R.string.ArchivePinned);
                                                            if (MessagesController.getInstance(this.currentAccount).dialogFilters.isEmpty()) {
                                                                i15 = R.string.ArchivePinnedInfo;
                                                                monoForumTitle = LocaleController.getString(i15);
                                                            }
                                                            i13 = R.raw.chats_infotip;
                                                        } else if (i == 20 || i == 21) {
                                                            MessagesController.DialogFilter dialogFilter = (MessagesController.DialogFilter) obj2;
                                                            Spannable spannableReplaceAnimatedEmoji = MessageObject.replaceAnimatedEmoji(Emoji.replaceEmoji(dialogFilter.name, this.infoTextView.getPaint().getFontMetricsInt(), false), dialogFilter.entities, this.infoTextView.getPaint().getFontMetricsInt());
                                                            this.infoTextViewEmojiCacheType = dialogFilter.title_noanimate ? 26 : 0;
                                                            if (jLongValue != 0) {
                                                                if (DialogObject.isEncryptedDialog(jLongValue)) {
                                                                    jLongValue = MessagesController.getInstance(this.currentAccount).getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(jLongValue))).user_id;
                                                                }
                                                                if (DialogObject.isUserDialog(jLongValue)) {
                                                                    TLRPC.User user5 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(jLongValue));
                                                                    String firstName2 = UserObject.getFirstName(user5);
                                                                    if (UserObject.isUserSelf(user5)) {
                                                                        i14 = R.string.SavedMessages;
                                                                    } else {
                                                                        if (UserObject.isReplyUser(user5)) {
                                                                            i14 = R.string.RepliesTitle;
                                                                        }
                                                                        spannable = i != 20 ? LocaleController.formatSpannable(R.string.FilterUserAddedToExisting, firstName2, spannableReplaceAnimatedEmoji) : LocaleController.formatSpannable(R.string.FilterUserRemovedFrom, firstName2, spannableReplaceAnimatedEmoji);
                                                                    }
                                                                    firstName2 = LocaleController.getString(i14);
                                                                    if (i != 20) {
                                                                    }
                                                                } else {
                                                                    TLRPC.Chat chat5 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-jLongValue));
                                                                    spannable = i == 20 ? LocaleController.formatSpannable(R.string.FilterChatAddedToExisting, chat5.title, spannableReplaceAnimatedEmoji) : LocaleController.formatSpannable(R.string.FilterChatRemovedFrom, chat5.title, spannableReplaceAnimatedEmoji);
                                                                }
                                                            } else {
                                                                spannable = i == 20 ? LocaleController.formatSpannable(R.string.FilterChatsAddedToExisting, LocaleController.formatPluralString("ChatsSelected", ((Integer) obj).intValue(), new Object[0]), spannableReplaceAnimatedEmoji) : LocaleController.formatSpannable(R.string.FilterChatsRemovedFrom, LocaleController.formatPluralString("ChatsSelected", ((Integer) obj).intValue(), new Object[0]), spannableReplaceAnimatedEmoji);
                                                            }
                                                            ?? ReplaceTags = AndroidUtilities.replaceTags(spannable);
                                                            i13 = i == 20 ? R.raw.folder_in : R.raw.folder_out;
                                                            spannableStringBuilder = ReplaceTags;
                                                        } else if (i == 19) {
                                                            charSequenceReplaceTags = this.infoText;
                                                            i13 = R.raw.ic_delete;
                                                        } else if (i == 82) {
                                                            charSequenceReplaceTags = LocaleController.getString(((MediaController.PhotoEntry) obj).isVideo ? R.string.AttachMediaVideoDeselected : R.string.AttachMediaPhotoDeselected);
                                                        } else if (i == 78 || i == 79) {
                                                            int iIntValue = ((Integer) obj).intValue();
                                                            charSequenceReplaceTags = i == 78 ? LocaleController.formatPluralString("PinnedDialogsCount", iIntValue, new Object[0]) : LocaleController.formatPluralString("UnpinnedDialogsCount", iIntValue, new Object[0]);
                                                            i13 = this.currentAction == 78 ? R.raw.ic_pin : R.raw.ic_unpin;
                                                            if (obj2 instanceof Integer) {
                                                                jIntValue = ((Integer) obj2).intValue();
                                                                this.timeLeft = jIntValue;
                                                            }
                                                        } else {
                                                            charSequenceReplaceTags = LocaleController.getString(i == 3 ? R.string.ChatArchived : R.string.ChatsArchived);
                                                            if (MessagesController.getInstance(this.currentAccount).dialogFilters.isEmpty()) {
                                                                i15 = R.string.ChatArchivedInfo;
                                                                monoForumTitle = LocaleController.getString(i15);
                                                            }
                                                            i13 = R.raw.chats_infotip;
                                                        }
                                                        StringBuilder sb2 = new StringBuilder();
                                                        sb2.append((Object) this.infoTextView.getText());
                                                        sb2.append(this.subinfoTextView.getVisibility() == 0 ? ". " + ((Object) this.subinfoTextView.getText()) : "");
                                                        AndroidUtilities.makeAccessibilityAnnouncement(sb2.toString());
                                                        if (!isMultilineSubInfo()) {
                                                            int measuredWidth = ((ViewGroup) getParent()).getMeasuredWidth();
                                                            if (measuredWidth == 0) {
                                                                measuredWidth = AndroidUtilities.displaySize.x;
                                                            }
                                                            measureChildWithMargins(this.subinfoTextView, View.MeasureSpec.makeMeasureSpec(measuredWidth - AndroidUtilities.dp(16.0f), 1073741824), 0, View.MeasureSpec.makeMeasureSpec(0, 0), 0);
                                                            iMax = this.subinfoTextView.getMeasuredHeight() + AndroidUtilities.dp(37.0f);
                                                        } else {
                                                            if (!hasSubInfo()) {
                                                                if (getParent() instanceof ViewGroup) {
                                                                    ViewGroup viewGroup = (ViewGroup) getParent();
                                                                    int measuredWidth2 = (viewGroup.getMeasuredWidth() - viewGroup.getPaddingLeft()) - viewGroup.getPaddingRight();
                                                                    if (measuredWidth2 <= 0) {
                                                                        measuredWidth2 = AndroidUtilities.displaySize.x;
                                                                    }
                                                                    measureChildWithMargins(this.infoTextView, View.MeasureSpec.makeMeasureSpec(measuredWidth2 - AndroidUtilities.dp(16.0f), 1073741824), 0, View.MeasureSpec.makeMeasureSpec(0, 0), 0);
                                                                    int measuredHeight = this.infoTextView.getMeasuredHeight();
                                                                    int i23 = this.currentAction;
                                                                    int iDp2 = measuredHeight + AndroidUtilities.dp((i23 == 16 || i23 == 17 || i23 == 18 || i23 == 84 || i23 == 86) ? 14.0f : 28.0f);
                                                                    this.undoViewHeight = iDp2;
                                                                    int i24 = this.currentAction;
                                                                    if (i24 == 18) {
                                                                        f = 52.0f;
                                                                    } else if (i24 == 25) {
                                                                        f = 50.0f;
                                                                    } else if (z) {
                                                                        this.undoViewHeight = iDp2 - AndroidUtilities.dp(8.0f);
                                                                    }
                                                                    iMax = Math.max(iDp2, AndroidUtilities.dp(f));
                                                                }
                                                                if (getVisibility() != 0) {
                                                                    setVisibility(0);
                                                                    setEnterOffset((this.fromTop ? -1.0f : 1.0f) * (this.enterOffsetMargin + this.undoViewHeight));
                                                                    AnimatorSet animatorSet = new AnimatorSet();
                                                                    boolean z2 = this.fromTop;
                                                                    float f3 = (z2 ? -1.0f : 1.0f) * (this.enterOffsetMargin + this.undoViewHeight);
                                                                    if (z2) {
                                                                        i12 = 2;
                                                                        f2 = 1.0f;
                                                                    } else {
                                                                        i12 = 2;
                                                                        f2 = -1.0f;
                                                                    }
                                                                    float[] fArr = new float[i12];
                                                                    fArr[0] = f3;
                                                                    fArr[1] = f2;
                                                                    animatorSet.playTogether(ObjectAnimator.ofFloat(this, "enterOffset", fArr));
                                                                    animatorSet.setInterpolator(new DecelerateInterpolator());
                                                                    animatorSet.setDuration(180L);
                                                                    animatorSet.start();
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            iMax = AndroidUtilities.dp(52.0f);
                                                        }
                                                        this.undoViewHeight = iMax;
                                                        if (getVisibility() != 0) {
                                                        }
                                                    }
                                                    charSequenceReplaceTags = string8;
                                                    i13 = i16;
                                                    i17 = 44;
                                                }
                                                this.infoTextView.setText(charSequenceReplaceTags);
                                                RLottieImageView rLottieImageView5 = this.leftImageView;
                                                if (i13 == 0) {
                                                    rLottieImageView5.setAnimation(i13, i17, i17);
                                                    RLottieDrawable animatedDrawable = this.leftImageView.getAnimatedDrawable();
                                                    animatedDrawable.setPlayInDirectionOfCustomEndFrame(false);
                                                    animatedDrawable.setCustomEndFrame(animatedDrawable.getFramesCount());
                                                    this.leftImageView.setVisibility(0);
                                                    this.leftImageView.setProgress(BitmapDescriptorFactory.HUE_RED);
                                                    this.leftImageView.playAnimation();
                                                } else {
                                                    rLottieImageView5.setVisibility(8);
                                                }
                                                layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                                                if (monoForumTitle == null) {
                                                    layoutParams.topMargin = AndroidUtilities.dp(6.0f);
                                                    layoutParams.rightMargin = AndroidUtilities.dp(8.0f);
                                                    ((FrameLayout.LayoutParams) this.subinfoTextView.getLayoutParams()).rightMargin = AndroidUtilities.dp(8.0f);
                                                    this.subinfoTextView.setText(monoForumTitle);
                                                    this.subinfoTextView.setVisibility(0);
                                                    this.infoTextView.setTextSize(1, 14.0f);
                                                    this.infoTextView.setTypeface(AndroidUtilities.bold());
                                                    i10 = 8;
                                                } else {
                                                    layoutParams.topMargin = AndroidUtilities.dp(13.0f);
                                                    layoutParams.rightMargin = AndroidUtilities.dp(8.0f);
                                                    i10 = 8;
                                                    this.subinfoTextView.setVisibility(8);
                                                    this.infoTextView.setTextSize(1, 15.0f);
                                                    this.infoTextView.setTypeface(Typeface.DEFAULT);
                                                }
                                            }
                                            charSequenceReplaceTags = LocaleController.getString(i18);
                                        }
                                        i13 = R.raw.contact_check;
                                    }
                                    charSequenceReplaceTags = spannableStringBuilder;
                                }
                            }
                            jIntValue = 3000;
                            this.timeLeft = jIntValue;
                        }
                        charSequenceReplaceTags = AndroidUtilities.replaceTags(string9);
                        i13 = R.raw.voip_unmuted;
                        jIntValue = 3000;
                        this.timeLeft = jIntValue;
                    }
                    charSequenceReplaceTags = AndroidUtilities.replaceTags(string10);
                    i13 = R.raw.voip_muted;
                    jIntValue = 3000;
                    this.timeLeft = jIntValue;
                }
                i13 = 0;
            }
            i17 = 36;
            this.infoTextView.setText(charSequenceReplaceTags);
            RLottieImageView rLottieImageView52 = this.leftImageView;
            if (i13 == 0) {
            }
            layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
            if (monoForumTitle == null) {
            }
        } else {
            int i25 = this.currentAction;
            if (i25 == 45 || i25 == 46 || i25 == 47 || i25 == 52 || i25 == 53 || i25 == 54 || i25 == 55 || i25 == 56 || i25 == 57 || i25 == 58 || i25 == 59 || i25 == 60 || i25 == 71 || i25 == 70 || i25 == 75 || i25 == 76 || i25 == 41 || i25 == 78 || i25 == 79 || i25 == 61 || i25 == 80) {
                this.undoImageView.setVisibility(8);
                this.leftImageView.setVisibility(0);
                this.infoTextView.setTypeface(Typeface.DEFAULT);
                int i26 = this.currentAction;
                long j3 = -1;
                if (i26 == 76) {
                    this.infoTextView.setText(LocaleController.getString(R.string.BroadcastGroupConvertSuccess));
                    rLottieImageView3 = this.leftImageView;
                    i6 = R.raw.gigagroup_convert;
                } else if (i26 == 75) {
                    this.infoTextView.setText(LocaleController.getString(R.string.GigagroupConvertCancelHint));
                    rLottieImageView3 = this.leftImageView;
                    i6 = R.raw.chats_infotip;
                } else {
                    if (i == 70) {
                        int iIntValue2 = ((Integer) obj2).intValue();
                        this.subinfoTextView.setSingleLine(false);
                        this.infoTextView.setText(LocaleController.formatString("AutoDeleteHintOnText", R.string.AutoDeleteHintOnText, LocaleController.formatTTLString(iIntValue2)));
                        this.leftImageView.setAnimation(R.raw.fire_on, 36, 36);
                        layoutParams.topMargin = AndroidUtilities.dp(9.0f);
                        this.timeLeft = 4000L;
                        this.leftImageView.setPadding(0, 0, 0, AndroidUtilities.dp(3.0f));
                        j2 = -1;
                        z = true;
                    } else {
                        if (i26 == 71) {
                            this.infoTextView.setText(LocaleController.getString(R.string.AutoDeleteHintOffText));
                            this.leftImageView.setAnimation(R.raw.fire_off, 36, 36);
                            this.infoTextView.setTextSize(1, 14.0f);
                            this.timeLeft = 3000L;
                            this.leftImageView.setPadding(0, 0, 0, AndroidUtilities.dp(4.0f));
                        } else {
                            if (i26 == 45) {
                                linksTextView7 = this.infoTextView;
                                i5 = R.string.ImportMutualError;
                            } else if (i26 == 46) {
                                linksTextView7 = this.infoTextView;
                                i5 = R.string.ImportNotAdmin;
                            } else if (i26 == 47) {
                                this.infoTextView.setText(LocaleController.getString(R.string.ImportedInfo));
                                this.leftImageView.setAnimation(R.raw.imported, 36, 36);
                                this.leftImageView.setPadding(0, 0, 0, AndroidUtilities.dp(5.0f));
                                layoutParams.topMargin = AndroidUtilities.dp(9.0f);
                                this.infoTextView.setTextSize(1, 14.0f);
                                j2 = -1;
                                z = true;
                            } else {
                                if (i26 == 52 || i26 == 56 || i26 == 57 || i26 == 58 || i26 == 59 || i26 == 60 || i26 == 80) {
                                    if (!AndroidUtilities.shouldShowClipboardToast()) {
                                        return;
                                    }
                                    int i27 = R.raw.copy;
                                    int i28 = this.currentAction;
                                    if (i28 == 80) {
                                        linksTextView = this.infoTextView;
                                        i2 = R.string.EmailCopied;
                                    } else if (i28 == 60) {
                                        linksTextView = this.infoTextView;
                                        i2 = R.string.PhoneCopied;
                                    } else if (i28 == 56) {
                                        linksTextView = this.infoTextView;
                                        i2 = R.string.UsernameCopied;
                                    } else if (i28 == 57) {
                                        linksTextView = this.infoTextView;
                                        i2 = R.string.HashtagCopied;
                                    } else if (i28 == 52) {
                                        linksTextView = this.infoTextView;
                                        i2 = R.string.MessageCopied;
                                    } else if (i28 == 59) {
                                        i27 = R.raw.voip_invite;
                                        linksTextView = this.infoTextView;
                                        i2 = R.string.LinkCopied;
                                    } else {
                                        linksTextView = this.infoTextView;
                                        i2 = R.string.TextCopied;
                                    }
                                    linksTextView.setText(LocaleController.getString(i2));
                                    this.leftImageView.setAnimation(i27, 30, 30);
                                } else {
                                    if (i26 == 54) {
                                        this.infoTextView.setText(LocaleController.getString(R.string.ChannelNotifyMembersInfoOn));
                                        rLottieImageView2 = this.leftImageView;
                                        i4 = R.raw.silent_unmute;
                                    } else if (i26 == 55) {
                                        this.infoTextView.setText(LocaleController.getString(R.string.ChannelNotifyMembersInfoOff));
                                        rLottieImageView2 = this.leftImageView;
                                        i4 = R.raw.silent_mute;
                                    } else {
                                        if (i26 == 41) {
                                            if (obj2 != null) {
                                                int iIntValue3 = ((Integer) obj2).intValue();
                                                linksTextView6 = this.infoTextView;
                                                string5 = LocaleController.formatString("InvLinkToChats", R.string.InvLinkToChats, LocaleController.formatPluralString("Chats", iIntValue3, new Object[0]));
                                            } else if (jLongValue == UserConfig.getInstance(this.currentAccount).clientUserId) {
                                                this.infoTextView.setText(AndroidUtilities.replaceTags(LocaleController.getString(R.string.InvLinkToSavedMessages)));
                                                this.leftImageView.setAnimation(R.raw.contact_check, 36, 36);
                                                j = 3000;
                                            } else if (DialogObject.isChatDialog(jLongValue)) {
                                                TLRPC.Chat chat6 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-jLongValue));
                                                linksTextView6 = this.infoTextView;
                                                string5 = LocaleController.formatString("InvLinkToGroup", R.string.InvLinkToGroup, chat6.title);
                                            } else {
                                                TLRPC.User user6 = MessagesController.getInstance(this.currentAccount).getUser(l);
                                                linksTextView6 = this.infoTextView;
                                                string5 = LocaleController.formatString("InvLinkToUser", R.string.InvLinkToUser, UserObject.getFirstName(user6));
                                            }
                                            linksTextView6.setText(AndroidUtilities.replaceTags(string5));
                                            this.leftImageView.setAnimation(R.raw.contact_check, 36, 36);
                                            j = 3000;
                                        } else {
                                            if (i26 == 53) {
                                                Integer num = (Integer) obj;
                                                if (obj2 != null && !(obj2 instanceof TLRPC.TL_forumTopic)) {
                                                    int iIntValue4 = ((Integer) obj2).intValue();
                                                    if (num.intValue() == 1) {
                                                        linksTextView4 = this.infoTextView;
                                                        string2 = LocaleController.formatPluralString("FwdMessageToManyChats", iIntValue4, new Object[0]);
                                                    } else {
                                                        linksTextView4 = this.infoTextView;
                                                        string2 = LocaleController.formatPluralString("FwdMessagesToManyChats", iIntValue4, new Object[0]);
                                                    }
                                                } else if (jLongValue == UserConfig.getInstance(this.currentAccount).clientUserId) {
                                                    if (num.intValue() == 1) {
                                                        linksTextView3 = this.infoTextView;
                                                        string4 = LocaleController.getString(R.string.FwdMessageToSavedMessages);
                                                        bulletinFactory$$ExternalSyntheticLambda0 = new BulletinFactory$$ExternalSyntheticLambda0();
                                                    } else {
                                                        linksTextView3 = this.infoTextView;
                                                        string4 = LocaleController.getString(R.string.FwdMessagesToSavedMessages);
                                                        bulletinFactory$$ExternalSyntheticLambda0 = new BulletinFactory$$ExternalSyntheticLambda0();
                                                    }
                                                    spannableStringBuilderReplaceTags = AndroidUtilities.replaceSingleTag(string4, bulletinFactory$$ExternalSyntheticLambda0);
                                                } else {
                                                    if (DialogObject.isChatDialog(jLongValue)) {
                                                        TLRPC.Chat chat7 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-jLongValue));
                                                        TLRPC.TL_forumTopic tL_forumTopic = (TLRPC.TL_forumTopic) obj2;
                                                        monoForumTitle = ChatObject.isMonoForum(chat7) ? ForumUtilities.getMonoForumTitle(this.currentAccount, chat7) : null;
                                                        if (num.intValue() == 1) {
                                                            linksTextView4 = this.infoTextView;
                                                            int i29 = R.string.FwdMessageToGroup;
                                                            if (monoForumTitle == null) {
                                                                monoForumTitle = tL_forumTopic != null ? tL_forumTopic.title : chat7.title;
                                                            }
                                                            string2 = LocaleController.formatString("FwdMessageToGroup", i29, monoForumTitle);
                                                        } else {
                                                            linksTextView5 = this.infoTextView;
                                                            int i30 = R.string.FwdMessagesToGroup;
                                                            if (monoForumTitle == null) {
                                                                monoForumTitle = tL_forumTopic != null ? tL_forumTopic.title : chat7.title;
                                                            }
                                                            string3 = LocaleController.formatString("FwdMessagesToGroup", i30, monoForumTitle);
                                                            linksTextView5.setText(AndroidUtilities.replaceTags(string3));
                                                        }
                                                    } else {
                                                        TLRPC.User user7 = MessagesController.getInstance(this.currentAccount).getUser(l);
                                                        if (num.intValue() == 1) {
                                                            linksTextView5 = this.infoTextView;
                                                            string3 = LocaleController.formatString("FwdMessageToUser", R.string.FwdMessageToUser, UserObject.getFirstName(user7));
                                                            linksTextView5.setText(AndroidUtilities.replaceTags(string3));
                                                        } else {
                                                            linksTextView4 = this.infoTextView;
                                                            string2 = LocaleController.formatString("FwdMessagesToUser", R.string.FwdMessagesToUser, UserObject.getFirstName(user7));
                                                        }
                                                    }
                                                    this.leftImageView.setAnimation(R.raw.forward, 30, 30);
                                                    j3 = 300;
                                                    j = 3000;
                                                }
                                                linksTextView4.setText(AndroidUtilities.replaceTags(string2));
                                                this.leftImageView.setAnimation(R.raw.forward, 30, 30);
                                                j3 = 300;
                                                j = 3000;
                                            } else if (i26 == 61) {
                                                if (obj2 != null) {
                                                    int iIntValue5 = ((Integer) obj2).intValue();
                                                    linksTextView2 = this.infoTextView;
                                                    string = LocaleController.formatString("BackgroundToChats", R.string.BackgroundToChats, LocaleController.formatPluralString("Chats", iIntValue5, new Object[0]));
                                                } else if (jLongValue == UserConfig.getInstance(this.currentAccount).clientUserId) {
                                                    linksTextView3 = this.infoTextView;
                                                    spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.getString(R.string.BackgroundToSavedMessages));
                                                } else if (DialogObject.isChatDialog(jLongValue)) {
                                                    TLRPC.Chat chat8 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-jLongValue));
                                                    linksTextView2 = this.infoTextView;
                                                    string = LocaleController.formatString("BackgroundToGroup", R.string.BackgroundToGroup, chat8.title);
                                                } else {
                                                    TLRPC.User user8 = MessagesController.getInstance(this.currentAccount).getUser(l);
                                                    linksTextView2 = this.infoTextView;
                                                    string = LocaleController.formatString("BackgroundToUser", R.string.BackgroundToUser, UserObject.getFirstName(user8));
                                                }
                                                linksTextView2.setText(AndroidUtilities.replaceTags(string));
                                                rLottieImageView = this.leftImageView;
                                                i3 = R.raw.forward;
                                                rLottieImageView.setAnimation(i3, 30, 30);
                                                j = 3000;
                                            }
                                            linksTextView3.setText(spannableStringBuilderReplaceTags);
                                            rLottieImageView = this.leftImageView;
                                            i3 = R.raw.saved_messages;
                                            rLottieImageView.setAnimation(i3, 30, 30);
                                            j = 3000;
                                        }
                                        this.timeLeft = j;
                                    }
                                    rLottieImageView2.setAnimation(i4, 30, 30);
                                }
                                this.timeLeft = 3000L;
                                this.infoTextView.setTextSize(1, 15.0f);
                            }
                            linksTextView7.setText(LocaleController.getString(i5));
                            rLottieImageView3 = this.leftImageView;
                            i6 = R.raw.error;
                        }
                        j2 = j3;
                        z = false;
                    }
                    this.subinfoTextView.setVisibility(8);
                    this.undoTextView.setTextColor(getThemedColor(Theme.key_undo_cancelColor));
                    this.undoButton.setVisibility(8);
                    layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                    layoutParams.rightMargin = AndroidUtilities.dp(8.0f);
                    this.leftImageView.setProgress(BitmapDescriptorFactory.HUE_RED);
                    this.leftImageView.playAnimation();
                    if (j2 > 0) {
                        this.leftImageView.postDelayed(new Runnable() { // from class: org.telegram.ui.Components.UndoView$$ExternalSyntheticLambda5
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$showWithAction$7();
                            }
                        }, j2);
                    }
                    StringBuilder sb22 = new StringBuilder();
                    sb22.append((Object) this.infoTextView.getText());
                    if (this.subinfoTextView.getVisibility() == 0) {
                    }
                    sb22.append(this.subinfoTextView.getVisibility() == 0 ? ". " + ((Object) this.subinfoTextView.getText()) : "");
                    AndroidUtilities.makeAccessibilityAnnouncement(sb22.toString());
                    if (!isMultilineSubInfo()) {
                    }
                    this.undoViewHeight = iMax;
                    if (getVisibility() != 0) {
                    }
                }
                rLottieImageView3.setAnimation(i6, 36, 36);
                layoutParams.topMargin = AndroidUtilities.dp(9.0f);
                this.infoTextView.setTextSize(1, 14.0f);
                j2 = -1;
                z = true;
                this.subinfoTextView.setVisibility(8);
                this.undoTextView.setTextColor(getThemedColor(Theme.key_undo_cancelColor));
                this.undoButton.setVisibility(8);
                layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                layoutParams.rightMargin = AndroidUtilities.dp(8.0f);
                this.leftImageView.setProgress(BitmapDescriptorFactory.HUE_RED);
                this.leftImageView.playAnimation();
                if (j2 > 0) {
                }
                StringBuilder sb222 = new StringBuilder();
                sb222.append((Object) this.infoTextView.getText());
                if (this.subinfoTextView.getVisibility() == 0) {
                }
                sb222.append(this.subinfoTextView.getVisibility() == 0 ? ". " + ((Object) this.subinfoTextView.getText()) : "");
                AndroidUtilities.makeAccessibilityAnnouncement(sb222.toString());
                if (!isMultilineSubInfo()) {
                }
                this.undoViewHeight = iMax;
                if (getVisibility() != 0) {
                }
            } else {
                if (i25 == 24 || i25 == 25) {
                    int iIntValue6 = ((Integer) obj).intValue();
                    TLRPC.User user9 = (TLRPC.User) obj2;
                    this.undoImageView.setVisibility(8);
                    this.leftImageView.setVisibility(0);
                    if (iIntValue6 != 0) {
                        this.infoTextView.setTypeface(AndroidUtilities.bold());
                        this.infoTextView.setTextSize(1, 14.0f);
                        this.leftImageView.clearLayerColors();
                        RLottieImageView rLottieImageView6 = this.leftImageView;
                        int i31 = Theme.key_undo_infoColor;
                        rLottieImageView6.setLayerColor("BODY.**", getThemedColor(i31));
                        this.leftImageView.setLayerColor("Wibe Big.**", getThemedColor(i31));
                        this.leftImageView.setLayerColor("Wibe Big 3.**", getThemedColor(i31));
                        this.leftImageView.setLayerColor("Wibe Small.**", getThemedColor(i31));
                        this.infoTextView.setText(LocaleController.getString(R.string.ProximityAlertSet));
                        this.leftImageView.setAnimation(R.raw.ic_unmute, 28, 28);
                        this.subinfoTextView.setVisibility(0);
                        this.subinfoTextView.setSingleLine(false);
                        this.subinfoTextView.setMaxLines(3);
                        if (user9 != null) {
                            textView = this.subinfoTextView;
                            string6 = LocaleController.formatString("ProximityAlertSetInfoUser", R.string.ProximityAlertSetInfoUser, UserObject.getFirstName(user9), LocaleController.formatDistance(iIntValue6, 2));
                        } else {
                            textView = this.subinfoTextView;
                            string6 = LocaleController.formatString("ProximityAlertSetInfoGroup2", R.string.ProximityAlertSetInfoGroup2, LocaleController.formatDistance(iIntValue6, 2));
                        }
                        textView.setText(string6);
                        this.undoButton.setVisibility(8);
                        layoutParams.topMargin = AndroidUtilities.dp(6.0f);
                    } else {
                        this.infoTextView.setTypeface(Typeface.DEFAULT);
                        this.infoTextView.setTextSize(1, 15.0f);
                        this.leftImageView.clearLayerColors();
                        RLottieImageView rLottieImageView7 = this.leftImageView;
                        int i32 = Theme.key_undo_infoColor;
                        rLottieImageView7.setLayerColor("Body Main.**", getThemedColor(i32));
                        this.leftImageView.setLayerColor("Body Top.**", getThemedColor(i32));
                        this.leftImageView.setLayerColor("Line.**", getThemedColor(i32));
                        this.leftImageView.setLayerColor("Curve Big.**", getThemedColor(i32));
                        this.leftImageView.setLayerColor("Curve Small.**", getThemedColor(i32));
                        layoutParams.topMargin = AndroidUtilities.dp(14.0f);
                        this.infoTextView.setText(LocaleController.getString(R.string.ProximityAlertCancelled));
                        this.leftImageView.setAnimation(R.raw.ic_mute, 28, 28);
                        this.subinfoTextView.setVisibility(8);
                        this.undoTextView.setTextColor(getThemedColor(Theme.key_undo_cancelColor));
                        this.undoButton.setVisibility(0);
                    }
                    layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                } else {
                    if (i25 == 11) {
                        this.infoTextView.setText(LocaleController.getString(R.string.AuthAnotherClientOk));
                        this.leftImageView.setAnimation(R.raw.contact_check, 36, 36);
                        layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                        layoutParams.topMargin = AndroidUtilities.dp(6.0f);
                        this.subinfoTextView.setText(((TLRPC.TL_authorization) obj).app_name);
                        this.subinfoTextView.setVisibility(0);
                        this.infoTextView.setTextSize(1, 14.0f);
                        this.infoTextView.setTypeface(AndroidUtilities.bold());
                        this.undoTextView.setTextColor(getThemedColor(Theme.key_text_RedRegular));
                        this.undoImageView.setVisibility(8);
                        i11 = 0;
                        this.undoButton.setVisibility(0);
                    } else if (i25 == 15) {
                        this.timeLeft = 10000L;
                        this.undoTextView.setText(LocaleController.getString(R.string.Open));
                        this.infoTextView.setText(LocaleController.getString(R.string.FilterAvailableTitle));
                        this.leftImageView.setAnimation(R.raw.filter_new, 36, 36);
                        int iCeil = ((int) Math.ceil(this.undoTextView.getPaint().measureText(this.undoTextView.getText().toString()))) + AndroidUtilities.dp(26.0f);
                        layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                        layoutParams.rightMargin = iCeil;
                        layoutParams.topMargin = AndroidUtilities.dp(6.0f);
                        ((FrameLayout.LayoutParams) this.subinfoTextView.getLayoutParams()).rightMargin = iCeil;
                        String string14 = LocaleController.getString(R.string.FilterAvailableText);
                        SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(string14);
                        int iIndexOf2 = string14.indexOf(42);
                        int iLastIndexOf2 = string14.lastIndexOf(42);
                        if (iIndexOf2 >= 0 && iLastIndexOf2 >= 0 && iIndexOf2 != iLastIndexOf2) {
                            spannableStringBuilder3.replace(iLastIndexOf2, iLastIndexOf2 + 1, (CharSequence) "");
                            spannableStringBuilder3.replace(iIndexOf2, iIndexOf2 + 1, (CharSequence) "");
                            spannableStringBuilder3.setSpan(new URLSpanNoUnderline("tg://settings/folders"), iIndexOf2, iLastIndexOf2 - 1, 33);
                        }
                        this.subinfoTextView.setText(spannableStringBuilder3);
                        i11 = 0;
                        this.subinfoTextView.setVisibility(0);
                        this.subinfoTextView.setSingleLine(false);
                        this.subinfoTextView.setMaxLines(2);
                        this.undoButton.setVisibility(0);
                        this.undoImageView.setVisibility(8);
                    } else {
                        if (i25 == 16 || i25 == 17) {
                            this.timeLeft = 4000L;
                            this.infoTextView.setTextSize(1, 14.0f);
                            this.infoTextView.setGravity(16);
                            this.infoTextView.setMinHeight(AndroidUtilities.dp(30.0f));
                            String str2 = (String) obj;
                            if ("🎲".equals(str2)) {
                                this.infoTextView.setText(AndroidUtilities.replaceTags(LocaleController.getString(R.string.DiceInfo2)));
                                this.leftImageView.setImageResource(R.drawable.dice);
                            } else {
                                if ("🎯".equals(str2)) {
                                    linksTextView8 = this.infoTextView;
                                    charSequenceReplaceEmoji = AndroidUtilities.replaceTags(LocaleController.getString(R.string.DartInfo));
                                } else {
                                    String serverString = LocaleController.getServerString("DiceEmojiInfo_" + str2);
                                    if (TextUtils.isEmpty(serverString)) {
                                        linksTextView8 = this.infoTextView;
                                        charSequenceReplaceEmoji = Emoji.replaceEmoji(LocaleController.formatString("DiceEmojiInfo", R.string.DiceEmojiInfo, str2), this.infoTextView.getPaint().getFontMetricsInt(), false);
                                    } else {
                                        LinkSpanDrawable.LinksTextView linksTextView10 = this.infoTextView;
                                        linksTextView10.setText(Emoji.replaceEmoji(serverString, linksTextView10.getPaint().getFontMetricsInt(), false));
                                        this.leftImageView.setImageDrawable(Emoji.getEmojiDrawable(str2));
                                        this.leftImageView.setScaleType(ImageView.ScaleType.FIT_XY);
                                        layoutParams.topMargin = AndroidUtilities.dp(14.0f);
                                        layoutParams.bottomMargin = AndroidUtilities.dp(14.0f);
                                        layoutParams2.leftMargin = AndroidUtilities.dp(14.0f);
                                        layoutParams2.width = AndroidUtilities.dp(26.0f);
                                        layoutParams2.height = AndroidUtilities.dp(26.0f);
                                    }
                                }
                                linksTextView8.setText(charSequenceReplaceEmoji);
                                this.leftImageView.setImageDrawable(Emoji.getEmojiDrawable(str2));
                                this.leftImageView.setScaleType(ImageView.ScaleType.FIT_XY);
                                layoutParams.topMargin = AndroidUtilities.dp(14.0f);
                                layoutParams.bottomMargin = AndroidUtilities.dp(14.0f);
                                layoutParams2.leftMargin = AndroidUtilities.dp(14.0f);
                                layoutParams2.width = AndroidUtilities.dp(26.0f);
                                layoutParams2.height = AndroidUtilities.dp(26.0f);
                            }
                            this.undoTextView.setText(LocaleController.getString(R.string.SendDice));
                            if (this.currentAction == 16) {
                                iDp = ((int) Math.ceil(this.undoTextView.getPaint().measureText(this.undoTextView.getText().toString()))) + AndroidUtilities.dp(26.0f);
                                this.undoTextView.setVisibility(0);
                                this.undoTextView.setTextColor(getThemedColor(Theme.key_undo_cancelColor));
                                this.undoImageView.setVisibility(8);
                                this.undoButton.setVisibility(0);
                            } else {
                                iDp = AndroidUtilities.dp(8.0f);
                                this.undoTextView.setVisibility(8);
                                this.undoButton.setVisibility(8);
                            }
                            layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                            layoutParams.rightMargin = iDp;
                            layoutParams.topMargin = AndroidUtilities.dp(6.0f);
                            layoutParams.bottomMargin = AndroidUtilities.dp(7.0f);
                            layoutParams.height = -1;
                            this.subinfoTextView.setVisibility(8);
                            this.leftImageView.setVisibility(0);
                        } else if (i25 == 18) {
                            this.timeLeft = Math.max(4000, Math.min((r0.length() / 50) * 1600, 10000));
                            this.infoTextView.setTextSize(1, 14.0f);
                            this.infoTextView.setGravity(16);
                            this.infoTextView.setText((CharSequence) obj);
                            this.undoTextView.setVisibility(8);
                            this.undoButton.setVisibility(8);
                            layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                            layoutParams.rightMargin = AndroidUtilities.dp(8.0f);
                            layoutParams.topMargin = AndroidUtilities.dp(6.0f);
                            layoutParams.bottomMargin = AndroidUtilities.dp(7.0f);
                            layoutParams.height = -1;
                            layoutParams2.gravity = 51;
                            int iDp3 = AndroidUtilities.dp(8.0f);
                            layoutParams2.bottomMargin = iDp3;
                            layoutParams2.topMargin = iDp3;
                            this.leftImageView.setVisibility(0);
                            this.leftImageView.setAnimation(R.raw.chats_infotip, 36, 36);
                            this.leftImageView.setProgress(BitmapDescriptorFactory.HUE_RED);
                            this.leftImageView.playAnimation();
                            this.infoTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
                        } else if (i25 == 12) {
                            this.infoTextView.setText(LocaleController.getString(R.string.ColorThemeChanged));
                            this.leftImageView.setImageResource(R.drawable.toast_pallete);
                            layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                            layoutParams.rightMargin = AndroidUtilities.dp(48.0f);
                            layoutParams.topMargin = AndroidUtilities.dp(6.0f);
                            ((FrameLayout.LayoutParams) this.subinfoTextView.getLayoutParams()).rightMargin = AndroidUtilities.dp(48.0f);
                            String string15 = LocaleController.getString(R.string.ColorThemeChangedInfo);
                            SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder(string15);
                            int iIndexOf3 = string15.indexOf(42);
                            int iLastIndexOf3 = string15.lastIndexOf(42);
                            if (iIndexOf3 >= 0 && iLastIndexOf3 >= 0 && iIndexOf3 != iLastIndexOf3) {
                                spannableStringBuilder4.replace(iLastIndexOf3, iLastIndexOf3 + 1, (CharSequence) "");
                                spannableStringBuilder4.replace(iIndexOf3, iIndexOf3 + 1, (CharSequence) "");
                                spannableStringBuilder4.setSpan(new URLSpanNoUnderline("tg://settings/themes"), iIndexOf3, iLastIndexOf3 - 1, 33);
                            }
                            this.subinfoTextView.setText(spannableStringBuilder4);
                            this.subinfoTextView.setVisibility(0);
                            this.subinfoTextView.setSingleLine(false);
                            this.subinfoTextView.setMaxLines(2);
                            this.undoTextView.setVisibility(8);
                            this.undoButton.setVisibility(0);
                            this.leftImageView.setVisibility(0);
                        } else if (i25 == 84) {
                            this.infoTextView.setVisibility(0);
                            this.infoTextView.setTextSize(1, 15.0f);
                            this.infoTextView.setTypeface(Typeface.DEFAULT);
                            this.infoTextView.setText(AndroidUtilities.replaceTags(LocaleController.getString(R.string.UnlockPremiumTranscriptionHint)));
                            this.leftImageView.setVisibility(0);
                            this.leftImageView.setAnimation(R.raw.voice_to_text, 36, 36);
                            this.leftImageView.setProgress(BitmapDescriptorFactory.HUE_RED);
                            this.leftImageView.playAnimation();
                            this.undoTextView.setText(LocaleController.getString(R.string.PremiumMore));
                            layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                            layoutParams.rightMargin = ((int) Math.ceil(this.undoTextView.getPaint().measureText(this.undoTextView.getText().toString()))) + AndroidUtilities.dp(26.0f);
                            int iDp4 = AndroidUtilities.dp(6.0f);
                            layoutParams.bottomMargin = iDp4;
                            layoutParams.topMargin = iDp4;
                            layoutParams.height = -2;
                            this.avatarImageView.setVisibility(8);
                            this.subinfoTextView.setVisibility(8);
                            this.undoTextView.setVisibility(0);
                            this.undoButton.setVisibility(0);
                            this.undoImageView.setVisibility(8);
                        } else if (i25 == 85) {
                            this.infoTextView.setVisibility(0);
                            this.infoTextView.setTextSize(1, 15.0f);
                            this.infoTextView.setTypeface(AndroidUtilities.bold());
                            this.infoTextView.setText(LocaleController.getString(R.string.SwipeToReplyHint));
                            this.leftImageView.setVisibility(0);
                            this.leftImageView.setAnimation(R.raw.hint_swipe_reply, 64, 64);
                            this.leftImageView.setProgress(BitmapDescriptorFactory.HUE_RED);
                            this.leftImageView.playAnimation();
                            this.subinfoTextView.setVisibility(0);
                            this.subinfoTextView.setText(LocaleController.getString(R.string.SwipeToReplyHintMessage));
                            layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                            layoutParams.rightMargin = ((int) Math.ceil(this.undoTextView.getPaint().measureText(this.undoTextView.getText().toString()))) + AndroidUtilities.dp(26.0f);
                            layoutParams.topMargin = AndroidUtilities.dp(6.0f);
                            layoutParams.height = -2;
                            i10 = 8;
                            this.avatarImageView.setVisibility(8);
                        } else {
                            if (i25 == 90 || i25 == 91 || i25 == 92 || i25 == 93 || i25 == 94) {
                                switch (i25) {
                                    case 90:
                                        linksTextView9 = this.infoTextView;
                                        pluralString = LocaleController.formatPluralString("BoostingSelectUpToWarningChannelsGroupsPlural", (int) BoostRepository.giveawayAddPeersMax(), new Object[0]);
                                        linksTextView9.setText(pluralString);
                                        break;
                                    case R.styleable.AppCompatTheme_radioButtonStyle /* 91 */:
                                        linksTextView9 = this.infoTextView;
                                        i7 = R.string.BoostingSelectUpToWarningUsers;
                                        pluralString = LocaleController.getString(i7);
                                        linksTextView9.setText(pluralString);
                                        break;
                                    case R.styleable.AppCompatTheme_ratingBarStyle /* 92 */:
                                        linksTextView9 = this.infoTextView;
                                        pluralString = LocaleController.formatPluralString("BoostingSelectUpToWarningCountriesPlural", (int) BoostRepository.giveawayCountriesMax(), new Object[0]);
                                        linksTextView9.setText(pluralString);
                                        break;
                                    case R.styleable.AppCompatTheme_ratingBarStyleIndicator /* 93 */:
                                        linksTextView9 = this.infoTextView;
                                        pluralString = AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingWaitWarningPlural", BoostRepository.boostsPerSentGift(), new Object[0]));
                                        linksTextView9.setText(pluralString);
                                        break;
                                    case R.styleable.AppCompatTheme_ratingBarStyleSmall /* 94 */:
                                        linksTextView9 = this.infoTextView;
                                        i7 = R.string.BoostingOnlyRecipientCode;
                                        pluralString = LocaleController.getString(i7);
                                        linksTextView9.setText(pluralString);
                                        break;
                                }
                                layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                                layoutParams.rightMargin = AndroidUtilities.dp(8.0f);
                                this.infoTextView.setTextSize(1, 15.0f);
                                this.undoButton.setVisibility(8);
                                this.infoTextView.setTypeface(Typeface.DEFAULT);
                                this.subinfoTextView.setVisibility(8);
                                this.leftImageView.setVisibility(0);
                                rLottieImageView4 = this.leftImageView;
                                i8 = R.raw.chats_infotip;
                            } else if (i25 == 2 || i25 == 4) {
                                this.infoTextView.setText(LocaleController.getString(i == 2 ? R.string.ChatArchived : R.string.ChatsArchived));
                                layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                                layoutParams.topMargin = AndroidUtilities.dp(13.0f);
                                layoutParams.rightMargin = 0;
                                this.infoTextView.setTextSize(1, 15.0f);
                                this.undoButton.setVisibility(0);
                                this.infoTextView.setTypeface(Typeface.DEFAULT);
                                this.subinfoTextView.setVisibility(8);
                                this.leftImageView.setVisibility(0);
                                rLottieImageView4 = this.leftImageView;
                                i8 = R.raw.chats_archived;
                            } else if (i == 82) {
                                layoutParams.leftMargin = AndroidUtilities.dp(58.0f);
                                MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) obj;
                                this.infoTextView.setText(LocaleController.getString(photoEntry.isVideo ? R.string.AttachMediaVideoDeselected : R.string.AttachMediaPhotoDeselected));
                                this.undoButton.setVisibility(0);
                                this.infoTextView.setTextSize(1, 15.0f);
                                this.infoTextView.setTypeface(Typeface.DEFAULT);
                                this.subinfoTextView.setVisibility(8);
                                this.avatarImageView.setVisibility(0);
                                this.avatarImageView.setRoundRadius(AndroidUtilities.dp(2.0f));
                                String str3 = photoEntry.thumbPath;
                                if (str3 != null) {
                                    this.avatarImageView.setImage(str3, null, Theme.chat_attachEmptyDrawable);
                                } else if (photoEntry.path != null) {
                                    this.avatarImageView.setOrientation(photoEntry.orientation, photoEntry.invert, true);
                                    if (photoEntry.isVideo) {
                                        backupImageView = this.avatarImageView;
                                        sb = new StringBuilder();
                                        str = "vthumb://";
                                    } else {
                                        backupImageView = this.avatarImageView;
                                        sb = new StringBuilder();
                                        str = "thumb://";
                                    }
                                    sb.append(str);
                                    sb.append(photoEntry.imageId);
                                    sb.append(":");
                                    sb.append(photoEntry.path);
                                    backupImageView.setImage(sb.toString(), null, Theme.chat_attachEmptyDrawable);
                                } else {
                                    this.avatarImageView.setImageDrawable(Theme.chat_attachEmptyDrawable);
                                }
                            } else {
                                layoutParams.leftMargin = AndroidUtilities.dp(45.0f);
                                layoutParams.topMargin = AndroidUtilities.dp(13.0f);
                                layoutParams.rightMargin = 0;
                                this.infoTextView.setTextSize(1, 15.0f);
                                this.undoButton.setVisibility(0);
                                LinkSpanDrawable.LinksTextView linksTextView11 = this.infoTextView;
                                Typeface typeface = Typeface.DEFAULT;
                                linksTextView11.setTypeface(typeface);
                                this.subinfoTextView.setVisibility(8);
                                this.leftImageView.setVisibility(8);
                                int i33 = this.currentAction;
                                if (i33 == 88) {
                                    String str4 = (String) obj;
                                    int iIntValue7 = ((Integer) obj2).intValue();
                                    if (iIntValue7 > 0) {
                                        int iCeil2 = ((int) Math.ceil(this.undoTextView.getPaint().measureText(this.undoTextView.getText().toString()))) + AndroidUtilities.dp(26.0f);
                                        layoutParams.leftMargin = AndroidUtilities.dp(48.0f);
                                        layoutParams.rightMargin = iCeil2;
                                        layoutParams.topMargin = AndroidUtilities.dp(6.0f);
                                        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.subinfoTextView.getLayoutParams();
                                        layoutParams3.leftMargin = AndroidUtilities.dp(48.0f);
                                        layoutParams3.rightMargin = iCeil2;
                                        this.infoTextView.setText(LocaleController.formatString("FolderLinkDeletedTitle", R.string.FolderLinkDeletedTitle, str4));
                                        this.infoTextView.setTypeface(AndroidUtilities.bold());
                                        this.subinfoTextView.setVisibility(0);
                                        textView2 = this.subinfoTextView;
                                        string7 = LocaleController.formatPluralString("FolderLinkDeletedSubtitle", iIntValue7, new Object[0]);
                                    } else {
                                        this.infoTextView.setTypeface(typeface);
                                        LinkSpanDrawable.LinksTextView linksTextView12 = this.infoTextView;
                                        int i34 = R.string.FolderLinkDeleted;
                                        if (str4 == null) {
                                            str4 = "";
                                        }
                                        linksTextView12.setText(AndroidUtilities.replaceTags(LocaleController.formatString("FolderLinkDeleted", i34, str4.replace('*', (char) 10033))));
                                        if (this.currentAction != 81) {
                                            for (int i35 = 0; i35 < arrayList.size(); i35++) {
                                                MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
                                                long jLongValue2 = ((Long) arrayList.get(i35)).longValue();
                                                int i36 = this.currentAction;
                                                messagesController.addDialogAction(jLongValue2, i36 == 0 || i36 == 26);
                                            }
                                        }
                                    }
                                } else {
                                    if (i33 == 81 || i33 == 0 || i33 == 26) {
                                        textView2 = this.infoTextView;
                                        i9 = R.string.HistoryClearedUndo;
                                    } else if (i33 == 27) {
                                        textView2 = this.infoTextView;
                                        i9 = R.string.ChatsDeletedUndo;
                                    } else if (DialogObject.isChatDialog(jLongValue)) {
                                        TLRPC.Chat chat9 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-jLongValue));
                                        if (ChatObject.isMonoForum(chat9)) {
                                            textView2 = this.infoTextView;
                                            i9 = R.string.MonoforumDeletedUndo;
                                        } else if (!ChatObject.isChannel(chat9) || chat9.megagroup) {
                                            textView2 = this.infoTextView;
                                            i9 = R.string.GroupDeletedUndo;
                                        } else {
                                            textView2 = this.infoTextView;
                                            i9 = R.string.ChannelDeletedUndo;
                                        }
                                    } else {
                                        textView2 = this.infoTextView;
                                        i9 = R.string.ChatDeletedUndo;
                                    }
                                    string7 = LocaleController.getString(i9);
                                }
                                textView2.setText(string7);
                                if (this.currentAction != 81) {
                                }
                            }
                            rLottieImageView4.setAnimation(i8, 36, 36);
                        }
                        z = false;
                        StringBuilder sb2222 = new StringBuilder();
                        sb2222.append((Object) this.infoTextView.getText());
                        if (this.subinfoTextView.getVisibility() == 0) {
                        }
                        sb2222.append(this.subinfoTextView.getVisibility() == 0 ? ". " + ((Object) this.subinfoTextView.getText()) : "");
                        AndroidUtilities.makeAccessibilityAnnouncement(sb2222.toString());
                        if (!isMultilineSubInfo()) {
                        }
                        this.undoViewHeight = iMax;
                        if (getVisibility() != 0) {
                        }
                    }
                    this.leftImageView.setVisibility(i11);
                }
                this.leftImageView.setProgress(BitmapDescriptorFactory.HUE_RED);
                this.leftImageView.playAnimation();
                z = false;
                StringBuilder sb22222 = new StringBuilder();
                sb22222.append((Object) this.infoTextView.getText());
                if (this.subinfoTextView.getVisibility() == 0) {
                }
                sb22222.append(this.subinfoTextView.getVisibility() == 0 ? ". " + ((Object) this.subinfoTextView.getText()) : "");
                AndroidUtilities.makeAccessibilityAnnouncement(sb22222.toString());
                if (!isMultilineSubInfo()) {
                }
                this.undoViewHeight = iMax;
                if (getVisibility() != 0) {
                }
            }
        }
        this.undoButton.setVisibility(i10);
        z = false;
        StringBuilder sb222222 = new StringBuilder();
        sb222222.append((Object) this.infoTextView.getText());
        if (this.subinfoTextView.getVisibility() == 0) {
        }
        sb222222.append(this.subinfoTextView.getVisibility() == 0 ? ". " + ((Object) this.subinfoTextView.getText()) : "");
        AndroidUtilities.makeAccessibilityAnnouncement(sb222222.toString());
        if (!isMultilineSubInfo()) {
        }
        this.undoViewHeight = iMax;
        if (getVisibility() != 0) {
        }
    }
}
