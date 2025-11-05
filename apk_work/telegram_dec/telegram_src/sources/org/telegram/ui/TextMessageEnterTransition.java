package org.telegram.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.ChatListItemAnimator;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.ChatActivityEnterView;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EmptyStubSpan;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ReplyMessageLine;
import org.telegram.ui.Components.spoilers.SpoilerEffect;
import org.telegram.ui.MessageEnterTransitionContainer;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class TextMessageEnterTransition implements MessageEnterTransitionContainer.Transition {
    private AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiStack;
    private ValueAnimator animator;
    boolean changeColor;
    private ChatActivity chatActivity;
    MessageEnterTransitionContainer container;
    boolean crossfade;
    Bitmap crossfadeTextBitmap;
    float crossfadeTextOffset;
    MessageObject currentMessageObject;
    boolean drawBitmaps;
    private float drawableFromBottom;
    float drawableFromTop;
    ChatActivityEnterView enterView;
    int fromColor;
    Drawable fromMessageDrawable;
    float fromRadius;
    private float fromStartX;
    private float fromStartY;
    private Matrix gradientMatrix;
    private Paint gradientPaint;
    private LinearGradient gradientShader;
    boolean hasReply;
    float lastMessageX;
    float lastMessageY;
    StaticLayout layout;
    RecyclerListView listView;
    private int messageId;
    ChatMessageCell messageView;
    float progress;
    int replayFromColor;
    int replayObjectFromColor;
    float replyFromObjectStartY;
    float replyFromStartWidth;
    float replyFromStartX;
    float replyFromStartY;
    float replyNameDx;
    private final Theme.ResourcesProvider resourcesProvider;
    private float[] roundRectRadii;
    StaticLayout rtlLayout;
    private float scaleFrom;
    private float scaleY;
    Bitmap textLayoutBitmap;
    Bitmap textLayoutBitmapRtl;
    MessageObject.TextLayoutBlock textLayoutBlock;
    float textX;
    float textY;
    int toColor;
    float toXOffset;
    float toXOffsetRtl;
    Paint bitmapPaint = new Paint(1);
    boolean initBitmaps = false;
    private AnimationNotificationsLocker notificationsLocker = new AnimationNotificationsLocker();
    private final RectF replySelectorRect = new RectF();
    private final RectF messageReplySelectorRect = new RectF();
    private final int currentAccount = UserConfig.selectedAccount;

    /* JADX WARN: Can't wrap try/catch for region: R(39:18|(1:20)(1:21)|22|(1:24)|25|(6:27|(1:29)(1:30)|31|32|34|(1:56))|57|(1:64)(1:63)|65|(3:70|(1:72)(1:73)|74)(1:69)|75|(1:77)(1:79)|78|80|(4:83|(2:85|171)(1:172)|86|81)|170|87|(1:89)|90|(1:92)|93|(1:95)|96|(17:98|(4:100|(1:102)(1:103)|104|(1:174)(1:107))|173|110|(6:114|(3:116|(4:118|(1:120)|121|177)(2:122|176)|123)|175|124|(1:126)(1:128)|127)|129|168|130|(4:132|(1:134)|136|(4:138|(1:140)(1:142)|141|143))|146|(1:151)(1:150)|152|(1:154)|155|(1:161)|162|(1:184)(2:166|167))(1:108)|109|110|(6:114|(0)|175|124|(0)(0)|127)|129|168|130|(0)|146|(2:148|151)(0)|152|(0)|155|(3:157|159|161)|162|(2:164|184)(1:183)) */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x04e2, code lost:
    
        r24.drawBitmaps = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:116:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x03f3  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x042a  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x046e A[Catch: Exception -> 0x04af, TryCatch #0 {Exception -> 0x04af, blocks: (B:130:0x046a, B:132:0x046e, B:134:0x0492, B:136:0x04b1, B:138:0x04b5, B:140:0x04bf, B:141:0x04ca, B:143:0x04df, B:142:0x04cf), top: B:168:0x046a }] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x04f4  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x04f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TextMessageEnterTransition(final ChatMessageCell chatMessageCell, final ChatActivity chatActivity, RecyclerListView recyclerListView, final MessageEnterTransitionContainer messageEnterTransitionContainer, Theme.ResourcesProvider resourcesProvider) {
        int lineTop;
        int i;
        int i2;
        boolean z;
        StaticLayout staticLayout;
        Theme.MessageDrawable currentBackgroundDrawable;
        int measuredWidth;
        int measuredHeight;
        int i3;
        StaticLayout staticLayout2;
        Object[] spans;
        TextPaint textPaint;
        this.drawBitmaps = false;
        this.resourcesProvider = resourcesProvider;
        if (chatMessageCell.getMessageObject().textLayoutBlocks == null || chatMessageCell.getMessageObject().textLayoutBlocks.size() > 1 || chatMessageCell.getMessageObject().textLayoutBlocks.isEmpty() || chatMessageCell.getMessageObject().textLayoutBlocks.get(0).textLayout.getLineCount() > 10) {
            return;
        }
        this.messageView = chatMessageCell;
        this.listView = recyclerListView;
        this.container = messageEnterTransitionContainer;
        this.chatActivity = chatActivity;
        this.enterView = chatActivity.getChatActivityEnterView();
        final ChatActivityEnterView chatActivityEnterView = chatActivity.getChatActivityEnterView();
        if (chatActivityEnterView == null || chatActivityEnterView.getEditField() == null || chatActivityEnterView.getEditField().getLayout() == null) {
            return;
        }
        ChatActivityEnterView.RecordCircle recordCircle = chatActivityEnterView.getRecordCircle();
        this.fromRadius = recordCircle == null ? BitmapDescriptorFactory.HUE_RED : recordCircle.drawingCircleRadius;
        this.bitmapPaint.setFilterBitmap(true);
        this.currentMessageObject = chatMessageCell.getMessageObject();
        if (!chatMessageCell.getTransitionParams().wasDraw) {
            chatMessageCell.draw(new Canvas());
        }
        chatMessageCell.setEnterTransitionInProgress(true);
        Editable editText = chatActivityEnterView.getEditText();
        CharSequence charSequenceReplaceEmoji = chatMessageCell.getMessageObject().messageText;
        this.crossfade = false;
        int height = chatActivityEnterView.getEditField().getLayout().getHeight();
        TextPaint textPaint2 = Theme.chat_msgTextPaint;
        AndroidUtilities.dp(20.0f);
        if (chatMessageCell.getMessageObject().getEmojiOnlyCount() != 0) {
            boolean z2 = chatMessageCell.getMessageObject().emojiOnlyCount == chatMessageCell.getMessageObject().animatedEmojiCount;
            switch (Math.max(chatMessageCell.getMessageObject().emojiOnlyCount, chatMessageCell.getMessageObject().animatedEmojiCount)) {
                case 0:
                case 1:
                case 2:
                    TextPaint[] textPaintArr = Theme.chat_msgTextPaintEmoji;
                    if (z2) {
                        textPaint = textPaintArr[0];
                        break;
                    } else {
                        textPaint = textPaintArr[2];
                        break;
                    }
                case 3:
                    TextPaint[] textPaintArr2 = Theme.chat_msgTextPaintEmoji;
                    if (z2) {
                        textPaint = textPaintArr2[1];
                        break;
                    } else {
                        textPaint = textPaintArr2[3];
                        break;
                    }
                case 4:
                    TextPaint[] textPaintArr3 = Theme.chat_msgTextPaintEmoji;
                    if (z2) {
                        textPaint = textPaintArr3[2];
                        break;
                    } else {
                        textPaint = textPaintArr3[4];
                        break;
                    }
                case 5:
                    TextPaint[] textPaintArr4 = Theme.chat_msgTextPaintEmoji;
                    if (z2) {
                        textPaint = textPaintArr4[3];
                        break;
                    } else {
                        textPaint = textPaintArr4[5];
                        break;
                    }
                case 6:
                    TextPaint[] textPaintArr5 = Theme.chat_msgTextPaintEmoji;
                    if (z2) {
                        textPaint = textPaintArr5[4];
                        break;
                    } else {
                        textPaint = textPaintArr5[5];
                        break;
                    }
                default:
                    textPaint = Theme.chat_msgTextPaintEmoji[5];
                    break;
            }
            textPaint2 = textPaint;
            if (textPaint2 != null) {
                textPaint2.getTextSize();
                AndroidUtilities.dp(4.0f);
            }
        }
        boolean z3 = (charSequenceReplaceEmoji instanceof Spannable) && (spans = ((Spannable) charSequenceReplaceEmoji).getSpans(0, charSequenceReplaceEmoji.length(), Object.class)) != null && spans.length > 0;
        if (editText.length() != charSequenceReplaceEmoji.length() || z3) {
            this.crossfade = true;
            int[] iArr = new int[1];
            CharSequence charSequenceTrim = AndroidUtilities.trim(editText, iArr);
            if (iArr[0] > 0) {
                lineTop = chatActivityEnterView.getEditField().getLayout().getLineTop(chatActivityEnterView.getEditField().getLayout().getLineForOffset(iArr[0]));
                height = chatActivityEnterView.getEditField().getLayout().getLineBottom(chatActivityEnterView.getEditField().getLayout().getLineForOffset(iArr[0] + charSequenceTrim.length())) - lineTop;
            } else {
                lineTop = 0;
            }
            AnimatedEmojiSpan.cloneSpans(charSequenceReplaceEmoji);
            charSequenceReplaceEmoji = Emoji.replaceEmoji(editText, textPaint2.getFontMetricsInt(), false);
        } else {
            lineTop = 0;
        }
        this.scaleFrom = chatActivityEnterView.getEditField().getTextSize() / textPaint2.getTextSize();
        int lineCount = chatActivityEnterView.getEditField().getLayout().getLineCount();
        int width = (int) (chatActivityEnterView.getEditField().getLayout().getWidth() / this.scaleFrom);
        this.layout = Build.VERSION.SDK_INT >= 24 ? StaticLayout.Builder.obtain(charSequenceReplaceEmoji, 0, charSequenceReplaceEmoji.length(), textPaint2, width).setBreakStrategy(1).setHyphenationFrequency(0).setAlignment(Layout.Alignment.ALIGN_NORMAL).build() : new StaticLayout(charSequenceReplaceEmoji, textPaint2, width, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        this.animatedEmojiStack = AnimatedEmojiSpan.update(2, (View) null, this.animatedEmojiStack, this.layout);
        float y = chatActivityEnterView.getY() + chatActivityEnterView.getEditField().getY() + ((View) chatActivityEnterView.getEditField().getParent()).getY() + ((View) chatActivityEnterView.getEditField().getParent().getParent()).getY();
        this.fromStartX = chatActivityEnterView.getX() + chatActivityEnterView.getEditField().getX() + ((View) chatActivityEnterView.getEditField().getParent()).getX() + ((View) chatActivityEnterView.getEditField().getParent().getParent()).getX();
        this.fromStartY = ((AndroidUtilities.dp(10.0f) + y) - chatActivityEnterView.getEditField().getScrollY()) + lineTop;
        this.toXOffset = BitmapDescriptorFactory.HUE_RED;
        float f = Float.MAX_VALUE;
        for (int i4 = 0; i4 < this.layout.getLineCount(); i4++) {
            float lineLeft = this.layout.getLineLeft(i4);
            if (lineLeft < f) {
                f = lineLeft;
            }
        }
        if (f != Float.MAX_VALUE) {
            this.toXOffset = f;
        }
        this.scaleY = height / (this.layout.getHeight() * this.scaleFrom);
        this.drawableFromTop = AndroidUtilities.dp(4.0f) + y;
        if (this.enterView.isTopViewVisible()) {
            this.drawableFromTop -= AndroidUtilities.dp(12.0f);
        }
        this.drawableFromBottom = y + chatActivityEnterView.getEditField().getMeasuredHeight();
        MessageObject.TextLayoutBlock textLayoutBlock = chatMessageCell.getMessageObject().textLayoutBlocks.get(0);
        this.textLayoutBlock = textLayoutBlock;
        StaticLayout staticLayout3 = textLayoutBlock.textLayout;
        int i5 = Theme.key_chat_messageTextOut;
        double dCalculateLuminance = ColorUtils.calculateLuminance(getThemedColor(i5));
        int i6 = Theme.key_chat_messagePanelText;
        if (Math.abs(dCalculateLuminance - ColorUtils.calculateLuminance(getThemedColor(i6))) > 0.20000000298023224d) {
            this.crossfade = true;
            this.changeColor = true;
        }
        this.fromColor = getThemedColor(i6);
        this.toColor = getThemedColor(i5);
        if (staticLayout3.getLineCount() == this.layout.getLineCount()) {
            lineCount = staticLayout3.getLineCount();
            i = 0;
            i2 = 0;
            for (int i7 = 0; i7 < lineCount; i7++) {
                if (isRtlLine(this.layout, i7)) {
                    i++;
                } else {
                    i2++;
                }
                if (staticLayout3.getLineEnd(i7) == this.layout.getLineEnd(i7)) {
                }
            }
            if (!this.crossfade && i > 0 && i2 > 0) {
                SpannableString spannableString = new SpannableString(charSequenceReplaceEmoji);
                SpannableString spannableString2 = new SpannableString(charSequenceReplaceEmoji);
                float f2 = Float.MAX_VALUE;
                for (i3 = 0; i3 < lineCount; i3++) {
                    if (isRtlLine(this.layout, i3)) {
                        spannableString.setSpan(new EmptyStubSpan(), this.layout.getLineStart(i3), this.layout.getLineEnd(i3), 0);
                        float lineLeft2 = this.layout.getLineLeft(i3);
                        f2 = lineLeft2 < f2 ? lineLeft2 : f2;
                    } else {
                        spannableString2.setSpan(new EmptyStubSpan(), this.layout.getLineStart(i3), this.layout.getLineEnd(i3), 0);
                    }
                }
                if (Build.VERSION.SDK_INT < 24) {
                    StaticLayout.Builder hyphenationFrequency = StaticLayout.Builder.obtain(spannableString, 0, spannableString.length(), textPaint2, width).setBreakStrategy(1).setHyphenationFrequency(0);
                    Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
                    this.layout = hyphenationFrequency.setAlignment(alignment).build();
                    staticLayout2 = StaticLayout.Builder.obtain(spannableString2, 0, spannableString2.length(), textPaint2, width).setBreakStrategy(1).setHyphenationFrequency(0).setAlignment(alignment).build();
                } else {
                    Layout.Alignment alignment2 = Layout.Alignment.ALIGN_NORMAL;
                    TextPaint textPaint3 = textPaint2;
                    this.layout = new StaticLayout(spannableString, textPaint3, width, alignment2, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    staticLayout2 = new StaticLayout(spannableString2, textPaint3, width, alignment2, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                }
                this.rtlLayout = staticLayout2;
            }
            this.toXOffsetRtl = this.layout.getWidth() - chatMessageCell.getMessageObject().textLayoutBlocks.get(0).textLayout.getWidth();
            if (this.drawBitmaps) {
                int width2 = this.layout.getWidth();
                int height2 = this.layout.getHeight();
                Bitmap.Config config = Bitmap.Config.ARGB_8888;
                this.textLayoutBitmap = Bitmap.createBitmap(width2, height2, config);
                this.layout.draw(new Canvas(this.textLayoutBitmap));
                StaticLayout staticLayout4 = this.rtlLayout;
                if (staticLayout4 != null) {
                    this.textLayoutBitmapRtl = Bitmap.createBitmap(staticLayout4.getWidth(), this.rtlLayout.getHeight(), config);
                    this.rtlLayout.draw(new Canvas(this.textLayoutBitmapRtl));
                }
                if (this.crossfade) {
                    if (chatMessageCell.getMeasuredHeight() < recyclerListView.getMeasuredHeight()) {
                        this.crossfadeTextOffset = BitmapDescriptorFactory.HUE_RED;
                        measuredWidth = chatMessageCell.getMeasuredWidth();
                        measuredHeight = chatMessageCell.getMeasuredHeight();
                    } else {
                        this.crossfadeTextOffset = chatMessageCell.getTop();
                        measuredWidth = chatMessageCell.getMeasuredWidth();
                        measuredHeight = recyclerListView.getMeasuredHeight();
                    }
                    this.crossfadeTextBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, config);
                }
            }
            z = chatMessageCell.getMessageObject().getReplyMsgId() == 0 && chatMessageCell.replyNameLayout != null;
            this.hasReply = z;
            if (z) {
                SimpleTextView replyNameTextView = chatActivity.getReplyNameTextView();
                this.replyFromStartX = replyNameTextView.getX() + ((View) replyNameTextView.getParent()).getX();
                this.replyFromStartWidth = ((View) replyNameTextView.getParent()).getWidth();
                this.replyFromStartY = replyNameTextView.getY() + ((View) replyNameTextView.getParent().getParent()).getY() + ((View) replyNameTextView.getParent().getParent().getParent()).getY();
                SimpleTextView replyObjectTextView = chatActivity.getReplyObjectTextView();
                this.replyFromObjectStartY = replyObjectTextView.getY() + ((View) replyObjectTextView.getParent().getParent()).getY() + ((View) replyObjectTextView.getParent().getParent().getParent()).getY();
                this.replayFromColor = chatActivity.getReplyNameTextView().getTextColor();
                this.replayObjectFromColor = chatActivity.getReplyObjectTextView().getTextColor();
                this.drawableFromTop -= AndroidUtilities.dp(46.0f);
            }
            this.gradientMatrix = new Matrix();
            Paint paint = new Paint(1);
            this.gradientPaint = paint;
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
            LinearGradient linearGradient = new LinearGradient(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(12.0f), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0, -16777216, Shader.TileMode.CLAMP);
            this.gradientShader = linearGradient;
            this.gradientPaint.setShader(linearGradient);
            this.messageId = chatMessageCell.getMessageObject().stableId;
            chatActivityEnterView.getEditField().setAlpha(BitmapDescriptorFactory.HUE_RED);
            chatActivityEnterView.setTextTransitionIsRunning(true);
            staticLayout = chatMessageCell.replyNameLayout;
            if (staticLayout != null && staticLayout.getText().length() > 1 && chatMessageCell.replyNameLayout.getPrimaryHorizontal(0) != BitmapDescriptorFactory.HUE_RED) {
                this.replyNameDx = chatMessageCell.replyNameLayout.getWidth() - chatMessageCell.replyNameLayout.getLineWidth(0);
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.animator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.TextMessageEnterTransition$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$new$0(chatActivityEnterView, messageEnterTransitionContainer, valueAnimator);
                }
            });
            this.animator.setInterpolator(new LinearInterpolator());
            this.animator.setDuration(250L);
            messageEnterTransitionContainer.addTransition(this);
            this.notificationsLocker.lock();
            this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.TextMessageEnterTransition.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    TextMessageEnterTransition.this.notificationsLocker.unlock();
                    messageEnterTransitionContainer.removeTransition(TextMessageEnterTransition.this);
                    chatMessageCell.setEnterTransitionInProgress(false);
                    chatMessageCell.getTransitionParams().lastDrawingBackgroundRect.set(chatMessageCell.getBackgroundDrawableLeft(), chatMessageCell.getBackgroundDrawableTop(), chatMessageCell.getBackgroundDrawableRight(), chatMessageCell.getBackgroundDrawableBottom());
                    chatActivityEnterView.setTextTransitionIsRunning(false);
                    chatActivityEnterView.getEditField().setAlpha(1.0f);
                    chatActivity.getReplyNameTextView().setAlpha(1.0f);
                    chatActivity.getReplyObjectTextView().setAlpha(1.0f);
                    AnimatedEmojiSpan.release((View) null, TextMessageEnterTransition.this.animatedEmojiStack);
                }
            });
            if (SharedConfig.getDevicePerformanceClass() == 2 || (currentBackgroundDrawable = chatMessageCell.getCurrentBackgroundDrawable(true)) == null) {
            }
            this.fromMessageDrawable = currentBackgroundDrawable.getTransitionDrawable(getThemedColor(Theme.key_chat_messagePanelBackground));
            return;
        }
        i = 0;
        i2 = 0;
        this.crossfade = true;
        if (!this.crossfade) {
            SpannableString spannableString3 = new SpannableString(charSequenceReplaceEmoji);
            SpannableString spannableString22 = new SpannableString(charSequenceReplaceEmoji);
            float f22 = Float.MAX_VALUE;
            while (i3 < lineCount) {
            }
            if (Build.VERSION.SDK_INT < 24) {
            }
            this.rtlLayout = staticLayout2;
        }
        this.toXOffsetRtl = this.layout.getWidth() - chatMessageCell.getMessageObject().textLayoutBlocks.get(0).textLayout.getWidth();
        if (this.drawBitmaps) {
        }
        if (chatMessageCell.getMessageObject().getReplyMsgId() == 0) {
        }
        this.hasReply = z;
        if (z) {
        }
        this.gradientMatrix = new Matrix();
        Paint paint2 = new Paint(1);
        this.gradientPaint = paint2;
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        LinearGradient linearGradient2 = new LinearGradient(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(12.0f), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0, -16777216, Shader.TileMode.CLAMP);
        this.gradientShader = linearGradient2;
        this.gradientPaint.setShader(linearGradient2);
        this.messageId = chatMessageCell.getMessageObject().stableId;
        chatActivityEnterView.getEditField().setAlpha(BitmapDescriptorFactory.HUE_RED);
        chatActivityEnterView.setTextTransitionIsRunning(true);
        staticLayout = chatMessageCell.replyNameLayout;
        if (staticLayout != null) {
            this.replyNameDx = chatMessageCell.replyNameLayout.getWidth() - chatMessageCell.replyNameLayout.getLineWidth(0);
        }
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.animator = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.TextMessageEnterTransition$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$new$0(chatActivityEnterView, messageEnterTransitionContainer, valueAnimator);
            }
        });
        this.animator.setInterpolator(new LinearInterpolator());
        this.animator.setDuration(250L);
        messageEnterTransitionContainer.addTransition(this);
        this.notificationsLocker.lock();
        this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.TextMessageEnterTransition.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                TextMessageEnterTransition.this.notificationsLocker.unlock();
                messageEnterTransitionContainer.removeTransition(TextMessageEnterTransition.this);
                chatMessageCell.setEnterTransitionInProgress(false);
                chatMessageCell.getTransitionParams().lastDrawingBackgroundRect.set(chatMessageCell.getBackgroundDrawableLeft(), chatMessageCell.getBackgroundDrawableTop(), chatMessageCell.getBackgroundDrawableRight(), chatMessageCell.getBackgroundDrawableBottom());
                chatActivityEnterView.setTextTransitionIsRunning(false);
                chatActivityEnterView.getEditField().setAlpha(1.0f);
                chatActivity.getReplyNameTextView().setAlpha(1.0f);
                chatActivity.getReplyObjectTextView().setAlpha(1.0f);
                AnimatedEmojiSpan.release((View) null, TextMessageEnterTransition.this.animatedEmojiStack);
            }
        });
        if (SharedConfig.getDevicePerformanceClass() == 2) {
        }
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    private boolean isRtlLine(Layout layout, int i) {
        return layout.getLineRight(i) == ((float) layout.getWidth()) && layout.getLineLeft(i) != BitmapDescriptorFactory.HUE_RED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ChatActivityEnterView chatActivityEnterView, MessageEnterTransitionContainer messageEnterTransitionContainer, ValueAnimator valueAnimator) {
        this.progress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        chatActivityEnterView.getEditField().setAlpha(this.progress);
        messageEnterTransitionContainer.invalidate();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0491  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x04a3  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x04e3  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0506  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0529  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x05b4  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0636  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0657  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0671  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0694  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x069b  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x06a3  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0707  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0721  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x07b8  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0889  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x03d8  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0432  */
    @Override // org.telegram.ui.MessageEnterTransitionContainer.Transition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onDraw(Canvas canvas) {
        int i;
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        boolean z;
        int i2;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        int themedColor;
        int i3;
        int themedColor2;
        float f17;
        float f18;
        MessageObject messageObject;
        float f19;
        float f20;
        float f21;
        float f22;
        ChatMessageCell chatMessageCell;
        int color;
        ChatMessageCell chatMessageCell2;
        StaticLayout staticLayout;
        int themedColor3;
        int i4;
        float f23;
        float fDp;
        float fDp2;
        int iDp;
        Drawable drawable;
        if (this.drawBitmaps && !this.initBitmaps && this.crossfadeTextBitmap != null && this.messageView.getTransitionParams().wasDraw) {
            this.initBitmaps = true;
            Canvas canvas2 = new Canvas(this.crossfadeTextBitmap);
            canvas2.translate(BitmapDescriptorFactory.HUE_RED, this.crossfadeTextOffset);
            AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans = this.messageView.animatedEmojiStack;
            if (emojiGroupedSpans != null) {
                emojiGroupedSpans.clearPositions();
            }
            ChatMessageCell chatMessageCell3 = this.messageView;
            chatMessageCell3.drawMessageText(canvas2, chatMessageCell3.getMessageObject().textLayoutBlocks, true, 1.0f, true);
            this.messageView.drawAnimatedEmojis(canvas2, 1.0f);
        }
        float y = (this.listView.getY() - this.container.getY()) + this.listView.getMeasuredHeight();
        float x = this.fromStartX - this.container.getX();
        float y2 = this.fromStartY - this.container.getY();
        this.textX = this.messageView.getTextX();
        this.textY = this.messageView.getTextY();
        if (this.messageView.getMessageObject().stableId != this.messageId) {
            return;
        }
        float x2 = (this.messageView.getX() + this.listView.getX()) - this.container.getX();
        float top = (((this.messageView.getTop() + this.messageView.getPaddingTop()) + this.listView.getTop()) - this.container.getY()) + this.enterView.getTopViewHeight();
        this.lastMessageX = x2;
        this.lastMessageY = top;
        float interpolation = ChatListItemAnimator.DEFAULT_INTERPOLATOR.getInterpolation(this.progress);
        float f24 = this.progress;
        float f25 = f24 > 0.4f ? 1.0f : f24 / 0.4f;
        float interpolation2 = CubicBezierInterpolator.EASE_OUT.getInterpolation(CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(f24));
        float f26 = x2 + this.textX;
        float f27 = top + this.textY;
        float f28 = 1.0f - interpolation2;
        int measuredHeight = (int) ((this.container.getMeasuredHeight() * f28) + (y * interpolation2));
        boolean z2 = this.messageView.getBottom() - AndroidUtilities.dp(4.0f) > this.listView.getMeasuredHeight() && (((float) this.messageView.getMeasuredHeight()) + top) - ((float) AndroidUtilities.dp(8.0f)) > ((float) measuredHeight) && this.container.getMeasuredHeight() > 0;
        if (z2) {
            i = measuredHeight;
            f = interpolation2;
            f2 = f25;
            f3 = interpolation;
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, Math.max(BitmapDescriptorFactory.HUE_RED, top), this.container.getMeasuredWidth(), this.container.getMeasuredHeight(), 255, 31);
        } else {
            i = measuredHeight;
            f = interpolation2;
            f2 = f25;
            f3 = interpolation;
        }
        canvas.save();
        canvas.clipRect(BitmapDescriptorFactory.HUE_RED, ((this.listView.getY() + this.chatActivity.getChatListViewPadding()) - this.container.getY()) - AndroidUtilities.dp(3.0f), this.container.getMeasuredWidth(), this.container.getMeasuredHeight());
        canvas.save();
        float backgroundDrawableLeft = this.messageView.getBackgroundDrawableLeft() + x2 + ((x - (f26 - this.toXOffset)) * f28);
        float backgroundDrawableTop = this.messageView.getBackgroundDrawableTop() + top;
        float f29 = 1.0f - f3;
        float y3 = ((this.drawableFromTop - this.container.getY()) * f29) + (backgroundDrawableTop * f3);
        float y4 = ((this.drawableFromBottom - this.container.getY()) * f29) + ((backgroundDrawableTop + (this.messageView.getBackgroundDrawableBottom() - this.messageView.getBackgroundDrawableTop())) * f3);
        int backgroundDrawableRight = (int) (this.messageView.getBackgroundDrawableRight() + x2 + (AndroidUtilities.dp(4.0f) * f28));
        Theme.MessageDrawable currentBackgroundDrawable = !this.currentMessageObject.isAnimatedEmojiStickers() ? this.messageView.getCurrentBackgroundDrawable(true) : null;
        if (currentBackgroundDrawable != null) {
            this.messageView.setBackgroundTopY(this.container.getTop() - this.listView.getTop());
            Drawable shadowDrawable = currentBackgroundDrawable.getShadowDrawable();
            f7 = f2;
            if (f7 == 1.0f || (drawable = this.fromMessageDrawable) == null) {
                f4 = f3;
                f5 = x;
            } else {
                f5 = x;
                f4 = f3;
                drawable.setBounds((int) backgroundDrawableLeft, (int) y3, backgroundDrawableRight, (int) y4);
                this.fromMessageDrawable.draw(canvas);
            }
            f6 = f;
            if (shadowDrawable != null) {
                shadowDrawable.setAlpha((int) (f6 * 255.0f));
                shadowDrawable.setBounds((int) backgroundDrawableLeft, (int) y3, backgroundDrawableRight, (int) y4);
                shadowDrawable.draw(canvas);
                shadowDrawable.setAlpha(255);
            }
            currentBackgroundDrawable.setAlpha((int) (f7 * 255.0f));
            currentBackgroundDrawable.setBounds((int) backgroundDrawableLeft, (int) y3, backgroundDrawableRight, (int) y4);
            currentBackgroundDrawable.setDrawFullBubble(true);
            currentBackgroundDrawable.draw(canvas);
            z = false;
            currentBackgroundDrawable.setDrawFullBubble(false);
            currentBackgroundDrawable.setAlpha(255);
        } else {
            f4 = f3;
            f5 = x;
            f6 = f;
            f7 = f2;
            z = false;
        }
        canvas.restore();
        canvas.save();
        if (currentBackgroundDrawable != null) {
            if (this.currentMessageObject.isOutOwner()) {
                fDp = AndroidUtilities.dp(4.0f) + backgroundDrawableLeft;
                fDp2 = AndroidUtilities.dp(4.0f) + y3;
                iDp = AndroidUtilities.dp(10.0f);
            } else {
                fDp = AndroidUtilities.dp(4.0f) + backgroundDrawableLeft;
                fDp2 = AndroidUtilities.dp(4.0f) + y3;
                iDp = AndroidUtilities.dp(4.0f);
            }
            canvas.clipRect(fDp, fDp2, backgroundDrawableRight - iDp, y4 - AndroidUtilities.dp(4.0f));
        }
        float f30 = top + ((y2 - f27) * f29);
        canvas.translate((this.messageView.getLeft() + this.listView.getX()) - this.container.getX(), f30);
        this.messageView.drawTime(canvas, f7, z);
        this.messageView.drawNamesLayout(canvas, f7);
        this.messageView.drawCommentButton(canvas, f7);
        this.messageView.drawCaptionLayout(canvas, z, f7);
        this.messageView.drawReactionsLayout(canvas, f7, null);
        this.messageView.drawCommentLayout(canvas, f7);
        this.messageView.drawLinkPreview(canvas, f7);
        canvas.restore();
        if (this.hasReply) {
            this.chatActivity.getReplyNameTextView().setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.chatActivity.getReplyObjectTextView().setAlpha(BitmapDescriptorFactory.HUE_RED);
            AndroidUtilities.lerp(AndroidUtilities.dp(35.0f), this.messageView.replyHeight, f6);
            int iDp2 = AndroidUtilities.dp(10.0f);
            float x3 = this.replyFromStartX - this.container.getX();
            float y5 = this.replyFromStartY - this.container.getY();
            ChatMessageCell chatMessageCell4 = this.messageView;
            float f31 = chatMessageCell4.replyStartX + x2;
            i2 = backgroundDrawableRight;
            float f32 = top + chatMessageCell4.replyStartY;
            if (chatMessageCell4.replyLine == null) {
                chatMessageCell4.replyLine = new ReplyMessageLine(chatMessageCell4);
            }
            ChatMessageCell chatMessageCell5 = this.messageView;
            chatMessageCell5.replyLine.check(chatMessageCell5.getMessageObject(), this.messageView.getCurrentUser(), this.messageView.getCurrentChat(), this.resourcesProvider, 0);
            if (this.currentMessageObject.shouldDrawWithoutBackground()) {
                themedColor = getThemedColor(Theme.key_chat_stickerReplyNameText);
                i3 = Theme.key_chat_stickerReplyLine;
            } else {
                ReplyMessageLine replyMessageLine = this.messageView.replyLine;
                if (replyMessageLine != null) {
                    themedColor = replyMessageLine.nameColorAnimated.get();
                    this.messageView.replyLine.getColor();
                    if (!this.currentMessageObject.shouldDrawWithoutBackground()) {
                        f8 = y4;
                        f9 = y3;
                        ReplyMessageLine replyMessageLine2 = this.messageView.replyLine;
                        if (replyMessageLine2 != null) {
                            themedColor2 = replyMessageLine2.nameColorAnimated.get();
                        } else if (this.currentMessageObject.hasValidReplyMessageObject()) {
                            MessageObject messageObject2 = this.currentMessageObject.replyMessageObject;
                            if (messageObject2.type == 0 || !TextUtils.isEmpty(messageObject2.caption)) {
                                TLRPC.MessageMedia messageMedia = this.currentMessageObject.replyMessageObject.messageOwner.media;
                                int i5 = ((messageMedia instanceof TLRPC.TL_messageMediaGame) || (messageMedia instanceof TLRPC.TL_messageMediaInvoice)) ? Theme.key_chat_outReplyMediaMessageText : Theme.key_chat_outReplyMessageText;
                                themedColor2 = getThemedColor(i5);
                            }
                        }
                    } else if (!this.currentMessageObject.isOutOwner()) {
                        f8 = y4;
                        f9 = y3;
                        if (!this.currentMessageObject.isReplyToStory()) {
                            themedColor3 = getThemedColor(Theme.key_chat_inReplyMessageText);
                            MessageObject messageObject3 = this.currentMessageObject;
                            if (!messageObject3.forceAvatar) {
                                if (messageObject3.hasValidReplyMessageObject()) {
                                    MessageObject messageObject4 = this.currentMessageObject.replyMessageObject;
                                    if ((messageObject4.type != 0 && TextUtils.isEmpty(messageObject4.caption)) || (MessageObject.getMedia(this.currentMessageObject.replyMessageObject.messageOwner) instanceof TLRPC.TL_messageMediaGame) || (MessageObject.getMedia(this.currentMessageObject.replyMessageObject.messageOwner) instanceof TLRPC.TL_messageMediaInvoice)) {
                                        if (!this.messageView.isReplyQuote) {
                                            i4 = Theme.key_chat_inReplyMediaMessageText;
                                            themedColor3 = getThemedColor(i4);
                                            f23 = 0.6f;
                                            themedColor2 = ColorUtils.blendARGB(themedColor3, Theme.adaptHue(themedColor3, themedColor), f23);
                                        }
                                    }
                                }
                            }
                            f23 = BitmapDescriptorFactory.HUE_RED;
                            themedColor2 = ColorUtils.blendARGB(themedColor3, Theme.adaptHue(themedColor3, themedColor), f23);
                        }
                        themedColor2 = themedColor;
                    } else if (this.currentMessageObject.isReplyToStory()) {
                        f8 = y4;
                        f9 = y3;
                        themedColor2 = themedColor;
                    } else {
                        themedColor3 = getThemedColor(Theme.key_chat_outReplyMessageText);
                        f8 = y4;
                        MessageObject messageObject5 = this.currentMessageObject;
                        f9 = y3;
                        if (!messageObject5.forceAvatar) {
                            if (messageObject5.hasValidReplyMessageObject()) {
                                MessageObject messageObject6 = this.currentMessageObject.replyMessageObject;
                                if ((messageObject6.type != 0 && TextUtils.isEmpty(messageObject6.caption)) || (MessageObject.getMedia(this.currentMessageObject.replyMessageObject.messageOwner) instanceof TLRPC.TL_messageMediaGame) || (MessageObject.getMedia(this.currentMessageObject.replyMessageObject.messageOwner) instanceof TLRPC.TL_messageMediaInvoice)) {
                                    if (!this.messageView.isReplyQuote) {
                                        i4 = Theme.key_chat_outReplyMediaMessageText;
                                        themedColor3 = getThemedColor(i4);
                                        f23 = 0.6f;
                                        themedColor2 = ColorUtils.blendARGB(themedColor3, Theme.adaptHue(themedColor3, themedColor), f23);
                                    }
                                }
                            }
                        }
                        f23 = BitmapDescriptorFactory.HUE_RED;
                        themedColor2 = ColorUtils.blendARGB(themedColor3, Theme.adaptHue(themedColor3, themedColor), f23);
                    }
                    f10 = backgroundDrawableLeft;
                    float f33 = f4;
                    Theme.chat_replyTextPaint.setColor(ColorUtils.blendARGB(this.replayObjectFromColor, themedColor2, f33));
                    Theme.chat_replyNamePaint.setColor(ColorUtils.blendARGB(this.replayFromColor, themedColor, f33));
                    if (this.messageView.needReplyImage) {
                        x3 -= AndroidUtilities.dp(44.0f);
                    }
                    float f34 = x3;
                    float fLerp = AndroidUtilities.lerp(f34, f31, f6);
                    float fLerp2 = AndroidUtilities.lerp((AndroidUtilities.dp(12.0f) * f33) + y5, f32, f33);
                    if (this.roundRectRadii == null) {
                        this.roundRectRadii = new float[]{fDp, fDp, 0.0f, 0.0f, 0.0f, 0.0f, fDp, fDp};
                        float fDp3 = AndroidUtilities.dp(4.0f);
                        float[] fArr = this.roundRectRadii;
                        fArr[5] = 0.0f;
                        fArr[4] = 0.0f;
                        fArr[3] = 0.0f;
                        fArr[2] = 0.0f;
                    }
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(f34, y5, this.replyFromStartWidth + f34, AndroidUtilities.dp(35.0f) + y5);
                    rectF.offset(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(12.0f) * f33);
                    this.messageReplySelectorRect.set(this.messageView.replySelectorRect);
                    this.messageReplySelectorRect.offset(x2, f30);
                    AndroidUtilities.lerp(rectF, this.messageReplySelectorRect, f6, this.replySelectorRect);
                    ChatMessageCell chatMessageCell6 = this.messageView;
                    chatMessageCell6.replyLine.drawBackground(canvas, this.replySelectorRect, f7, chatMessageCell6.isReplyQuote, chatMessageCell6.getMessageObject().shouldDrawWithoutBackground());
                    this.messageView.replyLine.drawLine(canvas, this.replySelectorRect, f7);
                    if (this.messageView.needReplyImage) {
                        f17 = BitmapDescriptorFactory.HUE_RED;
                    } else {
                        canvas.save();
                        float fLerp3 = AndroidUtilities.lerp(AndroidUtilities.dp(35.0f), Math.min(this.replySelectorRect.height() - AndroidUtilities.dp(10.0f), AndroidUtilities.dp(this.messageView.isReplyQuote ? 3.0f : 7.0f) + Theme.chat_replyNamePaint.getTextSize() + Theme.chat_replyTextPaint.getTextSize()), f6);
                        ImageReceiver imageReceiver = this.messageView.replyImageReceiver;
                        float fLerp4 = AndroidUtilities.lerp(fLerp, this.replySelectorRect.left + AndroidUtilities.dp(8.0f), f6);
                        float f35 = this.replySelectorRect.top;
                        ChatMessageCell chatMessageCell7 = this.messageView;
                        imageReceiver.setImageCoords(fLerp4, AndroidUtilities.lerp(fLerp2, f35 + AndroidUtilities.dp(((!chatMessageCell7.isReplyQuote || (staticLayout = chatMessageCell7.replyTextLayout) == null || staticLayout.getLineCount() > 1) ? 0 : 2) + 5), f6), fLerp3, fLerp3);
                        this.messageView.replyImageReceiver.draw(canvas);
                        canvas.restore();
                        f17 = fLerp3;
                    }
                    canvas.save();
                    f18 = iDp2 * f6;
                    canvas.translate(f18, BitmapDescriptorFactory.HUE_RED);
                    messageObject = this.currentMessageObject;
                    if (messageObject == null && messageObject.shouldDrawWithoutBackground()) {
                        f20 = -AndroidUtilities.dp(6.0f);
                        f19 = 1.0f;
                    } else {
                        f19 = 1.0f;
                        f20 = -AndroidUtilities.dp(1.0f);
                    }
                    MessageObject messageObject7 = this.currentMessageObject;
                    float fDp4 = (messageObject7 == null && messageObject7.shouldDrawWithoutBackground()) ? AndroidUtilities.dp(f19) : AndroidUtilities.dp(3.0f);
                    float f36 = this.messageView.replyTextOffset;
                    float f37 = (f31 - f36) + f20;
                    float f38 = (f31 - this.replyNameDx) + f20;
                    AndroidUtilities.lerp(f34 - f36, f37, f6);
                    float fLerp5 = AndroidUtilities.lerp(f34, f38, f6) + (!this.messageView.needReplyImage ? AndroidUtilities.dp(3.0f) + f17 : BitmapDescriptorFactory.HUE_RED);
                    if (this.messageView.replyNameLayout == null) {
                        canvas.save();
                        canvas.translate(fLerp5, (fDp4 * f6) + fLerp2);
                        int alpha = Theme.chat_replyNamePaint.getAlpha();
                        Theme.chat_replyNamePaint.setAlpha((int) (alpha * f6));
                        this.messageView.replyNameLayout.draw(canvas);
                        Theme.chat_replyNamePaint.setAlpha(alpha);
                        SimpleTextView replyNameTextView = this.chatActivity.getReplyNameTextView();
                        f21 = f37;
                        f22 = f33;
                        canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, replyNameTextView.getWidth(), replyNameTextView.getHeight(), (int) (f28 * 255.0f), 31);
                        replyNameTextView.setAlpha(1.0f);
                        replyNameTextView.draw(canvas);
                        replyNameTextView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        canvas.restore();
                        canvas.restore();
                    } else {
                        f21 = f37;
                        f22 = f33;
                    }
                    chatMessageCell = this.messageView;
                    if (chatMessageCell.isReplyQuote && chatMessageCell.replyQuoteDrawable != null) {
                        color = chatMessageCell.replyLine.getColor();
                        chatMessageCell2 = this.messageView;
                        if (color != chatMessageCell2.replyQuoteDrawableColor) {
                            Drawable drawable2 = chatMessageCell2.replyQuoteDrawable;
                            ChatMessageCell chatMessageCell8 = this.messageView;
                            int color2 = chatMessageCell8.replyLine.getColor();
                            chatMessageCell8.replyQuoteDrawableColor = color2;
                            drawable2.setColorFilter(new PorterDuffColorFilter(color2, PorterDuff.Mode.SRC_IN));
                        }
                        ChatMessageCell chatMessageCell9 = this.messageView;
                        chatMessageCell9.replyQuoteDrawable.setBounds((int) (((this.replySelectorRect.right - f18) - AndroidUtilities.dp((!chatMessageCell9.drawPinnedTop ? 1 : 0) + 2)) - this.messageView.replyQuoteDrawable.getIntrinsicWidth()), (int) (this.replySelectorRect.top + AndroidUtilities.dp((!this.messageView.drawPinnedTop ? 1 : 0) + 2)), (int) ((this.replySelectorRect.right - f18) - AndroidUtilities.dp((!this.messageView.drawPinnedTop ? 1 : 0) + 2)), (int) (this.replySelectorRect.top + AndroidUtilities.dp((1 ^ (this.messageView.drawPinnedTop ? 1 : 0)) + 2) + this.messageView.replyQuoteDrawable.getIntrinsicHeight()));
                        this.messageView.replyQuoteDrawable.setAlpha((int) (f6 * 255.0f));
                        this.messageView.replyQuoteDrawable.draw(canvas);
                    }
                    if (this.messageView.replyTextLayout == null) {
                        canvas.save();
                        ChatMessageCell chatMessageCell10 = this.messageView;
                        float fDp5 = (chatMessageCell10.isReplyQuote && chatMessageCell10.needReplyImage) ? f21 - AndroidUtilities.dp(2.0f) : f21;
                        ChatMessageCell chatMessageCell11 = this.messageView;
                        if (chatMessageCell11.needReplyImage && (!chatMessageCell11.isReplyQuote || chatMessageCell11.replyTextRTL)) {
                            fDp5 += f17 + AndroidUtilities.dp(3.0f);
                        }
                        ChatMessageCell chatMessageCell12 = this.messageView;
                        if (chatMessageCell12.replyTextRTL && chatMessageCell12.replyTextOffset > 0) {
                            fDp5 = ((this.replySelectorRect.right - AndroidUtilities.dp(8.0f)) - this.messageView.replyTextLayout.getWidth()) - f18;
                        }
                        canvas.translate(AndroidUtilities.lerp(f34 - this.messageView.replyTextOffset, fDp5, f6), fLerp2 + AndroidUtilities.lerp(AndroidUtilities.dp(19.0f), Theme.chat_replyNamePaint.getTextSize() + AndroidUtilities.dp(4.0f) + fDp4, f6));
                        canvas.save();
                        SpoilerEffect.clipOutCanvas(canvas, this.messageView.replySpoilers);
                        ChatMessageCell chatMessageCell13 = this.messageView;
                        f12 = f22;
                        f11 = f30;
                        AnimatedEmojiSpan.drawAnimatedEmojis(canvas, chatMessageCell13.replyTextLayout, chatMessageCell13.animatedEmojiReplyStack, BitmapDescriptorFactory.HUE_RED, chatMessageCell13.replySpoilers, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
                        this.messageView.replyTextLayout.draw(canvas);
                        canvas.restore();
                        for (SpoilerEffect spoilerEffect : this.messageView.replySpoilers) {
                            if (spoilerEffect.shouldInvalidateColor()) {
                                spoilerEffect.setColor(this.messageView.replyTextLayout.getPaint().getColor());
                            }
                            spoilerEffect.draw(canvas);
                        }
                        canvas.restore();
                    } else {
                        f12 = f22;
                        f11 = f30;
                    }
                    canvas.restore();
                } else if (this.currentMessageObject.isOutOwner()) {
                    themedColor = getThemedColor(Theme.key_chat_outReplyNameText);
                    i3 = Theme.key_chat_outReplyLine;
                } else {
                    themedColor = getThemedColor(Theme.key_chat_inReplyNameText);
                    i3 = Theme.key_chat_inReplyLine;
                }
            }
            getThemedColor(i3);
            if (!this.currentMessageObject.shouldDrawWithoutBackground()) {
            }
            f10 = backgroundDrawableLeft;
            float f332 = f4;
            Theme.chat_replyTextPaint.setColor(ColorUtils.blendARGB(this.replayObjectFromColor, themedColor2, f332));
            Theme.chat_replyNamePaint.setColor(ColorUtils.blendARGB(this.replayFromColor, themedColor, f332));
            if (this.messageView.needReplyImage) {
            }
            float f342 = x3;
            float fLerp6 = AndroidUtilities.lerp(f342, f31, f6);
            float fLerp22 = AndroidUtilities.lerp((AndroidUtilities.dp(12.0f) * f332) + y5, f32, f332);
            if (this.roundRectRadii == null) {
            }
            RectF rectF2 = AndroidUtilities.rectTmp;
            rectF2.set(f342, y5, this.replyFromStartWidth + f342, AndroidUtilities.dp(35.0f) + y5);
            rectF2.offset(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(12.0f) * f332);
            this.messageReplySelectorRect.set(this.messageView.replySelectorRect);
            this.messageReplySelectorRect.offset(x2, f30);
            AndroidUtilities.lerp(rectF2, this.messageReplySelectorRect, f6, this.replySelectorRect);
            ChatMessageCell chatMessageCell62 = this.messageView;
            chatMessageCell62.replyLine.drawBackground(canvas, this.replySelectorRect, f7, chatMessageCell62.isReplyQuote, chatMessageCell62.getMessageObject().shouldDrawWithoutBackground());
            this.messageView.replyLine.drawLine(canvas, this.replySelectorRect, f7);
            if (this.messageView.needReplyImage) {
            }
            canvas.save();
            f18 = iDp2 * f6;
            canvas.translate(f18, BitmapDescriptorFactory.HUE_RED);
            messageObject = this.currentMessageObject;
            if (messageObject == null) {
                f19 = 1.0f;
                f20 = -AndroidUtilities.dp(1.0f);
                MessageObject messageObject72 = this.currentMessageObject;
                if (messageObject72 == null) {
                    float fDp42 = (messageObject72 == null && messageObject72.shouldDrawWithoutBackground()) ? AndroidUtilities.dp(f19) : AndroidUtilities.dp(3.0f);
                    float f362 = this.messageView.replyTextOffset;
                    float f372 = (f31 - f362) + f20;
                    float f382 = (f31 - this.replyNameDx) + f20;
                    AndroidUtilities.lerp(f342 - f362, f372, f6);
                    float fLerp52 = AndroidUtilities.lerp(f342, f382, f6) + (!this.messageView.needReplyImage ? AndroidUtilities.dp(3.0f) + f17 : BitmapDescriptorFactory.HUE_RED);
                    if (this.messageView.replyNameLayout == null) {
                    }
                    chatMessageCell = this.messageView;
                    if (chatMessageCell.isReplyQuote) {
                        color = chatMessageCell.replyLine.getColor();
                        chatMessageCell2 = this.messageView;
                        if (color != chatMessageCell2.replyQuoteDrawableColor) {
                        }
                        ChatMessageCell chatMessageCell92 = this.messageView;
                        chatMessageCell92.replyQuoteDrawable.setBounds((int) (((this.replySelectorRect.right - f18) - AndroidUtilities.dp((!chatMessageCell92.drawPinnedTop ? 1 : 0) + 2)) - this.messageView.replyQuoteDrawable.getIntrinsicWidth()), (int) (this.replySelectorRect.top + AndroidUtilities.dp((!this.messageView.drawPinnedTop ? 1 : 0) + 2)), (int) ((this.replySelectorRect.right - f18) - AndroidUtilities.dp((!this.messageView.drawPinnedTop ? 1 : 0) + 2)), (int) (this.replySelectorRect.top + AndroidUtilities.dp((1 ^ (this.messageView.drawPinnedTop ? 1 : 0)) + 2) + this.messageView.replyQuoteDrawable.getIntrinsicHeight()));
                        this.messageView.replyQuoteDrawable.setAlpha((int) (f6 * 255.0f));
                        this.messageView.replyQuoteDrawable.draw(canvas);
                    }
                    if (this.messageView.replyTextLayout == null) {
                    }
                    canvas.restore();
                }
            }
        } else {
            i2 = backgroundDrawableRight;
            f8 = y4;
            f9 = y3;
            f10 = backgroundDrawableLeft;
            f11 = f30;
            f12 = f4;
        }
        canvas.save();
        if (this.messageView.getMessageObject() == null || this.messageView.getMessageObject().type != 19) {
            canvas.clipRect(f10 + AndroidUtilities.dp(4.0f), f9 + AndroidUtilities.dp(4.0f), i2 - AndroidUtilities.dp(4.0f), f8 - AndroidUtilities.dp(4.0f));
        }
        float f39 = f6 + (this.scaleFrom * f28);
        float f40 = this.drawBitmaps ? (this.scaleY * f28) + f6 : 1.0f;
        canvas.save();
        float f41 = f5 * f28;
        float f42 = y2 * f29;
        canvas.translate(f41 + ((f26 - this.toXOffset) * f6), ((f27 + this.textLayoutBlock.textYOffset(this.messageView.getMessageObject().textLayoutBlocks, this.messageView.transitionParams)) * f12) + f42);
        float f43 = f39 * f40;
        canvas.scale(f39, f43, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        if (this.drawBitmaps) {
            if (this.crossfade) {
                this.bitmapPaint.setAlpha((int) ((1.0f - f7) * 255.0f));
            }
            canvas.drawBitmap(this.textLayoutBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.bitmapPaint);
            f13 = f43;
            f14 = f11;
            f15 = f39;
        } else {
            boolean z3 = this.crossfade;
            if (z3 && this.changeColor) {
                int color3 = this.layout.getPaint().getColor();
                this.layout.getPaint().setColor(ColorUtils.blendARGB(this.fromColor, this.toColor, f7));
                float f44 = 1.0f - f7;
                canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.layout.getWidth(), this.layout.getHeight(), (int) (f44 * 255.0f), 31);
                this.layout.draw(canvas);
                f13 = f43;
                f14 = f11;
                f15 = f39;
                AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.layout, this.animatedEmojiStack, BitmapDescriptorFactory.HUE_RED, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f44);
                this.layout.getPaint().setColor(color3);
            } else {
                f13 = f43;
                f14 = f11;
                f15 = f39;
                if (z3) {
                    float f45 = 1.0f - f7;
                    canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.layout.getWidth(), this.layout.getHeight(), (int) (f45 * 255.0f), 31);
                    this.layout.draw(canvas);
                    AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.layout, this.animatedEmojiStack, BitmapDescriptorFactory.HUE_RED, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f45);
                } else {
                    this.layout.draw(canvas);
                    AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.layout, this.animatedEmojiStack, BitmapDescriptorFactory.HUE_RED, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
                }
            }
            canvas.restore();
        }
        canvas.restore();
        if (this.rtlLayout != null) {
            canvas.save();
            canvas.translate(f41 + ((f26 - this.toXOffsetRtl) * f6), f42 + ((f27 + this.textLayoutBlock.textYOffset(this.messageView.getMessageObject().textLayoutBlocks, this.messageView.transitionParams)) * f12));
            f16 = f13;
            canvas.scale(f15, f16, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            if (this.drawBitmaps) {
                if (this.crossfade) {
                    this.bitmapPaint.setAlpha((int) ((1.0f - f7) * 255.0f));
                }
                canvas.drawBitmap(this.textLayoutBitmapRtl, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.bitmapPaint);
            } else {
                boolean z4 = this.crossfade;
                if (z4 && this.changeColor) {
                    int color4 = this.rtlLayout.getPaint().getColor();
                    this.rtlLayout.getPaint().setColor(ColorUtils.setAlphaComponent(ColorUtils.blendARGB(this.fromColor, this.toColor, f7), (int) (Color.alpha(color4) * (1.0f - f7))));
                    this.rtlLayout.draw(canvas);
                    this.rtlLayout.getPaint().setColor(color4);
                } else if (z4) {
                    int alpha2 = this.rtlLayout.getPaint().getAlpha();
                    this.rtlLayout.getPaint().setAlpha((int) (alpha2 * (1.0f - f7)));
                    this.rtlLayout.draw(canvas);
                    this.rtlLayout.getPaint().setAlpha(alpha2);
                } else {
                    this.rtlLayout.draw(canvas);
                }
            }
            canvas.restore();
        } else {
            f16 = f13;
        }
        if (this.crossfade) {
            canvas.save();
            canvas.translate(((this.messageView.getLeft() + this.listView.getX()) - this.container.getX()) + ((f5 - f26) * f28), f14);
            canvas.scale(f15, f16, this.messageView.getTextX(), this.messageView.getTextY());
            canvas.translate(BitmapDescriptorFactory.HUE_RED, -this.crossfadeTextOffset);
            if (this.crossfadeTextBitmap != null) {
                this.bitmapPaint.setAlpha((int) (f7 * 255.0f));
                canvas.drawBitmap(this.crossfadeTextBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.bitmapPaint);
            } else {
                int color5 = Theme.chat_msgTextPaint.getColor();
                Theme.chat_msgTextPaint.setColor(this.toColor);
                ChatMessageCell chatMessageCell14 = this.messageView;
                chatMessageCell14.drawMessageText(canvas, chatMessageCell14.getMessageObject().textLayoutBlocks, true, f7, true);
                this.messageView.drawAnimatedEmojis(canvas, f7);
                if (Theme.chat_msgTextPaint.getColor() != color5) {
                    Theme.chat_msgTextPaint.setColor(color5);
                }
            }
            canvas.restore();
        }
        canvas.restore();
        if (z2) {
            float f46 = i;
            this.gradientMatrix.setTranslate(BitmapDescriptorFactory.HUE_RED, f46);
            this.gradientShader.setLocalMatrix(this.gradientMatrix);
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f46, this.container.getMeasuredWidth(), this.container.getMeasuredHeight(), this.gradientPaint);
            canvas.restore();
        }
        float f47 = this.progress;
        float f48 = f47 > 0.4f ? 1.0f : f47 / 0.4f;
        if (f48 == 1.0f) {
            this.enterView.setTextTransitionIsRunning(false);
        }
        if (this.enterView.getSendButton().getVisibility() != 0 || f48 >= 1.0f) {
            return;
        }
        canvas.save();
        canvas.translate(((((this.enterView.getX() + this.enterView.getSendButton().getX()) + ((View) this.enterView.getSendButton().getParent()).getX()) + ((View) this.enterView.getSendButton().getParent().getParent()).getX()) - this.container.getX()) + (AndroidUtilities.dp(52.0f) * f48), (((this.enterView.getY() + this.enterView.getSendButton().getY()) + ((View) this.enterView.getSendButton().getParent()).getY()) + ((View) this.enterView.getSendButton().getParent().getParent()).getY()) - this.container.getY());
        this.enterView.getSendButton().draw(canvas);
        canvas.restore();
        canvas.restore();
    }

    public void start() {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }
}
