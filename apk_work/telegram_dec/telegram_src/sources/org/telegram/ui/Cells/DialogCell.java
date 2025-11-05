package org.telegram.ui.Cells;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.ReplacementSpan;
import android.text.style.StyleSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.collection.LongSparseArray;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import j$.util.Comparator$CC;
import j$.util.function.ToIntFunction;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Stack;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ChatThemeController;
import org.telegram.messenger.CodeHighlighting;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.R;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account$RequirementToContact;
import org.telegram.tgnet.tl.TL_stories$StoryItem;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Adapters.DialogsAdapter;
import org.telegram.ui.AvatarSpan;
import org.telegram.ui.Cells.DialogCell;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BubbleCounterPath;
import org.telegram.ui.Components.ButtonBounce;
import org.telegram.ui.Components.CanvasButton;
import org.telegram.ui.Components.CheckBox2;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.DialogCellTags;
import org.telegram.ui.Components.EmptyStubSpan;
import org.telegram.ui.Components.ForegroundColorSpanThemable;
import org.telegram.ui.Components.Forum.ForumBubbleDrawable;
import org.telegram.ui.Components.Forum.ForumUtilities;
import org.telegram.ui.Components.PhotoBubbleClip;
import org.telegram.ui.Components.Premium.PremiumGradient;
import org.telegram.ui.Components.PullForegroundDrawable;
import org.telegram.ui.Components.QuoteSpan;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.ui.Components.ScamDrawable;
import org.telegram.ui.Components.StaticLayoutEx;
import org.telegram.ui.Components.StatusDrawable;
import org.telegram.ui.Components.Text;
import org.telegram.ui.Components.TimerDrawable;
import org.telegram.ui.Components.TypefaceSpan;
import org.telegram.ui.Components.URLSpanNoUnderline;
import org.telegram.ui.Components.URLSpanNoUnderlineBold;
import org.telegram.ui.Components.VectorAvatarThumbDrawable;
import org.telegram.ui.Components.spoilers.SpoilerEffect;
import org.telegram.ui.DialogsActivity;
import org.telegram.ui.FilterCreateActivity;
import org.telegram.ui.RightSlidingDialogContainer;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.Stories.StoriesListPlaceProvider;
import org.telegram.ui.Stories.StoriesUtilities;
import org.telegram.ui.Stories.StoryViewer;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class DialogCell extends BaseCell implements StoriesListPlaceProvider.AvatarOverlaysView {
    private int[] adaptiveEmojiColor;
    private ColorFilter[] adaptiveEmojiColorFilter;
    public int addForumHeightForTags;
    public int addHeightForTags;
    private boolean allowBotOpenButton;
    private int animateFromStatusDrawableParams;
    private int animateToStatusDrawableParams;
    private AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiStack;
    private AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiStack2;
    private AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiStack3;
    private AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiStackName;
    private boolean animatingArchiveAvatar;
    private float animatingArchiveAvatarProgress;
    private boolean applyName;
    private float archiveBackgroundProgress;
    private boolean archiveHidden;
    protected PullForegroundDrawable archivedChatsDrawable;
    private boolean attachedToWindow;
    private AvatarDrawable avatarDrawable;
    public ImageReceiver avatarImage;
    public int avatarStart;
    private final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable botVerification;
    private int bottomClip;
    private PhotoBubbleClip bubbleClip;
    private Paint buttonBackgroundPaint;
    private boolean buttonCreated;
    private StaticLayout buttonLayout;
    private int buttonLeft;
    private int buttonTop;
    CanvasButton canvasButton;
    private TLRPC.Chat chat;
    private float chatCallProgress;
    protected CheckBox2 checkBox;
    private int checkDrawLeft;
    private int checkDrawLeft1;
    private int checkDrawTop;
    public float chekBoxPaddingTop;
    private boolean clearingDialog;
    private float clipProgress;
    private int clockDrawLeft;
    public float collapseOffset;
    public boolean collapsed;
    private float cornerProgress;
    private StaticLayout countAnimationInLayout;
    private boolean countAnimationIncrement;
    private StaticLayout countAnimationStableLayout;
    private ValueAnimator countAnimator;
    private float countChangeProgress;
    private StaticLayout countLayout;
    private int countLeft;
    private int countLeftOld;
    private StaticLayout countOldLayout;
    private int countTop;
    private int countWidth;
    private int countWidthOld;
    private Paint counterPaintOutline;
    private Path counterPath;
    private RectF counterPathRect;
    private int currentAccount;
    private int currentDialogFolderDialogsCount;
    private int currentDialogFolderId;
    private long currentDialogId;
    private int currentEditDate;
    private TextPaint currentMessagePaint;
    private float currentRevealBounceProgress;
    private float currentRevealProgress;
    private CustomDialog customDialog;
    private String customMessage;
    DialogCellDelegate delegate;
    private boolean dialogMuted;
    private float dialogMutedProgress;
    private int dialogsType;
    private TLRPC.DraftMessage draftMessage;
    private boolean draftVoice;
    public boolean drawArchive;
    public boolean drawAvatar;
    public boolean drawAvatarSelector;
    private boolean drawBotVerified;
    private boolean drawCheck1;
    private boolean drawCheck2;
    private boolean drawClock;
    private boolean drawCount;
    private boolean drawCount2;
    private boolean drawError;
    private boolean drawForwardIcon;
    private boolean drawGiftIcon;
    private boolean drawMention;
    public boolean drawMonoforumAvatar;
    private boolean drawNameLock;
    private boolean drawPin;
    private boolean drawPinBackground;
    private boolean drawPinForced;
    private boolean[] drawPlay;
    private boolean drawPremium;
    private boolean drawReactionMention;
    private boolean drawReorder;
    private boolean drawRevealBackground;
    private int drawScam;
    private boolean[] drawSpoiler;
    private boolean drawUnmute;
    private boolean drawVerified;
    public boolean drawingForBlur;
    private final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable emojiStatus;
    private TLRPC.EncryptedChat encryptedChat;
    private int errorLeft;
    private int errorTop;
    private Paint fadePaint;
    private Paint fadePaintBack;
    private int folderId;
    protected boolean forbidDraft;
    protected boolean forbidVerified;
    private ForumFormattedNames forumFormattedNames;
    public TLRPC.TL_forumTopic forumTopic;
    public boolean fullSeparator;
    public boolean fullSeparator2;
    private ArrayList groupMessages;
    private int halfCheckDrawLeft;
    private boolean hasCall;
    private boolean hasNameInMessage;
    private boolean hasUnmutedTopics;
    private boolean hasVideoThumb;
    public int heightDefault;
    public int heightThreeLines;
    public boolean inPreviewMode;
    private float innerProgress;
    private BounceInterpolator interpolator;
    public boolean isDialogCell;
    private boolean isForum;
    public boolean isMonoForumTopicDialog;
    public boolean isSavedDialog;
    public boolean isSavedDialogCell;
    private boolean isSelected;
    private boolean isSliding;
    private boolean isTopic;
    public boolean isTransitionSupport;
    long lastDialogChangedTime;
    private int lastDrawSwipeMessageStringId;
    private RLottieDrawable lastDrawTranslationDrawable;
    private int lastMessageDate;
    private CharSequence lastMessageString;
    private CharSequence lastPrintString;
    private int lastSendState;
    int lastSize;
    private int lastStatusDrawableParams;
    private boolean lastTopicMessageUnread;
    private boolean lastUnreadState;
    private int lock2Left;
    private Drawable lockDrawable;
    private boolean markUnread;
    private int mentionCount;
    private StaticLayout mentionLayout;
    private int mentionLeft;
    private int mentionWidth;
    private MessageObject message;
    private int messageId;
    private StaticLayout messageLayout;
    private int messageLeft;
    private StaticLayout messageNameLayout;
    private int messageNameLeft;
    private int messageNameTop;
    public int messagePaddingStart;
    private int messageTop;
    boolean moving;
    private boolean nameIsEllipsized;
    private StaticLayout nameLayout;
    private boolean nameLayoutEllipsizeByGradient;
    private boolean nameLayoutEllipsizeLeft;
    private boolean nameLayoutFits;
    private float nameLayoutTranslateX;
    private int nameLeft;
    private int nameLockLeft;
    private int nameLockTop;
    private int nameMuteLeft;
    private int nameWidth;
    private boolean needEmoji;
    private Utilities.Callback onOpenButtonClick;
    private float onlineProgress;
    private boolean openBot;
    private final Paint openButtonBackgroundPaint;
    private final ButtonBounce openButtonBounce;
    private final RectF openButtonRect;
    private Text openButtonText;
    protected boolean overrideSwipeAction;
    protected int overrideSwipeActionBackgroundColorKey;
    protected RLottieDrawable overrideSwipeActionDrawable;
    protected int overrideSwipeActionRevealBackgroundColorKey;
    protected int overrideSwipeActionStringId;
    protected String overrideSwipeActionStringKey;
    private int paintIndex;
    private DialogsActivity parentFragment;
    private int pinLeft;
    private int pinTop;
    private DialogsAdapter.DialogsPreloader preloader;
    private boolean premiumBlocked;
    private final AnimatedFloat premiumBlockedT;
    private PremiumGradient.PremiumGradientTools premiumGradient;
    private int printingStringType;
    private int progressStage;
    private boolean promoDialog;
    private int reactionMentionCount;
    private int reactionMentionLeft;
    private ValueAnimator reactionsMentionsAnimator;
    private float reactionsMentionsChangeProgress;
    private int readOutboxMaxId;
    private RectF rect;
    private float reorderIconProgress;
    private final Theme.ResourcesProvider resourcesProvider;
    public float rightFragmentOffset;
    private float rightFragmentOpenedProgress;
    private boolean showTopicIconInName;
    private boolean showTtl;
    private List spoilers;
    private List spoilers2;
    private Stack spoilersPool;
    private Stack spoilersPool2;
    private Drawable starBg;
    private int starBgColor;
    private Drawable starFg;
    private final AnimatedFloat starsBlockedT;
    private long starsPriceBlocked;
    private boolean statusDrawableAnimationInProgress;
    private ValueAnimator statusDrawableAnimator;
    private int statusDrawableLeft;
    private float statusDrawableProgress;
    public final StoriesUtilities.AvatarStoryParams storyParams;
    public boolean swipeCanceled;
    private int swipeMessageTextId;
    private StaticLayout swipeMessageTextLayout;
    private int swipeMessageWidth;
    public DialogCellTags tags;
    private int tagsLeft;
    private int tagsRight;
    private Paint thumbBackgroundPaint;
    private ImageReceiver[] thumbImage;
    private boolean[] thumbImageSeen;
    private Path thumbPath;
    int thumbSize;
    private SpoilerEffect thumbSpoiler;
    private int thumbsCount;
    private StaticLayout timeLayout;
    private int timeLeft;
    private int timeTop;
    private TimerDrawable timerDrawable;
    private Paint timerPaint;
    private Paint timerPaint2;
    private int topClip;
    int topMessageTopicEndIndex;
    int topMessageTopicStartIndex;
    private Paint topicCounterPaint;
    protected Drawable[] topicIconInName;
    private boolean topicMuted;
    protected int translateY;
    private boolean translationAnimationStarted;
    private RLottieDrawable translationDrawable;
    protected float translationX;
    private int ttlPeriod;
    private float ttlProgress;
    private boolean twoLinesForName;
    private StaticLayout typingLayout;
    private int typingLeft;
    private int unreadCount;
    private Runnable unsubscribePremiumBlocked;
    private final DialogUpdateHelper updateHelper;
    private boolean updateLayout;
    public boolean useForceThreeLines;
    public boolean useFromUserAsAvatar;
    private boolean useMeForMyMessages;
    public boolean useSeparator;
    private TLRPC.User user;
    private boolean visibleOnScreen;
    private boolean wasDrawnOnline;
    protected float xOffset;

    public static class BounceInterpolator implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            if (f < 0.33f) {
                return (f / 0.33f) * 0.1f;
            }
            float f2 = f - 0.33f;
            return f2 < 0.33f ? 0.1f - ((f2 / 0.34f) * 0.15f) : (((f2 - 0.34f) / 0.33f) * 0.05f) - 0.05f;
        }
    }

    public static class CustomDialog {
        public int date;
        public int id;
        public boolean isMedia;
        public String message;
        public boolean muted;
        public String name;
        public boolean pinned;
        public int sent = -1;
        public int type;
        public int unread_count;
        public boolean verified;
    }

    public interface DialogCellDelegate {
        boolean canClickButtonInside();

        void onButtonClicked(DialogCell dialogCell);

        void onButtonLongPress(DialogCell dialogCell);

        void openHiddenStories();

        void openStory(DialogCell dialogCell, Runnable runnable);

        void showChatPreview(DialogCell dialogCell);
    }

    private class DialogUpdateHelper {
        public long lastDrawnDialogId;
        public boolean lastDrawnDialogIsFolder;
        public int lastDrawnDraftHash;
        public boolean lastDrawnHasCall;
        public long lastDrawnMessageId;
        public boolean lastDrawnPinned;
        public Integer lastDrawnPrintingType;
        public long lastDrawnReadState;
        public int lastDrawnSizeHash;
        public boolean lastDrawnTranslated;
        public int lastKnownTypingType;
        public int lastTopicsCount;
        long startWaitingTime;
        public boolean typingOutToTop;
        public float typingProgres;
        boolean waitngNewMessageFroTypingAnimation;

        private DialogUpdateHelper() {
            this.waitngNewMessageFroTypingAnimation = false;
        }

        /* JADX WARN: Removed duplicated region for block: B:140:0x02d2  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0107  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x015c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean update() {
            Integer printingStringType;
            int size;
            boolean z;
            TLRPC.DraftMessage draft;
            int i;
            int i2;
            boolean z2;
            TLRPC.Dialog dialog = (TLRPC.Dialog) MessagesController.getInstance(DialogCell.this.currentAccount).dialogs_dict.get(DialogCell.this.currentDialogId);
            if (dialog == null) {
                if (DialogCell.this.dialogsType != 3 || this.lastDrawnDialogId == DialogCell.this.currentDialogId) {
                    return false;
                }
                this.lastDrawnDialogId = DialogCell.this.currentDialogId;
                return true;
            }
            int id = DialogCell.this.message == null ? 0 : DialogCell.this.message.getId() + DialogCell.this.message.hashCode();
            long j = dialog.read_inbox_max_id + (dialog.read_outbox_max_id << 8) + ((dialog.unread_count + (dialog.unread_mark ? -1 : 0)) << 16) + (dialog.unread_reactions_count > 0 ? 262144 : 0) + (dialog.unread_mentions_count > 0 ? 524288 : 0);
            if (DialogCell.this.isForumCell() && MessagesController.getInstance(DialogCell.this.currentAccount).getTopicsController().getForumUnreadCount(-DialogCell.this.currentDialogId)[2] > 0) {
                j |= 1048576;
            }
            if (!DialogCell.this.isForumCell()) {
                DialogCell dialogCell = DialogCell.this;
                printingStringType = ((dialogCell.isDialogCell || dialogCell.isTopic) && !TextUtils.isEmpty(MessagesController.getInstance(DialogCell.this.currentAccount).getPrintingString(DialogCell.this.currentDialogId, (long) DialogCell.this.getTopicId(), true))) ? MessagesController.getInstance(DialogCell.this.currentAccount).getPrintingStringType(DialogCell.this.currentDialogId, DialogCell.this.getTopicId()) : null;
            }
            int measuredWidth = DialogCell.this.getMeasuredWidth() + (DialogCell.this.getMeasuredHeight() << 16);
            if (DialogCell.this.isForumCell()) {
                ArrayList<TLRPC.TL_forumTopic> topics = MessagesController.getInstance(DialogCell.this.currentAccount).getTopicsController().getTopics(-DialogCell.this.currentDialogId);
                size = topics == null ? -1 : topics.size();
                if (size == -1 && MessagesController.getInstance(DialogCell.this.currentAccount).getTopicsController().endIsReached(-DialogCell.this.currentDialogId)) {
                }
            } else {
                size = 0;
            }
            if (DialogCell.this.isTopic) {
                z = MediaDataController.getInstance(DialogCell.this.currentAccount).getDraftVoice(DialogCell.this.currentDialogId, (long) DialogCell.this.getTopicId()) != null;
                TLRPC.DraftMessage draft2 = !z ? MediaDataController.getInstance(DialogCell.this.currentAccount).getDraft(DialogCell.this.currentDialogId, DialogCell.this.getTopicId()) : null;
                draft = (draft2 == null || !TextUtils.isEmpty(draft2.message)) ? draft2 : null;
            } else {
                DialogCell dialogCell2 = DialogCell.this;
                if (dialogCell2.isDialogCell) {
                    z = MediaDataController.getInstance(dialogCell2.currentAccount).getDraftVoice(DialogCell.this.currentDialogId, 0L) != null;
                    if (!z) {
                        draft = MediaDataController.getInstance(DialogCell.this.currentAccount).getDraft(DialogCell.this.currentDialogId, 0L);
                    }
                } else {
                    z = false;
                }
            }
            if (draft == null) {
                i = 0;
            } else {
                int iHashCode = draft.message.hashCode();
                TLRPC.InputReplyTo inputReplyTo = draft.reply_to;
                i = iHashCode + (inputReplyTo != null ? inputReplyTo.reply_to_msg_id << 16 : 0);
            }
            boolean z3 = DialogCell.this.chat != null && DialogCell.this.chat.call_active && DialogCell.this.chat.call_not_empty;
            boolean zIsTranslatingDialog = MessagesController.getInstance(DialogCell.this.currentAccount).getTranslateController().isTranslatingDialog(DialogCell.this.currentDialogId);
            if (this.lastDrawnSizeHash == measuredWidth) {
                i2 = measuredWidth;
                if (this.lastDrawnMessageId == id && this.lastDrawnTranslated == zIsTranslatingDialog && this.lastDrawnDialogId == DialogCell.this.currentDialogId && this.lastDrawnDialogIsFolder == dialog.isFolder && this.lastDrawnReadState == j && Objects.equals(this.lastDrawnPrintingType, printingStringType) && this.lastTopicsCount == size && i == this.lastDrawnDraftHash && this.lastDrawnPinned == DialogCell.this.drawPin && this.lastDrawnHasCall == z3 && DialogCell.this.draftVoice == z) {
                    return false;
                }
            } else {
                i2 = measuredWidth;
            }
            if (this.lastDrawnDialogId != DialogCell.this.currentDialogId) {
                this.typingProgres = printingStringType == null ? BitmapDescriptorFactory.HUE_RED : 1.0f;
                this.waitngNewMessageFroTypingAnimation = false;
            } else if (!Objects.equals(this.lastDrawnPrintingType, printingStringType) || this.waitngNewMessageFroTypingAnimation) {
                boolean z4 = this.waitngNewMessageFroTypingAnimation;
                if (z4 || printingStringType != null) {
                    if (z4 && this.lastDrawnMessageId != id) {
                        z2 = false;
                        this.waitngNewMessageFroTypingAnimation = false;
                    }
                    if (this.lastDrawnMessageId == id) {
                        z2 = true;
                    }
                    this.typingOutToTop = z2;
                } else {
                    this.waitngNewMessageFroTypingAnimation = true;
                    this.startWaitingTime = System.currentTimeMillis();
                }
                z2 = false;
                if (this.lastDrawnMessageId == id) {
                }
                this.typingOutToTop = z2;
            }
            if (printingStringType != null) {
                this.lastKnownTypingType = printingStringType.intValue();
            }
            this.lastDrawnDialogId = DialogCell.this.currentDialogId;
            this.lastDrawnMessageId = id;
            this.lastDrawnDialogIsFolder = dialog.isFolder;
            this.lastDrawnReadState = j;
            this.lastDrawnPrintingType = printingStringType;
            this.lastDrawnSizeHash = i2;
            this.lastDrawnDraftHash = i;
            this.lastTopicsCount = size;
            this.lastDrawnPinned = DialogCell.this.drawPin;
            this.lastDrawnHasCall = z3;
            this.lastDrawnTranslated = zIsTranslatingDialog;
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0025  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void updateAnimationValues() {
            float f;
            if (this.waitngNewMessageFroTypingAnimation) {
                if (System.currentTimeMillis() - this.startWaitingTime > 100) {
                    this.waitngNewMessageFroTypingAnimation = false;
                }
                DialogCell.this.invalidate();
                return;
            }
            if (this.lastDrawnPrintingType != null && DialogCell.this.typingLayout != null) {
                float f2 = this.typingProgres;
                if (f2 != 1.0f) {
                    f = f2 + 0.08f;
                }
                this.typingProgres = f;
                DialogCell.this.invalidate();
            } else if (this.lastDrawnPrintingType == null) {
                float f3 = this.typingProgres;
                if (f3 != BitmapDescriptorFactory.HUE_RED) {
                    f = f3 - 0.08f;
                    this.typingProgres = f;
                    DialogCell.this.invalidate();
                }
            }
            this.typingProgres = Utilities.clamp(this.typingProgres, 1.0f, BitmapDescriptorFactory.HUE_RED);
        }
    }

    public static class FixedWidthSpan extends ReplacementSpan {
        private int width;

        public FixedWidthSpan(int i) {
            this.width = i;
        }

        @Override // android.text.style.ReplacementSpan
        public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        }

        @Override // android.text.style.ReplacementSpan
        public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
            if (fontMetricsInt == null) {
                fontMetricsInt = paint.getFontMetricsInt();
            }
            if (fontMetricsInt != null) {
                int i3 = 1 - (fontMetricsInt.descent - fontMetricsInt.ascent);
                fontMetricsInt.descent = i3;
                fontMetricsInt.bottom = i3;
                fontMetricsInt.ascent = -1;
                fontMetricsInt.top = -1;
            }
            return this.width;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class ForumFormattedNames {
        HashMap avatarSpans;
        CharSequence formattedNames;
        boolean isLoadingState;
        int lastMessageId;
        boolean lastTopicMessageUnread;
        private final DialogCell parent;
        int topMessageTopicEndIndex;
        int topMessageTopicStartIndex;

        ForumFormattedNames(DialogCell dialogCell) {
            this.parent = dialogCell;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00ae  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00ca  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void formatTopicsNames(int i, MessageObject messageObject, TLRPC.Chat chat) {
            long topicId;
            boolean z;
            int length;
            int id = (messageObject == null || chat == null) ? 0 : messageObject.getId();
            if (this.lastMessageId != id || this.isLoadingState) {
                this.avatarSpans = null;
                this.topMessageTopicStartIndex = 0;
                this.topMessageTopicEndIndex = 0;
                this.lastTopicMessageUnread = false;
                this.isLoadingState = false;
                this.lastMessageId = id;
                TextPaint textPaint = Theme.dialogs_messagePaint[0];
                if (chat != null) {
                    ArrayList<TLRPC.TL_forumTopic> topics = MessagesController.getInstance(i).getTopicsController().getTopics(chat.id);
                    boolean z2 = true;
                    if (topics == null || topics.isEmpty()) {
                        if (MessagesController.getInstance(i).getTopicsController().endIsReached(chat.id)) {
                            this.formattedNames = LocaleController.getString(ChatObject.isMonoForum(chat) ? R.string.NoMonoforumTopicsCreated : R.string.NoTopicsCreated);
                            return;
                        }
                        MessagesController.getInstance(i).getTopicsController().preloadTopics(chat.id);
                        this.formattedNames = LocaleController.getString(R.string.Loading);
                        this.isLoadingState = true;
                        return;
                    }
                    ArrayList arrayList = new ArrayList(topics);
                    Collections.sort(arrayList, Comparator$CC.comparingInt(new ToIntFunction() { // from class: org.telegram.ui.Cells.DialogCell$ForumFormattedNames$$ExternalSyntheticLambda0
                        @Override // j$.util.function.ToIntFunction
                        public final int applyAsInt(Object obj) {
                            return DialogCell.ForumFormattedNames.lambda$formatTopicsNames$0((TLRPC.TL_forumTopic) obj);
                        }
                    }));
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                    if (messageObject == null || ChatObject.isMonoForum(chat)) {
                        topicId = 0;
                        z = false;
                        length = 0;
                    } else {
                        topicId = MessageObject.getTopicId(i, messageObject.messageOwner, true);
                        TLRPC.TL_forumTopic tL_forumTopicFindTopic = MessagesController.getInstance(i).getTopicsController().findTopic(chat.id, topicId);
                        if (tL_forumTopicFindTopic != null) {
                            CharSequence topicSpannedName = ForumUtilities.getTopicSpannedName(tL_forumTopicFindTopic, textPaint, false);
                            spannableStringBuilder.append(topicSpannedName);
                            length = tL_forumTopicFindTopic.unread_count > 0 ? topicSpannedName.length() : 0;
                            this.topMessageTopicStartIndex = 0;
                            this.topMessageTopicEndIndex = topicSpannedName.length();
                            if (!messageObject.isOutOwner()) {
                                this.lastTopicMessageUnread = tL_forumTopicFindTopic.unread_count > 0;
                            }
                            if (this.lastTopicMessageUnread) {
                                z = false;
                            } else {
                                spannableStringBuilder.append((CharSequence) " ");
                                spannableStringBuilder.setSpan(new FixedWidthSpan(AndroidUtilities.dp(3.0f)), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 0);
                                z = true;
                            }
                        } else {
                            length = 0;
                        }
                        this.lastTopicMessageUnread = false;
                        if (this.lastTopicMessageUnread) {
                        }
                    }
                    if (ChatObject.isMonoForum(chat)) {
                        this.avatarSpans = new HashMap();
                        for (int i2 = 0; i2 < Math.min(4, arrayList.size()); i2++) {
                            if (spannableStringBuilder.length() != 0) {
                                spannableStringBuilder.append((CharSequence) "  ");
                            }
                            long peerDialogId = DialogObject.getPeerDialogId(((TLRPC.TL_forumTopic) arrayList.get(i2)).from_id);
                            AvatarSpan avatarSpan = new AvatarSpan(this.parent, i);
                            avatarSpan.needDrawShadow = false;
                            avatarSpan.setDialogId(peerDialogId);
                            this.avatarSpans.put(Long.valueOf(peerDialogId), avatarSpan);
                            SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(DialogObject.getName(peerDialogId));
                            spannableStringBuilderValueOf.insert(0, (CharSequence) "  ");
                            spannableStringBuilderValueOf.setSpan(avatarSpan, 0, 1, 33);
                            spannableStringBuilder.append((CharSequence) spannableStringBuilderValueOf);
                        }
                    } else {
                        int i3 = 0;
                        for (int i4 = 4; i3 < Math.min(i4, arrayList.size()); i4 = 4) {
                            if (((TLRPC.TL_forumTopic) arrayList.get(i3)).id != topicId) {
                                if (spannableStringBuilder.length() != 0) {
                                    if (z2 && z) {
                                        spannableStringBuilder.append((CharSequence) " ");
                                    } else {
                                        spannableStringBuilder.append((CharSequence) ", ");
                                    }
                                }
                                spannableStringBuilder.append(ForumUtilities.getTopicSpannedName((TLRPC.ForumTopic) arrayList.get(i3), textPaint, false));
                                z2 = false;
                            }
                            i3++;
                        }
                    }
                    if (length > 0) {
                        spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.bold(), 0, Theme.key_chats_name, null), 0, Math.min(spannableStringBuilder.length(), length + 2), 0);
                    }
                    this.formattedNames = spannableStringBuilder;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void invalidateSpans() {
            HashMap map = this.avatarSpans;
            if (map == null || map.isEmpty()) {
                return;
            }
            for (Map.Entry entry : this.avatarSpans.entrySet()) {
                ((AvatarSpan) entry.getValue()).setDialogId(((Long) entry.getKey()).longValue());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int lambda$formatTopicsNames$0(TLRPC.TL_forumTopic tL_forumTopic) {
            return -tL_forumTopic.top_message;
        }
    }

    public DialogCell(DialogsActivity dialogsActivity, Context context, boolean z, boolean z2) {
        this(dialogsActivity, context, z, z2, UserConfig.selectedAccount, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DialogCell(DialogsActivity dialogsActivity, Context context, boolean z, boolean z2, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.drawArchive = true;
        this.drawAvatar = true;
        int i2 = 0;
        this.drawMonoforumAvatar = false;
        this.avatarStart = 10;
        this.messagePaddingStart = 72;
        this.heightDefault = 72;
        this.heightThreeLines = 78;
        this.addHeightForTags = 3;
        this.addForumHeightForTags = 11;
        this.chekBoxPaddingTop = 42.0f;
        StoriesUtilities.AvatarStoryParams avatarStoryParams = new StoriesUtilities.AvatarStoryParams(0 == true ? 1 : 0) { // from class: org.telegram.ui.Cells.DialogCell.1
            @Override // org.telegram.ui.Stories.StoriesUtilities.AvatarStoryParams
            public void onLongPress() {
                DialogCell dialogCell = DialogCell.this;
                DialogCellDelegate dialogCellDelegate = dialogCell.delegate;
                if (dialogCellDelegate == null) {
                    return;
                }
                dialogCellDelegate.showChatPreview(dialogCell);
            }

            @Override // org.telegram.ui.Stories.StoriesUtilities.AvatarStoryParams
            public void openStory(long j, Runnable runnable) {
                DialogCell dialogCell = DialogCell.this;
                if (dialogCell.delegate == null) {
                    return;
                }
                if (dialogCell.currentDialogFolderId != 0) {
                    DialogCell.this.delegate.openHiddenStories();
                    return;
                }
                DialogCell dialogCell2 = DialogCell.this;
                DialogCellDelegate dialogCellDelegate = dialogCell2.delegate;
                if (dialogCellDelegate != null) {
                    dialogCellDelegate.openStory(dialogCell2, runnable);
                }
            }
        };
        this.storyParams = avatarStoryParams;
        this.visibleOnScreen = true;
        this.collapseOffset = BitmapDescriptorFactory.HUE_RED;
        this.hasUnmutedTopics = false;
        this.openButtonBounce = new ButtonBounce(this);
        this.openButtonBackgroundPaint = new Paint(1);
        this.openButtonRect = new RectF();
        this.overrideSwipeAction = false;
        this.thumbImageSeen = new boolean[3];
        this.thumbImage = new ImageReceiver[3];
        this.drawPlay = new boolean[3];
        this.drawSpoiler = new boolean[3];
        this.avatarImage = new ImageReceiver(this);
        this.avatarDrawable = new AvatarDrawable();
        this.interpolator = new BounceInterpolator();
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.premiumBlockedT = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
        this.starsBlockedT = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
        this.spoilersPool = new Stack();
        this.spoilers = new ArrayList();
        this.spoilersPool2 = new Stack();
        this.spoilers2 = new ArrayList();
        this.drawCount2 = true;
        this.countChangeProgress = 1.0f;
        this.reactionsMentionsChangeProgress = 1.0f;
        this.rect = new RectF();
        this.lastStatusDrawableParams = -1;
        this.readOutboxMaxId = -1;
        this.updateHelper = new DialogUpdateHelper();
        avatarStoryParams.allowLongress = true;
        this.resourcesProvider = resourcesProvider;
        this.parentFragment = dialogsActivity;
        Theme.createDialogsResources(context);
        this.drawMonoforumAvatar = false;
        this.avatarImage.setRoundRadius(AndroidUtilities.dp(28.0f));
        while (true) {
            ImageReceiver[] imageReceiverArr = this.thumbImage;
            if (i2 >= imageReceiverArr.length) {
                this.useForceThreeLines = z2;
                this.currentAccount = i;
                this.emojiStatus = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, AndroidUtilities.dp(22.0f));
                this.botVerification = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, AndroidUtilities.dp(17.0f));
                this.avatarImage.setAllowLoadingOnAttachedOnly(true);
                return;
            }
            imageReceiverArr[i2] = new ImageReceiver(this);
            ImageReceiver imageReceiver = this.thumbImage[i2];
            imageReceiver.ignoreNotifications = true;
            imageReceiver.setRoundRadius(AndroidUtilities.dp(2.0f));
            this.thumbImage[i2].setAllowLoadingOnAttachedOnly(true);
            i2++;
        }
    }

    private CharSequence applyThumbs(CharSequence charSequence) {
        if (this.thumbsCount <= 0) {
            return charSequence;
        }
        SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(charSequence);
        spannableStringBuilderValueOf.insert(0, (CharSequence) " ");
        spannableStringBuilderValueOf.setSpan(new FixedWidthSpan(AndroidUtilities.dp(((this.thumbSize + 2) * this.thumbsCount) + 3)), 0, 1, 33);
        return spannableStringBuilderValueOf;
    }

    private void checkChatTheme() {
        TLRPC.Message message;
        MessageObject messageObject = this.message;
        if (messageObject == null || (message = messageObject.messageOwner) == null) {
            return;
        }
        TLRPC.MessageAction messageAction = message.action;
        if ((messageAction instanceof TLRPC.TL_messageActionSetChatTheme) && this.lastUnreadState) {
            ChatThemeController.getInstance(this.currentAccount).setDialogTheme(this.currentDialogId, ((TLRPC.TL_messageActionSetChatTheme) messageAction).emoticon, false);
        }
    }

    private void checkGroupCall() {
        TLRPC.Chat chat = this.chat;
        boolean z = chat != null && chat.call_active && chat.call_not_empty;
        this.hasCall = z;
        this.chatCallProgress = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
    }

    private void checkOnline() {
        TLRPC.User user;
        if (this.user != null && (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.user.id))) != null) {
            this.user = user;
        }
        this.onlineProgress = isOnline() ? 1.0f : BitmapDescriptorFactory.HUE_RED;
    }

    private void checkTtl() {
        CheckBox2 checkBox2;
        boolean z = this.ttlPeriod > 0 && !this.hasCall && !isOnline() && ((checkBox2 = this.checkBox) == null || !checkBox2.isChecked());
        this.showTtl = z;
        this.ttlProgress = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
    }

    private void checkTwoLinesForName() {
        this.twoLinesForName = false;
        if (!this.isTopic || hasTags()) {
            return;
        }
        buildLayout();
        if (this.nameIsEllipsized) {
            this.twoLinesForName = true;
            buildLayout();
        }
    }

    private int computeHeight() {
        if (!isForumCell() || this.isTransitionSupport || this.collapsed) {
            return getCollapsedHeight();
        }
        int iDp = AndroidUtilities.dp((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 86.0f : 91.0f);
        if (this.useSeparator) {
            iDp++;
        }
        return hasTags() ? iDp + AndroidUtilities.dp(this.addForumHeightForTags) : iDp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createStatusDrawableAnimator(int i, int i2) {
        this.statusDrawableProgress = BitmapDescriptorFactory.HUE_RED;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.statusDrawableAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(220L);
        this.statusDrawableAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.animateFromStatusDrawableParams = i;
        this.animateToStatusDrawableParams = i2;
        this.statusDrawableAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.DialogCell$$ExternalSyntheticLambda5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$createStatusDrawableAnimator$4(valueAnimator);
            }
        });
        this.statusDrawableAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.DialogCell.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                int i3 = (DialogCell.this.drawClock ? 1 : 0) + (DialogCell.this.drawCheck1 ? 2 : 0) + (DialogCell.this.drawCheck2 ? 4 : 0);
                if (DialogCell.this.animateToStatusDrawableParams != i3) {
                    DialogCell dialogCell = DialogCell.this;
                    dialogCell.createStatusDrawableAnimator(dialogCell.animateToStatusDrawableParams, i3);
                } else {
                    DialogCell.this.statusDrawableAnimationInProgress = false;
                    DialogCell dialogCell2 = DialogCell.this;
                    dialogCell2.lastStatusDrawableParams = dialogCell2.animateToStatusDrawableParams;
                }
                DialogCell.this.invalidate();
            }
        });
        this.statusDrawableAnimationInProgress = true;
        this.statusDrawableAnimator.start();
    }

    private void drawCheckStatus(Canvas canvas, boolean z, boolean z2, boolean z3, boolean z4, float f) {
        Drawable drawable;
        if (f != BitmapDescriptorFactory.HUE_RED || z4) {
            float f2 = (f * 0.5f) + 0.5f;
            if (z) {
                BaseCell.setDrawableBounds(Theme.dialogs_clockDrawable, this.clockDrawLeft, this.checkDrawTop);
                if (f != 1.0f) {
                    canvas.save();
                    canvas.scale(f2, f2, Theme.dialogs_clockDrawable.getBounds().centerX(), Theme.dialogs_halfCheckDrawable.getBounds().centerY());
                    Theme.dialogs_clockDrawable.setAlpha((int) (255.0f * f));
                }
                Theme.dialogs_clockDrawable.draw(canvas);
                if (f != 1.0f) {
                    canvas.restore();
                    Theme.dialogs_clockDrawable.setAlpha(255);
                }
                invalidate();
                return;
            }
            if (z3) {
                if (z2) {
                    BaseCell.setDrawableBounds(Theme.dialogs_halfCheckDrawable, this.halfCheckDrawLeft, this.checkDrawTop);
                    if (z4) {
                        canvas.save();
                        canvas.scale(f2, f2, Theme.dialogs_halfCheckDrawable.getBounds().centerX(), Theme.dialogs_halfCheckDrawable.getBounds().centerY());
                        Theme.dialogs_halfCheckDrawable.setAlpha((int) (f * 255.0f));
                    }
                    if (!z4 && f != BitmapDescriptorFactory.HUE_RED) {
                        canvas.save();
                        canvas.scale(f2, f2, Theme.dialogs_halfCheckDrawable.getBounds().centerX(), Theme.dialogs_halfCheckDrawable.getBounds().centerY());
                        int i = (int) (255.0f * f);
                        Theme.dialogs_halfCheckDrawable.setAlpha(i);
                        Theme.dialogs_checkReadDrawable.setAlpha(i);
                    }
                    Theme.dialogs_halfCheckDrawable.draw(canvas);
                    if (z4) {
                        canvas.restore();
                        canvas.save();
                        canvas.translate(AndroidUtilities.dp(4.0f) * (1.0f - f), BitmapDescriptorFactory.HUE_RED);
                    }
                    BaseCell.setDrawableBounds(Theme.dialogs_checkReadDrawable, this.checkDrawLeft, this.checkDrawTop);
                    Theme.dialogs_checkReadDrawable.draw(canvas);
                    if (z4) {
                        canvas.restore();
                        Theme.dialogs_halfCheckDrawable.setAlpha(255);
                    }
                    if (z4 || f == BitmapDescriptorFactory.HUE_RED) {
                        return;
                    }
                    canvas.restore();
                    Theme.dialogs_halfCheckDrawable.setAlpha(255);
                    drawable = Theme.dialogs_checkReadDrawable;
                } else {
                    BaseCell.setDrawableBounds(Theme.dialogs_checkDrawable, this.checkDrawLeft1, this.checkDrawTop);
                    if (f != 1.0f) {
                        canvas.save();
                        canvas.scale(f2, f2, Theme.dialogs_checkDrawable.getBounds().centerX(), Theme.dialogs_halfCheckDrawable.getBounds().centerY());
                        Theme.dialogs_checkDrawable.setAlpha((int) (255.0f * f));
                    }
                    Theme.dialogs_checkDrawable.draw(canvas);
                    if (f == 1.0f) {
                        return;
                    }
                    canvas.restore();
                    drawable = Theme.dialogs_checkDrawable;
                }
                drawable.setAlpha(255);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x025b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void drawCounter(Canvas canvas, boolean z, int i, int i2, int i3, float f, boolean z2) {
        Paint paint;
        boolean z3;
        RectF rectF;
        float f2;
        float interpolation;
        StaticLayout staticLayout;
        RectF rectF2;
        boolean z4 = isForumCell() || isFolderCell();
        if (!(this.drawCount && this.drawCount2) && this.countChangeProgress == 1.0f) {
            return;
        }
        float f3 = (this.unreadCount != 0 || this.markUnread) ? this.countChangeProgress : 1.0f - this.countChangeProgress;
        int i4 = 255;
        if (z2) {
            if (this.counterPaintOutline == null) {
                Paint paint2 = new Paint();
                this.counterPaintOutline = paint2;
                paint2.setStyle(Paint.Style.STROKE);
                this.counterPaintOutline.setStrokeWidth(AndroidUtilities.dp(2.0f));
                this.counterPaintOutline.setStrokeJoin(Paint.Join.ROUND);
                this.counterPaintOutline.setStrokeCap(Paint.Cap.ROUND);
            }
            this.counterPaintOutline.setColor(ColorUtils.blendARGB(Theme.getColor(Theme.key_windowBackgroundWhite), ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_chats_pinnedOverlay), 255), Color.alpha(r13) / 255.0f));
        }
        if (this.isTopic && this.forumTopic.read_inbox_max_id == 0) {
            if (this.topicCounterPaint == null) {
                this.topicCounterPaint = new Paint();
            }
            paint = this.topicCounterPaint;
            int color = Theme.getColor(z ? Theme.key_topics_unreadCounterMuted : Theme.key_topics_unreadCounter, this.resourcesProvider);
            paint.setColor(color);
            Theme.dialogs_countTextPaint.setColor(color);
            i4 = z ? 30 : 40;
            z3 = true;
        } else {
            paint = (z || this.currentDialogFolderId != 0) ? Theme.dialogs_countGrayPaint : Theme.dialogs_countPaint;
            z3 = false;
        }
        StaticLayout staticLayout2 = this.countOldLayout;
        if (staticLayout2 == null || this.unreadCount == 0) {
            if (this.unreadCount != 0) {
                staticLayout2 = this.countLayout;
            }
            paint.setAlpha((int) ((1.0f - this.reorderIconProgress) * i4));
            Theme.dialogs_countTextPaint.setAlpha((int) ((1.0f - this.reorderIconProgress) * 255.0f));
            this.rect.set(i2 - AndroidUtilities.dp(5.5f), i, r9 + this.countWidth + AndroidUtilities.dp(11.0f), AndroidUtilities.dp(23.0f) + i);
            int iSave = canvas.save();
            if (f != 1.0f) {
                canvas.scale(f, f, this.rect.centerX(), this.rect.centerY());
            }
            if (f3 != 1.0f) {
                if (getIsPinned()) {
                    Theme.dialogs_pinnedDrawable.setAlpha((int) ((1.0f - this.reorderIconProgress) * 255.0f));
                    BaseCell.setDrawableBounds(Theme.dialogs_pinnedDrawable, this.pinLeft, this.pinTop);
                    canvas.save();
                    float f4 = 1.0f - f3;
                    canvas.scale(f4, f4, Theme.dialogs_pinnedDrawable.getBounds().centerX(), Theme.dialogs_pinnedDrawable.getBounds().centerY());
                    Theme.dialogs_pinnedDrawable.draw(canvas);
                    canvas.restore();
                }
                canvas.scale(f3, f3, this.rect.centerX(), this.rect.centerY());
            }
            if (z4) {
                if (this.counterPath == null || (rectF = this.counterPathRect) == null || !rectF.equals(this.rect)) {
                    RectF rectF3 = this.counterPathRect;
                    if (rectF3 == null) {
                        this.counterPathRect = new RectF(this.rect);
                    } else {
                        rectF3.set(this.rect);
                    }
                    if (this.counterPath == null) {
                        this.counterPath = new Path();
                    }
                    BubbleCounterPath.addBubbleRect(this.counterPath, this.counterPathRect, AndroidUtilities.dp(11.5f));
                }
                canvas.drawPath(this.counterPath, paint);
                if (z2) {
                    canvas.drawPath(this.counterPath, this.counterPaintOutline);
                }
            } else {
                canvas.drawRoundRect(this.rect, AndroidUtilities.dp(11.5f), AndroidUtilities.dp(11.5f), paint);
                if (z2) {
                    canvas.drawRoundRect(this.rect, AndroidUtilities.dp(11.5f), AndroidUtilities.dp(11.5f), this.counterPaintOutline);
                }
            }
            if (staticLayout2 != null) {
                canvas.save();
                canvas.translate(i2, i + AndroidUtilities.dp(4.0f));
                staticLayout2.draw(canvas);
                canvas.restore();
            }
            canvas.restoreToCount(iSave);
        } else {
            paint.setAlpha((int) ((1.0f - this.reorderIconProgress) * i4));
            Theme.dialogs_countTextPaint.setAlpha((int) ((1.0f - this.reorderIconProgress) * 255.0f));
            float f5 = f3 * 2.0f;
            float f6 = f5 > 1.0f ? 1.0f : f5;
            float f7 = 1.0f - f6;
            float f8 = (i2 * f6) + (i3 * f7);
            float fDp = f8 - AndroidUtilities.dp(5.5f);
            float f9 = i;
            this.rect.set(fDp, f9, (this.countWidth * f6) + fDp + (this.countWidthOld * f7) + AndroidUtilities.dp(11.0f), AndroidUtilities.dp(23.0f) + i);
            if (f3 <= 0.5f) {
                interpolation = CubicBezierInterpolator.EASE_OUT.getInterpolation(f5) * 0.1f;
                f2 = 1.0f;
            } else {
                f2 = 1.0f;
                interpolation = CubicBezierInterpolator.EASE_IN.getInterpolation(1.0f - ((f3 - 0.5f) * 2.0f)) * 0.1f;
            }
            float f10 = interpolation + f2;
            canvas.save();
            float f11 = f10 * f;
            canvas.scale(f11, f11, this.rect.centerX(), this.rect.centerY());
            if (z4) {
                if (this.counterPath == null || (rectF2 = this.counterPathRect) == null || !rectF2.equals(this.rect)) {
                    RectF rectF4 = this.counterPathRect;
                    if (rectF4 == null) {
                        this.counterPathRect = new RectF(this.rect);
                    } else {
                        rectF4.set(this.rect);
                    }
                    if (this.counterPath == null) {
                        this.counterPath = new Path();
                    }
                    BubbleCounterPath.addBubbleRect(this.counterPath, this.counterPathRect, AndroidUtilities.dp(11.5f));
                }
                canvas.drawPath(this.counterPath, paint);
                if (z2) {
                    canvas.drawPath(this.counterPath, this.counterPaintOutline);
                }
            } else {
                canvas.drawRoundRect(this.rect, AndroidUtilities.dp(11.5f), AndroidUtilities.dp(11.5f), paint);
                if (z2) {
                    canvas.drawRoundRect(this.rect, AndroidUtilities.dp(11.5f), AndroidUtilities.dp(11.5f), this.counterPaintOutline);
                }
            }
            if (this.countAnimationStableLayout != null) {
                canvas.save();
                canvas.translate(f8, i + AndroidUtilities.dp(4.0f));
                this.countAnimationStableLayout.draw(canvas);
                canvas.restore();
            }
            int alpha = Theme.dialogs_countTextPaint.getAlpha();
            float f12 = alpha;
            Theme.dialogs_countTextPaint.setAlpha((int) (f12 * f6));
            if (this.countAnimationInLayout != null) {
                canvas.save();
                canvas.translate(f8, ((this.countAnimationIncrement ? AndroidUtilities.dp(13.0f) : -AndroidUtilities.dp(13.0f)) * f7) + f9 + AndroidUtilities.dp(4.0f));
                staticLayout = this.countAnimationInLayout;
            } else {
                if (this.countLayout != null) {
                    canvas.save();
                    canvas.translate(f8, ((this.countAnimationIncrement ? AndroidUtilities.dp(13.0f) : -AndroidUtilities.dp(13.0f)) * f7) + f9 + AndroidUtilities.dp(4.0f));
                    staticLayout = this.countLayout;
                }
                if (this.countOldLayout != null) {
                    Theme.dialogs_countTextPaint.setAlpha((int) (f12 * f7));
                    canvas.save();
                    canvas.translate(f8, ((this.countAnimationIncrement ? -AndroidUtilities.dp(13.0f) : AndroidUtilities.dp(13.0f)) * f6) + f9 + AndroidUtilities.dp(4.0f));
                    this.countOldLayout.draw(canvas);
                    canvas.restore();
                }
                Theme.dialogs_countTextPaint.setAlpha(alpha);
                canvas.restore();
            }
            staticLayout.draw(canvas);
            canvas.restore();
            if (this.countOldLayout != null) {
            }
            Theme.dialogs_countTextPaint.setAlpha(alpha);
            canvas.restore();
        }
        if (z3) {
            Theme.dialogs_countTextPaint.setColor(Theme.getColor(Theme.key_chats_unreadCounterText));
        }
    }

    private MessageObject findFolderTopMessage() {
        ArrayList dialogsArray;
        DialogsActivity dialogsActivity = this.parentFragment;
        if (dialogsActivity == null || (dialogsArray = dialogsActivity.getDialogsArray(this.currentAccount, this.dialogsType, this.currentDialogFolderId, false)) == null || dialogsArray.isEmpty()) {
            return null;
        }
        int size = dialogsArray.size();
        MessageObject messageObject = null;
        for (int i = 0; i < size; i++) {
            TLRPC.Dialog dialog = (TLRPC.Dialog) dialogsArray.get(i);
            LongSparseArray longSparseArray = MessagesController.getInstance(this.currentAccount).dialogMessage;
            if (longSparseArray != null) {
                ArrayList arrayList = (ArrayList) longSparseArray.get(dialog.id);
                MessageObject messageObject2 = (arrayList == null || arrayList.isEmpty()) ? null : (MessageObject) arrayList.get(0);
                if (messageObject2 != null && (messageObject == null || messageObject2.messageOwner.date > messageObject.messageOwner.date)) {
                    messageObject = messageObject2;
                }
                if (dialog.pinnedNum == 0 && messageObject != null) {
                    break;
                }
            }
        }
        return messageObject;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d4 A[EDGE_INSN: B:46:0x00d4->B:37:0x00d4 BREAK  A[LOOP:0: B:3:0x001d->B:36:0x00d0], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d0 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private CharSequence formatArchivedDialogNames() {
        long j;
        TLRPC.User user;
        String string;
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        ArrayList<TLRPC.Dialog> dialogs = messagesController.getDialogs(this.currentDialogFolderId);
        this.currentDialogFolderDialogsCount = dialogs.size();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int size = dialogs.size();
        for (int i = 0; i < size; i++) {
            TLRPC.Dialog dialog = dialogs.get(i);
            if (!messagesController.isHiddenByUndo(dialog.id)) {
                boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(dialog.id);
                TLRPC.Chat chat = null;
                long j2 = dialog.id;
                if (zIsEncryptedDialog) {
                    TLRPC.EncryptedChat encryptedChat = messagesController.getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(j2)));
                    if (encryptedChat != null) {
                        j = encryptedChat.user_id;
                        user = messagesController.getUser(Long.valueOf(j));
                        if (chat != null) {
                            string = chat.title.replace('\n', ' ');
                        } else if (user == null) {
                            continue;
                        } else {
                            string = UserObject.isDeleted(user) ? LocaleController.getString(R.string.HiddenName) : AndroidUtilities.escape(ContactsController.formatName(user.first_name, user.last_name).replace('\n', ' '));
                        }
                        if (spannableStringBuilder.length() > 0) {
                            spannableStringBuilder.append((CharSequence) ", ");
                        }
                        int length = spannableStringBuilder.length();
                        int length2 = string.length() + length;
                        spannableStringBuilder.append((CharSequence) string);
                        if (dialog.unread_count > 0) {
                            spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.bold(), 0, Theme.getColor(Theme.key_chats_nameArchived, this.resourcesProvider)), length, length2, 33);
                        }
                        if (spannableStringBuilder.length() > 150) {
                            break;
                        }
                    } else {
                        user = null;
                        if (chat != null) {
                        }
                        if (spannableStringBuilder.length() > 0) {
                        }
                        int length3 = spannableStringBuilder.length();
                        int length22 = string.length() + length3;
                        spannableStringBuilder.append((CharSequence) string);
                        if (dialog.unread_count > 0) {
                        }
                        if (spannableStringBuilder.length() > 150) {
                        }
                    }
                } else {
                    boolean zIsUserDialog = DialogObject.isUserDialog(j2);
                    j = dialog.id;
                    if (zIsUserDialog) {
                        user = messagesController.getUser(Long.valueOf(j));
                    } else {
                        chat = messagesController.getChat(Long.valueOf(-j));
                        user = null;
                    }
                    if (chat != null) {
                    }
                    if (spannableStringBuilder.length() > 0) {
                    }
                    int length32 = spannableStringBuilder.length();
                    int length222 = string.length() + length32;
                    spannableStringBuilder.append((CharSequence) string);
                    if (dialog.unread_count > 0) {
                    }
                    if (spannableStringBuilder.length() > 150) {
                    }
                }
            }
        }
        if (MessagesController.getInstance(this.currentAccount).storiesController.getTotalStoriesCount(true) > 0) {
            int iMax = Math.max(1, MessagesController.getInstance(this.currentAccount).storiesController.getTotalStoriesCount(true));
            if (spannableStringBuilder.length() > 0) {
                spannableStringBuilder.append((CharSequence) ", ");
            }
            spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString("Stories", iMax, new Object[0]));
        }
        return Emoji.replaceEmoji(spannableStringBuilder, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), false);
    }

    private SpannableStringBuilder formatInternal(int i, CharSequence charSequence, CharSequence charSequence2) {
        SpannableStringBuilder spannableStringBuilderAppend;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (i == 1) {
            spannableStringBuilderAppend = spannableStringBuilder.append(charSequence2).append((CharSequence) ": \u2068");
        } else {
            if (i != 2) {
                if (i == 3) {
                    spannableStringBuilder.append(charSequence2).append((CharSequence) ": ").append(charSequence);
                } else if (i == 4) {
                    spannableStringBuilder.append(charSequence);
                }
                return spannableStringBuilder;
            }
            spannableStringBuilderAppend = spannableStringBuilder.append((CharSequence) "\u2068");
        }
        spannableStringBuilderAppend.append(charSequence).append((CharSequence) "\u2069");
        return spannableStringBuilder;
    }

    private CharSequence formatTopicsNames() {
        if (this.forumFormattedNames == null) {
            this.forumFormattedNames = new ForumFormattedNames(this);
        }
        this.forumFormattedNames.formatTopicsNames(this.currentAccount, this.message, this.chat);
        ForumFormattedNames forumFormattedNames = this.forumFormattedNames;
        this.topMessageTopicStartIndex = forumFormattedNames.topMessageTopicStartIndex;
        this.topMessageTopicEndIndex = forumFormattedNames.topMessageTopicEndIndex;
        this.lastTopicMessageUnread = forumFormattedNames.lastTopicMessageUnread;
        return forumFormattedNames.formattedNames;
    }

    private ColorFilter getAdaptiveEmojiColorFilter(int i, int i2) {
        if (this.adaptiveEmojiColorFilter == null) {
            this.adaptiveEmojiColor = new int[4];
            this.adaptiveEmojiColorFilter = new ColorFilter[4];
        }
        if (i2 != this.adaptiveEmojiColor[i] || this.adaptiveEmojiColorFilter[i] == null) {
            ColorFilter[] colorFilterArr = this.adaptiveEmojiColorFilter;
            this.adaptiveEmojiColor[i] = i2;
            colorFilterArr[i] = new PorterDuffColorFilter(i2, PorterDuff.Mode.SRC_IN);
        }
        return this.adaptiveEmojiColorFilter[i];
    }

    private MessageObject getCaptionMessage() {
        CharSequence charSequence;
        if (this.groupMessages == null) {
            MessageObject messageObject = this.message;
            if (messageObject == null || messageObject.caption == null) {
                return null;
            }
            return messageObject;
        }
        MessageObject messageObject2 = null;
        int i = 0;
        for (int i2 = 0; i2 < this.groupMessages.size(); i2++) {
            MessageObject messageObject3 = (MessageObject) this.groupMessages.get(i2);
            if (messageObject3 != null && (charSequence = messageObject3.caption) != null) {
                if (!TextUtils.isEmpty(charSequence)) {
                    i++;
                }
                messageObject2 = messageObject3;
            }
        }
        if (i > 1) {
            return null;
        }
        return messageObject2;
    }

    private int getCollapsedHeight() {
        int iDp = AndroidUtilities.dp((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? this.heightThreeLines : this.heightDefault);
        if (this.useSeparator) {
            iDp++;
        }
        if (this.twoLinesForName) {
            iDp += AndroidUtilities.dp(20.0f);
        }
        if (!hasTags()) {
            return iDp;
        }
        if ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) && !isForumCell()) {
            return iDp;
        }
        return iDp + AndroidUtilities.dp(isForumCell() ? this.addForumHeightForTags : this.addHeightForTags);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTopicId() {
        TLRPC.TL_forumTopic tL_forumTopic = this.forumTopic;
        if (tL_forumTopic == null) {
            return 0;
        }
        return tL_forumTopic.id;
    }

    private boolean isOnline() {
        TLRPC.User user;
        if (!isForumCell() && (user = this.user) != null && !user.self) {
            TLRPC.UserStatus userStatus = user.status;
            if (userStatus != null && userStatus.expires <= 0 && MessagesController.getInstance(this.currentAccount).onlinePrivacy.containsKey(Long.valueOf(this.user.id))) {
                return true;
            }
            TLRPC.UserStatus userStatus2 = this.user.status;
            if (userStatus2 != null && userStatus2.expires > ConnectionsManager.getInstance(this.currentAccount).getCurrentTime()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createStatusDrawableAnimator$4(ValueAnimator valueAnimator) {
        this.statusDrawableProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDraw$2() {
        DialogCellDelegate dialogCellDelegate = this.delegate;
        if (dialogCellDelegate != null) {
            dialogCellDelegate.onButtonClicked(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDraw$3() {
        DialogCellDelegate dialogCellDelegate = this.delegate;
        if (dialogCellDelegate != null) {
            dialogCellDelegate.onButtonLongPress(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPremiumBlocked$5(Object[] objArr) {
        updatePremiumBlocked(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$update$0(ValueAnimator valueAnimator) {
        this.countChangeProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$update$1(ValueAnimator valueAnimator) {
        this.reactionsMentionsChangeProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    private void setThumb(int i, MessageObject messageObject) {
        TLRPC.MessageMedia messageMedia;
        ArrayList<TLRPC.PhotoSize> arrayList = messageObject.photoThumbs;
        TLObject tLObject = messageObject.photoThumbsObject;
        if (messageObject.isStoryMedia()) {
            TL_stories$StoryItem tL_stories$StoryItem = messageObject.messageOwner.media.storyItem;
            if (tL_stories$StoryItem == null || (messageMedia = tL_stories$StoryItem.media) == null) {
                return;
            }
            TLRPC.Document document = messageMedia.document;
            if (document != null) {
                arrayList = document.thumbs;
                tLObject = document;
            } else {
                TLRPC.Photo photo = messageMedia.photo;
                if (photo != null) {
                    arrayList = photo.sizes;
                    tLObject = photo;
                }
            }
        }
        TLRPC.PhotoSize strippedPhotoSize = FileLoader.getStrippedPhotoSize(arrayList);
        if (strippedPhotoSize == null) {
            strippedPhotoSize = FileLoader.getClosestPhotoSizeWithSize(arrayList, 40);
        }
        TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(arrayList, AndroidUtilities.getPhotoSize(), false, null, true);
        TLRPC.PhotoSize photoSize = strippedPhotoSize != closestPhotoSizeWithSize ? closestPhotoSizeWithSize : null;
        if (photoSize == null || !DownloadController.getInstance(this.currentAccount).canDownloadMedia(messageObject)) {
            photoSize = strippedPhotoSize;
        }
        if (strippedPhotoSize != null) {
            this.hasVideoThumb = this.hasVideoThumb || messageObject.isVideo() || messageObject.isRoundVideo();
            int i2 = this.thumbsCount;
            if (i2 < 3) {
                this.thumbsCount = i2 + 1;
                this.drawPlay[i] = (messageObject.isVideo() || messageObject.isRoundVideo()) && !messageObject.hasMediaSpoilers();
                this.drawSpoiler[i] = messageObject.hasMediaSpoilers();
                int i3 = (messageObject.type != 1 || photoSize == null) ? 0 : photoSize.size;
                String str = messageObject.hasMediaSpoilers() ? "5_5_b" : "20_20";
                this.thumbImage[i].setImage(ImageLocation.getForObject(photoSize, tLObject), str, ImageLocation.getForObject(strippedPhotoSize, tLObject), str, i3, null, messageObject, 0);
                this.thumbImage[i].setRoundRadius(AndroidUtilities.dp(messageObject.isRoundVideo() ? 18.0f : 2.0f));
                this.needEmoji = false;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void setThumb(int i, TLRPC.MessageMedia messageMedia) {
        TLRPC.Document document;
        ArrayList<TLRPC.PhotoSize> arrayList;
        boolean z;
        TLRPC.Document document2;
        TLRPC.PhotoSize strippedPhotoSize;
        TLRPC.PhotoSize photoSize;
        if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
            TLRPC.Photo photo = messageMedia.photo;
            arrayList = photo.sizes;
            document = photo;
        } else {
            if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
                boolean zIsVideoDocument = MessageObject.isVideoDocument(messageMedia.document);
                TLRPC.Document document3 = messageMedia.document;
                z = zIsVideoDocument;
                arrayList = document3.thumbs;
                document2 = document3;
                strippedPhotoSize = FileLoader.getStrippedPhotoSize(arrayList);
                if (strippedPhotoSize == null) {
                    strippedPhotoSize = FileLoader.getClosestPhotoSizeWithSize(arrayList, 40);
                }
                TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(arrayList, AndroidUtilities.getPhotoSize(), false, null, true);
                photoSize = strippedPhotoSize != closestPhotoSizeWithSize ? closestPhotoSizeWithSize : null;
                if (photoSize != null || !DownloadController.getInstance(this.currentAccount).canDownloadMedia(1, photoSize.size)) {
                    photoSize = strippedPhotoSize;
                }
                if (strippedPhotoSize == null) {
                    this.hasVideoThumb = this.hasVideoThumb || z;
                    int i2 = this.thumbsCount;
                    if (i2 < 3) {
                        this.thumbsCount = i2 + 1;
                        this.drawPlay[i] = z;
                        this.drawSpoiler[i] = false;
                        this.thumbImage[i].setImage(ImageLocation.getForObject(photoSize, document2), "20_20", ImageLocation.getForObject(strippedPhotoSize, document2), "20_20", (z || photoSize == null) ? 0 : photoSize.size, null, this.message, 0);
                        this.thumbImage[i].setRoundRadius(AndroidUtilities.dp(2.0f));
                        this.needEmoji = false;
                        return;
                    }
                    return;
                }
                return;
            }
            document = null;
            arrayList = null;
        }
        z = false;
        document2 = document;
        strippedPhotoSize = FileLoader.getStrippedPhotoSize(arrayList);
        if (strippedPhotoSize == null) {
        }
        TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(arrayList, AndroidUtilities.getPhotoSize(), false, null, true);
        if (strippedPhotoSize != closestPhotoSizeWithSize2) {
        }
        if (photoSize != null) {
            photoSize = strippedPhotoSize;
        }
        if (strippedPhotoSize == null) {
        }
    }

    private void setThumb(int i, TLRPC.PhotoSize photoSize) {
        if (i < 3 && photoSize != null) {
            this.hasVideoThumb = false;
            int i2 = this.thumbsCount;
            if (i2 < 3) {
                this.thumbsCount = i2 + 1;
                this.drawPlay[i] = false;
                this.drawSpoiler[i] = true;
                this.thumbImage[i].setImage(ImageLocation.getForObject(photoSize, this.message.messageOwner), "2_2_b", null, null, 0, null, this.message, 0);
                this.thumbImage[i].setRoundRadius(AndroidUtilities.dp(2.0f));
                this.needEmoji = false;
            }
        }
    }

    private void updatePremiumBlocked(boolean z) {
        TL_account$RequirementToContact tL_account$RequirementToContactIsUserContactBlocked = (this.unsubscribePremiumBlocked == null || this.user == null) ? null : MessagesController.getInstance(this.currentAccount).isUserContactBlocked(this.user.id);
        if (this.premiumBlocked == DialogObject.isPremiumBlocked(tL_account$RequirementToContactIsUserContactBlocked) && this.starsPriceBlocked == DialogObject.getMessagesStarsPrice(tL_account$RequirementToContactIsUserContactBlocked)) {
            return;
        }
        this.premiumBlocked = DialogObject.isPremiumBlocked(tL_account$RequirementToContactIsUserContactBlocked);
        this.starsPriceBlocked = DialogObject.getMessagesStarsPrice(tL_account$RequirementToContactIsUserContactBlocked);
        if (!z) {
            this.premiumBlockedT.set(this.premiumBlocked, true);
            this.starsBlockedT.set(this.starsPriceBlocked > 0, true);
        }
        invalidate();
    }

    private void updateThumbsPosition() {
        if (this.thumbsCount > 0) {
            StaticLayout staticLayout = isForumCell() ? this.buttonLayout : this.messageLayout;
            int i = isForumCell() ? this.buttonLeft : this.messageLeft;
            if (staticLayout == null) {
                return;
            }
            try {
                CharSequence text = staticLayout.getText();
                if (text instanceof Spanned) {
                    FixedWidthSpan[] fixedWidthSpanArr = (FixedWidthSpan[]) ((Spanned) text).getSpans(0, text.length(), FixedWidthSpan.class);
                    if (fixedWidthSpanArr == null || fixedWidthSpanArr.length <= 0) {
                        for (int i2 = 0; i2 < 3; i2++) {
                            this.thumbImageSeen[i2] = false;
                        }
                        return;
                    }
                    int spanStart = ((Spanned) text).getSpanStart(fixedWidthSpanArr[0]);
                    if (spanStart < 0) {
                        spanStart = 0;
                    }
                    int iCeil = (int) Math.ceil(Math.min(staticLayout.getPrimaryHorizontal(spanStart), staticLayout.getPrimaryHorizontal(spanStart + 1)));
                    if (iCeil != 0 && !this.drawForwardIcon && !this.drawGiftIcon) {
                        iCeil += AndroidUtilities.dp(3.0f);
                    }
                    for (int i3 = 0; i3 < this.thumbsCount; i3++) {
                        this.thumbImage[i3].setImageX(i + iCeil + AndroidUtilities.dp((this.thumbSize + 2) * i3));
                        this.thumbImageSeen[i3] = true;
                    }
                }
            } catch (Exception e) {
                FileLog.e(e);
            }
        }
    }

    public DialogCell allowBotOpenButton(boolean z, Utilities.Callback callback) {
        this.allowBotOpenButton = z;
        this.onOpenButtonClick = callback;
        return this;
    }

    @Override // org.telegram.ui.Cells.BaseCell
    protected boolean allowCaching() {
        return this.rightFragmentOpenedProgress <= BitmapDescriptorFactory.HUE_RED;
    }

    public void animateArchiveAvatar() {
        if (this.avatarDrawable.getAvatarType() != 2) {
            return;
        }
        this.animatingArchiveAvatar = true;
        this.animatingArchiveAvatarProgress = BitmapDescriptorFactory.HUE_RED;
        Theme.dialogs_archiveAvatarDrawable.setProgress(BitmapDescriptorFactory.HUE_RED);
        Theme.dialogs_archiveAvatarDrawable.start();
        invalidate();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(87:14|(1:21)(1:19)|20|22|(2:29|31)(1:30)|32|(1:37)(1:36)|38|(1:40)|41|(1:52)(1:53)|54|(1:56)|57|(1:59)(1:60)|61|(7:63|(1:65)|1864|66|(1:68)|1865|69)|70|(2:72|(12:74|(2:86|(1:88)(11:89|90|83|109|(3:111|(1:113)(5:114|(1:116)|117|(1:122)|123)|124)(3:125|(1:127)|128)|129|(1:131)(1:132)|133|(1:135)(3:(1:138)(1:(1:141)(1:142))|139|143)|136|143))(2:79|(1:81)(11:84|85|83|109|(0)(0)|129|(0)(0)|133|(0)(0)|136|143))|82|83|109|(0)(0)|129|(0)(0)|133|(0)(0)|136|143)(14:91|(1:96)(1:95)|97|(12:106|(1:108)|90|83|109|(0)(0)|129|(0)(0)|133|(0)(0)|136|143)(12:102|(1:104)|85|83|109|(0)(0)|129|(0)(0)|133|(0)(0)|136|143)|105|83|109|(0)(0)|129|(0)(0)|133|(0)(0)|136|143))(2:144|(2:155|(13:157|152|153|159|(2:161|(3:163|(2:173|(1:175)(1:176))(2:168|(1:170)(1:172))|171))(2:177|(5:179|(3:181|(1:183)(2:185|(1:187)(2:188|(1:190)(5:191|(1:196)(1:195)|197|(1:202)(1:201)|203)))|184)(2:205|(5:207|(1:209)(2:211|(1:213)(7:214|(1:219)(1:218)|220|(1:227)(1:226)|228|229|(4:231|(1:236)(1:235)|237|(2:239|(1:241)(1:242)))(0)))|210|229|(0)(0))(3:243|244|(1:248)))|204|244|(2:246|248)))|249|(1:253)|254|(8:256|(1:258)(1:259)|260|(1:262)(1:263)|264|(1:266)|283|(9:297|328|329|(11:331|(1:333)(1:334)|335|(4:337|(1:339)|340|(1:342))|343|(1:345)(1:346)|347|(1:349)(1:350)|351|(2:353|(1:356))|357)(2:359|(1:361)(7:(6:363|(1:365)(1:366)|367|(1:369)(1:370)|(1:372)(1:373)|374)(1:375)|376|(4:380|868|(7:882|(1:884)(2:885|(2:887|(1:889))(1:890))|891|(2:893|(3:897|(1:899)(1:900)|901))(2:902|(1:904))|905|(1:912)(1:911)|913)(2:872|(3:878|879|410)(1:880))|881)(5:381|(1:383)(3:387|(4:389|(1:391)(2:392|(2:394|(1:396)(2:397|(1:399)(2:400|(1:402)(2:403|(2:405|(1:407)(1:408))(1:409)))))(2:411|(2:422|879)(4:415|(1:420)(1:419)|421|386)))|385|386)(4:423|(1:425)(1:426)|427|(2:455|(6:460|(4:462|(2:464|(2:466|(2:468|(2:470|471)(3:473|(1:475)(1:477)|476))(2:478|(2:480|471)(2:481|(1:483)(3:484|(1:486)(1:487)|476))))(0))(1:488)|472|489)(2:491|(5:502|(2:510|(9:517|531|(1:540)(1:539)|541|(2:554|(2:556|(2:567|(2:576|(12:579|(5:581|(1:588)|587|589|(2:591|(1:593))(1:578))(3:594|(4:602|(2:604|(2:609|(1:611)(2:612|(1:614)(1:615))))|616|(5:618|(1:620)(2:621|(1:623)(2:624|(1:626)(2:627|(1:629)(2:630|(1:632)(1:633)))))|634|(3:650|(3:652|(1:654)(1:655)|656)|657)(4:638|(2:640|(1:642)(1:643))|(1:647)|648)|649)(3:658|(2:660|(2:662|(2:664|671)(3:665|666|671))(2:667|(2:669|671)(3:670|666|671)))(2:673|(4:675|(3:677|(1:679)(1:680)|681)(3:683|(1:685)(1:686)|687)|682|688)(6:689|(2:691|(3:693|(1:695)(1:696)|(1:698)(1:699))(0))(2:702|(1:704)(2:705|(2:707|(6:713|714|726|701|767|(2:769|(1:771)))(5:711|712|701|767|(0)))(2:715|(2:717|(6:722|714|726|701|767|(0))(5:721|712|701|767|(0)))(2:723|(5:725|726|701|767|(0))(5:727|(1:729)(2:730|(1:732)(2:733|(3:747|(4:754|(1:756)|757|(2:759|(3:761|(1:763)(1:764)|765)))(2:751|(1:753))|766)(2:737|(3:739|(2:741|(1:743))(1:744)|745)(1:746))))|701|767|(0))))))|700|701|767|(0)))|672))(1:600)|601)|772|(1:774)(1:775)|776|(7:778|(3:785|(1:787)|788)(2:782|(1:784))|789|(1:791)(1:792)|793|(2:795|(1:797))|798)(1:799)|800|(1:805)(1:804)|458|459|864|(1:866)(1:867))(0))))(0))|552|(1:808)|809|(9:828|827|829|(1:848)(5:1852|839|840|1858|841)|849|(2:851|(1:853))|854|(4:856|(1:858)|859|(1:861)(1:862))|863)(5:817|(3:819|(1:825)(1:824)|826)(0)|827|829|(8:831|835|848|849|(0)|854|(0)|863)(0)))(9:518|(2:523|(1:525)(1:526))(1:522)|527|(1:529)(1:530)|457|458|459|864|(0)(0)))(1:508)|509|864|(0)(0))(3:495|(1:500)(1:499)|501))|490|459|864|(0)(0))(5:457|458|459|864|(0)(0)))(2:441|(3:443|(0)(2:447|(1:449)(3:450|(1:452)(1:453)|454))|(0)(0))(0)))|410)|384|385|386)|914|(3:930|(1:934)|935)|936|(5:939|(1:941)(2:943|(9:946|(1:948)|938|949|(4:953|1039|(1:1046)(1:1045)|1047)(5:954|(4:956|(1:(1:959)(2:962|961))(1:963)|960|961)(6:964|(1:966)(4:967|(2:969|(1:977)(1:976))(1:978)|979|(1:981)(1:982))|983|(1:985)(1:986)|987|(3:989|992|(3:1038|1036|1002)(4:997|(2:999|(2:1001|1002)(2:1003|(1:1005)(2:1006|(3:1008|(1:1034)(1:1033)|1035)(1:1037))))(0)|1036|1002))(1:990))|991|992|(4:994|1038|1036|1002)(0))|1048|(2:1052|(1:1054)(2:1055|(4:1057|(1:1059)|1060|(1:1062))))|1063|(1:1065)(2:1066|(5:1068|(6:1070|(1:1072)|1073|(1:1075)|(1:1124)|1125)(2:1077|(5:1079|(1:1081)|1082|(1:1084)(1:1086)|1085)(5:1087|(1:1096)(2:1091|(3:1093|(2:1122|1124)|1125)(1:1094))|1095|(0)|1125))|1076|(0)|1125)(4:1097|(3:1099|(1:1101)(2:1103|(1:1105)(2:1106|(2:1120|1095)(2:1110|(1:1112)(2:1113|(1:1115)(3:1116|(1:1118)|1119)))))|1102)(0)|(0)|1125))))|942|949|(4:951|953|1039|(7:1041|1046|1047|1048|(3:1050|1052|(0)(0))|1063|(0)(0))(0))(0))(3:938|949|(0)(0))))|358|914|(10:916|918|920|922|924|926|928|930|(2:932|934)|935)|936|(0)(0))(2:304|(2:306|(9:314|(1:327)(0)|329|(0)(0)|358|914|(0)|936|(0)(0))(0))(0)))(5:270|(4:276|(1:278)(1:279)|280|(1:282))(1:275)|269|283|(13:285|288|290|292|297|328|329|(0)(0)|358|914|(0)|936|(0)(0))(12:288|290|292|297|328|329|(0)(0)|358|914|(0)|936|(0)(0)))|268|269|283|(0)(0))(12:158|153|159|(0)(0)|249|(2:251|253)|254|(0)(0)|268|269|283|(0)(0)))(2:149|(13:151|152|153|159|(0)(0)|249|(0)|254|(0)(0)|268|269|283|(0)(0))(12:154|153|159|(0)(0)|249|(0)|254|(0)(0)|268|269|283|(0)(0))))|(3:1127|(1:1129)(1:1131)|1130)(1:1132)|1133|(4:1135|(1:1137)(1:1139)|1138|1140)(1:1141)|1142|(1:1144)(1:1145)|1146|(3:1148|(1:1150)(1:1151)|1152)|1153|(2:1155|(65:1157|1173|(2:1180|(2:1188|(1:1209))(2:1191|(2:1193|(0))(2:1196|(2:1198|(0))(2:1201|(4:1203|(1:1205)(1:1206)|1207|(0))))))(2:1177|(0))|1210|(1:1212)|1213|1860|1214|(1:1216)|1217|(1:1219)|1222|(3:1224|(1:1226)(1:1227)|1228)|1229|(1:1231)(1:1232)|1233|(1:1235)|1236|(1:1243)(1:1242)|1244|(1:1246)(1:1248)|1247|1249|(1:1254)(1:1253)|1255|1258|(4:1294|(1:1296)(1:1297)|1298|(2:1299|(5:1301|(1:1303)(1:1304)|1305|(2:1314|1882)(2:1313|1883)|1315)(1:1881)))(8:1263|(1:1265)(1:1266)|1267|(1:1269)(1:1270)|1271|(1:1273)(1:1274)|1275|(2:1276|(5:1278|(1:1280)(1:1281)|1282|(2:1291|1867)(2:1290|1868)|1292)(1:1866)))|1293|1316|(1:1318)(1:1319)|1320|(1:1322)|1323|(1:1333)|1334|(3:1336|(1:1338)(1:1340)|1339)|1341|(2:1343|(1:1345)(2:1346|1347))(1:(4:(4:1388|(1:1390)(1:1392)|1391|1393)(1:1394)|(6:1396|(1:1398)(1:1399)|1400|(3:1402|(1:1404)(1:1405)|1406)(3:1408|(1:1410)(1:1411)|1412)|1407|1413)(1:1414)|1415|(2:1417|(4:1419|(3:1421|(1:1423)(1:1424)|1425)|1426|(3:1428|(1:1430)(1:1431)|1432))(5:1433|(3:1435|(1:1437)(1:1438)|1439)|1440|(3:1442|(1:1444)(1:1445)|1446)|1347)))(4:1353|(2:1382|(2:1384|(1:1386)))(5:1365|(1:1375)(2:1370|(1:1372)(1:1374))|1373|1376|(1:1378)(1:1380))|1379|1381))|(7:(1:1449)|1450|(1:1452)|1453|(1:1461)(1:1462)|1463|(1:1467))|1468|(1:1474)(1:1473)|1475|(3:1483|(1:1485)(1:1486)|1487)|1488|(4:1490|(1:1494)|1495|(2:1496|(1:1498)(1:1869)))(2:1499|(8:1844|1512|(1:1518)|1521|1524|(1:1529)(1:1528)|1530|(2:1531|(1:1533)(1:1880)))(3:1504|1534|(4:1540|(1:1545)(1:1544)|1546|(2:1547|(1:1549)(1:1879)))(1:1539)))|1550|(1:1552)|1553|1850|1554|(1:1556)(1:1557)|1849|1558|1854|1559|(2:1561|(3:1568|(1:1570)(1:1572)|1571)(0))|1862|1575|(6:1846|1577|(4:1579|(1:1602)(2:1590|(0))|1601|1604)|1878|1605|(8:1842|1613|(14:1615|1616|(2:1618|1619)|1645|(1:1651)(1:1649)|1650|1652|(5:1658|(1:1661)|1662|(1:1664)(1:1665)|1666)(3:1668|(2:1670|(1:1674))|1675)|1667|1847|1677|1678|1856|1679)(1:1610)|1622|(3:1635|(1:1643)(1:1641)|1644)|1634|1645|(5:1647|1651|1650|1652|(13:1654|1656|1658|(1:1661)|1662|(0)(0)|1666|1667|1847|1677|1678|1856|1679)(12:1656|1658|(0)|1662|(0)(0)|1666|1667|1847|1677|1678|1856|1679))(0))(0))(2:1605|(7:1607|1611|1842|1613|(0)(0)|1622|(3:1626|1635|(6:1637|1643|1644|1634|1645|(0)(0))(0))(3:1624|1635|(0)(0)))(6:1611|1842|1613|(0)(0)|1622|(0)(0)))|1689|(10:1691|(6:1695|(1:1697)|1698|(1:1700)|1701|(5:1725|1713|1714|1726|(2:1728|(1:1730)))(2:1710|(5:1712|1713|1714|1726|(0))(5:1715|(1:1717)(4:1718|(3:1720|(1:1722)(1:1723)|1724)|1725|1713)|1714|1726|(0))))|1731|(3:1735|(1:(2:1737|(1:1739)(2:1871|1740))(2:1870|1741))|(1:1743))|1744|(1:1757)(3:1748|(1:(2:1750|(1:1752)(2:1873|1753))(2:1872|1754))|(1:1756))|1758|(2:1764|(1:1766))|1767|(4:1771|(1:1773)|1874|1774))(10:1775|(7:1779|(1:1781)|1782|(4:1784|(1:1786)|1787|(1:1789))|1790|(1:1792)|1793)|1794|(4:1798|(1:1800)|1875|1801)|1802|(4:1806|(1:1808)|1876|1809)|1810|(4:1814|(1:1816)|1877|1817)|1818|(1:1822))|1823|(4:(1:1833)(1:1832)|1834|(1:1836)(1:1838)|1837)|1839|1840)(2:1158|1159))(60:1161|(2:1163|(2:1165|(1:1167)(1:1168))(2:1169|(1:1171)(2:1172|1159)))|1173|(3:1175|1180|(5:1182|1184|1186|1188|(0))(4:1184|1186|1188|(0)))(0)|1210|(0)|1213|1860|1214|(0)|1217|(0)|1222|(0)|1229|(0)(0)|1233|(0)|1236|(7:1238|1243|1244|(0)(0)|1247|1249|(3:1251|1254|1255)(0))(0)|1258|(5:1260|1294|(0)(0)|1298|(3:1299|(0)(0)|1315))(0)|1293|1316|(0)(0)|1320|(0)|1323|(4:1327|1329|1331|1333)(4:1325|1329|1331|1333)|1334|(0)|1341|(0)(0)|(0)|1468|(2:1470|1474)(0)|1475|(5:1479|1481|1483|(0)(0)|1487)(5:1477|1481|1483|(0)(0)|1487)|1488|(0)(0)|1550|(0)|1553|1850|1554|(0)(0)|1849|1558|1854|1559|(0)|1862|1575|(0)(0)|1689|(0)(0)|1823|(3:1825|1827|(5:1830|1833|1834|(0)(0)|1837)(0))|1839|1840)|1160|1173|(0)(0)|1210|(0)|1213|1860|1214|(0)|1217|(0)|1222|(0)|1229|(0)(0)|1233|(0)|1236|(0)(0)|1258|(0)(0)|1293|1316|(0)(0)|1320|(0)|1323|(0)(0)|1334|(0)|1341|(0)(0)|(0)|1468|(0)(0)|1475|(0)(0)|1488|(0)(0)|1550|(0)|1553|1850|1554|(0)(0)|1849|1558|1854|1559|(0)|1862|1575|(0)(0)|1689|(0)(0)|1823|(0)|1839|1840) */
    /* JADX WARN: Code restructure failed: missing block: B:1220:0x17c7, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1257:0x18a5, code lost:
    
        org.telegram.messenger.FileLog.e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:1566:0x2029, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1574:0x2080, code lost:
    
        org.telegram.messenger.FileLog.e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:1686:0x2231, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1687:0x2232, code lost:
    
        r10 = r24;
        r9 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x058c, code lost:
    
        if (android.text.TextUtils.isEmpty(r5.message) != false) goto L268;
     */
    /* JADX WARN: Removed duplicated region for block: B:1038:0x13a8  */
    /* JADX WARN: Removed duplicated region for block: B:1046:0x13cc  */
    /* JADX WARN: Removed duplicated region for block: B:1054:0x13f9  */
    /* JADX WARN: Removed duplicated region for block: B:1055:0x1401  */
    /* JADX WARN: Removed duplicated region for block: B:1065:0x1439  */
    /* JADX WARN: Removed duplicated region for block: B:1066:0x144b  */
    /* JADX WARN: Removed duplicated region for block: B:1075:0x147c A[PHI: r28
      0x147c: PHI (r28v3 java.lang.CharSequence) = (r28v0 java.lang.CharSequence), (r28v10 java.lang.CharSequence) binds: [B:1098:0x151e, B:1074:0x147a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:1122:0x1566  */
    /* JADX WARN: Removed duplicated region for block: B:1175:0x1711  */
    /* JADX WARN: Removed duplicated region for block: B:1180:0x1728  */
    /* JADX WARN: Removed duplicated region for block: B:1209:0x1798 A[PHI: r8
      0x1798: PHI (r8v131 int) = (r8v121 int), (r8v126 int), (r8v127 int), (r8v129 int), (r8v190 int) binds: [B:1189:0x174a, B:1208:0x1796, B:1199:0x1775, B:1194:0x1763, B:1178:0x1724] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:1212:0x17a1  */
    /* JADX WARN: Removed duplicated region for block: B:1216:0x17b7  */
    /* JADX WARN: Removed duplicated region for block: B:1219:0x17bc A[Catch: Exception -> 0x17c7, TryCatch #9 {Exception -> 0x17c7, blocks: (B:1214:0x17ae, B:1217:0x17b8, B:1219:0x17bc, B:1222:0x17ca, B:1224:0x17ce, B:1228:0x17e8, B:1229:0x17f1, B:1233:0x1807, B:1235:0x180d, B:1236:0x1819, B:1238:0x182c, B:1240:0x1832, B:1244:0x1843, B:1246:0x1847, B:1247:0x1865, B:1249:0x1884, B:1251:0x1888, B:1253:0x1891, B:1255:0x1899, B:1248:0x1868), top: B:1860:0x17ae }] */
    /* JADX WARN: Removed duplicated region for block: B:1224:0x17ce A[Catch: Exception -> 0x17c7, TryCatch #9 {Exception -> 0x17c7, blocks: (B:1214:0x17ae, B:1217:0x17b8, B:1219:0x17bc, B:1222:0x17ca, B:1224:0x17ce, B:1228:0x17e8, B:1229:0x17f1, B:1233:0x1807, B:1235:0x180d, B:1236:0x1819, B:1238:0x182c, B:1240:0x1832, B:1244:0x1843, B:1246:0x1847, B:1247:0x1865, B:1249:0x1884, B:1251:0x1888, B:1253:0x1891, B:1255:0x1899, B:1248:0x1868), top: B:1860:0x17ae }] */
    /* JADX WARN: Removed duplicated region for block: B:1231:0x1804  */
    /* JADX WARN: Removed duplicated region for block: B:1232:0x1806  */
    /* JADX WARN: Removed duplicated region for block: B:1235:0x180d A[Catch: Exception -> 0x17c7, TryCatch #9 {Exception -> 0x17c7, blocks: (B:1214:0x17ae, B:1217:0x17b8, B:1219:0x17bc, B:1222:0x17ca, B:1224:0x17ce, B:1228:0x17e8, B:1229:0x17f1, B:1233:0x1807, B:1235:0x180d, B:1236:0x1819, B:1238:0x182c, B:1240:0x1832, B:1244:0x1843, B:1246:0x1847, B:1247:0x1865, B:1249:0x1884, B:1251:0x1888, B:1253:0x1891, B:1255:0x1899, B:1248:0x1868), top: B:1860:0x17ae }] */
    /* JADX WARN: Removed duplicated region for block: B:1238:0x182c A[Catch: Exception -> 0x17c7, TryCatch #9 {Exception -> 0x17c7, blocks: (B:1214:0x17ae, B:1217:0x17b8, B:1219:0x17bc, B:1222:0x17ca, B:1224:0x17ce, B:1228:0x17e8, B:1229:0x17f1, B:1233:0x1807, B:1235:0x180d, B:1236:0x1819, B:1238:0x182c, B:1240:0x1832, B:1244:0x1843, B:1246:0x1847, B:1247:0x1865, B:1249:0x1884, B:1251:0x1888, B:1253:0x1891, B:1255:0x1899, B:1248:0x1868), top: B:1860:0x17ae }] */
    /* JADX WARN: Removed duplicated region for block: B:1243:0x1841  */
    /* JADX WARN: Removed duplicated region for block: B:1246:0x1847 A[Catch: Exception -> 0x17c7, TryCatch #9 {Exception -> 0x17c7, blocks: (B:1214:0x17ae, B:1217:0x17b8, B:1219:0x17bc, B:1222:0x17ca, B:1224:0x17ce, B:1228:0x17e8, B:1229:0x17f1, B:1233:0x1807, B:1235:0x180d, B:1236:0x1819, B:1238:0x182c, B:1240:0x1832, B:1244:0x1843, B:1246:0x1847, B:1247:0x1865, B:1249:0x1884, B:1251:0x1888, B:1253:0x1891, B:1255:0x1899, B:1248:0x1868), top: B:1860:0x17ae }] */
    /* JADX WARN: Removed duplicated region for block: B:1248:0x1868 A[Catch: Exception -> 0x17c7, TryCatch #9 {Exception -> 0x17c7, blocks: (B:1214:0x17ae, B:1217:0x17b8, B:1219:0x17bc, B:1222:0x17ca, B:1224:0x17ce, B:1228:0x17e8, B:1229:0x17f1, B:1233:0x1807, B:1235:0x180d, B:1236:0x1819, B:1238:0x182c, B:1240:0x1832, B:1244:0x1843, B:1246:0x1847, B:1247:0x1865, B:1249:0x1884, B:1251:0x1888, B:1253:0x1891, B:1255:0x1899, B:1248:0x1868), top: B:1860:0x17ae }] */
    /* JADX WARN: Removed duplicated region for block: B:1254:0x1898  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:1260:0x18be  */
    /* JADX WARN: Removed duplicated region for block: B:1294:0x19e0  */
    /* JADX WARN: Removed duplicated region for block: B:1296:0x1a27  */
    /* JADX WARN: Removed duplicated region for block: B:1297:0x1a4a  */
    /* JADX WARN: Removed duplicated region for block: B:1301:0x1a88  */
    /* JADX WARN: Removed duplicated region for block: B:1318:0x1add  */
    /* JADX WARN: Removed duplicated region for block: B:1319:0x1af4  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:1322:0x1b09  */
    /* JADX WARN: Removed duplicated region for block: B:1325:0x1b18  */
    /* JADX WARN: Removed duplicated region for block: B:1327:0x1b1c  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:1336:0x1b46  */
    /* JADX WARN: Removed duplicated region for block: B:1343:0x1b6a  */
    /* JADX WARN: Removed duplicated region for block: B:1348:0x1ba2  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x032d  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:1448:0x1e13  */
    /* JADX WARN: Removed duplicated region for block: B:1470:0x1e6a  */
    /* JADX WARN: Removed duplicated region for block: B:1474:0x1e72  */
    /* JADX WARN: Removed duplicated region for block: B:1477:0x1e7e  */
    /* JADX WARN: Removed duplicated region for block: B:1479:0x1e82  */
    /* JADX WARN: Removed duplicated region for block: B:1485:0x1e96  */
    /* JADX WARN: Removed duplicated region for block: B:1486:0x1e99  */
    /* JADX WARN: Removed duplicated region for block: B:1490:0x1ea8  */
    /* JADX WARN: Removed duplicated region for block: B:1499:0x1ec9  */
    /* JADX WARN: Removed duplicated region for block: B:1552:0x1f94  */
    /* JADX WARN: Removed duplicated region for block: B:1556:0x1fb7 A[Catch: Exception -> 0x200a, TryCatch #4 {Exception -> 0x200a, blocks: (B:1554:0x1faf, B:1556:0x1fb7, B:1557:0x2007), top: B:1850:0x1faf }] */
    /* JADX WARN: Removed duplicated region for block: B:1557:0x2007 A[Catch: Exception -> 0x200a, TRY_LEAVE, TryCatch #4 {Exception -> 0x200a, blocks: (B:1554:0x1faf, B:1556:0x1fb7, B:1557:0x2007), top: B:1850:0x1faf }] */
    /* JADX WARN: Removed duplicated region for block: B:1561:0x2020 A[Catch: Exception -> 0x2029, TryCatch #6 {Exception -> 0x2029, blocks: (B:1559:0x201a, B:1561:0x2020, B:1563:0x2024, B:1572:0x2057, B:1571:0x2054, B:1568:0x202b, B:1570:0x2031), top: B:1854:0x201a }] */
    /* JADX WARN: Removed duplicated region for block: B:1572:0x2057 A[Catch: Exception -> 0x2029, TRY_LEAVE, TryCatch #6 {Exception -> 0x2029, blocks: (B:1559:0x201a, B:1561:0x2020, B:1563:0x2024, B:1572:0x2057, B:1571:0x2054, B:1568:0x202b, B:1570:0x2031), top: B:1854:0x201a }] */
    /* JADX WARN: Removed duplicated region for block: B:1602:0x20d2 A[Catch: Exception -> 0x20ae, TRY_LEAVE, TryCatch #2 {Exception -> 0x20ae, blocks: (B:1577:0x2087, B:1579:0x2099, B:1581:0x209f, B:1583:0x20a3, B:1585:0x20a9, B:1590:0x20b5, B:1592:0x20b9, B:1594:0x20bd, B:1596:0x20c1, B:1598:0x20c5, B:1602:0x20d2, B:1607:0x20dc, B:1624:0x2106, B:1637:0x212f, B:1639:0x2133, B:1641:0x2146, B:1647:0x2173, B:1649:0x2177, B:1654:0x2183, B:1670:0x21c8, B:1672:0x21da, B:1674:0x21e0, B:1658:0x218d, B:1661:0x2193, B:1662:0x219a, B:1666:0x21ac, B:1629:0x2112, B:1631:0x211a, B:1618:0x20f2), top: B:1846:0x2087 }] */
    /* JADX WARN: Removed duplicated region for block: B:1605:0x20d8 A[Catch: Exception -> 0x2231, TRY_ENTER, TRY_LEAVE, TryCatch #10 {Exception -> 0x2231, blocks: (B:1575:0x2083, B:1605:0x20d8, B:1622:0x2102, B:1635:0x2129, B:1644:0x216a, B:1645:0x216f, B:1652:0x217f, B:1668:0x21c4, B:1675:0x21f4, B:1656:0x2187, B:1651:0x217c, B:1643:0x215d, B:1626:0x210a, B:1611:0x20e3), top: B:1862:0x2083 }] */
    /* JADX WARN: Removed duplicated region for block: B:1610:0x20e1  */
    /* JADX WARN: Removed duplicated region for block: B:1615:0x20ed A[Catch: Exception -> 0x20ff, TRY_LEAVE, TryCatch #0 {Exception -> 0x20ff, blocks: (B:1613:0x20e9, B:1615:0x20ed), top: B:1842:0x20e9 }] */
    /* JADX WARN: Removed duplicated region for block: B:161:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:1624:0x2106 A[Catch: Exception -> 0x20ae, TRY_ENTER, TRY_LEAVE, TryCatch #2 {Exception -> 0x20ae, blocks: (B:1577:0x2087, B:1579:0x2099, B:1581:0x209f, B:1583:0x20a3, B:1585:0x20a9, B:1590:0x20b5, B:1592:0x20b9, B:1594:0x20bd, B:1596:0x20c1, B:1598:0x20c5, B:1602:0x20d2, B:1607:0x20dc, B:1624:0x2106, B:1637:0x212f, B:1639:0x2133, B:1641:0x2146, B:1647:0x2173, B:1649:0x2177, B:1654:0x2183, B:1670:0x21c8, B:1672:0x21da, B:1674:0x21e0, B:1658:0x218d, B:1661:0x2193, B:1662:0x219a, B:1666:0x21ac, B:1629:0x2112, B:1631:0x211a, B:1618:0x20f2), top: B:1846:0x2087 }] */
    /* JADX WARN: Removed duplicated region for block: B:1626:0x210a A[Catch: Exception -> 0x2231, TRY_ENTER, TRY_LEAVE, TryCatch #10 {Exception -> 0x2231, blocks: (B:1575:0x2083, B:1605:0x20d8, B:1622:0x2102, B:1635:0x2129, B:1644:0x216a, B:1645:0x216f, B:1652:0x217f, B:1668:0x21c4, B:1675:0x21f4, B:1656:0x2187, B:1651:0x217c, B:1643:0x215d, B:1626:0x210a, B:1611:0x20e3), top: B:1862:0x2083 }] */
    /* JADX WARN: Removed duplicated region for block: B:1637:0x212f A[Catch: Exception -> 0x20ae, TRY_ENTER, TryCatch #2 {Exception -> 0x20ae, blocks: (B:1577:0x2087, B:1579:0x2099, B:1581:0x209f, B:1583:0x20a3, B:1585:0x20a9, B:1590:0x20b5, B:1592:0x20b9, B:1594:0x20bd, B:1596:0x20c1, B:1598:0x20c5, B:1602:0x20d2, B:1607:0x20dc, B:1624:0x2106, B:1637:0x212f, B:1639:0x2133, B:1641:0x2146, B:1647:0x2173, B:1649:0x2177, B:1654:0x2183, B:1670:0x21c8, B:1672:0x21da, B:1674:0x21e0, B:1658:0x218d, B:1661:0x2193, B:1662:0x219a, B:1666:0x21ac, B:1629:0x2112, B:1631:0x211a, B:1618:0x20f2), top: B:1846:0x2087 }] */
    /* JADX WARN: Removed duplicated region for block: B:1643:0x215d A[Catch: Exception -> 0x2231, TRY_ENTER, TryCatch #10 {Exception -> 0x2231, blocks: (B:1575:0x2083, B:1605:0x20d8, B:1622:0x2102, B:1635:0x2129, B:1644:0x216a, B:1645:0x216f, B:1652:0x217f, B:1668:0x21c4, B:1675:0x21f4, B:1656:0x2187, B:1651:0x217c, B:1643:0x215d, B:1626:0x210a, B:1611:0x20e3), top: B:1862:0x2083 }] */
    /* JADX WARN: Removed duplicated region for block: B:1647:0x2173 A[Catch: Exception -> 0x20ae, TRY_ENTER, TryCatch #2 {Exception -> 0x20ae, blocks: (B:1577:0x2087, B:1579:0x2099, B:1581:0x209f, B:1583:0x20a3, B:1585:0x20a9, B:1590:0x20b5, B:1592:0x20b9, B:1594:0x20bd, B:1596:0x20c1, B:1598:0x20c5, B:1602:0x20d2, B:1607:0x20dc, B:1624:0x2106, B:1637:0x212f, B:1639:0x2133, B:1641:0x2146, B:1647:0x2173, B:1649:0x2177, B:1654:0x2183, B:1670:0x21c8, B:1672:0x21da, B:1674:0x21e0, B:1658:0x218d, B:1661:0x2193, B:1662:0x219a, B:1666:0x21ac, B:1629:0x2112, B:1631:0x211a, B:1618:0x20f2), top: B:1846:0x2087 }] */
    /* JADX WARN: Removed duplicated region for block: B:1651:0x217c A[Catch: Exception -> 0x2231, TRY_ENTER, TryCatch #10 {Exception -> 0x2231, blocks: (B:1575:0x2083, B:1605:0x20d8, B:1622:0x2102, B:1635:0x2129, B:1644:0x216a, B:1645:0x216f, B:1652:0x217f, B:1668:0x21c4, B:1675:0x21f4, B:1656:0x2187, B:1651:0x217c, B:1643:0x215d, B:1626:0x210a, B:1611:0x20e3), top: B:1862:0x2083 }] */
    /* JADX WARN: Removed duplicated region for block: B:1660:0x2191 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1664:0x21a7  */
    /* JADX WARN: Removed duplicated region for block: B:1665:0x21aa  */
    /* JADX WARN: Removed duplicated region for block: B:1691:0x224f  */
    /* JADX WARN: Removed duplicated region for block: B:1728:0x2334  */
    /* JADX WARN: Removed duplicated region for block: B:1775:0x242d  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0423  */
    /* JADX WARN: Removed duplicated region for block: B:1825:0x251c  */
    /* JADX WARN: Removed duplicated region for block: B:1833:0x2547  */
    /* JADX WARN: Removed duplicated region for block: B:1836:0x2558  */
    /* JADX WARN: Removed duplicated region for block: B:1838:0x2560  */
    /* JADX WARN: Removed duplicated region for block: B:1846:0x2087 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1881:0x19dd A[EDGE_INSN: B:1881:0x19dd->B:1293:0x19dd BREAK  A[LOOP:13: B:1299:0x1a83->B:1315:0x1ac6], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:231:0x04e4  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x04fa  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0547  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0553  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0592  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x05cc  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x05d0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:297:0x05e9  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0611  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x063a  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x06c4  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x0911  */
    /* JADX WARN: Removed duplicated region for block: B:457:0x0916 A[PHI: r0 r3
      0x0916: PHI (r0v305 java.lang.CharSequence) = (r0v68 java.lang.CharSequence), (r0v256 java.lang.CharSequence), (r0v257 java.lang.CharSequence) binds: [B:456:0x0914, B:530:0x0a03, B:529:0x09fa] A[DONT_GENERATE, DONT_INLINE]
      0x0916: PHI (r3v14 boolean) = (r3v6 boolean), (r3v8 boolean), (r3v8 boolean) binds: [B:456:0x0914, B:530:0x0a03, B:529:0x09fa] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:460:0x091c  */
    /* JADX WARN: Removed duplicated region for block: B:478:0x0951  */
    /* JADX WARN: Removed duplicated region for block: B:567:0x0a70  */
    /* JADX WARN: Removed duplicated region for block: B:578:0x0a8e A[PHI: r14
      0x0a8e: PHI (r14v33 java.lang.CharSequence) = (r14v81 java.lang.CharSequence), (r14v82 java.lang.CharSequence) binds: [B:577:0x0a8c, B:590:0x0ab7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:696:0x0c94  */
    /* JADX WARN: Removed duplicated region for block: B:769:0x0e64  */
    /* JADX WARN: Removed duplicated region for block: B:828:0x1005  */
    /* JADX WARN: Removed duplicated region for block: B:848:0x103f  */
    /* JADX WARN: Removed duplicated region for block: B:851:0x1057  */
    /* JADX WARN: Removed duplicated region for block: B:856:0x1068  */
    /* JADX WARN: Removed duplicated region for block: B:866:0x10c8  */
    /* JADX WARN: Removed duplicated region for block: B:867:0x10d2  */
    /* JADX WARN: Removed duplicated region for block: B:916:0x11bd  */
    /* JADX WARN: Removed duplicated region for block: B:938:0x1239  */
    /* JADX WARN: Removed duplicated region for block: B:939:0x123c  */
    /* JADX WARN: Removed duplicated region for block: B:951:0x125a  */
    /* JADX WARN: Removed duplicated region for block: B:953:0x125e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void buildLayout() {
        int i;
        CharSequence charSequence;
        String str;
        CharSequence printingString;
        int i2;
        int iDp;
        int i3;
        long j;
        long botVerificationIcon;
        ScamDrawable scamDrawable;
        ScamDrawable scamDrawable2;
        int i4;
        CharSequence charSequence2;
        TLRPC.DraftMessage draft;
        boolean z;
        TLRPC.DraftMessage draftMessage;
        TLRPC.DraftMessage draftMessage2;
        TLRPC.InputReplyTo inputReplyTo;
        TLRPC.DraftMessage draftMessage3;
        CharSequence charSequence3;
        int i5;
        boolean z2;
        CharSequence charSequence4;
        CharSequence string;
        String strSubstring;
        boolean z3;
        ArrayList arrayList;
        CharSequence charSequenceReplaceEmoji;
        int i6;
        CharSequence charSequence5;
        CharSequence topicsNames;
        TLRPC.Chat chat;
        CharSequence charSequenceApplyThumbs;
        boolean z4;
        boolean z5;
        CharSequence charSequenceEllipsizeCenterEnd;
        int i7;
        char c;
        String firstName;
        StringBuilder sb;
        String str2;
        TLRPC.TL_textWithEntities tL_textWithEntities;
        SpannableString spannableString;
        SpannableStringBuilder spannableStringBuilder;
        CharSequence string2;
        MessageObject messageObject;
        TextPaint textPaint;
        CharSequence pluralString;
        CharSequence charSequence6;
        int size;
        int i8;
        char c2;
        int i9;
        int i10;
        String pluralString2;
        CharSequence charSequence7;
        SpannableStringBuilder spannableStringBuilder2;
        int i11;
        CharSequence charSequenceAppend;
        CharSequence charSequence8;
        CharSequence charSequence9;
        CharSequence charSequence10;
        CharSequence charSequenceReplaceNewLines;
        MessageObject messageObject2;
        CharSequence charSequence11;
        int length;
        Object foregroundColorSpanThemable;
        TLRPC.User user;
        MessageObject messageObject3;
        TLRPC.User user2;
        CharSequence charSequence12;
        CharSequence charSequence13;
        CharSequence archivedDialogNames;
        CharSequence string3;
        CharSequence string4;
        int i12;
        int i13;
        String str3;
        CharSequence charSequence14;
        CharSequence charSequence15;
        CharSequence charSequence16;
        TLRPC.TL_messageReactions tL_messageReactions;
        ArrayList arrayList2;
        CharSequence string5;
        int i14;
        CharSequence charSequence17;
        CharSequence charSequence18;
        CharSequence charSequence19;
        int i15;
        String strStringForMessageListDate;
        MessageObject messageObject4;
        boolean z6;
        String str4;
        String str5;
        MessagesController messagesController;
        CharSequence charSequence20;
        String userName;
        int i16;
        CharSequence string6;
        CharSequence charSequence21;
        String str6;
        String str7;
        boolean z7;
        int i17;
        String str8;
        boolean z8;
        CharSequence charSequence22;
        CharSequence topicSpannedName;
        int i18;
        boolean z9;
        boolean z10;
        boolean z11;
        String str9;
        int i19;
        MessageObject messageObject5;
        TLRPC.Message message;
        TLRPC.TL_textWithEntities tL_textWithEntities2;
        TLRPC.TL_chatAdminRights tL_chatAdminRights;
        MessageObject messageObject6;
        int iDp2;
        CharSequence charSequence23;
        int i20;
        CharSequence charSequence24;
        String str10;
        int i21;
        int intrinsicWidth;
        int intrinsicWidth2;
        int i22;
        int iDp3;
        int iDp4;
        int measuredWidth;
        int iDp5;
        int iDp6;
        int i23;
        ImageReceiver[] imageReceiverArr;
        DialogCellTags dialogCellTags;
        int iDp7;
        CharSequence charSequenceHighlightText;
        int i24;
        int i25;
        StaticLayout staticLayout;
        int i26;
        int lineCount;
        int lineCount2;
        int lineCount3;
        StaticLayout staticLayout2;
        float primaryHorizontal;
        float primaryHorizontal2;
        int i27;
        int lineCount4;
        int lineCount5;
        int i28;
        int lineCount6;
        int i29;
        double d;
        Drawable drawable;
        int intrinsicWidth3;
        CharSequence charSequence25;
        CharSequence charSequence26;
        Layout.Alignment alignment;
        TextPaint textPaint2;
        float fDp;
        TextUtils.TruncateAt truncateAt;
        CharSequence charSequenceHighlightText2;
        DialogCellTags dialogCellTags2;
        int iDp8;
        int iDp9;
        DialogCellTags dialogCellTags3;
        int iDp10;
        CharSequence charSequenceHighlightText3;
        float f;
        int intrinsicWidth4;
        int i30;
        int iDp11;
        CustomDialog customDialog;
        CharSequence string7;
        int i31;
        String str11;
        int i32;
        SpannableStringBuilder internal;
        int i33;
        boolean z12 = true;
        if (this.isTransitionSupport) {
            return;
        }
        if (this.isDialogCell && !this.updateHelper.update() && this.currentDialogFolderId == 0 && this.encryptedChat == null) {
            return;
        }
        if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
            Theme.dialogs_namePaint[0].setTextSize(AndroidUtilities.dp(17.0f));
            Theme.dialogs_nameEncryptedPaint[0].setTextSize(AndroidUtilities.dp(17.0f));
            Theme.dialogs_messagePaint[0].setTextSize(AndroidUtilities.dp(16.0f));
            Theme.dialogs_messagePrintingPaint[0].setTextSize(AndroidUtilities.dp(16.0f));
            Theme.dialogs_namePaint[1].setTextSize(AndroidUtilities.dp(16.0f));
            Theme.dialogs_nameEncryptedPaint[1].setTextSize(AndroidUtilities.dp(16.0f));
            Theme.dialogs_messagePaint[1].setTextSize(AndroidUtilities.dp(15.0f));
            Theme.dialogs_messagePrintingPaint[1].setTextSize(AndroidUtilities.dp(15.0f));
            TextPaint textPaint3 = Theme.dialogs_messagePaint[1];
            int color = Theme.getColor(Theme.key_chats_message_threeLines, this.resourcesProvider);
            textPaint3.linkColor = color;
            textPaint3.setColor(color);
            this.paintIndex = 1;
            i = 18;
        } else {
            Theme.dialogs_namePaint[0].setTextSize(AndroidUtilities.dp(17.0f));
            Theme.dialogs_nameEncryptedPaint[0].setTextSize(AndroidUtilities.dp(17.0f));
            Theme.dialogs_messagePaint[0].setTextSize(AndroidUtilities.dp(16.0f));
            Theme.dialogs_messagePrintingPaint[0].setTextSize(AndroidUtilities.dp(16.0f));
            TextPaint textPaint4 = Theme.dialogs_messagePaint[0];
            int color2 = Theme.getColor(Theme.key_chats_message, this.resourcesProvider);
            textPaint4.linkColor = color2;
            textPaint4.setColor(color2);
            this.paintIndex = 0;
            i = 19;
        }
        this.thumbSize = i;
        this.currentDialogFolderDialogsCount = 0;
        if (isForumCell() || !(this.isDialogCell || this.isTopic)) {
            charSequence = "d ";
            str = "**reaction**";
            printingString = null;
        } else {
            charSequence = "d ";
            str = "**reaction**";
            printingString = MessagesController.getInstance(this.currentAccount).getPrintingString(this.currentDialogId, getTopicId(), true);
        }
        this.currentMessagePaint = Theme.dialogs_messagePaint[this.paintIndex];
        this.drawNameLock = false;
        this.drawVerified = false;
        this.drawBotVerified = false;
        this.drawPremium = false;
        this.drawForwardIcon = false;
        this.drawGiftIcon = false;
        this.drawScam = 0;
        this.drawPinBackground = false;
        this.thumbsCount = 0;
        this.hasVideoThumb = false;
        this.nameLayoutEllipsizeByGradient = false;
        boolean z13 = (UserObject.isUserSelf(this.user) || this.useMeForMyMessages) ? false : true;
        this.printingStringType = -1;
        if (!isForumCell()) {
            this.buttonLayout = null;
        }
        setOpenBotButton(false);
        if ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) && this.currentDialogFolderId == 0 && !isForumCell() && !hasTags()) {
            this.hasNameInMessage = false;
            i2 = 2;
        } else {
            this.hasNameInMessage = true;
            i2 = 1;
        }
        MessageObject messageObject7 = this.message;
        if (messageObject7 != null) {
            messageObject7.updateTranslation();
        }
        MessageObject messageObject8 = this.message;
        CharSequence charSequence27 = messageObject8 != null ? messageObject8.messageText : null;
        if (charSequence27 instanceof Spannable) {
            SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(charSequence27);
            for (URLSpanNoUnderlineBold uRLSpanNoUnderlineBold : (URLSpanNoUnderlineBold[]) spannableStringBuilder3.getSpans(0, spannableStringBuilder3.length(), URLSpanNoUnderlineBold.class)) {
                spannableStringBuilder3.removeSpan(uRLSpanNoUnderlineBold);
            }
            for (URLSpanNoUnderline uRLSpanNoUnderline : (URLSpanNoUnderline[]) spannableStringBuilder3.getSpans(0, spannableStringBuilder3.length(), URLSpanNoUnderline.class)) {
                spannableStringBuilder3.removeSpan(uRLSpanNoUnderline);
            }
            charSequence27 = spannableStringBuilder3;
        }
        this.lastMessageString = charSequence27;
        CustomDialog customDialog2 = this.customDialog;
        if (customDialog2 != null) {
            if (customDialog2.type == 2) {
                this.drawNameLock = true;
                if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
                    this.nameLockTop = AndroidUtilities.dp(12.5f);
                    if (LocaleController.isRTL) {
                        this.nameLockLeft = (getMeasuredWidth() - AndroidUtilities.dp(this.messagePaddingStart + 6)) - Theme.dialogs_lockDrawable.getIntrinsicWidth();
                        iDp11 = AndroidUtilities.dp(22.0f);
                        this.nameLeft = iDp11;
                        customDialog = this.customDialog;
                        if (customDialog.type != 1) {
                            string7 = LocaleController.getString(R.string.FromYou);
                            CustomDialog customDialog3 = this.customDialog;
                            if (customDialog3.isMedia) {
                                this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                internal = formatInternal(i2, this.message.messageText, null);
                                internal.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_attachMessage, this.resourcesProvider), 0, internal.length(), 33);
                            } else {
                                String strReplace = customDialog3.message;
                                if (strReplace.length() > 150) {
                                    strReplace = strReplace.substring(0, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                                }
                                if (!this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) {
                                    strReplace = strReplace.replace('\n', ' ');
                                }
                                internal = formatInternal(i2, strReplace, string7);
                            }
                            topicsNames = Emoji.replaceEmoji(internal, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), false);
                            z7 = false;
                        } else {
                            topicsNames = customDialog.message;
                            if (customDialog.isMedia) {
                                this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                            }
                            string7 = null;
                            z7 = true;
                        }
                        String strStringForMessageListDate2 = LocaleController.stringForMessageListDate(this.customDialog.date);
                        i31 = this.customDialog.unread_count;
                        if (i31 == 0) {
                            this.drawCount = true;
                            str11 = String.format("%d", Integer.valueOf(i31));
                        } else {
                            this.drawCount = false;
                            str11 = null;
                        }
                        CustomDialog customDialog4 = this.customDialog;
                        i32 = customDialog4.sent;
                        if (i32 != 0) {
                            this.drawClock = true;
                        } else {
                            if (i32 == 2) {
                                this.drawCheck1 = true;
                            } else if (i32 == 1) {
                                this.drawCheck1 = false;
                            } else {
                                this.drawClock = false;
                            }
                            this.drawCheck2 = true;
                            this.drawClock = false;
                            this.drawError = false;
                            charSequence22 = string7;
                            charSequence21 = null;
                            str7 = null;
                            string6 = customDialog4.name;
                            charSequence23 = "";
                            i17 = -1;
                            z8 = true;
                            String str12 = str11;
                            str8 = strStringForMessageListDate2;
                            str6 = str12;
                        }
                        this.drawCheck1 = false;
                        this.drawCheck2 = false;
                        this.drawError = false;
                        charSequence22 = string7;
                        charSequence21 = null;
                        str7 = null;
                        string6 = customDialog4.name;
                        charSequence23 = "";
                        i17 = -1;
                        z8 = true;
                        String str122 = str11;
                        str8 = strStringForMessageListDate2;
                        str6 = str122;
                    } else {
                        this.nameLockLeft = AndroidUtilities.dp(this.messagePaddingStart + 6);
                        i33 = this.messagePaddingStart + 10;
                    }
                } else {
                    this.nameLockTop = AndroidUtilities.dp(16.5f);
                    if (LocaleController.isRTL) {
                        this.nameLockLeft = (getMeasuredWidth() - AndroidUtilities.dp(this.messagePaddingStart + 4)) - Theme.dialogs_lockDrawable.getIntrinsicWidth();
                        iDp11 = AndroidUtilities.dp(18.0f);
                        this.nameLeft = iDp11;
                        customDialog = this.customDialog;
                        if (customDialog.type != 1) {
                        }
                        String strStringForMessageListDate22 = LocaleController.stringForMessageListDate(this.customDialog.date);
                        i31 = this.customDialog.unread_count;
                        if (i31 == 0) {
                        }
                        CustomDialog customDialog42 = this.customDialog;
                        i32 = customDialog42.sent;
                        if (i32 != 0) {
                        }
                        this.drawCheck1 = false;
                        this.drawCheck2 = false;
                        this.drawError = false;
                        charSequence22 = string7;
                        charSequence21 = null;
                        str7 = null;
                        string6 = customDialog42.name;
                        charSequence23 = "";
                        i17 = -1;
                        z8 = true;
                        String str1222 = str11;
                        str8 = strStringForMessageListDate22;
                        str6 = str1222;
                    } else {
                        this.nameLockLeft = AndroidUtilities.dp(this.messagePaddingStart + 4);
                        i33 = this.messagePaddingStart + 8;
                    }
                }
                iDp11 = AndroidUtilities.dp(i33) + Theme.dialogs_lockDrawable.getIntrinsicWidth();
                this.nameLeft = iDp11;
                customDialog = this.customDialog;
                if (customDialog.type != 1) {
                }
                String strStringForMessageListDate222 = LocaleController.stringForMessageListDate(this.customDialog.date);
                i31 = this.customDialog.unread_count;
                if (i31 == 0) {
                }
                CustomDialog customDialog422 = this.customDialog;
                i32 = customDialog422.sent;
                if (i32 != 0) {
                }
                this.drawCheck1 = false;
                this.drawCheck2 = false;
                this.drawError = false;
                charSequence22 = string7;
                charSequence21 = null;
                str7 = null;
                string6 = customDialog422.name;
                charSequence23 = "";
                i17 = -1;
                z8 = true;
                String str12222 = str11;
                str8 = strStringForMessageListDate222;
                str6 = str12222;
            } else {
                this.drawVerified = !this.forbidVerified && customDialog2.verified;
                if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
                    if (!LocaleController.isRTL) {
                        i30 = this.messagePaddingStart + 6;
                    }
                    iDp11 = AndroidUtilities.dp(22.0f);
                    this.nameLeft = iDp11;
                    customDialog = this.customDialog;
                    if (customDialog.type != 1) {
                    }
                    String strStringForMessageListDate2222 = LocaleController.stringForMessageListDate(this.customDialog.date);
                    i31 = this.customDialog.unread_count;
                    if (i31 == 0) {
                    }
                    CustomDialog customDialog4222 = this.customDialog;
                    i32 = customDialog4222.sent;
                    if (i32 != 0) {
                    }
                    this.drawCheck1 = false;
                    this.drawCheck2 = false;
                    this.drawError = false;
                    charSequence22 = string7;
                    charSequence21 = null;
                    str7 = null;
                    string6 = customDialog4222.name;
                    charSequence23 = "";
                    i17 = -1;
                    z8 = true;
                    String str122222 = str11;
                    str8 = strStringForMessageListDate2222;
                    str6 = str122222;
                } else {
                    if (!LocaleController.isRTL) {
                        i30 = this.messagePaddingStart + 4;
                    }
                    iDp11 = AndroidUtilities.dp(18.0f);
                    this.nameLeft = iDp11;
                    customDialog = this.customDialog;
                    if (customDialog.type != 1) {
                    }
                    String strStringForMessageListDate22222 = LocaleController.stringForMessageListDate(this.customDialog.date);
                    i31 = this.customDialog.unread_count;
                    if (i31 == 0) {
                    }
                    CustomDialog customDialog42222 = this.customDialog;
                    i32 = customDialog42222.sent;
                    if (i32 != 0) {
                    }
                    this.drawCheck1 = false;
                    this.drawCheck2 = false;
                    this.drawError = false;
                    charSequence22 = string7;
                    charSequence21 = null;
                    str7 = null;
                    string6 = customDialog42222.name;
                    charSequence23 = "";
                    i17 = -1;
                    z8 = true;
                    String str1222222 = str11;
                    str8 = strStringForMessageListDate22222;
                    str6 = str1222222;
                }
                iDp11 = AndroidUtilities.dp(i30);
                this.nameLeft = iDp11;
                customDialog = this.customDialog;
                if (customDialog.type != 1) {
                }
                String strStringForMessageListDate222222 = LocaleController.stringForMessageListDate(this.customDialog.date);
                i31 = this.customDialog.unread_count;
                if (i31 == 0) {
                }
                CustomDialog customDialog422222 = this.customDialog;
                i32 = customDialog422222.sent;
                if (i32 != 0) {
                }
                this.drawCheck1 = false;
                this.drawCheck2 = false;
                this.drawError = false;
                charSequence22 = string7;
                charSequence21 = null;
                str7 = null;
                string6 = customDialog422222.name;
                charSequence23 = "";
                i17 = -1;
                z8 = true;
                String str12222222 = str11;
                str8 = strStringForMessageListDate222222;
                str6 = str12222222;
            }
        } else if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
            if (LocaleController.isRTL) {
                iDp = AndroidUtilities.dp(22.0f);
                this.nameLeft = iDp;
                if (this.encryptedChat == null) {
                }
                i4 = this.lastMessageDate;
                if (i4 == 0) {
                    i4 = messageObject6.messageOwner.date;
                }
                if (this.isTopic) {
                }
                draft = null;
                this.draftMessage = draft;
                z = this.draftVoice;
                if (z) {
                }
            } else {
                i3 = this.messagePaddingStart + 6;
                iDp = AndroidUtilities.dp(i3);
                this.nameLeft = iDp;
                if (this.encryptedChat == null) {
                    if (this.currentDialogFolderId == 0) {
                        this.drawNameLock = true;
                        if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
                            this.nameLockTop = AndroidUtilities.dp(12.5f);
                            if (LocaleController.isRTL) {
                                this.nameLockLeft = (getMeasuredWidth() - AndroidUtilities.dp(this.messagePaddingStart + 6)) - Theme.dialogs_lockDrawable.getIntrinsicWidth();
                                iDp2 = AndroidUtilities.dp(22.0f);
                            } else {
                                this.nameLockLeft = AndroidUtilities.dp(this.messagePaddingStart + 6);
                                iDp2 = AndroidUtilities.dp(this.messagePaddingStart + 10) + Theme.dialogs_lockDrawable.getIntrinsicWidth();
                            }
                        } else {
                            this.nameLockTop = AndroidUtilities.dp(16.5f);
                            if (LocaleController.isRTL) {
                                this.nameLockLeft = (getMeasuredWidth() - AndroidUtilities.dp(this.messagePaddingStart + 4)) - Theme.dialogs_lockDrawable.getIntrinsicWidth();
                                iDp2 = AndroidUtilities.dp(18.0f);
                            } else {
                                this.nameLockLeft = AndroidUtilities.dp(this.messagePaddingStart + 4);
                                iDp2 = AndroidUtilities.dp(this.messagePaddingStart + 8) + Theme.dialogs_lockDrawable.getIntrinsicWidth();
                            }
                        }
                        this.nameLeft = iDp2;
                    }
                } else if (this.currentDialogFolderId == 0) {
                    TLRPC.Chat chat2 = this.chat;
                    if (chat2 != null) {
                        botVerificationIcon = DialogObject.getBotVerificationIcon(chat2);
                        TLRPC.Chat chat3 = this.chat;
                        if (chat3.scam) {
                            this.drawScam = 1;
                            scamDrawable2 = Theme.dialogs_scamDrawable;
                        } else if (chat3.fake) {
                            this.drawScam = 2;
                            scamDrawable2 = Theme.dialogs_fakeDrawable;
                        } else if (DialogObject.getEmojiStatusDocumentId(chat3.emoji_status) != 0) {
                            this.drawPremium = true;
                            this.nameLayoutEllipsizeByGradient = true;
                            AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emojiStatus;
                            swapAnimatedEmojiDrawable.center = LocaleController.isRTL;
                            swapAnimatedEmojiDrawable.set(DialogObject.getEmojiStatusDocumentId(this.chat.emoji_status), false);
                            this.emojiStatus.setParticles(DialogObject.isEmojiStatusCollectible(this.chat.emoji_status), false);
                        } else {
                            boolean z14 = this.forbidVerified;
                            this.drawVerified = !z14 && this.chat.verified;
                            this.drawBotVerified = (z14 || this.chat.bot_verification_icon == 0) ? false : true;
                        }
                        scamDrawable2.checkText();
                    } else {
                        TLRPC.User user3 = this.user;
                        if (user3 != null) {
                            botVerificationIcon = DialogObject.getBotVerificationIcon(user3);
                            TLRPC.User user4 = this.user;
                            if (user4.scam) {
                                this.drawScam = 1;
                                scamDrawable = Theme.dialogs_scamDrawable;
                            } else if (user4.fake) {
                                this.drawScam = 2;
                                scamDrawable = Theme.dialogs_fakeDrawable;
                            } else {
                                boolean z15 = this.forbidVerified;
                                this.drawVerified = !z15 && user4.verified;
                                this.drawBotVerified = (z15 || UserObject.isUserSelf(user4) || this.user.bot_verification_icon == 0) ? false : true;
                                if (!MessagesController.getInstance(this.currentAccount).isPremiumUser(this.user)) {
                                    long j2 = UserConfig.getInstance(this.currentAccount).clientUserId;
                                    long j3 = this.user.id;
                                    boolean z16 = (j2 == j3 || j3 == 0) ? false : true;
                                    this.drawPremium = z16;
                                    if (z16) {
                                        Long emojiStatusDocumentId = UserObject.getEmojiStatusDocumentId(this.user);
                                        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.emojiStatus;
                                        swapAnimatedEmojiDrawable2.center = LocaleController.isRTL;
                                        this.nameLayoutEllipsizeByGradient = true;
                                        if (emojiStatusDocumentId != null) {
                                            swapAnimatedEmojiDrawable2.set(emojiStatusDocumentId.longValue(), false);
                                            this.emojiStatus.setParticles(DialogObject.isEmojiStatusCollectible(this.user.emoji_status), false);
                                        } else {
                                            swapAnimatedEmojiDrawable2.set(PremiumGradient.getInstance().premiumStarDrawableMini, false);
                                            this.emojiStatus.setParticles(false, false);
                                        }
                                    }
                                }
                            }
                            scamDrawable.checkText();
                            if (!MessagesController.getInstance(this.currentAccount).isPremiumUser(this.user)) {
                            }
                        } else {
                            j = 0;
                            if (j != 0 && this.drawBotVerified) {
                                this.botVerification.set(j, false);
                            }
                        }
                    }
                    j = botVerificationIcon;
                    if (j != 0) {
                        this.botVerification.set(j, false);
                    }
                }
                i4 = this.lastMessageDate;
                if (i4 == 0 && (messageObject6 = this.message) != null) {
                    i4 = messageObject6.messageOwner.date;
                }
                if (this.isTopic) {
                    charSequence2 = charSequence;
                    draft = null;
                    if (this.isDialogCell || this.isSavedDialogCell) {
                        boolean z17 = MediaDataController.getInstance(this.currentAccount).getDraftVoice(this.currentDialogId, (long) getTopicId()) != null;
                        this.draftVoice = z17;
                        if (!z17) {
                            draft = MediaDataController.getInstance(this.currentAccount).getDraft(this.currentDialogId, 0L);
                        }
                    } else {
                        this.draftVoice = false;
                    }
                    this.draftMessage = draft;
                    z = this.draftVoice;
                    if (z) {
                        draftMessage3 = null;
                        this.draftMessage = null;
                        this.draftVoice = false;
                        if (!isForumCell()) {
                        }
                        z2 = true;
                        i6 = -1;
                        charSequence5 = charSequence18;
                        charSequence19 = charSequence17;
                        if (!this.drawForwardIcon) {
                        }
                        if (TextUtils.isEmpty(this.customMessage)) {
                        }
                    } else {
                        draftMessage3 = null;
                        this.draftMessage = null;
                        this.draftVoice = false;
                        if (!isForumCell()) {
                        }
                        z2 = true;
                        i6 = -1;
                        charSequence5 = charSequence18;
                        charSequence19 = charSequence17;
                        if (!this.drawForwardIcon) {
                        }
                        if (TextUtils.isEmpty(this.customMessage)) {
                        }
                    }
                } else {
                    charSequence2 = charSequence;
                    boolean z18 = MediaDataController.getInstance(this.currentAccount).getDraftVoice(this.currentDialogId, (long) getTopicId()) != null;
                    this.draftVoice = z18;
                    TLRPC.DraftMessage draft2 = !z18 ? MediaDataController.getInstance(this.currentAccount).getDraft(this.currentDialogId, getTopicId()) : null;
                    this.draftMessage = draft2;
                    if (draft2 != null) {
                    }
                    z = this.draftVoice;
                    if ((z || this.draftMessage != null) && ((!z && (draftMessage2 = this.draftMessage) != null && TextUtils.isEmpty(draftMessage2.message) && ((inputReplyTo = this.draftMessage.reply_to) == null || inputReplyTo.reply_to_msg_id == 0)) || !((draftMessage = this.draftMessage) == null || i4 <= draftMessage.date || this.unreadCount == 0))) {
                        draftMessage3 = null;
                        this.draftMessage = null;
                        this.draftVoice = false;
                        if (!isForumCell()) {
                            this.draftMessage = draftMessage3;
                            this.draftVoice = false;
                            this.needEmoji = true;
                            updateMessageThumbs();
                            string = ChatObject.isMonoForum(this.chat) ? null : AndroidUtilities.escape(getMessageNameString());
                            if (ChatObject.isMonoForum(this.chat)) {
                                if (i2 == 1) {
                                    i2 = 2;
                                }
                                string = null;
                                if (i2 == 3) {
                                    i2 = 4;
                                }
                            }
                            topicsNames = formatTopicsNames();
                            MessageObject messageObject9 = this.message;
                            String messageStringFormatted = this.message != null ? getMessageStringFormatted(i2, messageObject9 != null ? MessagesController.getInstance(messageObject9.currentAccount).getRestrictionReason(this.message.messageOwner.restriction_reason) : null, string, true) : "";
                            CharSequence charSequence28 = messageStringFormatted;
                            if (this.applyName) {
                                int length2 = messageStringFormatted.length();
                                charSequence28 = messageStringFormatted;
                                charSequence28 = messageStringFormatted;
                                if (length2 >= 0 && string != null) {
                                    SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(messageStringFormatted);
                                    spannableStringBuilderValueOf.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_name, this.resourcesProvider), 0, Math.min(spannableStringBuilderValueOf.length(), string.length() + 1), 0);
                                    charSequence28 = spannableStringBuilderValueOf;
                                }
                            }
                            this.currentMessagePaint = Theme.dialogs_messagePaint[this.paintIndex];
                            charSequence17 = "";
                            charSequence4 = charSequence2;
                            charSequence18 = charSequence28;
                        } else if (TextUtils.isEmpty(this.customMessage)) {
                            if (printingString != null) {
                                this.lastPrintString = printingString;
                                int iIntValue = MessagesController.getInstance(this.currentAccount).getPrintingStringType(this.currentDialogId, getTopicId()).intValue();
                                this.printingStringType = iIntValue;
                                StatusDrawable chatStatusDrawable = Theme.getChatStatusDrawable(iIntValue);
                                int intrinsicWidth5 = chatStatusDrawable != null ? chatStatusDrawable.getIntrinsicWidth() + AndroidUtilities.dp(3.0f) : 0;
                                SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder();
                                CharSequence charSequenceReplace = TextUtils.replace(printingString, new String[]{"..."}, new String[]{""});
                                int iIndexOf = this.printingStringType == 5 ? charSequenceReplace.toString().indexOf("**oo**") : -1;
                                if (iIndexOf >= 0) {
                                    spannableStringBuilder4.append(charSequenceReplace).setSpan(new FixedWidthSpan(Theme.getChatStatusDrawable(this.printingStringType).getIntrinsicWidth()), iIndexOf, iIndexOf + 6, 0);
                                } else {
                                    spannableStringBuilder4.append((CharSequence) " ").append(charSequenceReplace).setSpan(new FixedWidthSpan(intrinsicWidth5), 0, 1, 0);
                                }
                                i5 = iIndexOf;
                                z2 = false;
                                charSequence3 = spannableStringBuilder4;
                            } else {
                                this.lastPrintString = null;
                                this.printingStringType = -1;
                                charSequence3 = "";
                                i5 = -1;
                                z2 = true;
                            }
                            if (this.draftVoice || this.draftMessage != null) {
                                charSequence4 = charSequence2;
                                string = LocaleController.getString(R.string.Draft);
                                TLRPC.DraftMessage draftMessage4 = this.draftMessage;
                                if (draftMessage4 == null || !TextUtils.isEmpty(draftMessage4.message)) {
                                    if (this.draftVoice) {
                                        strSubstring = LocaleController.getString(R.string.AttachAudio);
                                    } else {
                                        TLRPC.DraftMessage draftMessage5 = this.draftMessage;
                                        if (draftMessage5 != null) {
                                            strSubstring = draftMessage5.message;
                                            if (strSubstring.length() > 150) {
                                                strSubstring = strSubstring.substring(0, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                                            }
                                        } else {
                                            strSubstring = "";
                                        }
                                    }
                                    SpannableString spannableString2 = new SpannableString(strSubstring);
                                    TLRPC.DraftMessage draftMessage6 = this.draftMessage;
                                    if (draftMessage6 != null) {
                                        MediaDataController.addTextStyleRuns(draftMessage6, spannableString2, 264);
                                        TLRPC.DraftMessage draftMessage7 = this.draftMessage;
                                        if (draftMessage7 != null && (arrayList = draftMessage7.entities) != null) {
                                            TextPaint textPaint5 = this.currentMessagePaint;
                                            MediaDataController.addAnimatedEmojiSpans(arrayList, spannableString2, textPaint5 == null ? null : textPaint5.getFontMetricsInt());
                                        }
                                    } else if (this.draftVoice) {
                                        spannableString2.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_actionMessage, this.resourcesProvider), 0, spannableString2.length(), 33);
                                    }
                                    SpannableStringBuilder internal2 = formatInternal(i2, AndroidUtilities.replaceNewLines(spannableString2), string);
                                    if ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) && !hasTags()) {
                                        z3 = false;
                                    } else {
                                        z3 = false;
                                        internal2.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_draft, this.resourcesProvider), 0, string.length() + 1, 33);
                                    }
                                    charSequenceReplaceEmoji = Emoji.replaceEmoji(internal2, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), z3);
                                } else if ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) && !hasTags()) {
                                    z2 = false;
                                    i6 = i5;
                                    topicsNames = "";
                                    z12 = true;
                                    charSequence5 = null;
                                    charSequence19 = charSequence3;
                                } else {
                                    SpannableStringBuilder spannableStringBuilderValueOf2 = SpannableStringBuilder.valueOf(string);
                                    spannableStringBuilderValueOf2.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_draft, this.resourcesProvider), 0, string.length(), 33);
                                    charSequenceReplaceEmoji = spannableStringBuilderValueOf2;
                                }
                                i6 = i5;
                                charSequence5 = null;
                                z2 = false;
                                topicsNames = charSequenceReplaceEmoji;
                                z12 = true;
                                charSequence19 = charSequence3;
                            } else {
                                if (this.clearingDialog) {
                                    this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                    i14 = R.string.HistoryCleared;
                                } else {
                                    MessageObject messageObject10 = this.message;
                                    if (messageObject10 == null) {
                                        if (this.currentDialogFolderId != 0) {
                                            string5 = formatArchivedDialogNames();
                                        } else {
                                            TLRPC.EncryptedChat encryptedChat = this.encryptedChat;
                                            if (encryptedChat != null) {
                                                this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                if (encryptedChat instanceof TLRPC.TL_encryptedChatRequested) {
                                                    i14 = R.string.EncryptionProcessing;
                                                } else if (encryptedChat instanceof TLRPC.TL_encryptedChatWaiting) {
                                                    string5 = LocaleController.formatString(R.string.AwaitingEncryption, UserObject.getFirstName(this.user));
                                                } else if (encryptedChat instanceof TLRPC.TL_encryptedChatDiscarded) {
                                                    i14 = R.string.EncryptionRejected;
                                                } else if (!(encryptedChat instanceof TLRPC.TL_encryptedChat)) {
                                                    i6 = i5;
                                                    topicsNames = "";
                                                    charSequence4 = charSequence2;
                                                    string = null;
                                                } else if (encryptedChat.admin_id == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                                                    string5 = LocaleController.formatString(R.string.EncryptedChatStartedOutgoing, UserObject.getFirstName(this.user));
                                                } else {
                                                    i14 = R.string.EncryptedChatStartedIncoming;
                                                }
                                            } else if (this.dialogsType == 3 && UserObject.isUserSelf(this.user)) {
                                                DialogsActivity dialogsActivity = this.parentFragment;
                                                string5 = LocaleController.getString((dialogsActivity == null || !dialogsActivity.isQuote) ? R.string.SavedMessagesInfo : R.string.SavedMessagesInfoQuote);
                                                i6 = i5;
                                                charSequence4 = charSequence2;
                                                z12 = false;
                                                z13 = false;
                                                charSequence5 = null;
                                                topicsNames = string5;
                                                string = null;
                                                charSequence19 = charSequence3;
                                            } else {
                                                charSequence4 = charSequence2;
                                                string = null;
                                                i6 = i5;
                                                topicsNames = "";
                                                z12 = true;
                                            }
                                        }
                                        i6 = i5;
                                        charSequence4 = charSequence2;
                                        charSequence5 = null;
                                        topicsNames = string5;
                                        string = null;
                                        charSequence19 = charSequence3;
                                    } else {
                                        String restrictionReason = MessagesController.getInstance(messageObject10.currentAccount).getRestrictionReason(this.message.messageOwner.restriction_reason);
                                        CharSequence charSequence29 = charSequence27;
                                        long fromChatId = this.message.getFromChatId();
                                        if (DialogObject.isUserDialog(fromChatId)) {
                                            MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(fromChatId));
                                            chat = null;
                                        } else {
                                            chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-fromChatId));
                                        }
                                        this.drawCount2 = true;
                                        if (this.dialogsType != 0 || this.currentDialogId <= 0 || !this.message.isOutOwner() || (tL_messageReactions = this.message.messageOwner.reactions) == null || (arrayList2 = tL_messageReactions.recent_reactions) == null || arrayList2.isEmpty() || this.reactionMentionCount <= 0) {
                                            charSequenceApplyThumbs = "";
                                            z4 = false;
                                            if (z4) {
                                                charSequence4 = charSequence2;
                                                charSequence10 = charSequenceApplyThumbs;
                                                z12 = true;
                                                charSequence16 = charSequence10;
                                                charSequence14 = null;
                                                charSequence15 = charSequence16;
                                                if (this.currentDialogFolderId == 0) {
                                                }
                                            } else {
                                                int i34 = this.dialogsType;
                                                if (i34 == 2) {
                                                    TLRPC.Chat chat4 = this.chat;
                                                    if (chat4 == null) {
                                                        string4 = "";
                                                    } else if (ChatObject.isChannel(chat4)) {
                                                        TLRPC.Chat chat5 = this.chat;
                                                        if (chat5.megagroup) {
                                                            TLRPC.Chat chat6 = this.chat;
                                                            i12 = chat6.participants_count;
                                                            if (i12 != 0) {
                                                                str3 = "Members";
                                                                string4 = LocaleController.formatPluralStringComma(str3, i12);
                                                            } else if (chat6.has_geo) {
                                                                string4 = LocaleController.getString(R.string.MegaLocation);
                                                            } else {
                                                                i13 = !ChatObject.isPublic(chat6) ? R.string.MegaPrivate : R.string.MegaPublic;
                                                                string4 = LocaleController.getString(i13).toLowerCase();
                                                            }
                                                        } else {
                                                            i12 = chat5.participants_count;
                                                            if (i12 != 0) {
                                                                str3 = "Subscribers";
                                                                string4 = LocaleController.formatPluralStringComma(str3, i12);
                                                            } else {
                                                                i13 = !ChatObject.isPublic(chat5) ? R.string.ChannelPrivate : R.string.ChannelPublic;
                                                                string4 = LocaleController.getString(i13).toLowerCase();
                                                            }
                                                        }
                                                    }
                                                    this.drawCount2 = false;
                                                    string3 = string4;
                                                } else if (i34 == 3 && UserObject.isUserSelf(this.user)) {
                                                    DialogsActivity dialogsActivity2 = this.parentFragment;
                                                    string3 = LocaleController.getString((dialogsActivity2 == null || !dialogsActivity2.isQuote) ? R.string.SavedMessagesInfo : R.string.SavedMessagesInfoQuote);
                                                } else {
                                                    if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout || this.currentDialogFolderId == 0) {
                                                        MessageObject messageObject11 = this.message;
                                                        if (!(messageObject11.messageOwner instanceof TLRPC.TL_messageService) || (MessageObject.isTopicActionMessage(messageObject11) && !(this.message.messageOwner.action instanceof TLRPC.TL_messageActionTopicCreate))) {
                                                            this.needEmoji = true;
                                                            updateMessageThumbs();
                                                            String strEscape = (this.isSavedDialog || (user2 = this.user) == null || !user2.self || this.message.isOutOwner()) ? null : AndroidUtilities.escape(getMessageNameString());
                                                            if ((!this.isSavedDialog || (user = this.user) == null || user.self || (messageObject3 = this.message) == null || !messageObject3.isOutOwner()) && strEscape == null) {
                                                                TLRPC.Chat chat7 = this.chat;
                                                                if (chat7 != null) {
                                                                    long j4 = chat7.id;
                                                                    if (j4 <= 0 || ((chat != null && chat.id == j4) || ((ChatObject.isChannel(chat7) && !ChatObject.isMegagroup(this.chat)) || ForumUtilities.isTopicCreateMessage(this.message)))) {
                                                                        TLRPC.User user5 = this.user;
                                                                        if (user5 == null || user5.id != UserObject.VERIFY || (messageObject2 = this.message) == null || messageObject2.getForwardedFromId() == null) {
                                                                            boolean zIsEmpty = TextUtils.isEmpty(restrictionReason);
                                                                            CharSequence charSequence30 = restrictionReason;
                                                                            if (zIsEmpty) {
                                                                                if (MessageObject.isTopicActionMessage(this.message)) {
                                                                                    MessageObject messageObject12 = this.message;
                                                                                    CharSequence charSequence31 = messageObject12.messageTextShort;
                                                                                    if (charSequence31 == null || ((messageObject12.messageOwner.action instanceof TLRPC.TL_messageActionTopicCreate) && this.isTopic)) {
                                                                                        charSequence31 = messageObject12.messageText;
                                                                                    }
                                                                                    CharSequence charSequence32 = charSequence31;
                                                                                    charSequence30 = charSequence32;
                                                                                    if (messageObject12.topicIconDrawable[0] instanceof ForumBubbleDrawable) {
                                                                                        z5 = z2;
                                                                                        TLRPC.TL_forumTopic tL_forumTopicFindTopic = MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(-this.message.getDialogId(), MessageObject.getTopicId(this.currentAccount, this.message.messageOwner, true));
                                                                                        charSequenceAppend = charSequence32;
                                                                                        if (tL_forumTopicFindTopic != null) {
                                                                                            ((ForumBubbleDrawable) this.message.topicIconDrawable[0]).setColor(tL_forumTopicFindTopic.icon_color);
                                                                                            charSequenceAppend = charSequence32;
                                                                                        }
                                                                                    } else {
                                                                                        z5 = z2;
                                                                                        charSequenceAppend = charSequence30;
                                                                                    }
                                                                                } else {
                                                                                    z5 = z2;
                                                                                    TLRPC.MessageMedia messageMedia = this.message.messageOwner.media;
                                                                                    if ((messageMedia instanceof TLRPC.TL_messageMediaPhoto) && (messageMedia.photo instanceof TLRPC.TL_photoEmpty) && messageMedia.ttl_seconds != 0) {
                                                                                        i11 = R.string.AttachPhotoExpired;
                                                                                    } else {
                                                                                        if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
                                                                                            TLRPC.Document document = messageMedia.document;
                                                                                            if (((document instanceof TLRPC.TL_documentEmpty) || document == null) && messageMedia.ttl_seconds != 0) {
                                                                                                i11 = messageMedia.voice ? R.string.AttachVoiceExpired : messageMedia.round ? R.string.AttachRoundExpired : R.string.AttachVideoExpired;
                                                                                            }
                                                                                        }
                                                                                        if (getCaptionMessage() != null) {
                                                                                            MessageObject captionMessage = getCaptionMessage();
                                                                                            String str13 = !this.needEmoji ? "" : captionMessage.isVideo() ? "📹 " : captionMessage.isVoice() ? "🎤 " : captionMessage.isMusic() ? "🎧 " : captionMessage.isPhoto() ? "🖼 " : "📎 ";
                                                                                            if (!captionMessage.hasHighlightedWords() || TextUtils.isEmpty(captionMessage.messageOwner.message)) {
                                                                                                SpannableString spannableString3 = new SpannableString(captionMessage.caption);
                                                                                                if (captionMessage.messageOwner != null) {
                                                                                                    captionMessage.spoilLoginCode();
                                                                                                    MediaDataController.addTextStyleRuns(captionMessage.messageOwner.entities, captionMessage.caption, spannableString3, 264);
                                                                                                    ArrayList arrayList3 = captionMessage.messageOwner.entities;
                                                                                                    TextPaint textPaint6 = this.currentMessagePaint;
                                                                                                    MediaDataController.addAnimatedEmojiSpans(arrayList3, spannableString3, textPaint6 == null ? null : textPaint6.getFontMetricsInt());
                                                                                                }
                                                                                                spannableStringBuilder2 = new SpannableStringBuilder(str13);
                                                                                                charSequence7 = spannableString3;
                                                                                            } else {
                                                                                                CharSequence string8 = captionMessage.messageTrimmedToHighlight;
                                                                                                int measuredWidth2 = getMeasuredWidth() - AndroidUtilities.dp(this.messagePaddingStart + 47);
                                                                                                if (this.hasNameInMessage) {
                                                                                                    if (!TextUtils.isEmpty(null)) {
                                                                                                        throw null;
                                                                                                    }
                                                                                                    measuredWidth2 = (int) (measuredWidth2 - this.currentMessagePaint.measureText(": "));
                                                                                                }
                                                                                                if (measuredWidth2 > 0 && captionMessage.messageTrimmedToHighlightCut) {
                                                                                                    string8 = AndroidUtilities.ellipsizeCenterEnd(string8, captionMessage.highlightedWords.get(0), measuredWidth2, this.currentMessagePaint, NotificationCenter.walletPendingTransactionsChanged).toString();
                                                                                                }
                                                                                                spannableStringBuilder2 = new SpannableStringBuilder(str13);
                                                                                                charSequence7 = string8;
                                                                                            }
                                                                                            charSequenceAppend = spannableStringBuilder2.append(charSequence7);
                                                                                        } else {
                                                                                            MessageObject messageObject13 = this.message;
                                                                                            TLRPC.Message message2 = messageObject13.messageOwner;
                                                                                            TLRPC.MessageMedia messageMedia2 = message2.media;
                                                                                            if (messageMedia2 instanceof TLRPC.TL_messageMediaPaidMedia) {
                                                                                                int size2 = ((TLRPC.TL_messageMediaPaidMedia) messageMedia2).extended_media.size();
                                                                                                if (this.hasVideoThumb) {
                                                                                                    i9 = 1;
                                                                                                    c2 = 0;
                                                                                                    if (size2 > 1) {
                                                                                                        pluralString2 = LocaleController.formatPluralString("Media", size2, new Object[0]);
                                                                                                        int i35 = R.string.AttachPaidMedia;
                                                                                                        Object[] objArr = new Object[i9];
                                                                                                        objArr[c2] = pluralString2;
                                                                                                        CharSequence charSequenceReplaceStars = StarsIntroActivity.replaceStars(LocaleController.formatString(i35, objArr));
                                                                                                        textPaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                                                                        charSequence6 = charSequenceReplaceStars;
                                                                                                    } else {
                                                                                                        i10 = R.string.AttachVideo;
                                                                                                        pluralString2 = LocaleController.getString(i10);
                                                                                                        int i352 = R.string.AttachPaidMedia;
                                                                                                        Object[] objArr2 = new Object[i9];
                                                                                                        objArr2[c2] = pluralString2;
                                                                                                        CharSequence charSequenceReplaceStars2 = StarsIntroActivity.replaceStars(LocaleController.formatString(i352, objArr2));
                                                                                                        textPaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                                                                        charSequence6 = charSequenceReplaceStars2;
                                                                                                    }
                                                                                                } else {
                                                                                                    c2 = 0;
                                                                                                    i9 = 1;
                                                                                                    if (size2 > 1) {
                                                                                                        pluralString2 = LocaleController.formatPluralString("Photos", size2, new Object[0]);
                                                                                                        int i3522 = R.string.AttachPaidMedia;
                                                                                                        Object[] objArr22 = new Object[i9];
                                                                                                        objArr22[c2] = pluralString2;
                                                                                                        CharSequence charSequenceReplaceStars22 = StarsIntroActivity.replaceStars(LocaleController.formatString(i3522, objArr22));
                                                                                                        textPaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                                                                        charSequence6 = charSequenceReplaceStars22;
                                                                                                    } else {
                                                                                                        i10 = R.string.AttachPhoto;
                                                                                                        pluralString2 = LocaleController.getString(i10);
                                                                                                        int i35222 = R.string.AttachPaidMedia;
                                                                                                        Object[] objArr222 = new Object[i9];
                                                                                                        objArr222[c2] = pluralString2;
                                                                                                        CharSequence charSequenceReplaceStars222 = StarsIntroActivity.replaceStars(LocaleController.formatString(i35222, objArr222));
                                                                                                        textPaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                                                                        charSequence6 = charSequenceReplaceStars222;
                                                                                                    }
                                                                                                }
                                                                                            } else if (this.thumbsCount > 1) {
                                                                                                if (this.hasVideoThumb) {
                                                                                                    ArrayList arrayList4 = this.groupMessages;
                                                                                                    if (arrayList4 == null) {
                                                                                                        i8 = 0;
                                                                                                        size = 0;
                                                                                                    } else {
                                                                                                        size = arrayList4.size();
                                                                                                        i8 = 0;
                                                                                                    }
                                                                                                    pluralString = LocaleController.formatPluralString("Media", size, new Object[i8]);
                                                                                                } else {
                                                                                                    ArrayList arrayList5 = this.groupMessages;
                                                                                                    pluralString = LocaleController.formatPluralString("Photos", arrayList5 == null ? 0 : arrayList5.size(), new Object[0]);
                                                                                                }
                                                                                                charSequence6 = pluralString;
                                                                                                textPaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                                                            } else {
                                                                                                if (messageMedia2 instanceof TLRPC.TL_messageMediaGiveaway) {
                                                                                                    TLRPC.MessageFwdHeader messageFwdHeader = message2.fwd_from;
                                                                                                    if (messageFwdHeader != null) {
                                                                                                        TLRPC.Peer peer = messageFwdHeader.from_id;
                                                                                                        boolean zIsChannelAndNotMegaGroup = peer instanceof TLRPC.TL_peerChannel ? ChatObject.isChannelAndNotMegaGroup(peer.channel_id, this.currentAccount) : ChatObject.isChannelAndNotMegaGroup(this.chat);
                                                                                                        i7 = zIsChannelAndNotMegaGroup ? R.string.BoostingGiveawayChannelStarted : R.string.BoostingGiveawayGroupStarted;
                                                                                                    }
                                                                                                } else if (messageMedia2 instanceof TLRPC.TL_messageMediaGiveawayResults) {
                                                                                                    i7 = R.string.BoostingGiveawayResults;
                                                                                                } else if (messageMedia2 instanceof TLRPC.TL_messageMediaPoll) {
                                                                                                    TLRPC.TL_messageMediaPoll tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) messageMedia2;
                                                                                                    TLRPC.TL_textWithEntities tL_textWithEntities3 = tL_messageMediaPoll.poll.question;
                                                                                                    if (tL_textWithEntities3 == null || tL_textWithEntities3.entities == null) {
                                                                                                        sb = new StringBuilder();
                                                                                                        sb.append("📊 ");
                                                                                                        tL_textWithEntities = tL_messageMediaPoll.poll.question;
                                                                                                        str2 = tL_textWithEntities.text;
                                                                                                        sb.append(str2);
                                                                                                        string2 = sb.toString();
                                                                                                        CharSequence charSequence33 = string2;
                                                                                                        messageObject = this.message;
                                                                                                        charSequenceAppend = charSequence33;
                                                                                                        if (messageObject.messageOwner.media != null) {
                                                                                                            charSequenceAppend = charSequence33;
                                                                                                            if (!messageObject.isMediaEmpty()) {
                                                                                                                textPaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                                                                                charSequence6 = charSequence33;
                                                                                                            }
                                                                                                        }
                                                                                                    } else {
                                                                                                        spannableString = new SpannableString(tL_messageMediaPoll.poll.question.text);
                                                                                                        TLRPC.TL_textWithEntities tL_textWithEntities4 = tL_messageMediaPoll.poll.question;
                                                                                                        MediaDataController.addTextStyleRuns((ArrayList<TLRPC.MessageEntity>) tL_textWithEntities4.entities, tL_textWithEntities4.text, spannableString);
                                                                                                        MediaDataController.addAnimatedEmojiSpans(tL_messageMediaPoll.poll.question.entities, spannableString, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt());
                                                                                                        spannableStringBuilder = new SpannableStringBuilder("📊 ");
                                                                                                        string2 = spannableStringBuilder.append((CharSequence) spannableString);
                                                                                                        CharSequence charSequence332 = string2;
                                                                                                        messageObject = this.message;
                                                                                                        charSequenceAppend = charSequence332;
                                                                                                        if (messageObject.messageOwner.media != null) {
                                                                                                        }
                                                                                                    }
                                                                                                } else if (messageMedia2 instanceof TLRPC.TL_messageMediaToDo) {
                                                                                                    TLRPC.TL_messageMediaToDo tL_messageMediaToDo = (TLRPC.TL_messageMediaToDo) messageMedia2;
                                                                                                    TLRPC.TL_textWithEntities tL_textWithEntities5 = tL_messageMediaToDo.todo.title;
                                                                                                    if (tL_textWithEntities5 == null || tL_textWithEntities5.entities == null) {
                                                                                                        sb = new StringBuilder();
                                                                                                        sb.append("✅ ");
                                                                                                        tL_textWithEntities = tL_messageMediaToDo.todo.title;
                                                                                                        str2 = tL_textWithEntities.text;
                                                                                                        sb.append(str2);
                                                                                                        string2 = sb.toString();
                                                                                                        CharSequence charSequence3322 = string2;
                                                                                                        messageObject = this.message;
                                                                                                        charSequenceAppend = charSequence3322;
                                                                                                        if (messageObject.messageOwner.media != null) {
                                                                                                        }
                                                                                                    } else {
                                                                                                        spannableString = new SpannableString(tL_messageMediaToDo.todo.title.text);
                                                                                                        TLRPC.TL_textWithEntities tL_textWithEntities6 = tL_messageMediaToDo.todo.title;
                                                                                                        MediaDataController.addTextStyleRuns((ArrayList<TLRPC.MessageEntity>) tL_textWithEntities6.entities, tL_textWithEntities6.text, spannableString);
                                                                                                        MediaDataController.addAnimatedEmojiSpans(tL_messageMediaToDo.todo.title.entities, spannableString, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt());
                                                                                                        spannableStringBuilder = new SpannableStringBuilder("✅ ");
                                                                                                        string2 = spannableStringBuilder.append((CharSequence) spannableString);
                                                                                                        CharSequence charSequence33222 = string2;
                                                                                                        messageObject = this.message;
                                                                                                        charSequenceAppend = charSequence33222;
                                                                                                        if (messageObject.messageOwner.media != null) {
                                                                                                        }
                                                                                                    }
                                                                                                } else if (messageMedia2 instanceof TLRPC.TL_messageMediaGame) {
                                                                                                    sb = new StringBuilder();
                                                                                                    sb.append("🎮 ");
                                                                                                    str2 = this.message.messageOwner.media.game.title;
                                                                                                    sb.append(str2);
                                                                                                    string2 = sb.toString();
                                                                                                    CharSequence charSequence332222 = string2;
                                                                                                    messageObject = this.message;
                                                                                                    charSequenceAppend = charSequence332222;
                                                                                                    if (messageObject.messageOwner.media != null) {
                                                                                                    }
                                                                                                } else {
                                                                                                    if (messageMedia2 instanceof TLRPC.TL_messageMediaInvoice) {
                                                                                                        string2 = messageMedia2.title;
                                                                                                    } else if (messageObject13.type == 14) {
                                                                                                        string2 = String.format("🎧 %s - %s", messageObject13.getMusicAuthor(), this.message.getMusicTitle());
                                                                                                    } else if (!(messageMedia2 instanceof TLRPC.TL_messageMediaStory) || !messageMedia2.via_mention) {
                                                                                                        if (!messageObject13.hasHighlightedWords() || TextUtils.isEmpty(this.message.messageOwner.message)) {
                                                                                                            SpannableString spannableString4 = new SpannableString(charSequence29);
                                                                                                            MessageObject messageObject14 = this.message;
                                                                                                            if (messageObject14 != null) {
                                                                                                                messageObject14.spoilLoginCode();
                                                                                                            }
                                                                                                            MediaDataController.addTextStyleRuns(this.message, spannableString4, 264);
                                                                                                            MessageObject messageObject15 = this.message;
                                                                                                            charSequenceEllipsizeCenterEnd = spannableString4;
                                                                                                            if (messageObject15 != null) {
                                                                                                                TLRPC.Message message3 = messageObject15.messageOwner;
                                                                                                                charSequenceEllipsizeCenterEnd = spannableString4;
                                                                                                                if (message3 != null) {
                                                                                                                    ArrayList arrayList6 = message3.entities;
                                                                                                                    TextPaint textPaint7 = this.currentMessagePaint;
                                                                                                                    MediaDataController.addAnimatedEmojiSpans(arrayList6, spannableString4, textPaint7 == null ? null : textPaint7.getFontMetricsInt());
                                                                                                                    charSequenceEllipsizeCenterEnd = spannableString4;
                                                                                                                }
                                                                                                            }
                                                                                                        } else {
                                                                                                            CharSequence charSequence34 = this.message.messageTrimmedToHighlight;
                                                                                                            int measuredWidth3 = getMeasuredWidth() - AndroidUtilities.dp(this.messagePaddingStart + 23);
                                                                                                            MessageObject messageObject16 = this.message;
                                                                                                            charSequenceEllipsizeCenterEnd = charSequence34;
                                                                                                            if (messageObject16.messageTrimmedToHighlightCut) {
                                                                                                                charSequenceEllipsizeCenterEnd = AndroidUtilities.ellipsizeCenterEnd(charSequence34, messageObject16.highlightedWords.get(0), measuredWidth3, this.currentMessagePaint, NotificationCenter.walletPendingTransactionsChanged);
                                                                                                            }
                                                                                                        }
                                                                                                        AndroidUtilities.highlightText(charSequenceEllipsizeCenterEnd, this.message.highlightedWords, this.resourcesProvider);
                                                                                                        string2 = charSequenceEllipsizeCenterEnd;
                                                                                                    } else if (messageObject13.isOut()) {
                                                                                                        TLRPC.User user6 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.message.getDialogId()));
                                                                                                        if (user6 != null) {
                                                                                                            firstName = UserObject.getFirstName(user6);
                                                                                                            int iIndexOf2 = firstName.indexOf(32);
                                                                                                            c = 0;
                                                                                                            if (iIndexOf2 >= 0) {
                                                                                                                firstName = firstName.substring(0, iIndexOf2);
                                                                                                            }
                                                                                                        } else {
                                                                                                            c = 0;
                                                                                                            firstName = "";
                                                                                                        }
                                                                                                        int i36 = R.string.StoryYouMentionInDialog;
                                                                                                        Object[] objArr3 = new Object[1];
                                                                                                        objArr3[c] = firstName;
                                                                                                        string2 = LocaleController.formatString(i36, objArr3);
                                                                                                    } else {
                                                                                                        i7 = R.string.StoryMentionInDialog;
                                                                                                    }
                                                                                                    CharSequence charSequence3322222 = string2;
                                                                                                    messageObject = this.message;
                                                                                                    charSequenceAppend = charSequence3322222;
                                                                                                    if (messageObject.messageOwner.media != null) {
                                                                                                    }
                                                                                                }
                                                                                                string2 = LocaleController.getString(i7);
                                                                                                CharSequence charSequence33222222 = string2;
                                                                                                messageObject = this.message;
                                                                                                charSequenceAppend = charSequence33222222;
                                                                                                if (messageObject.messageOwner.media != null) {
                                                                                                }
                                                                                            }
                                                                                            this.currentMessagePaint = textPaint;
                                                                                            charSequenceAppend = charSequence6;
                                                                                        }
                                                                                    }
                                                                                    charSequenceAppend = LocaleController.getString(i11);
                                                                                }
                                                                                if (this.message.isReplyToStory()) {
                                                                                    SpannableStringBuilder spannableStringBuilder5 = new SpannableStringBuilder(charSequenceAppend);
                                                                                    charSequence4 = charSequence2;
                                                                                    spannableStringBuilder5.insert(0, charSequence4);
                                                                                    spannableStringBuilder5.setSpan(new ColoredImageSpan(ContextCompat.getDrawable(getContext(), R.drawable.msg_mini_replystory).mutate()), 0, 1, 0);
                                                                                    charSequence8 = spannableStringBuilder5;
                                                                                } else {
                                                                                    charSequence4 = charSequence2;
                                                                                    charSequence8 = charSequenceAppend;
                                                                                }
                                                                                if (this.thumbsCount > 0) {
                                                                                    if (!this.message.hasHighlightedWords() || TextUtils.isEmpty(this.message.messageOwner.message)) {
                                                                                        int length3 = charSequence8.length();
                                                                                        CharSequence charSequenceSubSequence = charSequence8;
                                                                                        if (length3 > 150) {
                                                                                            charSequenceSubSequence = charSequence8.subSequence(0, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                                                                                        }
                                                                                        charSequenceReplaceNewLines = AndroidUtilities.replaceNewLines(charSequenceSubSequence);
                                                                                    } else {
                                                                                        charSequenceReplaceNewLines = this.message.messageTrimmedToHighlight;
                                                                                        int measuredWidth4 = getMeasuredWidth() - AndroidUtilities.dp(((this.messagePaddingStart + 23) + ((this.thumbSize + 2) * this.thumbsCount)) + 3);
                                                                                        MessageObject messageObject17 = this.message;
                                                                                        if (messageObject17.messageTrimmedToHighlightCut) {
                                                                                            charSequenceReplaceNewLines = AndroidUtilities.ellipsizeCenterEnd(charSequenceReplaceNewLines, messageObject17.highlightedWords.get(0), measuredWidth4, this.currentMessagePaint, NotificationCenter.walletPendingTransactionsChanged).toString();
                                                                                        }
                                                                                    }
                                                                                    CharSequence spannableStringBuilder6 = !(charSequenceReplaceNewLines instanceof SpannableStringBuilder) ? new SpannableStringBuilder(charSequenceReplaceNewLines) : charSequenceReplaceNewLines;
                                                                                    SpannableStringBuilder spannableStringBuilder7 = (SpannableStringBuilder) spannableStringBuilder6;
                                                                                    spannableStringBuilder7.insert(0, (CharSequence) " ");
                                                                                    spannableStringBuilder7.setSpan(new FixedWidthSpan(AndroidUtilities.dp(((this.thumbSize + 2) * this.thumbsCount) + 3)), 0, 1, 33);
                                                                                    Emoji.replaceEmoji(spannableStringBuilder7, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), false);
                                                                                    CharSequence charSequence35 = spannableStringBuilder6;
                                                                                    if (this.message.hasHighlightedWords()) {
                                                                                        CharSequence charSequenceHighlightText4 = AndroidUtilities.highlightText(spannableStringBuilder7, this.message.highlightedWords, this.resourcesProvider);
                                                                                        charSequence35 = spannableStringBuilder6;
                                                                                        if (charSequenceHighlightText4 != null) {
                                                                                            charSequence35 = charSequenceHighlightText4;
                                                                                        }
                                                                                    }
                                                                                    z2 = false;
                                                                                    charSequence9 = charSequence35;
                                                                                } else {
                                                                                    z2 = z5;
                                                                                    charSequence9 = charSequence8;
                                                                                }
                                                                                if (this.message.isForwarded() && this.message.needDrawForwarded()) {
                                                                                    this.drawForwardIcon = true;
                                                                                    SpannableStringBuilder spannableStringBuilder8 = new SpannableStringBuilder(charSequence9);
                                                                                    spannableStringBuilder8.insert(0, charSequence4);
                                                                                    ColoredImageSpan coloredImageSpan = new ColoredImageSpan(ContextCompat.getDrawable(getContext(), R.drawable.mini_forwarded).mutate());
                                                                                    coloredImageSpan.setAlpha(0.9f);
                                                                                    spannableStringBuilder8.setSpan(coloredImageSpan, 0, 1, 0);
                                                                                    charSequence10 = spannableStringBuilder8;
                                                                                } else {
                                                                                    charSequence10 = charSequence9;
                                                                                }
                                                                                z12 = true;
                                                                                charSequence16 = charSequence10;
                                                                                charSequence14 = null;
                                                                                charSequence15 = charSequence16;
                                                                                if (this.currentDialogFolderId == 0) {
                                                                                    i6 = i5;
                                                                                    topicsNames = charSequence15;
                                                                                    string = formatArchivedDialogNames();
                                                                                } else {
                                                                                    i6 = i5;
                                                                                    charSequence5 = null;
                                                                                    topicsNames = charSequence15;
                                                                                    string = charSequence14;
                                                                                    charSequence19 = charSequence3;
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            charSequence4 = charSequence2;
                                                            if (strEscape == null) {
                                                                strEscape = getMessageNameString();
                                                            }
                                                            CharSequence charSequenceEscape = AndroidUtilities.escape(strEscape);
                                                            TLRPC.Chat chat8 = this.chat;
                                                            if (chat8 == null || !chat8.forum || this.isTopic || this.useFromUserAsAvatar) {
                                                                charSequence11 = charSequenceEscape;
                                                                SpannableStringBuilder messageStringFormatted2 = getMessageStringFormatted(i2, restrictionReason, charSequence11, false);
                                                                if (!this.useFromUserAsAvatar || ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) && (this.currentDialogFolderId == 0 || messageStringFormatted2.length() <= 0))) {
                                                                    length = 0;
                                                                } else {
                                                                    try {
                                                                        foregroundColorSpanThemable = new ForegroundColorSpanThemable(Theme.key_chats_nameMessage, this.resourcesProvider);
                                                                        length = charSequence11.length() + 1;
                                                                    } catch (Exception e) {
                                                                        e = e;
                                                                        length = 0;
                                                                    }
                                                                    try {
                                                                        messageStringFormatted2.setSpan(foregroundColorSpanThemable, 0, length, 33);
                                                                    } catch (Exception e2) {
                                                                        e = e2;
                                                                        FileLog.e(e);
                                                                        CharSequence charSequenceReplaceEmoji2 = Emoji.replaceEmoji(messageStringFormatted2, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), false);
                                                                        CharSequence charSequence36 = charSequenceReplaceEmoji2;
                                                                        if (this.message.hasHighlightedWords()) {
                                                                        }
                                                                        CharSequence charSequence37 = charSequence36;
                                                                        if (this.thumbsCount > 0) {
                                                                        }
                                                                        z12 = true;
                                                                        archivedDialogNames = charSequence37;
                                                                        charSequence13 = charSequence11;
                                                                        z2 = false;
                                                                        charSequence15 = archivedDialogNames;
                                                                        charSequence14 = charSequence13;
                                                                        if (this.currentDialogFolderId == 0) {
                                                                        }
                                                                    }
                                                                }
                                                                CharSequence charSequenceReplaceEmoji22 = Emoji.replaceEmoji(messageStringFormatted2, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), false);
                                                                CharSequence charSequence362 = charSequenceReplaceEmoji22;
                                                                if (this.message.hasHighlightedWords()) {
                                                                    CharSequence charSequenceHighlightText5 = AndroidUtilities.highlightText(charSequenceReplaceEmoji22, this.message.highlightedWords, this.resourcesProvider);
                                                                    charSequence362 = charSequenceReplaceEmoji22;
                                                                    if (charSequenceHighlightText5 != null) {
                                                                        charSequence362 = charSequenceHighlightText5;
                                                                    }
                                                                }
                                                                CharSequence charSequence372 = charSequence362;
                                                                if (this.thumbsCount > 0) {
                                                                    boolean z19 = charSequence362 instanceof SpannableStringBuilder;
                                                                    CharSequence spannableStringBuilder9 = charSequence362;
                                                                    if (!z19) {
                                                                        spannableStringBuilder9 = new SpannableStringBuilder(charSequence362);
                                                                    }
                                                                    SpannableStringBuilder spannableStringBuilder10 = (SpannableStringBuilder) spannableStringBuilder9;
                                                                    if (length >= spannableStringBuilder10.length()) {
                                                                        spannableStringBuilder10.append((CharSequence) " ");
                                                                        spannableStringBuilder10.setSpan(new FixedWidthSpan(AndroidUtilities.dp((this.thumbsCount * (this.thumbSize + 2)) + 3)), spannableStringBuilder10.length() - 1, spannableStringBuilder10.length(), 33);
                                                                        charSequence372 = spannableStringBuilder9;
                                                                    } else {
                                                                        spannableStringBuilder10.insert(length, (CharSequence) " ");
                                                                        spannableStringBuilder10.setSpan(new FixedWidthSpan(AndroidUtilities.dp((this.thumbsCount * (this.thumbSize + 2)) + 3)), length, length + 1, 33);
                                                                        charSequence372 = spannableStringBuilder9;
                                                                    }
                                                                }
                                                                z12 = true;
                                                                archivedDialogNames = charSequence372;
                                                                charSequence13 = charSequence11;
                                                            } else {
                                                                CharSequence topicIconName = MessagesController.getInstance(this.currentAccount).getTopicsController().getTopicIconName(this.chat, this.message, this.currentMessagePaint);
                                                                if (!TextUtils.isEmpty(topicIconName)) {
                                                                    SpannableStringBuilder spannableStringBuilder11 = new SpannableStringBuilder("-");
                                                                    ColoredImageSpan coloredImageSpan2 = new ColoredImageSpan(ContextCompat.getDrawable(ApplicationLoader.applicationContext, R.drawable.msg_mini_forumarrow).mutate());
                                                                    coloredImageSpan2.setColorKey((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? -1 : Theme.key_chats_nameMessage);
                                                                    spannableStringBuilder11.setSpan(coloredImageSpan2, 0, 1, 0);
                                                                    SpannableStringBuilder spannableStringBuilder12 = new SpannableStringBuilder();
                                                                    spannableStringBuilder12.append(charSequenceEscape).append((CharSequence) spannableStringBuilder11).append(topicIconName);
                                                                    charSequence11 = spannableStringBuilder12;
                                                                }
                                                                SpannableStringBuilder messageStringFormatted22 = getMessageStringFormatted(i2, restrictionReason, charSequence11, false);
                                                                if (this.useFromUserAsAvatar) {
                                                                    length = 0;
                                                                    CharSequence charSequenceReplaceEmoji222 = Emoji.replaceEmoji(messageStringFormatted22, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), false);
                                                                    CharSequence charSequence3622 = charSequenceReplaceEmoji222;
                                                                    if (this.message.hasHighlightedWords()) {
                                                                    }
                                                                    CharSequence charSequence3722 = charSequence3622;
                                                                    if (this.thumbsCount > 0) {
                                                                    }
                                                                    z12 = true;
                                                                    archivedDialogNames = charSequence3722;
                                                                    charSequence13 = charSequence11;
                                                                }
                                                            }
                                                        } else {
                                                            if (ChatObject.isChannelAndNotMegaGroup(this.chat) && (this.message.messageOwner.action instanceof TLRPC.TL_messageActionChannelMigrateFrom)) {
                                                                charSequence12 = "";
                                                                z13 = false;
                                                            } else {
                                                                CharSequence charSequence38 = this.message.messageTextShort;
                                                                charSequence12 = charSequence38 != null ? charSequence38 : charSequence29;
                                                            }
                                                            this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                            if (this.message.type == 21) {
                                                                updateMessageThumbs();
                                                                charSequenceApplyThumbs = applyThumbs(charSequence12);
                                                            } else {
                                                                charSequenceApplyThumbs = charSequence12;
                                                            }
                                                            charSequence4 = charSequence2;
                                                            charSequence10 = charSequenceApplyThumbs;
                                                            z12 = true;
                                                            charSequence16 = charSequence10;
                                                            charSequence14 = null;
                                                            charSequence15 = charSequence16;
                                                            if (this.currentDialogFolderId == 0) {
                                                            }
                                                        }
                                                    } else {
                                                        charSequence4 = charSequence2;
                                                        z12 = true;
                                                        charSequence13 = null;
                                                        archivedDialogNames = formatArchivedDialogNames();
                                                    }
                                                    z2 = false;
                                                    charSequence15 = archivedDialogNames;
                                                    charSequence14 = charSequence13;
                                                    if (this.currentDialogFolderId == 0) {
                                                    }
                                                }
                                                charSequence4 = charSequence2;
                                                z12 = false;
                                                z13 = false;
                                                charSequence16 = string3;
                                                charSequence14 = null;
                                                charSequence15 = charSequence16;
                                                if (this.currentDialogFolderId == 0) {
                                                }
                                            }
                                        } else {
                                            TLRPC.MessagePeerReaction messagePeerReaction = (TLRPC.MessagePeerReaction) this.message.messageOwner.reactions.recent_reactions.get(0);
                                            if (messagePeerReaction.unread) {
                                                long j5 = messagePeerReaction.peer_id.user_id;
                                                if (j5 != 0 && j5 != UserConfig.getInstance(this.currentAccount).clientUserId) {
                                                    ReactionsLayoutInBubble.VisibleReaction visibleReactionFromTL = ReactionsLayoutInBubble.VisibleReaction.fromTL(messagePeerReaction.reaction);
                                                    this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                    String str14 = visibleReactionFromTL.emojicon;
                                                    if (str14 != null) {
                                                        z4 = true;
                                                        charSequenceApplyThumbs = LocaleController.formatString(R.string.ReactionInDialog, str14);
                                                    } else {
                                                        String string9 = LocaleController.formatString(R.string.ReactionInDialog, str);
                                                        String str15 = str;
                                                        int iIndexOf3 = string9.indexOf(str15);
                                                        SpannableStringBuilder spannableStringBuilder13 = new SpannableStringBuilder(string9.replace(str15, "d"));
                                                        long j6 = visibleReactionFromTL.documentId;
                                                        TextPaint textPaint8 = this.currentMessagePaint;
                                                        spannableStringBuilder13.setSpan(new AnimatedEmojiSpan(j6, textPaint8 == null ? null : textPaint8.getFontMetricsInt()), iIndexOf3, iIndexOf3 + 1, 0);
                                                        charSequenceApplyThumbs = spannableStringBuilder13;
                                                        z4 = true;
                                                    }
                                                }
                                                if (z4) {
                                                }
                                            }
                                        }
                                    }
                                    charSequence5 = null;
                                    charSequence19 = charSequence3;
                                }
                                string5 = LocaleController.getString(i14);
                                i6 = i5;
                                charSequence4 = charSequence2;
                                charSequence5 = null;
                                topicsNames = string5;
                                string = null;
                                charSequence19 = charSequence3;
                            }
                            if (!this.drawForwardIcon && !isFolderCell() && !isForumCell() && !isDialogFolder() && this.draftMessage == null && (messageObject5 = this.message) != null && (message = messageObject5.messageOwner) != null && (message.action instanceof TLRPC.TL_messageActionStarGift)) {
                                this.drawGiftIcon = true;
                                SpannableStringBuilder spannableStringBuilder14 = new SpannableStringBuilder(topicsNames);
                                spannableStringBuilder14.insert(0, charSequence4);
                                ColoredImageSpan coloredImageSpan3 = new ColoredImageSpan(ContextCompat.getDrawable(getContext(), R.drawable.mini_gift).mutate());
                                coloredImageSpan3.setScale(1.25f, 1.25f);
                                coloredImageSpan3.spaceScaleX = 0.9f;
                                coloredImageSpan3.setAlpha(0.9f);
                                spannableStringBuilder14.setSpan(coloredImageSpan3, 0, 1, 0);
                                tL_textWithEntities2 = ((TLRPC.TL_messageActionStarGift) this.message.messageOwner.action).message;
                                if (tL_textWithEntities2 != null && !TextUtils.isEmpty(tL_textWithEntities2.text)) {
                                    this.currentMessagePaint = Theme.dialogs_messagePaint[this.paintIndex];
                                }
                                topicsNames = spannableStringBuilder14;
                            }
                            if (TextUtils.isEmpty(this.customMessage)) {
                                TLRPC.DraftMessage draftMessage8 = this.draftMessage;
                                if (draftMessage8 != null) {
                                    i15 = draftMessage8.date;
                                } else {
                                    i15 = this.lastMessageDate;
                                    if (i15 == 0) {
                                        MessageObject messageObject18 = this.message;
                                        if (messageObject18 != null) {
                                            i15 = messageObject18.messageOwner.date;
                                        }
                                        strStringForMessageListDate = "";
                                        messageObject4 = this.message;
                                        if (messageObject4 == null || this.isSavedDialog) {
                                            this.drawCheck1 = false;
                                            this.drawCheck2 = false;
                                            this.drawClock = messageObject4 == null && messageObject4.isSending() && this.currentDialogId == UserConfig.getInstance(this.currentAccount).getClientUserId();
                                            z6 = false;
                                            this.drawCount = false;
                                            this.drawMention = false;
                                            this.drawReactionMention = false;
                                            this.drawError = false;
                                            str4 = null;
                                            str5 = null;
                                        } else {
                                            if (this.currentDialogFolderId != 0) {
                                                int i37 = this.unreadCount;
                                                int i38 = this.mentionCount;
                                                int i39 = i37 + i38;
                                                if (i39 <= 0) {
                                                    this.drawCount = false;
                                                    this.drawMention = false;
                                                    str4 = null;
                                                } else if (i37 > i38) {
                                                    this.drawCount = true;
                                                    this.drawMention = false;
                                                    str4 = String.format("%d", Integer.valueOf(i39));
                                                } else {
                                                    this.drawCount = false;
                                                    this.drawMention = true;
                                                    str5 = String.format("%d", Integer.valueOf(i39));
                                                    str4 = null;
                                                    z9 = false;
                                                }
                                                str5 = null;
                                                z9 = false;
                                            } else {
                                                if (this.clearingDialog) {
                                                    this.drawCount = false;
                                                    str4 = null;
                                                    z9 = false;
                                                    z10 = true;
                                                    z11 = false;
                                                } else {
                                                    int i40 = this.unreadCount;
                                                    if (i40 != 0) {
                                                        z10 = true;
                                                        if (i40 == 1 && i40 == this.mentionCount && messageObject4.messageOwner.mentioned) {
                                                            z9 = false;
                                                        } else {
                                                            this.drawCount = true;
                                                            Integer numValueOf = Integer.valueOf(i40);
                                                            z9 = false;
                                                            str4 = String.format("%d", numValueOf);
                                                            z11 = z13;
                                                        }
                                                    } else {
                                                        z9 = false;
                                                        z10 = true;
                                                    }
                                                    if (this.markUnread) {
                                                        this.drawCount = z10;
                                                        z11 = z13;
                                                        str4 = "";
                                                    } else {
                                                        this.drawCount = z9;
                                                        z11 = z13;
                                                        str4 = null;
                                                    }
                                                }
                                                if (this.mentionCount != 0) {
                                                    this.drawMention = z10;
                                                    str9 = "@";
                                                } else {
                                                    this.drawMention = z9;
                                                    str9 = null;
                                                }
                                                if (this.reactionMentionCount > 0) {
                                                    this.drawReactionMention = z10;
                                                    str5 = str9;
                                                    z13 = z11;
                                                    if (!this.message.isOut() && this.draftMessage == null && z13) {
                                                        MessageObject messageObject19 = this.message;
                                                        if (!(messageObject19.messageOwner.action instanceof TLRPC.TL_messageActionHistoryClear)) {
                                                            if (messageObject19.isSending()) {
                                                                z6 = false;
                                                                this.drawCheck1 = false;
                                                                this.drawCheck2 = false;
                                                                this.drawClock = true;
                                                                this.drawError = z6;
                                                            } else {
                                                                z6 = false;
                                                                if (this.message.isSendError()) {
                                                                    this.drawCheck1 = false;
                                                                    this.drawCheck2 = false;
                                                                    this.drawClock = false;
                                                                    this.drawError = true;
                                                                    this.drawCount = false;
                                                                    this.drawMention = false;
                                                                } else if (this.message.isSent()) {
                                                                    TLRPC.TL_forumTopic tL_forumTopic = this.forumTopic;
                                                                    this.drawCheck1 = tL_forumTopic == null ? !this.isDialogCell ? !(!this.message.isUnread() || (ChatObject.isChannel(this.chat) && !this.chat.megagroup)) : !(((i19 = this.readOutboxMaxId) > 0 && i19 >= this.message.getId()) || !this.message.isUnread() || (ChatObject.isChannel(this.chat) && !this.chat.megagroup)) : tL_forumTopic.read_outbox_max_id >= this.message.getId();
                                                                    this.drawCheck2 = true;
                                                                    z6 = false;
                                                                } else {
                                                                    z6 = false;
                                                                }
                                                            }
                                                        }
                                                        this.drawClock = z6;
                                                        this.drawError = z6;
                                                    } else {
                                                        z6 = false;
                                                        this.drawCheck1 = false;
                                                        this.drawCheck2 = false;
                                                        this.drawClock = z6;
                                                        this.drawError = z6;
                                                    }
                                                } else {
                                                    str5 = str9;
                                                    z13 = z11;
                                                }
                                            }
                                            this.drawReactionMention = z9;
                                            if (!this.message.isOut()) {
                                                z6 = false;
                                                this.drawCheck1 = false;
                                                this.drawCheck2 = false;
                                                this.drawClock = z6;
                                                this.drawError = z6;
                                            }
                                        }
                                        this.promoDialog = z6;
                                        messagesController = MessagesController.getInstance(this.currentAccount);
                                        if (this.dialogsType == 0 && messagesController.isPromoDialog(this.currentDialogId, true)) {
                                            this.drawPinBackground = true;
                                            this.promoDialog = true;
                                            i18 = messagesController.promoDialogType;
                                            if (i18 != MessagesController.PROMO_TYPE_PROXY) {
                                                strStringForMessageListDate = LocaleController.getString(R.string.UseProxySponsor);
                                            } else if (i18 == MessagesController.PROMO_TYPE_PSA) {
                                                strStringForMessageListDate = LocaleController.getString("PsaType_" + messagesController.promoPsaType);
                                                if (TextUtils.isEmpty(strStringForMessageListDate)) {
                                                    strStringForMessageListDate = LocaleController.getString(R.string.PsaTypeDefault);
                                                }
                                                if (!TextUtils.isEmpty(messagesController.promoPsaMessage)) {
                                                    topicsNames = messagesController.promoPsaMessage;
                                                    this.thumbsCount = 0;
                                                }
                                            }
                                        }
                                        if (this.currentDialogFolderId == 0) {
                                            charSequence21 = charSequence5;
                                            str6 = str4;
                                            str7 = str5;
                                            i17 = i6;
                                            str8 = strStringForMessageListDate;
                                            z8 = z12;
                                            charSequence22 = string;
                                            string6 = LocaleController.getString(R.string.ArchivedChats);
                                            z7 = z2;
                                            charSequence23 = charSequence19;
                                        } else {
                                            TLRPC.Chat chat9 = this.chat;
                                            if (chat9 != null) {
                                                if (this.useFromUserAsAvatar) {
                                                    if (this.topicIconInName == null) {
                                                        this.topicIconInName = new Drawable[1];
                                                    }
                                                    this.topicIconInName[0] = null;
                                                    topicSpannedName = MessagesController.getInstance(this.currentAccount).getTopicsController().getTopicIconName(this.chat, this.message, this.currentMessagePaint, this.topicIconInName);
                                                    charSequence20 = string;
                                                    if (topicSpannedName == null) {
                                                        string6 = "";
                                                    }
                                                    if (string6 != null && string6.length() == 0) {
                                                        string6 = LocaleController.getString(R.string.HiddenName);
                                                    }
                                                    charSequence21 = charSequence5;
                                                    str6 = str4;
                                                    str7 = str5;
                                                    z7 = z2;
                                                    i17 = i6;
                                                    str8 = strStringForMessageListDate;
                                                    z8 = z12;
                                                    charSequence22 = charSequence20;
                                                    charSequence23 = charSequence19;
                                                } else if (this.isTopic) {
                                                    if (this.topicIconInName == null) {
                                                        this.topicIconInName = new Drawable[1];
                                                    }
                                                    Drawable[] drawableArr = this.topicIconInName;
                                                    drawableArr[0] = null;
                                                    topicSpannedName = this.showTopicIconInName ? ForumUtilities.getTopicSpannedName(this.forumTopic, Theme.dialogs_namePaint[this.paintIndex], drawableArr, false) : AndroidUtilities.escape(this.forumTopic.title);
                                                    charSequence20 = string;
                                                } else {
                                                    if (!chat9.monoforum || chat9.linked_monoforum_id == 0) {
                                                        charSequence20 = string;
                                                        userName = chat9.title;
                                                    } else {
                                                        TLRPC.Chat chat10 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.chat.linked_monoforum_id));
                                                        if (chat10 != null) {
                                                            SpannableStringBuilder spannableStringBuilder15 = new SpannableStringBuilder(AndroidUtilities.escape(chat10.title));
                                                            spannableStringBuilder15.append((CharSequence) " ");
                                                            int length4 = spannableStringBuilder15.length();
                                                            int i41 = R.string.MonoforumSpan;
                                                            spannableStringBuilder15.append((CharSequence) LocaleController.getString(i41));
                                                            charSequence20 = string;
                                                            spannableStringBuilder15.setSpan(new FilterCreateActivity.TextSpan(LocaleController.getString(i41), 9.33f, Theme.key_windowBackgroundWhiteGrayText, this.resourcesProvider), length4, spannableStringBuilder15.length(), 33);
                                                            string6 = spannableStringBuilder15;
                                                            if (string6 != null) {
                                                                string6 = LocaleController.getString(R.string.HiddenName);
                                                            }
                                                            charSequence21 = charSequence5;
                                                            str6 = str4;
                                                            str7 = str5;
                                                            z7 = z2;
                                                            i17 = i6;
                                                            str8 = strStringForMessageListDate;
                                                            z8 = z12;
                                                            charSequence22 = charSequence20;
                                                            charSequence23 = charSequence19;
                                                        } else {
                                                            charSequence20 = string;
                                                            userName = this.chat.title;
                                                        }
                                                    }
                                                    string6 = AndroidUtilities.escape(userName);
                                                    if (string6 != null) {
                                                    }
                                                    charSequence21 = charSequence5;
                                                    str6 = str4;
                                                    str7 = str5;
                                                    z7 = z2;
                                                    i17 = i6;
                                                    str8 = strStringForMessageListDate;
                                                    z8 = z12;
                                                    charSequence22 = charSequence20;
                                                    charSequence23 = charSequence19;
                                                }
                                                string6 = topicSpannedName;
                                                if (string6 != null) {
                                                }
                                                charSequence21 = charSequence5;
                                                str6 = str4;
                                                str7 = str5;
                                                z7 = z2;
                                                i17 = i6;
                                                str8 = strStringForMessageListDate;
                                                z8 = z12;
                                                charSequence22 = charSequence20;
                                                charSequence23 = charSequence19;
                                            } else {
                                                charSequence20 = string;
                                                TLRPC.User user7 = this.user;
                                                if (user7 != null) {
                                                    if (UserObject.isReplyUser(user7)) {
                                                        i16 = R.string.RepliesTitle;
                                                    } else if (UserObject.isAnonymous(this.user)) {
                                                        i16 = R.string.AnonymousForward;
                                                    } else if (!UserObject.isUserSelf(this.user) || this.isMonoForumTopicDialog) {
                                                        userName = UserObject.getUserName(this.user);
                                                        string6 = AndroidUtilities.escape(userName);
                                                    } else if (this.isSavedDialog) {
                                                        i16 = R.string.MyNotes;
                                                    } else if (this.useMeForMyMessages) {
                                                        i16 = R.string.FromYou;
                                                    } else {
                                                        if (this.dialogsType == 3) {
                                                            this.drawPinBackground = true;
                                                        }
                                                        i16 = R.string.SavedMessages;
                                                    }
                                                    string6 = LocaleController.getString(i16);
                                                }
                                                if (string6 != null) {
                                                }
                                                charSequence21 = charSequence5;
                                                str6 = str4;
                                                str7 = str5;
                                                z7 = z2;
                                                i17 = i6;
                                                str8 = strStringForMessageListDate;
                                                z8 = z12;
                                                charSequence22 = charSequence20;
                                                charSequence23 = charSequence19;
                                            }
                                        }
                                    }
                                }
                                strStringForMessageListDate = LocaleController.stringForMessageListDate(i15);
                                messageObject4 = this.message;
                                if (messageObject4 == null) {
                                    this.drawCheck1 = false;
                                    this.drawCheck2 = false;
                                    if (messageObject4 == null) {
                                        this.drawClock = messageObject4 == null && messageObject4.isSending() && this.currentDialogId == UserConfig.getInstance(this.currentAccount).getClientUserId();
                                        z6 = false;
                                        this.drawCount = false;
                                        this.drawMention = false;
                                        this.drawReactionMention = false;
                                        this.drawError = false;
                                        str4 = null;
                                        str5 = null;
                                        this.promoDialog = z6;
                                        messagesController = MessagesController.getInstance(this.currentAccount);
                                        if (this.dialogsType == 0) {
                                            this.drawPinBackground = true;
                                            this.promoDialog = true;
                                            i18 = messagesController.promoDialogType;
                                            if (i18 != MessagesController.PROMO_TYPE_PROXY) {
                                            }
                                        }
                                        if (this.currentDialogFolderId == 0) {
                                        }
                                    }
                                }
                            } else {
                                strStringForMessageListDate = "";
                                messageObject4 = this.message;
                                if (messageObject4 == null) {
                                }
                            }
                        } else {
                            this.draftMessage = null;
                            this.draftVoice = false;
                            topicsNames = this.customMessage;
                            this.currentMessagePaint = Theme.dialogs_messagePaint[this.paintIndex];
                            charSequence17 = "";
                            charSequence4 = charSequence2;
                            string = null;
                            charSequence18 = null;
                        }
                        z2 = true;
                        i6 = -1;
                        charSequence5 = charSequence18;
                        charSequence19 = charSequence17;
                        if (!this.drawForwardIcon) {
                            this.drawGiftIcon = true;
                            SpannableStringBuilder spannableStringBuilder142 = new SpannableStringBuilder(topicsNames);
                            spannableStringBuilder142.insert(0, charSequence4);
                            ColoredImageSpan coloredImageSpan32 = new ColoredImageSpan(ContextCompat.getDrawable(getContext(), R.drawable.mini_gift).mutate());
                            coloredImageSpan32.setScale(1.25f, 1.25f);
                            coloredImageSpan32.spaceScaleX = 0.9f;
                            coloredImageSpan32.setAlpha(0.9f);
                            spannableStringBuilder142.setSpan(coloredImageSpan32, 0, 1, 0);
                            tL_textWithEntities2 = ((TLRPC.TL_messageActionStarGift) this.message.messageOwner.action).message;
                            if (tL_textWithEntities2 != null) {
                                this.currentMessagePaint = Theme.dialogs_messagePaint[this.paintIndex];
                            }
                            topicsNames = spannableStringBuilder142;
                        }
                        if (TextUtils.isEmpty(this.customMessage)) {
                        }
                    } else if (ChatObject.isChannel(this.chat)) {
                        TLRPC.Chat chat11 = this.chat;
                        if (chat11.megagroup || chat11.creator || ((tL_chatAdminRights = chat11.admin_rights) != null && tL_chatAdminRights.post_messages)) {
                            TLRPC.Chat chat12 = this.chat;
                            if ((chat12 == null || (!chat12.left && !chat12.kicked)) && !this.forbidDraft && (!ChatObject.isForum(chat12) || this.isTopic)) {
                                draftMessage3 = null;
                            }
                            if (!isForumCell()) {
                            }
                            z2 = true;
                            i6 = -1;
                            charSequence5 = charSequence18;
                            charSequence19 = charSequence17;
                            if (!this.drawForwardIcon) {
                            }
                            if (TextUtils.isEmpty(this.customMessage)) {
                            }
                        }
                    }
                }
                draft = null;
                this.draftMessage = draft;
                z = this.draftVoice;
                if (z) {
                }
            }
        } else if (LocaleController.isRTL) {
            iDp = AndroidUtilities.dp(18.0f);
            this.nameLeft = iDp;
            if (this.encryptedChat == null) {
            }
            i4 = this.lastMessageDate;
            if (i4 == 0) {
            }
            if (this.isTopic) {
            }
            draft = null;
            this.draftMessage = draft;
            z = this.draftVoice;
            if (z) {
            }
        } else {
            i3 = this.messagePaddingStart + 4;
            iDp = AndroidUtilities.dp(i3);
            this.nameLeft = iDp;
            if (this.encryptedChat == null) {
            }
            i4 = this.lastMessageDate;
            if (i4 == 0) {
            }
            if (this.isTopic) {
            }
            draft = null;
            this.draftMessage = draft;
            z = this.draftVoice;
            if (z) {
            }
        }
        if (z8) {
            int iCeil = (int) Math.ceil(Theme.dialogs_timePaint.measureText(str8));
            i21 = iCeil;
            charSequence24 = charSequence21;
            i20 = i17;
            str10 = str7;
            this.timeLayout = new StaticLayout(str8, Theme.dialogs_timePaint, iCeil, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.timeLeft = !LocaleController.isRTL ? (getMeasuredWidth() - AndroidUtilities.dp(15.0f)) - i21 : AndroidUtilities.dp(15.0f);
        } else {
            i20 = i17;
            charSequence24 = charSequence21;
            str10 = str7;
            this.timeLayout = null;
            this.timeLeft = 0;
            i21 = 0;
        }
        if (drawLock2()) {
            if (LocaleController.isRTL) {
                f = 4.0f;
                intrinsicWidth4 = this.timeLeft + i21 + AndroidUtilities.dp(4.0f);
            } else {
                f = 4.0f;
                intrinsicWidth4 = (this.timeLeft - Theme.dialogs_lock2Drawable.getIntrinsicWidth()) - AndroidUtilities.dp(4.0f);
            }
            this.lock2Left = intrinsicWidth4;
            intrinsicWidth = Theme.dialogs_lock2Drawable.getIntrinsicWidth() + AndroidUtilities.dp(f);
            i21 += intrinsicWidth;
        } else {
            intrinsicWidth = 0;
        }
        if (LocaleController.isRTL) {
            this.nameWidth = ((getMeasuredWidth() - this.nameLeft) - AndroidUtilities.dp(this.messagePaddingStart + 13)) - i21;
            this.nameLeft += i21;
        } else {
            this.nameWidth = ((getMeasuredWidth() - this.nameLeft) - AndroidUtilities.dp(22.0f)) - i21;
        }
        if (this.drawNameLock) {
            this.nameWidth -= AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : 4.0f) + Theme.dialogs_lockDrawable.getIntrinsicWidth();
        }
        if (!this.drawClock) {
            if (this.drawCheck2) {
                intrinsicWidth2 = Theme.dialogs_checkDrawable.getIntrinsicWidth() + AndroidUtilities.dp(5.0f);
                int i42 = this.nameWidth - intrinsicWidth2;
                this.nameWidth = i42;
                if (this.drawCheck1) {
                    this.nameWidth = i42 - (Theme.dialogs_halfCheckDrawable.getIntrinsicWidth() - AndroidUtilities.dp(8.0f));
                    if (LocaleController.isRTL) {
                        int iDp12 = this.timeLeft + i21 + AndroidUtilities.dp(5.0f);
                        this.checkDrawLeft = iDp12;
                        this.halfCheckDrawLeft = iDp12 + AndroidUtilities.dp(5.5f);
                        i22 = this.nameLeft;
                        intrinsicWidth2 = (intrinsicWidth2 + Theme.dialogs_halfCheckDrawable.getIntrinsicWidth()) - AndroidUtilities.dp(8.0f);
                    } else {
                        int i43 = (this.timeLeft - intrinsicWidth) - intrinsicWidth2;
                        this.halfCheckDrawLeft = i43;
                        this.checkDrawLeft = i43 - AndroidUtilities.dp(5.5f);
                    }
                } else if (LocaleController.isRTL) {
                    this.checkDrawLeft1 = this.timeLeft + i21 + AndroidUtilities.dp(5.0f);
                    i22 = this.nameLeft;
                } else {
                    this.checkDrawLeft1 = (this.timeLeft - intrinsicWidth) - intrinsicWidth2;
                }
            }
            if (this.drawPremium) {
                if (this.dialogMuted) {
                    iDp3 = AndroidUtilities.dp(6.0f) + Theme.dialogs_muteDrawable.getIntrinsicWidth();
                    this.nameWidth -= iDp3;
                    if (LocaleController.isRTL) {
                    }
                } else {
                    iDp3 = AndroidUtilities.dp(6.0f) + Theme.dialogs_muteDrawable.getIntrinsicWidth();
                    this.nameWidth -= iDp3;
                    if (LocaleController.isRTL) {
                    }
                }
            }
            if (this.drawBotVerified) {
            }
            iDp10 = this.nameWidth - AndroidUtilities.dp(12.0f);
            if (iDp10 < 0) {
            }
            if (string6 instanceof String) {
            }
            if (this.nameLayoutEllipsizeByGradient) {
            }
            float f2 = iDp10;
            this.nameIsEllipsized = Theme.dialogs_namePaint[this.paintIndex].measureText(string6.toString()) > f2;
            if (!this.twoLinesForName) {
            }
            CharSequence charSequenceReplaceEmoji3 = Emoji.replaceEmoji(string6, Theme.dialogs_namePaint[this.paintIndex].getFontMetricsInt(), false);
            MessageObject messageObject20 = this.message;
            if (messageObject20 == null) {
                this.nameLayout = !this.twoLinesForName ? StaticLayoutEx.createStaticLayout(charSequence, Theme.dialogs_namePaint[this.paintIndex], iDp10, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false, TextUtils.TruncateAt.END, iDp10, 2) : new StaticLayout(charSequence, Theme.dialogs_namePaint[this.paintIndex], Math.max(iDp10, this.nameWidth), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                if (this.nameLayoutEllipsizeByGradient) {
                    this.nameLayoutTranslateX = (this.nameLayoutEllipsizeByGradient || !this.nameLayout.isRtlCharAt(0)) ? BitmapDescriptorFactory.HUE_RED : -AndroidUtilities.dp(36.0f);
                    this.nameLayoutEllipsizeLeft = this.nameLayout.isRtlCharAt(0);
                }
            }
            this.animatedEmojiStackName = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStackName, this.nameLayout);
            float f3 = 20.0f;
            if (this.useForceThreeLines) {
                iDp4 = AndroidUtilities.dp(11.0f);
                this.messageNameTop = AndroidUtilities.dp(32.0f);
                this.timeTop = AndroidUtilities.dp(13.0f);
                this.errorTop = AndroidUtilities.dp(43.0f);
                this.pinTop = AndroidUtilities.dp(43.0f);
                this.countTop = AndroidUtilities.dp(43.0f);
                this.checkDrawTop = AndroidUtilities.dp(13.0f);
                measuredWidth = getMeasuredWidth() - AndroidUtilities.dp(this.messagePaddingStart + 21);
                if (LocaleController.isRTL) {
                }
                this.storyParams.originalAvatarRect.set(iDp5, iDp4, iDp5 + AndroidUtilities.dp(56.0f), AndroidUtilities.dp(56.0f) + iDp4);
                i23 = 0;
                while (true) {
                    imageReceiverArr = this.thumbImage;
                    if (i23 < imageReceiverArr.length) {
                    }
                    imageReceiverArr[i23].setImageCoords(((this.thumbSize + 2) * i23) + iDp6, ((AndroidUtilities.dp(31.0f) + iDp4) + (this.twoLinesForName ? AndroidUtilities.dp(20.0f) : 0)) - ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout || (dialogCellTags = this.tags) == null || dialogCellTags.isEmpty()) ? 0 : AndroidUtilities.dp(9.0f)), AndroidUtilities.dp(18.0f), AndroidUtilities.dp(18.0f));
                    i23++;
                }
            }
            int i44 = iDp4;
            if (LocaleController.isRTL) {
            }
            if (this.twoLinesForName) {
            }
            if (this.useForceThreeLines) {
                this.timeTop -= AndroidUtilities.dp(6.0f);
                this.checkDrawTop -= AndroidUtilities.dp(6.0f);
            } else {
                this.timeTop -= AndroidUtilities.dp(6.0f);
                this.checkDrawTop -= AndroidUtilities.dp(6.0f);
            }
            if (getIsPinned()) {
            }
            if (this.drawError) {
            }
            if (z7) {
            }
            int iMax = Math.max(AndroidUtilities.dp(12.0f), measuredWidth);
            this.buttonTop = AndroidUtilities.dp((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 58.0f : 62.0f);
            if (this.useForceThreeLines) {
                this.buttonTop -= AndroidUtilities.dp(isForumCell() ? 10.0f : 12.0f);
            } else {
                this.buttonTop -= AndroidUtilities.dp(isForumCell() ? 10.0f : 12.0f);
            }
            if (isForumCell()) {
            }
            if (this.twoLinesForName) {
            }
            this.animatedEmojiStack2 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack2, this.messageNameLayout);
            this.buttonCreated = false;
            if (TextUtils.isEmpty(charSequence24)) {
            }
            this.animatedEmojiStack3 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack3, this.buttonLayout);
            if (!TextUtils.isEmpty(charSequence23)) {
            }
            if (topicsNames instanceof Spannable) {
            }
            AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans = this.animatedEmojiStack;
            Layout[] layoutArr = new Layout[i25];
            layoutArr[0] = this.messageLayout;
            this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, emojiGroupedSpans, layoutArr);
            if (LocaleController.isRTL) {
            }
            staticLayout2 = this.typingLayout;
            if (staticLayout2 != null) {
                if (i24 >= 0) {
                    primaryHorizontal = this.typingLayout.getPrimaryHorizontal(0);
                    primaryHorizontal2 = this.typingLayout.getPrimaryHorizontal(i25);
                    this.statusDrawableLeft = primaryHorizontal >= primaryHorizontal2 ? (int) (this.typingLeft + primaryHorizontal) : (int) (this.typingLeft + primaryHorizontal2 + AndroidUtilities.dp(3.0f));
                }
            }
            updateThumbsPosition();
        }
        intrinsicWidth2 = Theme.dialogs_clockDrawable.getIntrinsicWidth() + AndroidUtilities.dp(5.0f);
        this.nameWidth -= intrinsicWidth2;
        if (!LocaleController.isRTL) {
            this.clockDrawLeft = (this.timeLeft - intrinsicWidth) - intrinsicWidth2;
            if (this.drawPremium && this.emojiStatus.getDrawable() != null) {
                iDp3 = AndroidUtilities.dp(36.0f);
                this.nameWidth -= iDp3;
                if (LocaleController.isRTL) {
                }
            } else if ((this.dialogMuted || this.drawUnmute) && !this.drawVerified && this.drawScam == 0) {
                iDp3 = AndroidUtilities.dp(6.0f) + Theme.dialogs_muteDrawable.getIntrinsicWidth();
                this.nameWidth -= iDp3;
                if (LocaleController.isRTL) {
                    this.nameLeft += iDp3;
                }
            } else if (this.drawVerified) {
                iDp3 = AndroidUtilities.dp(6.0f) + Theme.dialogs_verifiedDrawable.getIntrinsicWidth();
                this.nameWidth -= iDp3;
                if (LocaleController.isRTL) {
                }
            } else if (this.drawPremium) {
                iDp3 = AndroidUtilities.dp(36.0f);
                this.nameWidth -= iDp3;
                if (LocaleController.isRTL) {
                }
            } else if (this.drawScam != 0) {
                iDp3 = AndroidUtilities.dp(6.0f) + (this.drawScam == 1 ? Theme.dialogs_scamDrawable : Theme.dialogs_fakeDrawable).getIntrinsicWidth();
                this.nameWidth -= iDp3;
                if (LocaleController.isRTL) {
                }
            }
            if (this.drawBotVerified) {
                this.nameWidth -= AndroidUtilities.dp(21.0f);
            }
            iDp10 = this.nameWidth - AndroidUtilities.dp(12.0f);
            if (iDp10 < 0) {
                iDp10 = 0;
            }
            if (string6 instanceof String) {
                string6 = ((String) string6).replace('\n', ' ');
            }
            if (this.nameLayoutEllipsizeByGradient) {
                this.nameLayoutFits = string6.length() == TextUtils.ellipsize(string6, Theme.dialogs_namePaint[this.paintIndex], (float) iDp10, TextUtils.TruncateAt.END).length();
                iDp10 += AndroidUtilities.dp(48.0f);
            }
            float f22 = iDp10;
            this.nameIsEllipsized = Theme.dialogs_namePaint[this.paintIndex].measureText(string6.toString()) > f22;
            if (!this.twoLinesForName) {
                string6 = TextUtils.ellipsize(string6, Theme.dialogs_namePaint[this.paintIndex], f22, TextUtils.TruncateAt.END);
            }
            CharSequence charSequenceReplaceEmoji32 = Emoji.replaceEmoji(string6, Theme.dialogs_namePaint[this.paintIndex].getFontMetricsInt(), false);
            MessageObject messageObject202 = this.message;
            CharSequence charSequence39 = (messageObject202 == null || !messageObject202.hasHighlightedWords() || (charSequenceHighlightText3 = AndroidUtilities.highlightText(charSequenceReplaceEmoji32, this.message.highlightedWords, this.resourcesProvider)) == null) ? charSequenceReplaceEmoji32 : charSequenceHighlightText3;
            this.nameLayout = !this.twoLinesForName ? StaticLayoutEx.createStaticLayout(charSequence39, Theme.dialogs_namePaint[this.paintIndex], iDp10, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false, TextUtils.TruncateAt.END, iDp10, 2) : new StaticLayout(charSequence39, Theme.dialogs_namePaint[this.paintIndex], Math.max(iDp10, this.nameWidth), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.nameLayoutTranslateX = (this.nameLayoutEllipsizeByGradient || !this.nameLayout.isRtlCharAt(0)) ? BitmapDescriptorFactory.HUE_RED : -AndroidUtilities.dp(36.0f);
            this.nameLayoutEllipsizeLeft = this.nameLayout.isRtlCharAt(0);
            this.animatedEmojiStackName = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStackName, this.nameLayout);
            float f32 = 20.0f;
            if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
                iDp4 = AndroidUtilities.dp(11.0f);
                this.messageNameTop = AndroidUtilities.dp(32.0f);
                this.timeTop = AndroidUtilities.dp(13.0f);
                this.errorTop = AndroidUtilities.dp(43.0f);
                this.pinTop = AndroidUtilities.dp(43.0f);
                this.countTop = AndroidUtilities.dp(43.0f);
                this.checkDrawTop = AndroidUtilities.dp(13.0f);
                measuredWidth = getMeasuredWidth() - AndroidUtilities.dp(this.messagePaddingStart + 21);
                if (LocaleController.isRTL) {
                    int iDp13 = AndroidUtilities.dp(this.messagePaddingStart + 6);
                    this.messageNameLeft = iDp13;
                    this.messageLeft = iDp13;
                    this.typingLeft = iDp13;
                    this.buttonLeft = iDp13;
                    iDp5 = AndroidUtilities.dp(this.avatarStart);
                    iDp6 = AndroidUtilities.dp(69.0f) + iDp5;
                } else {
                    int iDp14 = AndroidUtilities.dp(16.0f);
                    this.messageNameLeft = iDp14;
                    this.messageLeft = iDp14;
                    this.typingLeft = iDp14;
                    this.buttonLeft = iDp14;
                    iDp5 = getMeasuredWidth() - AndroidUtilities.dp(this.avatarStart + 56);
                    iDp6 = iDp5 - AndroidUtilities.dp(31.0f);
                }
                this.storyParams.originalAvatarRect.set(iDp5, iDp4, iDp5 + AndroidUtilities.dp(56.0f), AndroidUtilities.dp(56.0f) + iDp4);
                i23 = 0;
                while (true) {
                    imageReceiverArr = this.thumbImage;
                    if (i23 < imageReceiverArr.length) {
                        break;
                    }
                    imageReceiverArr[i23].setImageCoords(((this.thumbSize + 2) * i23) + iDp6, ((AndroidUtilities.dp(31.0f) + iDp4) + (this.twoLinesForName ? AndroidUtilities.dp(20.0f) : 0)) - ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout || (dialogCellTags = this.tags) == null || dialogCellTags.isEmpty()) ? 0 : AndroidUtilities.dp(9.0f)), AndroidUtilities.dp(18.0f), AndroidUtilities.dp(18.0f));
                    i23++;
                }
            } else {
                iDp4 = AndroidUtilities.dp(9.0f);
                this.messageNameTop = AndroidUtilities.dp(31.0f);
                this.timeTop = AndroidUtilities.dp(16.0f);
                this.errorTop = AndroidUtilities.dp(39.0f);
                this.pinTop = AndroidUtilities.dp(39.0f);
                this.countTop = this.isTopic ? AndroidUtilities.dp(36.0f) : AndroidUtilities.dp(39.0f);
                this.checkDrawTop = AndroidUtilities.dp(17.0f);
                measuredWidth = getMeasuredWidth() - AndroidUtilities.dp((this.messagePaddingStart + 23) - (LocaleController.isRTL ? 0 : 12));
                if (LocaleController.isRTL) {
                    int iDp15 = AndroidUtilities.dp(22.0f);
                    this.messageNameLeft = iDp15;
                    this.messageLeft = iDp15;
                    this.typingLeft = iDp15;
                    this.buttonLeft = iDp15;
                    iDp8 = getMeasuredWidth() - AndroidUtilities.dp(this.avatarStart + 54);
                    iDp9 = iDp8 - AndroidUtilities.dp(((this.thumbSize + 2) * this.thumbsCount) + 9);
                } else {
                    int iDp16 = AndroidUtilities.dp(this.messagePaddingStart + 4);
                    this.messageNameLeft = iDp16;
                    this.messageLeft = iDp16;
                    this.typingLeft = iDp16;
                    this.buttonLeft = iDp16;
                    iDp8 = AndroidUtilities.dp(this.avatarStart);
                    iDp9 = AndroidUtilities.dp(67.0f) + iDp8;
                }
                this.storyParams.originalAvatarRect.set(iDp8, iDp4, iDp8 + AndroidUtilities.dp(54.0f), iDp4 + AndroidUtilities.dp(54.0f));
                int i45 = 0;
                while (true) {
                    ImageReceiver[] imageReceiverArr2 = this.thumbImage;
                    if (i45 >= imageReceiverArr2.length) {
                        break;
                    }
                    imageReceiverArr2[i45].setImageCoords(((this.thumbSize + 2) * i45) + iDp9, ((AndroidUtilities.dp(30.0f) + iDp4) + (this.twoLinesForName ? AndroidUtilities.dp(f32) : 0)) - ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout || (dialogCellTags3 = this.tags) == null || dialogCellTags3.isEmpty()) ? 0 : AndroidUtilities.dp(9.0f)), AndroidUtilities.dp(this.thumbSize), AndroidUtilities.dp(this.thumbSize));
                    i45++;
                    f32 = 20.0f;
                }
            }
            int i442 = iDp4;
            if (LocaleController.isRTL) {
                this.tagsRight = getMeasuredWidth() - AndroidUtilities.dp(this.messagePaddingStart);
                this.tagsLeft = AndroidUtilities.dp(64.0f);
            } else {
                this.tagsLeft = this.messageLeft;
                this.tagsRight = getMeasuredWidth() - AndroidUtilities.dp(64.0f);
            }
            if (this.twoLinesForName) {
                this.messageNameTop += AndroidUtilities.dp(20.0f);
            }
            if (((this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || isForumCell()) && (dialogCellTags2 = this.tags) != null && !dialogCellTags2.isEmpty()) {
                this.timeTop -= AndroidUtilities.dp(6.0f);
                this.checkDrawTop -= AndroidUtilities.dp(6.0f);
            }
            if (getIsPinned()) {
                this.pinLeft = !LocaleController.isRTL ? (getMeasuredWidth() - Theme.dialogs_pinnedDrawable.getIntrinsicWidth()) - AndroidUtilities.dp(14.0f) : AndroidUtilities.dp(14.0f);
            }
            if (this.drawError) {
                iDp7 = AndroidUtilities.dp(31.0f);
                measuredWidth -= iDp7;
                if (LocaleController.isRTL) {
                    this.errorLeft = AndroidUtilities.dp(11.0f);
                    this.messageLeft += iDp7;
                    this.typingLeft += iDp7;
                    this.buttonLeft += iDp7;
                    this.messageNameLeft += iDp7;
                } else {
                    this.errorLeft = getMeasuredWidth() - AndroidUtilities.dp(34.0f);
                }
            } else if (str6 == null && str10 == null && !this.drawReactionMention) {
                if (this.allowBotOpenButton && !isFolderCell() && !isForumCell() && !isDialogFolder() && UserObject.isBot(this.user) && this.user.bot_has_main_app) {
                    setOpenBotButton(true);
                    int iDp17 = (int) (AndroidUtilities.dp(26.0f) + this.openButtonText.getCurrentWidth());
                    int iDp18 = AndroidUtilities.dp(13.0f);
                    measuredWidth -= iDp17;
                    int iDp19 = AndroidUtilities.dp((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 40.0f : this.isTopic ? 33.0f : 36.0f);
                    if (LocaleController.isRTL) {
                        this.openButtonRect.set(AndroidUtilities.dp(13.0f), iDp19, AndroidUtilities.dp(13.0f) + iDp17, iDp19 + AndroidUtilities.dp(28.0f));
                        int i46 = iDp17 + iDp18;
                        this.messageLeft += i46;
                        this.typingLeft += i46;
                        this.buttonLeft += i46;
                        this.messageNameLeft += i46;
                    } else {
                        this.openButtonRect.set((getMeasuredWidth() - iDp17) - AndroidUtilities.dp(13.0f), iDp19, getMeasuredWidth() - AndroidUtilities.dp(13.0f), iDp19 + AndroidUtilities.dp(28.0f));
                    }
                } else if (getIsPinned()) {
                    int intrinsicWidth6 = Theme.dialogs_pinnedDrawable.getIntrinsicWidth() + AndroidUtilities.dp(8.0f);
                    measuredWidth -= intrinsicWidth6;
                    if (LocaleController.isRTL) {
                        this.messageLeft += intrinsicWidth6;
                        this.typingLeft += intrinsicWidth6;
                        this.buttonLeft += intrinsicWidth6;
                        this.messageNameLeft += intrinsicWidth6;
                    }
                }
                this.drawCount = false;
                this.drawMention = false;
            } else {
                if (str6 != null) {
                    this.countWidth = Math.max(AndroidUtilities.dp(12.0f), (int) Math.ceil(Theme.dialogs_countTextPaint.measureText(str6)));
                    this.countLayout = new StaticLayout(str6, Theme.dialogs_countTextPaint, this.countWidth, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    int iDp20 = this.countWidth + AndroidUtilities.dp(18.0f);
                    measuredWidth -= iDp20;
                    if (LocaleController.isRTL) {
                        this.countLeft = AndroidUtilities.dp(20.0f);
                        this.messageLeft += iDp20;
                        this.typingLeft += iDp20;
                        this.buttonLeft += iDp20;
                        this.messageNameLeft += iDp20;
                    } else {
                        this.countLeft = (getMeasuredWidth() - this.countWidth) - AndroidUtilities.dp(20.0f);
                    }
                    this.drawCount = true;
                } else {
                    this.countWidth = 0;
                }
                if (str10 != null) {
                    if (this.currentDialogFolderId != 0) {
                        this.mentionWidth = Math.max(AndroidUtilities.dp(12.0f), (int) Math.ceil(Theme.dialogs_countTextPaint.measureText(str10)));
                        this.mentionLayout = new StaticLayout(str10, Theme.dialogs_countTextPaint, this.mentionWidth, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    } else {
                        this.mentionWidth = AndroidUtilities.dp(12.0f);
                    }
                    int iDp21 = this.mentionWidth + AndroidUtilities.dp(18.0f);
                    measuredWidth -= iDp21;
                    if (LocaleController.isRTL) {
                        int iDp22 = AndroidUtilities.dp(20.0f);
                        int i47 = this.countWidth;
                        this.mentionLeft = iDp22 + (i47 != 0 ? i47 + AndroidUtilities.dp(18.0f) : 0);
                        this.messageLeft += iDp21;
                        this.typingLeft += iDp21;
                        this.buttonLeft += iDp21;
                        this.messageNameLeft += iDp21;
                    } else {
                        int measuredWidth5 = (getMeasuredWidth() - this.mentionWidth) - AndroidUtilities.dp(20.0f);
                        int i48 = this.countWidth;
                        this.mentionLeft = measuredWidth5 - (i48 != 0 ? i48 + AndroidUtilities.dp(18.0f) : 0);
                    }
                    this.drawMention = true;
                } else {
                    this.mentionWidth = 0;
                }
                if (this.drawReactionMention) {
                    iDp7 = AndroidUtilities.dp(24.0f);
                    measuredWidth -= iDp7;
                    if (LocaleController.isRTL) {
                        int iDp23 = AndroidUtilities.dp(20.0f);
                        this.reactionMentionLeft = iDp23;
                        if (this.drawMention) {
                            int i49 = this.mentionWidth;
                            this.reactionMentionLeft = iDp23 + (i49 != 0 ? i49 + AndroidUtilities.dp(18.0f) : 0);
                        }
                        if (this.drawCount) {
                            int i50 = this.reactionMentionLeft;
                            int i51 = this.countWidth;
                            this.reactionMentionLeft = i50 + (i51 != 0 ? i51 + AndroidUtilities.dp(18.0f) : 0);
                        }
                        this.messageLeft += iDp7;
                        this.typingLeft += iDp7;
                        this.buttonLeft += iDp7;
                        this.messageNameLeft += iDp7;
                    } else {
                        int measuredWidth6 = getMeasuredWidth() - AndroidUtilities.dp(32.0f);
                        this.reactionMentionLeft = measuredWidth6;
                        if (this.drawMention) {
                            int i52 = this.mentionWidth;
                            this.reactionMentionLeft = measuredWidth6 - (i52 != 0 ? i52 + AndroidUtilities.dp(18.0f) : 0);
                        }
                        if (this.drawCount) {
                            int i53 = this.reactionMentionLeft;
                            int i54 = this.countWidth;
                            this.reactionMentionLeft = i53 - (i54 != 0 ? i54 + AndroidUtilities.dp(18.0f) : 0);
                        }
                    }
                }
            }
            if (z7) {
                if (topicsNames == null) {
                    topicsNames = "";
                }
                if (topicsNames.length() > 150) {
                    topicsNames = topicsNames.subSequence(0, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                }
                topicsNames = Emoji.replaceEmoji(((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) && !hasTags() && charSequence22 == null) ? AndroidUtilities.replaceTwoNewLinesToOne(topicsNames) : AndroidUtilities.replaceNewLines(topicsNames), Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), false);
                MessageObject messageObject21 = this.message;
                if (messageObject21 != null && (charSequenceHighlightText2 = AndroidUtilities.highlightText(topicsNames, messageObject21.highlightedWords, this.resourcesProvider)) != null) {
                    topicsNames = charSequenceHighlightText2;
                }
            }
            int iMax2 = Math.max(AndroidUtilities.dp(12.0f), measuredWidth);
            this.buttonTop = AndroidUtilities.dp((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 58.0f : 62.0f);
            if (((this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || isForumCell()) && hasTags()) {
                this.buttonTop -= AndroidUtilities.dp(isForumCell() ? 10.0f : 12.0f);
            }
            if (isForumCell()) {
                this.messageTop = AndroidUtilities.dp((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 34.0f : 39.0f);
                int i55 = 0;
                while (true) {
                    ImageReceiver[] imageReceiverArr3 = this.thumbImage;
                    if (i55 >= imageReceiverArr3.length) {
                        break;
                    }
                    imageReceiverArr3[i55].setImageY(this.buttonTop);
                    i55++;
                }
            } else if ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) && !hasTags() && charSequence22 != null && (this.currentDialogFolderId == 0 || this.currentDialogFolderDialogsCount == 1)) {
                try {
                    MessageObject messageObject22 = this.message;
                    if (messageObject22 != null && messageObject22.hasHighlightedWords() && (charSequenceHighlightText = AndroidUtilities.highlightText(charSequence22, this.message.highlightedWords, this.resourcesProvider)) != null) {
                        charSequence22 = charSequenceHighlightText;
                    }
                    this.messageNameLayout = StaticLayoutEx.createStaticLayout(charSequence22, Theme.dialogs_messageNamePaint, iMax2, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false, TextUtils.TruncateAt.END, iMax2, 1);
                } catch (Exception e3) {
                    FileLog.e(e3);
                }
                this.messageTop = AndroidUtilities.dp(51.0f);
                int iDp24 = (this.nameIsEllipsized && this.isTopic) ? AndroidUtilities.dp(20.0f) : 0;
                int i56 = 0;
                while (true) {
                    ImageReceiver[] imageReceiverArr4 = this.thumbImage;
                    if (i56 >= imageReceiverArr4.length) {
                        break;
                    }
                    imageReceiverArr4[i56].setImageY(i442 + iDp24 + AndroidUtilities.dp(40.0f));
                    i56++;
                }
            } else {
                this.messageNameLayout = null;
                if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
                    this.messageTop = AndroidUtilities.dp(32.0f);
                    int iDp25 = (this.nameIsEllipsized && this.isTopic) ? AndroidUtilities.dp(20.0f) : 0;
                    int i57 = 0;
                    while (true) {
                        ImageReceiver[] imageReceiverArr5 = this.thumbImage;
                        if (i57 >= imageReceiverArr5.length) {
                            break;
                        }
                        imageReceiverArr5[i57].setImageY(i442 + iDp25 + AndroidUtilities.dp(21.0f));
                        i57++;
                    }
                } else {
                    this.messageTop = AndroidUtilities.dp(39.0f);
                }
            }
            if (this.twoLinesForName) {
                this.messageTop += AndroidUtilities.dp(20.0f);
            }
            this.animatedEmojiStack2 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack2, this.messageNameLayout);
            this.buttonCreated = false;
            if (TextUtils.isEmpty(charSequence24)) {
                this.buttonLayout = null;
            } else {
                this.buttonLayout = new StaticLayout(TextUtils.ellipsize(Emoji.replaceEmoji(charSequence24, this.currentMessagePaint.getFontMetricsInt(), false), this.currentMessagePaint, iMax2 - AndroidUtilities.dp(26.0f), TextUtils.TruncateAt.END), this.currentMessagePaint, iMax2 - AndroidUtilities.dp(20.0f), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.spoilersPool2.addAll(this.spoilers2);
                this.spoilers2.clear();
                SpoilerEffect.addSpoilers(this, this.buttonLayout, this.spoilersPool2, this.spoilers2);
            }
            this.animatedEmojiStack3 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack3, this.buttonLayout);
            if (!TextUtils.isEmpty(charSequence23)) {
                if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
                    StaticLayout staticLayoutCreateStaticLayout = !hasTags() ? StaticLayoutEx.createStaticLayout(charSequence23, Theme.dialogs_messagePrintingPaint[this.paintIndex], iMax2, Layout.Alignment.ALIGN_NORMAL, 1.0f, AndroidUtilities.dp(1.0f), false, TextUtils.TruncateAt.END, iMax2, 1) : new StaticLayout(TextUtils.ellipsize(charSequence23, this.currentMessagePaint, iMax2 - AndroidUtilities.dp(12.0f), TextUtils.TruncateAt.END), Theme.dialogs_messagePrintingPaint[this.paintIndex], iMax2, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    this.typingLayout = staticLayoutCreateStaticLayout;
                }
            }
            if (topicsNames instanceof Spannable) {
                try {
                    Spannable spannable = (Spannable) topicsNames;
                    for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
                        if ((obj instanceof ClickableSpan) || (obj instanceof CodeHighlighting.Span) || (!isFolderCell() && (obj instanceof TypefaceSpan))) {
                            spannable.removeSpan(obj);
                        } else if ((obj instanceof CodeHighlighting.ColorSpan) || (obj instanceof QuoteSpan) || (obj instanceof QuoteSpan.QuoteStyleSpan) || ((obj instanceof StyleSpan) && ((StyleSpan) obj).getStyle() == 1)) {
                        }
                    }
                    if ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) && !hasTags()) {
                        try {
                            if (this.currentDialogFolderId != 0) {
                                if (this.currentDialogFolderDialogsCount > 1) {
                                    this.currentMessagePaint = Theme.dialogs_messagePaint[this.paintIndex];
                                    charSequence25 = charSequence22;
                                    charSequence26 = null;
                                }
                                alignment = (this.isForum && LocaleController.isRTL) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
                                if ((!this.useForceThreeLines || SharedConfig.useThreeLinesLayout) && !hasTags()) {
                                    if (this.thumbsCount > 0 && charSequence26 != null) {
                                        iMax2 += AndroidUtilities.dp(5.0f);
                                    }
                                    this.messageLayout = StaticLayoutEx.createStaticLayout(charSequence25, this.currentMessagePaint, iMax2, alignment, 1.0f, AndroidUtilities.dp(1.0f), false, TextUtils.TruncateAt.END, iMax2, charSequence26 != null ? 1 : 2);
                                } else {
                                    if (this.thumbsCount > 0) {
                                        iMax2 += AndroidUtilities.dp((r0 * (this.thumbSize + 2)) + 3);
                                        if (LocaleController.isRTL && !isForumCell()) {
                                            this.messageLeft -= AndroidUtilities.dp((this.thumbsCount * (this.thumbSize + 2)) + 3);
                                        }
                                    }
                                    this.messageLayout = new StaticLayout(charSequence25, this.currentMessagePaint, iMax2, alignment, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                                }
                                i26 = iMax2;
                                try {
                                    this.spoilersPool.addAll(this.spoilers);
                                    this.spoilers.clear();
                                    i25 = 1;
                                    i24 = i20;
                                } catch (Exception e4) {
                                    e = e4;
                                    i24 = i20;
                                    i25 = 1;
                                }
                                try {
                                    SpoilerEffect.addSpoilers(this, this.messageLayout, -2, -2, this.spoilersPool, this.spoilers);
                                } catch (Exception e5) {
                                    e = e5;
                                    iMax2 = i26;
                                    staticLayout = null;
                                    this.messageLayout = staticLayout;
                                    FileLog.e(e);
                                    i26 = iMax2;
                                    AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans2 = this.animatedEmojiStack;
                                    Layout[] layoutArr2 = new Layout[i25];
                                    layoutArr2[0] = this.messageLayout;
                                    this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, emojiGroupedSpans2, layoutArr2);
                                    if (LocaleController.isRTL) {
                                    }
                                    staticLayout2 = this.typingLayout;
                                    if (staticLayout2 != null) {
                                    }
                                    updateThumbsPosition();
                                }
                            }
                            if ((this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || hasTags() || charSequence22 != null || (ChatObject.isMonoForum(this.chat) && ChatObject.canManageMonoForum(this.currentAccount, this.chat))) {
                                if (isForumCell() || !(topicsNames instanceof Spanned) || ((FixedWidthSpan[]) ((Spanned) topicsNames).getSpans(0, topicsNames.length(), FixedWidthSpan.class)).length > 0) {
                                    textPaint2 = this.currentMessagePaint;
                                    fDp = iMax2 - AndroidUtilities.dp(12.0f);
                                    truncateAt = TextUtils.TruncateAt.END;
                                } else {
                                    textPaint2 = this.currentMessagePaint;
                                    fDp = iMax2 - AndroidUtilities.dp((this.thumbsCount * (this.thumbSize + 2)) + 15);
                                    truncateAt = TextUtils.TruncateAt.END;
                                }
                                topicsNames = TextUtils.ellipsize(topicsNames, textPaint2, fDp, truncateAt);
                            }
                            charSequence26 = charSequence22;
                            charSequence25 = topicsNames;
                            if (this.isForum) {
                                alignment = (this.isForum && LocaleController.isRTL) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
                                if (this.useForceThreeLines) {
                                    if (this.thumbsCount > 0) {
                                        iMax2 += AndroidUtilities.dp(5.0f);
                                    }
                                    this.messageLayout = StaticLayoutEx.createStaticLayout(charSequence25, this.currentMessagePaint, iMax2, alignment, 1.0f, AndroidUtilities.dp(1.0f), false, TextUtils.TruncateAt.END, iMax2, charSequence26 != null ? 1 : 2);
                                    i26 = iMax2;
                                    this.spoilersPool.addAll(this.spoilers);
                                    this.spoilers.clear();
                                    i25 = 1;
                                    i24 = i20;
                                    SpoilerEffect.addSpoilers(this, this.messageLayout, -2, -2, this.spoilersPool, this.spoilers);
                                } else {
                                    if (this.thumbsCount > 0) {
                                    }
                                    this.messageLayout = StaticLayoutEx.createStaticLayout(charSequence25, this.currentMessagePaint, iMax2, alignment, 1.0f, AndroidUtilities.dp(1.0f), false, TextUtils.TruncateAt.END, iMax2, charSequence26 != null ? 1 : 2);
                                    i26 = iMax2;
                                    this.spoilersPool.addAll(this.spoilers);
                                    this.spoilers.clear();
                                    i25 = 1;
                                    i24 = i20;
                                    SpoilerEffect.addSpoilers(this, this.messageLayout, -2, -2, this.spoilersPool, this.spoilers);
                                }
                            }
                        } catch (Exception e6) {
                            e = e6;
                            i24 = i20;
                            staticLayout = null;
                            i25 = 1;
                            this.messageLayout = staticLayout;
                            FileLog.e(e);
                            i26 = iMax2;
                            AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans22 = this.animatedEmojiStack;
                            Layout[] layoutArr22 = new Layout[i25];
                            layoutArr22[0] = this.messageLayout;
                            this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, emojiGroupedSpans22, layoutArr22);
                            if (LocaleController.isRTL) {
                            }
                            staticLayout2 = this.typingLayout;
                            if (staticLayout2 != null) {
                            }
                            updateThumbsPosition();
                        }
                    }
                } catch (Exception e7) {
                    e = e7;
                    i24 = i20;
                    staticLayout = null;
                    i25 = 1;
                    this.messageLayout = staticLayout;
                    FileLog.e(e);
                    i26 = iMax2;
                    AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans222 = this.animatedEmojiStack;
                    Layout[] layoutArr222 = new Layout[i25];
                    layoutArr222[0] = this.messageLayout;
                    this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, emojiGroupedSpans222, layoutArr222);
                    if (LocaleController.isRTL) {
                    }
                    staticLayout2 = this.typingLayout;
                    if (staticLayout2 != null) {
                    }
                    updateThumbsPosition();
                }
            } else if (this.useForceThreeLines) {
                if (this.currentDialogFolderId != 0) {
                }
                if (this.useForceThreeLines) {
                }
            } else {
                if (this.currentDialogFolderId != 0) {
                }
                if (this.useForceThreeLines) {
                    if (isForumCell()) {
                    }
                } else if (isForumCell()) {
                    textPaint2 = this.currentMessagePaint;
                    fDp = iMax2 - AndroidUtilities.dp(12.0f);
                    truncateAt = TextUtils.TruncateAt.END;
                    topicsNames = TextUtils.ellipsize(topicsNames, textPaint2, fDp, truncateAt);
                    charSequence26 = charSequence22;
                    charSequence25 = topicsNames;
                }
            }
            AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans2222 = this.animatedEmojiStack;
            Layout[] layoutArr2222 = new Layout[i25];
            layoutArr2222[0] = this.messageLayout;
            this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, emojiGroupedSpans2222, layoutArr2222);
            if (LocaleController.isRTL) {
                StaticLayout staticLayout3 = this.nameLayout;
                if (staticLayout3 != null && staticLayout3.getLineCount() > 0) {
                    float lineRight = this.nameLayout.getLineRight(0);
                    if (this.nameLayoutEllipsizeByGradient) {
                        lineRight = Math.min(this.nameWidth, lineRight);
                    }
                    if (lineRight == this.nameWidth) {
                        double dCeil = Math.ceil(this.nameLayout.getLineWidth(0));
                        if (this.nameLayoutEllipsizeByGradient) {
                            dCeil = Math.min(this.nameWidth, dCeil);
                        }
                        double d2 = this.nameWidth;
                        if (dCeil < d2) {
                            double d3 = this.nameLeft;
                            Double.isNaN(d2);
                            Double.isNaN(d3);
                            this.nameLeft = (int) (d3 - (d2 - dCeil));
                        }
                    }
                    if (this.drawBotVerified) {
                        this.nameLeft += AndroidUtilities.dp(21.0f);
                    }
                    this.nameMuteLeft = (int) (this.nameLeft + lineRight + AndroidUtilities.dp(6.0f));
                }
                StaticLayout staticLayout4 = this.messageLayout;
                if (staticLayout4 != null && (lineCount3 = staticLayout4.getLineCount()) > 0) {
                    float fMin = 2.14748365E9f;
                    for (int i58 = 0; i58 < lineCount3; i58 += i25) {
                        fMin = Math.min(fMin, this.messageLayout.getLineLeft(i58));
                    }
                    this.messageLeft = (int) (this.messageLeft - fMin);
                }
                StaticLayout staticLayout5 = this.buttonLayout;
                if (staticLayout5 != null && (lineCount2 = staticLayout5.getLineCount()) > 0) {
                    float fMin2 = 2.14748365E9f;
                    for (int i59 = 0; i59 < lineCount2; i59 += i25) {
                        fMin2 = Math.min(fMin2, this.buttonLayout.getLineLeft(i59));
                    }
                    this.buttonLeft = (int) (this.buttonLeft - fMin2);
                }
                StaticLayout staticLayout6 = this.typingLayout;
                if (staticLayout6 != null && (lineCount = staticLayout6.getLineCount()) > 0) {
                    float fMin3 = 2.14748365E9f;
                    for (int i60 = 0; i60 < lineCount; i60 += i25) {
                        fMin3 = Math.min(fMin3, this.typingLayout.getLineLeft(i60));
                    }
                    this.typingLeft = (int) (this.typingLeft - fMin3);
                }
                StaticLayout staticLayout7 = this.messageNameLayout;
                if (staticLayout7 != null && staticLayout7.getLineCount() > 0) {
                    this.messageNameLeft = (int) (this.messageNameLeft - this.messageNameLayout.getLineLeft(0));
                }
            } else {
                StaticLayout staticLayout8 = this.nameLayout;
                if (staticLayout8 != null && staticLayout8.getLineCount() > 0) {
                    float lineLeft = this.nameLayout.getLineLeft(0);
                    double dCeil2 = Math.ceil(this.nameLayout.getLineWidth(0));
                    int iDp26 = this.nameLeft + AndroidUtilities.dp(12.0f);
                    this.nameLeft = iDp26;
                    if (this.drawBotVerified) {
                        this.nameLeft = iDp26 + AndroidUtilities.dp(21.0f);
                    }
                    if (this.nameLayoutEllipsizeByGradient) {
                        dCeil2 = Math.min(this.nameWidth, dCeil2);
                    }
                    if ((this.dialogMuted || this.drawUnmute) && !this.drawVerified && this.drawScam == 0) {
                        double d4 = this.nameLeft;
                        double d5 = this.nameWidth;
                        Double.isNaN(d5);
                        Double.isNaN(d4);
                        double d6 = d4 + (d5 - dCeil2);
                        double dDp = AndroidUtilities.dp(6.0f);
                        Double.isNaN(dDp);
                        d = d6 - dDp;
                        drawable = Theme.dialogs_muteDrawable;
                        intrinsicWidth3 = drawable.getIntrinsicWidth();
                        double d7 = intrinsicWidth3;
                        Double.isNaN(d7);
                        this.nameMuteLeft = (int) (d - d7);
                        if (lineLeft == BitmapDescriptorFactory.HUE_RED) {
                            double d8 = this.nameWidth;
                            if (dCeil2 < d8) {
                                double d9 = this.nameLeft;
                                Double.isNaN(d8);
                                Double.isNaN(d9);
                                this.nameLeft = (int) (d9 + (d8 - dCeil2));
                            }
                        }
                    } else if (this.drawVerified) {
                        double d10 = this.nameLeft;
                        double d11 = this.nameWidth;
                        Double.isNaN(d11);
                        Double.isNaN(d10);
                        double d12 = d10 + (d11 - dCeil2);
                        double dDp2 = AndroidUtilities.dp(6.0f);
                        Double.isNaN(dDp2);
                        d = d12 - dDp2;
                        drawable = Theme.dialogs_verifiedDrawable;
                        intrinsicWidth3 = drawable.getIntrinsicWidth();
                        double d72 = intrinsicWidth3;
                        Double.isNaN(d72);
                        this.nameMuteLeft = (int) (d - d72);
                        if (lineLeft == BitmapDescriptorFactory.HUE_RED) {
                        }
                    } else {
                        if (this.drawPremium) {
                            double d13 = this.nameLeft;
                            double d14 = this.nameWidth;
                            Double.isNaN(d14);
                            double d15 = lineLeft;
                            Double.isNaN(d15);
                            Double.isNaN(d13);
                            d = d13 + ((d14 - dCeil2) - d15);
                            intrinsicWidth3 = AndroidUtilities.dp(24.0f);
                        } else {
                            if (this.drawScam != 0) {
                                double d16 = this.nameLeft;
                                double d17 = this.nameWidth;
                                Double.isNaN(d17);
                                Double.isNaN(d16);
                                double d18 = d16 + (d17 - dCeil2);
                                double dDp3 = AndroidUtilities.dp(6.0f);
                                Double.isNaN(dDp3);
                                d = d18 - dDp3;
                                intrinsicWidth3 = (this.drawScam == i25 ? Theme.dialogs_scamDrawable : Theme.dialogs_fakeDrawable).getIntrinsicWidth();
                            }
                            double d42 = this.nameLeft;
                            double d52 = this.nameWidth;
                            Double.isNaN(d52);
                            Double.isNaN(d42);
                            double d62 = d42 + (d52 - dCeil2);
                            double dDp4 = AndroidUtilities.dp(6.0f);
                            Double.isNaN(dDp4);
                            d = d62 - dDp4;
                            drawable = Theme.dialogs_muteDrawable;
                            intrinsicWidth3 = drawable.getIntrinsicWidth();
                        }
                        double d722 = intrinsicWidth3;
                        Double.isNaN(d722);
                        this.nameMuteLeft = (int) (d - d722);
                        if (lineLeft == BitmapDescriptorFactory.HUE_RED) {
                        }
                    }
                }
                StaticLayout staticLayout9 = this.messageLayout;
                if (staticLayout9 != null && (lineCount6 = staticLayout9.getLineCount()) > 0) {
                    int i61 = 0;
                    int iMin = Integer.MAX_VALUE;
                    while (true) {
                        if (i61 >= lineCount6) {
                            i29 = Integer.MAX_VALUE;
                            break;
                        }
                        if (this.messageLayout.getLineLeft(i61) != BitmapDescriptorFactory.HUE_RED) {
                            i29 = Integer.MAX_VALUE;
                            iMin = 0;
                            break;
                        } else {
                            double dCeil3 = Math.ceil(this.messageLayout.getLineWidth(i61));
                            double d19 = i26;
                            Double.isNaN(d19);
                            iMin = Math.min(iMin, (int) (d19 - dCeil3));
                            i61 += i25;
                        }
                    }
                    if (iMin != i29) {
                        this.messageLeft += iMin;
                    }
                }
                StaticLayout staticLayout10 = this.typingLayout;
                if (staticLayout10 != null && (lineCount5 = staticLayout10.getLineCount()) > 0) {
                    int i62 = 0;
                    int iMin2 = Integer.MAX_VALUE;
                    while (true) {
                        if (i62 >= lineCount5) {
                            i28 = Integer.MAX_VALUE;
                            break;
                        }
                        if (this.typingLayout.getLineLeft(i62) != BitmapDescriptorFactory.HUE_RED) {
                            i28 = Integer.MAX_VALUE;
                            iMin2 = 0;
                            break;
                        } else {
                            double dCeil4 = Math.ceil(this.typingLayout.getLineWidth(i62));
                            double d20 = i26;
                            Double.isNaN(d20);
                            iMin2 = Math.min(iMin2, (int) (d20 - dCeil4));
                            i62 += i25;
                        }
                    }
                    if (iMin2 != i28) {
                        this.typingLeft += iMin2;
                    }
                }
                StaticLayout staticLayout11 = this.messageNameLayout;
                if (staticLayout11 != null && staticLayout11.getLineCount() > 0 && this.messageNameLayout.getLineLeft(0) == BitmapDescriptorFactory.HUE_RED) {
                    double dCeil5 = Math.ceil(this.messageNameLayout.getLineWidth(0));
                    double d21 = i26;
                    if (dCeil5 < d21) {
                        double d22 = this.messageNameLeft;
                        Double.isNaN(d21);
                        Double.isNaN(d22);
                        this.messageNameLeft = (int) (d22 + (d21 - dCeil5));
                    }
                }
                StaticLayout staticLayout12 = this.buttonLayout;
                if (staticLayout12 != null && (lineCount4 = staticLayout12.getLineCount()) > 0) {
                    int iMin3 = Integer.MAX_VALUE;
                    for (int i63 = 0; i63 < lineCount4; i63 += i25) {
                        iMin3 = (int) Math.min(iMin3, this.buttonLayout.getWidth() - this.buttonLayout.getLineRight(i63));
                    }
                    this.buttonLeft += iMin3;
                }
            }
            staticLayout2 = this.typingLayout;
            if (staticLayout2 != null && this.printingStringType >= 0 && staticLayout2.getText().length() > 0) {
                if (i24 >= 0 || (i27 = i24 + 1) >= this.typingLayout.getText().length()) {
                    primaryHorizontal = this.typingLayout.getPrimaryHorizontal(0);
                    primaryHorizontal2 = this.typingLayout.getPrimaryHorizontal(i25);
                } else {
                    primaryHorizontal = this.typingLayout.getPrimaryHorizontal(i24);
                    primaryHorizontal2 = this.typingLayout.getPrimaryHorizontal(i27);
                }
                this.statusDrawableLeft = primaryHorizontal >= primaryHorizontal2 ? (int) (this.typingLeft + primaryHorizontal) : (int) (this.typingLeft + primaryHorizontal2 + AndroidUtilities.dp(3.0f));
            }
            updateThumbsPosition();
        }
        this.clockDrawLeft = this.timeLeft + i21 + AndroidUtilities.dp(5.0f);
        i22 = this.nameLeft;
        this.nameLeft = i22 + intrinsicWidth2;
        if (this.drawPremium) {
        }
        if (this.drawBotVerified) {
        }
        iDp10 = this.nameWidth - AndroidUtilities.dp(12.0f);
        if (iDp10 < 0) {
        }
        if (string6 instanceof String) {
        }
        if (this.nameLayoutEllipsizeByGradient) {
        }
        float f222 = iDp10;
        this.nameIsEllipsized = Theme.dialogs_namePaint[this.paintIndex].measureText(string6.toString()) > f222;
        if (!this.twoLinesForName) {
        }
        CharSequence charSequenceReplaceEmoji322 = Emoji.replaceEmoji(string6, Theme.dialogs_namePaint[this.paintIndex].getFontMetricsInt(), false);
        MessageObject messageObject2022 = this.message;
        if (messageObject2022 == null) {
        }
        this.animatedEmojiStackName = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStackName, this.nameLayout);
        float f322 = 20.0f;
        if (this.useForceThreeLines) {
        }
        int i4422 = iDp4;
        if (LocaleController.isRTL) {
        }
        if (this.twoLinesForName) {
        }
        if (this.useForceThreeLines) {
        }
        if (getIsPinned()) {
        }
        if (this.drawError) {
        }
        if (z7) {
        }
        int iMax22 = Math.max(AndroidUtilities.dp(12.0f), measuredWidth);
        this.buttonTop = AndroidUtilities.dp((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 58.0f : 62.0f);
        if (this.useForceThreeLines) {
        }
        if (isForumCell()) {
        }
        if (this.twoLinesForName) {
        }
        this.animatedEmojiStack2 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack2, this.messageNameLayout);
        this.buttonCreated = false;
        if (TextUtils.isEmpty(charSequence24)) {
        }
        this.animatedEmojiStack3 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack3, this.buttonLayout);
        if (!TextUtils.isEmpty(charSequence23)) {
        }
        if (topicsNames instanceof Spannable) {
        }
        AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans22222 = this.animatedEmojiStack;
        Layout[] layoutArr22222 = new Layout[i25];
        layoutArr22222[0] = this.messageLayout;
        this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, emojiGroupedSpans22222, layoutArr22222);
        if (LocaleController.isRTL) {
        }
        staticLayout2 = this.typingLayout;
        if (staticLayout2 != null) {
        }
        updateThumbsPosition();
    }

    public boolean checkCurrentDialogIndex(boolean z) {
        return false;
    }

    public void checkHeight() {
        if (getMeasuredHeight() <= 0 || getMeasuredHeight() == computeHeight()) {
            return;
        }
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if ((!this.isTopic && motionEvent.getAction() == 1) || motionEvent.getAction() == 3) {
            this.storyParams.checkOnTouchEvent(motionEvent, this);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0375  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x05cb  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x05cf  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0653  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x065c  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x067b  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0682  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0695  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x06ad  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0236  */
    @Override // org.telegram.ui.Stories.StoriesListPlaceProvider.AvatarOverlaysView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean drawAvatarOverlays(Canvas canvas) {
        boolean z;
        int iDp;
        float fDp;
        float fDp2;
        boolean z2;
        float fDp3;
        int iDp2;
        float fDp4;
        int iDp3;
        float f;
        boolean z3;
        float fDp5;
        Paint paint;
        int color2;
        TLRPC.Chat chat = this.chat;
        if (chat == null || (chat.flags2 & 2048) == 0) {
            z = false;
        } else {
            float imageY2 = this.avatarImage.getImageY2();
            float imageX2 = this.avatarImage.getImageX2();
            CheckBox2 checkBox2 = this.checkBox;
            float progress = (checkBox2 == null || !checkBox2.isChecked()) ? 1.0f : 1.0f - this.checkBox.getProgress();
            if (this.starBg == null) {
                this.starBg = getContext().getResources().getDrawable(R.drawable.star_small_outline).mutate();
            }
            int color = Theme.getColor(Theme.key_windowBackgroundWhite);
            if (this.starBgColor != color) {
                Drawable drawable = this.starBg;
                this.starBgColor = color;
                drawable.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
            }
            if (this.starFg == null) {
                this.starFg = getContext().getResources().getDrawable(R.drawable.star_small_inner).mutate();
            }
            int iDp4 = AndroidUtilities.dp(19.33f);
            Rect rect = AndroidUtilities.rectTmp2;
            int i = (int) imageX2;
            int i2 = (int) imageY2;
            int i3 = i2 - iDp4;
            rect.set((AndroidUtilities.dp(1.66f) + i) - iDp4, i3, AndroidUtilities.dp(1.66f) + i, i2);
            rect.inset(-AndroidUtilities.dp(1.0f), -AndroidUtilities.dp(1.0f));
            this.starBg.setBounds(rect);
            int i4 = (int) (progress * 255.0f);
            this.starBg.setAlpha(i4);
            this.starBg.draw(canvas);
            rect.set((AndroidUtilities.dp(1.66f) + i) - iDp4, i3, i + AndroidUtilities.dp(1.66f), i2);
            this.starFg.setBounds(rect);
            this.starFg.setAlpha(i4);
            this.starFg.draw(canvas);
            z = true;
        }
        float f2 = this.premiumBlockedT.set(this.premiumBlocked && !z);
        float f3 = 10.0f;
        if (f2 > BitmapDescriptorFactory.HUE_RED) {
            float centerY = this.avatarImage.getCenterY() + AndroidUtilities.dp(18.0f);
            float centerX = this.avatarImage.getCenterX() + AndroidUtilities.dp(18.0f);
            canvas.save();
            Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider));
            canvas.drawCircle(centerX, centerY, AndroidUtilities.dp(11.33f) * f2, Theme.dialogs_onlineCirclePaint);
            if (this.premiumGradient == null) {
                this.premiumGradient = new PremiumGradient.PremiumGradientTools(Theme.key_premiumGradient1, Theme.key_premiumGradient2, -1, -1, -1, this.resourcesProvider);
            }
            this.premiumGradient.gradientMatrix((int) (centerX - AndroidUtilities.dp(10.0f)), (int) (centerY - AndroidUtilities.dp(10.0f)), (int) (AndroidUtilities.dp(10.0f) + centerX), (int) (AndroidUtilities.dp(10.0f) + centerY), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            canvas.drawCircle(centerX, centerY, AndroidUtilities.dp(10.0f) * f2, this.premiumGradient.paint);
            if (this.lockDrawable == null) {
                Drawable drawableMutate = getContext().getResources().getDrawable(R.drawable.msg_mini_lock2).mutate();
                this.lockDrawable = drawableMutate;
                drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
            }
            this.lockDrawable.setBounds((int) (centerX - (((r4.getIntrinsicWidth() / 2.0f) * 0.875f) * f2)), (int) (centerY - (((this.lockDrawable.getIntrinsicHeight() / 2.0f) * 0.875f) * f2)), (int) (centerX + ((this.lockDrawable.getIntrinsicWidth() / 2.0f) * 0.875f * f2)), (int) (centerY + ((this.lockDrawable.getIntrinsicHeight() / 2.0f) * 0.875f * f2)));
            this.lockDrawable.setAlpha((int) (f2 * 255.0f));
            this.lockDrawable.draw(canvas);
            canvas.restore();
            return false;
        }
        if (!this.isDialogCell || this.currentDialogFolderId != 0 || z) {
            return false;
        }
        boolean z4 = (this.ttlPeriod <= 0 || isOnline() || this.hasCall) ? false : true;
        this.showTtl = z4;
        if (this.rightFragmentOpenedProgress != 1.0f && (z4 || this.ttlProgress > BitmapDescriptorFactory.HUE_RED)) {
            TimerDrawable timerDrawable = this.timerDrawable;
            if (timerDrawable != null) {
                int time = timerDrawable.getTime();
                int i5 = this.ttlPeriod;
                if (time != i5 && i5 > 0) {
                    this.timerDrawable = TimerDrawable.getTtlIconForDialogs(this.ttlPeriod);
                }
                if (this.timerPaint == null) {
                    this.timerPaint = new Paint(1);
                    Paint paint2 = new Paint(1);
                    this.timerPaint2 = paint2;
                    paint2.setColor(838860800);
                }
                int imageY22 = (int) (this.avatarImage.getImageY2() - AndroidUtilities.dp(9.0f));
                int iDp5 = (int) (LocaleController.isRTL ? this.storyParams.originalAvatarRect.left + AndroidUtilities.dp(9.0f) : this.storyParams.originalAvatarRect.right - AndroidUtilities.dp(9.0f));
                this.timerDrawable.setBounds(0, 0, AndroidUtilities.dp(22.0f), AndroidUtilities.dp(22.0f));
                this.timerDrawable.setTime(this.ttlPeriod);
                if (this.avatarImage.updateThumbShaderMatrix()) {
                    ImageReceiver imageReceiver = this.avatarImage;
                    BitmapShader bitmapShader = imageReceiver.thumbShader;
                    if (bitmapShader != null) {
                        this.timerPaint.setShader(bitmapShader);
                    } else {
                        BitmapShader bitmapShader2 = imageReceiver.staticThumbShader;
                        if (bitmapShader2 != null) {
                            this.timerPaint.setShader(bitmapShader2);
                        }
                    }
                } else {
                    this.timerPaint.setShader(null);
                    if (this.avatarImage.getBitmap() != null && !this.avatarImage.getBitmap().isRecycled()) {
                        paint = this.timerPaint;
                        color2 = AndroidUtilities.getDominantColor(this.avatarImage.getBitmap());
                    } else if (this.avatarImage.getDrawable() instanceof VectorAvatarThumbDrawable) {
                        this.timerPaint.setColor(((VectorAvatarThumbDrawable) this.avatarImage.getDrawable()).gradientTools.getAverageColor());
                    } else {
                        paint = this.timerPaint;
                        color2 = this.avatarDrawable.getColor2();
                    }
                    paint.setColor(color2);
                }
                canvas.save();
                float progress2 = this.ttlProgress * (1.0f - this.rightFragmentOpenedProgress);
                CheckBox2 checkBox22 = this.checkBox;
                if (checkBox22 != null) {
                    progress2 *= 1.0f - checkBox22.getProgress();
                }
                float f4 = iDp5;
                float f5 = imageY22;
                canvas.scale(progress2, progress2, f4, f5);
                canvas.drawCircle(f4, f5, AndroidUtilities.dpf2(11.0f), this.timerPaint);
                canvas.drawCircle(f4, f5, AndroidUtilities.dpf2(11.0f), this.timerPaint2);
                canvas.save();
                canvas.translate(f4 - AndroidUtilities.dpf2(11.0f), f5 - AndroidUtilities.dpf2(11.0f));
                this.timerDrawable.draw(canvas);
                canvas.restore();
                canvas.restore();
            }
        }
        TLRPC.User user = this.user;
        if (user == null || MessagesController.isSupportUser(user) || this.user.bot) {
            TLRPC.Chat chat2 = this.chat;
            if (chat2 == null) {
                z2 = false;
            } else {
                boolean z5 = chat2.call_active && chat2.call_not_empty;
                this.hasCall = z5;
                if ((z5 || this.chatCallProgress != BitmapDescriptorFactory.HUE_RED) && this.rightFragmentOpenedProgress < 1.0f) {
                    CheckBox2 checkBox23 = this.checkBox;
                    float progress3 = (checkBox23 == null || !checkBox23.isChecked()) ? 1.0f : 1.0f - this.checkBox.getProgress();
                    int iDp6 = (int) (this.storyParams.originalAvatarRect.bottom - AndroidUtilities.dp((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 6.0f : 8.0f));
                    if (LocaleController.isRTL) {
                        iDp = (int) (this.storyParams.originalAvatarRect.left + AndroidUtilities.dp((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 10.0f : 6.0f));
                    } else {
                        iDp = (int) (this.storyParams.originalAvatarRect.right - AndroidUtilities.dp((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 10.0f : 6.0f));
                    }
                    if (this.rightFragmentOpenedProgress != BitmapDescriptorFactory.HUE_RED) {
                        canvas.save();
                        float f6 = 1.0f - this.rightFragmentOpenedProgress;
                        canvas.scale(f6, f6, iDp, iDp6);
                    }
                    Paint paint3 = Theme.dialogs_onlineCirclePaint;
                    int i6 = Theme.key_windowBackgroundWhite;
                    paint3.setColor(Theme.getColor(i6, this.resourcesProvider));
                    float f7 = iDp;
                    float f8 = iDp6;
                    canvas.drawCircle(f7, f8, AndroidUtilities.dp(11.0f) * this.chatCallProgress * progress3, Theme.dialogs_onlineCirclePaint);
                    Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor(Theme.key_chats_onlineCircle, this.resourcesProvider));
                    canvas.drawCircle(f7, f8, AndroidUtilities.dp(9.0f) * this.chatCallProgress * progress3, Theme.dialogs_onlineCirclePaint);
                    Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor(i6, this.resourcesProvider));
                    if (!LiteMode.isEnabled(LiteMode.FLAGS_CHAT)) {
                        this.innerProgress = 0.65f;
                    }
                    int i7 = this.progressStage;
                    if (i7 == 0) {
                        fDp = AndroidUtilities.dp(1.0f) + (AndroidUtilities.dp(4.0f) * this.innerProgress);
                        fDp2 = AndroidUtilities.dp(3.0f) - (AndroidUtilities.dp(2.0f) * this.innerProgress);
                        if (this.chatCallProgress >= 1.0f) {
                        }
                    } else if (i7 != 1) {
                        if (i7 == 2) {
                            fDp4 = AndroidUtilities.dp(1.0f);
                            iDp3 = AndroidUtilities.dp(2.0f);
                        } else {
                            if (i7 == 3) {
                                fDp3 = AndroidUtilities.dp(3.0f);
                                iDp2 = AndroidUtilities.dp(2.0f);
                            } else {
                                if (i7 != 4) {
                                    if (i7 != 5) {
                                        if (i7 == 6) {
                                            fDp4 = AndroidUtilities.dp(1.0f);
                                            iDp3 = AndroidUtilities.dp(4.0f);
                                        } else {
                                            fDp3 = AndroidUtilities.dp(5.0f);
                                            iDp2 = AndroidUtilities.dp(4.0f);
                                        }
                                    }
                                    fDp = AndroidUtilities.dp(5.0f) - (AndroidUtilities.dp(4.0f) * this.innerProgress);
                                    fDp2 = AndroidUtilities.dp(1.0f) + (AndroidUtilities.dp(4.0f) * this.innerProgress);
                                    if (this.chatCallProgress >= 1.0f || progress3 < 1.0f) {
                                        canvas.save();
                                        float f9 = this.chatCallProgress * progress3;
                                        canvas.scale(f9, f9, f7, f8);
                                    }
                                    this.rect.set(iDp - AndroidUtilities.dp(1.0f), f8 - fDp, iDp + AndroidUtilities.dp(1.0f), fDp + f8);
                                    canvas.drawRoundRect(this.rect, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), Theme.dialogs_onlineCirclePaint);
                                    float f10 = f8 - fDp2;
                                    float f11 = f8 + fDp2;
                                    this.rect.set(iDp - AndroidUtilities.dp(5.0f), f10, iDp - AndroidUtilities.dp(3.0f), f11);
                                    canvas.drawRoundRect(this.rect, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), Theme.dialogs_onlineCirclePaint);
                                    this.rect.set(AndroidUtilities.dp(3.0f) + iDp, f10, iDp + AndroidUtilities.dp(5.0f), f11);
                                    canvas.drawRoundRect(this.rect, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), Theme.dialogs_onlineCirclePaint);
                                    if (this.chatCallProgress >= 1.0f || progress3 < 1.0f) {
                                        canvas.restore();
                                    }
                                    if (LiteMode.isEnabled(LiteMode.FLAGS_CHAT)) {
                                        z2 = false;
                                    } else {
                                        float f12 = this.innerProgress + 0.04f;
                                        this.innerProgress = f12;
                                        if (f12 >= 1.0f) {
                                            this.innerProgress = BitmapDescriptorFactory.HUE_RED;
                                            int i8 = this.progressStage + 1;
                                            this.progressStage = i8;
                                            if (i8 >= 8) {
                                                this.progressStage = 0;
                                            }
                                        }
                                        z2 = true;
                                    }
                                    if (this.hasCall) {
                                        float f13 = this.chatCallProgress;
                                        if (f13 > BitmapDescriptorFactory.HUE_RED) {
                                            float f14 = f13 - 0.10666667f;
                                            this.chatCallProgress = f14;
                                            if (f14 < BitmapDescriptorFactory.HUE_RED) {
                                                this.chatCallProgress = BitmapDescriptorFactory.HUE_RED;
                                            }
                                        }
                                    } else {
                                        float f15 = this.chatCallProgress;
                                        if (f15 < 1.0f) {
                                            float f16 = f15 + 0.10666667f;
                                            this.chatCallProgress = f16;
                                            if (f16 > 1.0f) {
                                                this.chatCallProgress = 1.0f;
                                            }
                                        }
                                    }
                                    if (this.rightFragmentOpenedProgress != BitmapDescriptorFactory.HUE_RED) {
                                        canvas.restore();
                                    }
                                }
                                fDp = AndroidUtilities.dp(1.0f) + (AndroidUtilities.dp(4.0f) * this.innerProgress);
                                fDp2 = AndroidUtilities.dp(3.0f) - (AndroidUtilities.dp(2.0f) * this.innerProgress);
                                if (this.chatCallProgress >= 1.0f) {
                                    canvas.save();
                                    float f92 = this.chatCallProgress * progress3;
                                    canvas.scale(f92, f92, f7, f8);
                                    this.rect.set(iDp - AndroidUtilities.dp(1.0f), f8 - fDp, iDp + AndroidUtilities.dp(1.0f), fDp + f8);
                                    canvas.drawRoundRect(this.rect, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), Theme.dialogs_onlineCirclePaint);
                                    float f102 = f8 - fDp2;
                                    float f112 = f8 + fDp2;
                                    this.rect.set(iDp - AndroidUtilities.dp(5.0f), f102, iDp - AndroidUtilities.dp(3.0f), f112);
                                    canvas.drawRoundRect(this.rect, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), Theme.dialogs_onlineCirclePaint);
                                    this.rect.set(AndroidUtilities.dp(3.0f) + iDp, f102, iDp + AndroidUtilities.dp(5.0f), f112);
                                    canvas.drawRoundRect(this.rect, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), Theme.dialogs_onlineCirclePaint);
                                    if (this.chatCallProgress >= 1.0f) {
                                        canvas.restore();
                                        if (LiteMode.isEnabled(LiteMode.FLAGS_CHAT)) {
                                        }
                                        if (this.hasCall) {
                                        }
                                        if (this.rightFragmentOpenedProgress != BitmapDescriptorFactory.HUE_RED) {
                                        }
                                    }
                                }
                            }
                            fDp = fDp3 - (iDp2 * this.innerProgress);
                            fDp2 = (AndroidUtilities.dp(2.0f) * this.innerProgress) + AndroidUtilities.dp(1.0f);
                            if (this.chatCallProgress >= 1.0f) {
                            }
                        }
                        fDp = fDp4 + (iDp3 * this.innerProgress);
                        fDp2 = AndroidUtilities.dp(5.0f) - (AndroidUtilities.dp(4.0f) * this.innerProgress);
                        if (this.chatCallProgress >= 1.0f) {
                        }
                    } else {
                        fDp = AndroidUtilities.dp(5.0f) - (AndroidUtilities.dp(4.0f) * this.innerProgress);
                        fDp2 = AndroidUtilities.dp(1.0f) + (AndroidUtilities.dp(4.0f) * this.innerProgress);
                        if (this.chatCallProgress >= 1.0f) {
                        }
                    }
                }
            }
        } else {
            boolean zIsOnline = isOnline();
            this.wasDrawnOnline = zIsOnline;
            if (zIsOnline || this.onlineProgress != BitmapDescriptorFactory.HUE_RED) {
                int iDp7 = (int) (this.storyParams.originalAvatarRect.bottom - AndroidUtilities.dp((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 6.0f : 8.0f));
                if (LocaleController.isRTL) {
                    float f17 = this.storyParams.originalAvatarRect.left;
                    if (!this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) {
                        f3 = 6.0f;
                    }
                    fDp5 = f17 + AndroidUtilities.dp(f3);
                } else {
                    float f18 = this.storyParams.originalAvatarRect.right;
                    if (!this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) {
                        f3 = 6.0f;
                    }
                    fDp5 = f18 - AndroidUtilities.dp(f3);
                }
                int i9 = (int) fDp5;
                Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider));
                float f19 = i9;
                float f20 = iDp7;
                canvas.drawCircle(f19, f20, AndroidUtilities.dp(7.0f) * this.onlineProgress, Theme.dialogs_onlineCirclePaint);
                Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor(Theme.key_chats_onlineCircle, this.resourcesProvider));
                canvas.drawCircle(f19, f20, AndroidUtilities.dp(5.0f) * this.onlineProgress, Theme.dialogs_onlineCirclePaint);
                float f21 = this.onlineProgress;
                if (zIsOnline) {
                    if (f21 < 1.0f) {
                        float f22 = f21 + 0.10666667f;
                        this.onlineProgress = f22;
                        if (f22 > 1.0f) {
                            this.onlineProgress = 1.0f;
                        }
                        z2 = true;
                    }
                    z2 = false;
                } else {
                    if (f21 > BitmapDescriptorFactory.HUE_RED) {
                        float f23 = f21 - 0.10666667f;
                        this.onlineProgress = f23;
                        if (f23 < BitmapDescriptorFactory.HUE_RED) {
                            this.onlineProgress = BitmapDescriptorFactory.HUE_RED;
                        }
                        z2 = true;
                    }
                    z2 = false;
                }
            }
        }
        if (this.showTtl) {
            float f24 = this.ttlProgress;
            if (f24 < 1.0f) {
                f = f24 + 0.10666667f;
                this.ttlProgress = f;
                z3 = true;
            }
            z3 = z2;
        } else {
            float f25 = this.ttlProgress;
            if (f25 > BitmapDescriptorFactory.HUE_RED) {
                f = f25 - 0.10666667f;
                this.ttlProgress = f;
                z3 = true;
            }
            z3 = z2;
        }
        this.ttlProgress = Utilities.clamp(this.ttlProgress, 1.0f, BitmapDescriptorFactory.HUE_RED);
        return z3;
    }

    protected boolean drawLock2() {
        return false;
    }

    public float getClipProgress() {
        return this.clipProgress;
    }

    public int getCurrentDialogFolderId() {
        return this.currentDialogFolderId;
    }

    public long getDialogId() {
        return this.currentDialogId;
    }

    public boolean getHasUnread() {
        return this.unreadCount != 0 || this.markUnread;
    }

    public boolean getIsMuted() {
        return this.dialogMuted;
    }

    public boolean getIsPinned() {
        return this.drawPin || this.drawPinForced;
    }

    public MessageObject getMessage() {
        return this.message;
    }

    public int getMessageId() {
        return this.messageId;
    }

    public String getMessageNameString() {
        TLRPC.Chat chat;
        TLRPC.User user;
        String str;
        TLRPC.Message message;
        TLRPC.MessageFwdHeader messageFwdHeader;
        String str2;
        MessageObject messageObject;
        TLRPC.Message message2;
        TLRPC.User user2;
        MessageObject messageObject2;
        TLRPC.Message message3;
        TLRPC.MessageFwdHeader messageFwdHeader2;
        TLRPC.Message message4;
        TLRPC.MessageFwdHeader messageFwdHeader3;
        TLRPC.MessageFwdHeader messageFwdHeader4;
        MessageObject messageObject3 = this.message;
        if (messageObject3 == null) {
            return null;
        }
        long fromChatId = messageObject3.getFromChatId();
        long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        if (!this.isSavedDialog && this.currentDialogId == clientUserId) {
            long savedDialogId = this.message.getSavedDialogId();
            if (savedDialogId == clientUserId) {
                return null;
            }
            if (savedDialogId != UserObject.ANONYMOUS) {
                TLRPC.Message message5 = this.message.messageOwner;
                if (message5 != null && (messageFwdHeader4 = message5.fwd_from) != null) {
                    long peerDialogId = DialogObject.getPeerDialogId(messageFwdHeader4.saved_from_id);
                    if (peerDialogId == 0) {
                        peerDialogId = DialogObject.getPeerDialogId(this.message.messageOwner.fwd_from.from_id);
                    }
                    if (peerDialogId > 0 && peerDialogId != savedDialogId) {
                        return null;
                    }
                }
                fromChatId = savedDialogId;
            }
        }
        if (this.isSavedDialog && (message4 = this.message.messageOwner) != null && (messageFwdHeader3 = message4.fwd_from) != null) {
            fromChatId = DialogObject.getPeerDialogId(messageFwdHeader3.saved_from_id);
            if (fromChatId == 0) {
                fromChatId = DialogObject.getPeerDialogId(this.message.messageOwner.fwd_from.from_id);
            }
        }
        if (DialogObject.isUserDialog(fromChatId)) {
            user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(fromChatId));
            chat = null;
        } else {
            chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-fromChatId));
            user = null;
        }
        long j = this.currentDialogId;
        if (j == clientUserId) {
            if (user != null) {
                return AndroidUtilities.escape(UserObject.getFirstName(user).replace("\n", ""));
            }
            if (chat != null) {
                return AndroidUtilities.escape(chat.title.replace("\n", ""));
            }
            return null;
        }
        if (j == UserObject.VERIFY && (messageObject2 = this.message) != null && (message3 = messageObject2.messageOwner) != null && (messageFwdHeader2 = message3.fwd_from) != null) {
            String str3 = messageFwdHeader2.from_name;
            if (str3 != null) {
                return AndroidUtilities.escape(str3);
            }
            long peerDialogId2 = DialogObject.getPeerDialogId(messageFwdHeader2.from_id);
            if (DialogObject.isUserDialog(peerDialogId2)) {
                return UserObject.getUserName(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId2)));
            }
            TLRPC.Chat chat2 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-peerDialogId2));
            return chat2 == null ? "" : chat2.title;
        }
        if (this.message.isOutOwner() && user != null) {
            return LocaleController.getString(R.string.FromYou);
        }
        if (!this.isSavedDialog && (messageObject = this.message) != null && (message2 = messageObject.messageOwner) != null && (message2.from_id instanceof TLRPC.TL_peerUser) && (user2 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.message.messageOwner.from_id.user_id))) != null) {
            return AndroidUtilities.escape(UserObject.getFirstName(user2).replace("\n", ""));
        }
        MessageObject messageObject4 = this.message;
        return (messageObject4 == null || (message = messageObject4.messageOwner) == null || (messageFwdHeader = message.fwd_from) == null || (str2 = messageFwdHeader.from_name) == null) ? user != null ? (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? UserObject.isDeleted(user) ? LocaleController.getString(R.string.HiddenName) : AndroidUtilities.escape(ContactsController.formatName(user.first_name, user.last_name).replace("\n", "")) : AndroidUtilities.escape(UserObject.getFirstName(user).replace("\n", "")) : (chat == null || (str = chat.title) == null) ? "DELETED" : AndroidUtilities.escape(str.replace("\n", "")) : AndroidUtilities.escape(str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:183:0x03b0 A[PHI: r3
      0x03b0: PHI (r3v18 ??) = (r3v4 ??), (r3v24 ??) binds: [B:182:0x03ae, B:75:0x0165] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r16v0, types: [android.view.View, org.telegram.ui.Cells.DialogCell] */
    /* JADX WARN: Type inference failed for: r3v18, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r3v19, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r3v24, types: [android.text.SpannableStringBuilder] */
    /* JADX WARN: Type inference failed for: r3v4, types: [android.text.Spannable, android.text.SpannableString, java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r3v46, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r3v47 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public SpannableStringBuilder getMessageStringFormatted(int i, String str, CharSequence charSequence, boolean z) {
        ?? spannableString;
        TLRPC.Message message;
        CharSequence string;
        int i2;
        String pluralString;
        SpannableString spannableString2;
        SpannableStringBuilder spannableStringBuilder;
        CharSequence charSequence2;
        SpannableStringBuilder spannableStringBuilderValueOf;
        TLRPC.TL_forumTopic tL_forumTopicFindTopic;
        MessageObject captionMessage = getCaptionMessage();
        MessageObject messageObject = this.message;
        CharSequence charSequence3 = messageObject != null ? messageObject.messageText : null;
        this.applyName = true;
        if (TextUtils.isEmpty(str)) {
            MessageObject messageObject2 = this.message;
            TLRPC.Message message2 = messageObject2.messageOwner;
            if (message2 instanceof TLRPC.TL_messageService) {
                CharSequence charSequence4 = messageObject2.messageTextShort;
                if (charSequence4 == null || ((message2.action instanceof TLRPC.TL_messageActionTopicCreate) && this.isTopic)) {
                    charSequence4 = messageObject2.messageText;
                }
                if (MessageObject.isTopicActionMessage(messageObject2)) {
                    spannableStringBuilderValueOf = formatInternal(i, charSequence4, charSequence);
                    if ((this.message.topicIconDrawable[0] instanceof ForumBubbleDrawable) && (tL_forumTopicFindTopic = MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(-this.message.getDialogId(), MessageObject.getTopicId(this.currentAccount, this.message.messageOwner, true))) != null) {
                        ((ForumBubbleDrawable) this.message.topicIconDrawable[0]).setColor(tL_forumTopicFindTopic.icon_color);
                    }
                } else {
                    this.applyName = false;
                    spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(charSequence4);
                }
                if (!z) {
                    return spannableStringBuilderValueOf;
                }
                applyThumbs(spannableStringBuilderValueOf);
                return spannableStringBuilderValueOf;
            }
            if (captionMessage != null && (charSequence2 = captionMessage.caption) != null) {
                CharSequence string2 = charSequence2.toString();
                String str2 = !this.needEmoji ? "" : captionMessage.isVideo() ? "📹 " : captionMessage.isVoice() ? "🎤 " : captionMessage.isMusic() ? "🎧 " : captionMessage.isPhoto() ? "🖼 " : "📎 ";
                if (captionMessage.hasHighlightedWords() && !TextUtils.isEmpty(captionMessage.messageOwner.message)) {
                    CharSequence string3 = captionMessage.messageTrimmedToHighlight;
                    int measuredWidth = getMeasuredWidth() - AndroidUtilities.dp(this.messagePaddingStart + 47);
                    if (this.hasNameInMessage) {
                        if (!TextUtils.isEmpty(charSequence)) {
                            measuredWidth = (int) (measuredWidth - this.currentMessagePaint.measureText(charSequence.toString()));
                        }
                        measuredWidth = (int) (measuredWidth - this.currentMessagePaint.measureText(": "));
                    }
                    if (measuredWidth > 0 && captionMessage.messageTrimmedToHighlightCut) {
                        string3 = AndroidUtilities.ellipsizeCenterEnd(string3, captionMessage.highlightedWords.get(0), measuredWidth, this.currentMessagePaint, NotificationCenter.walletPendingTransactionsChanged).toString();
                    }
                    return new SpannableStringBuilder(str2).append(string3);
                }
                if (string2.length() > 150) {
                    string2 = string2.subSequence(0, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                }
                SpannableString spannableString3 = new SpannableString(string2);
                captionMessage.spoilLoginCode();
                MediaDataController.addTextStyleRuns(captionMessage.messageOwner.entities, string2, spannableString3, 264);
                TLRPC.Message message3 = captionMessage.messageOwner;
                if (message3 != null) {
                    ArrayList arrayList = message3.entities;
                    TextPaint textPaint = this.currentMessagePaint;
                    MediaDataController.addAnimatedEmojiSpans(arrayList, spannableString3, textPaint != null ? textPaint.getFontMetricsInt() : null);
                }
                spannableString = new SpannableStringBuilder(str2).append(AndroidUtilities.replaceNewLines(spannableString3));
                if (z) {
                }
            } else {
                if (message2.media != null && !messageObject2.isMediaEmpty()) {
                    this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                    int i3 = Theme.key_chats_attachMessage;
                    MessageObject messageObject3 = this.message;
                    TLRPC.MessageMedia messageMedia = messageObject3.messageOwner.media;
                    if (messageMedia instanceof TLRPC.TL_messageMediaPoll) {
                        TLRPC.TL_messageMediaPoll tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) messageMedia;
                        TLRPC.TL_textWithEntities tL_textWithEntities = tL_messageMediaPoll.poll.question;
                        if (tL_textWithEntities == null || tL_textWithEntities.entities == null) {
                            string = String.format("📊 \u2068%s\u2069", tL_textWithEntities.text);
                        } else {
                            spannableString2 = new SpannableString(tL_messageMediaPoll.poll.question.text.replace('\n', ' '));
                            TLRPC.TL_textWithEntities tL_textWithEntities2 = tL_messageMediaPoll.poll.question;
                            MediaDataController.addTextStyleRuns((ArrayList<TLRPC.MessageEntity>) tL_textWithEntities2.entities, tL_textWithEntities2.text, spannableString2);
                            MediaDataController.addAnimatedEmojiSpans(tL_messageMediaPoll.poll.question.entities, spannableString2, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt());
                            spannableStringBuilder = new SpannableStringBuilder("📊 \u2068");
                            string = spannableStringBuilder.append((CharSequence) spannableString2).append((CharSequence) "\u2069");
                        }
                    } else if (messageMedia instanceof TLRPC.TL_messageMediaToDo) {
                        TLRPC.TL_messageMediaToDo tL_messageMediaToDo = (TLRPC.TL_messageMediaToDo) messageMedia;
                        TLRPC.TL_textWithEntities tL_textWithEntities3 = tL_messageMediaToDo.todo.title;
                        if (tL_textWithEntities3 == null || tL_textWithEntities3.entities == null) {
                            string = String.format("✅ \u2068%s\u2069", tL_textWithEntities3.text);
                        } else {
                            spannableString2 = new SpannableString(tL_messageMediaToDo.todo.title.text.replace('\n', ' '));
                            TLRPC.TL_textWithEntities tL_textWithEntities4 = tL_messageMediaToDo.todo.title;
                            MediaDataController.addTextStyleRuns((ArrayList<TLRPC.MessageEntity>) tL_textWithEntities4.entities, tL_textWithEntities4.text, spannableString2);
                            MediaDataController.addAnimatedEmojiSpans(tL_messageMediaToDo.todo.title.entities, spannableString2, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt());
                            spannableStringBuilder = new SpannableStringBuilder("✅ \u2068");
                            string = spannableStringBuilder.append((CharSequence) spannableString2).append((CharSequence) "\u2069");
                        }
                    } else if (messageMedia instanceof TLRPC.TL_messageMediaGame) {
                        string = String.format("🎮 \u2068%s\u2069", messageMedia.game.title);
                    } else if (messageMedia instanceof TLRPC.TL_messageMediaInvoice) {
                        string = messageMedia.title;
                    } else if (messageObject3.type == 14) {
                        string = String.format("🎧 \u2068%s - %s\u2069", messageObject3.getMusicAuthor(), this.message.getMusicTitle());
                    } else {
                        if (messageMedia instanceof TLRPC.TL_messageMediaPaidMedia) {
                            int size = ((TLRPC.TL_messageMediaPaidMedia) messageMedia).extended_media.size();
                            if (this.hasVideoThumb) {
                                if (size > 1) {
                                    pluralString = LocaleController.formatPluralString("Media", size, new Object[0]);
                                    string = StarsIntroActivity.replaceStars(LocaleController.formatString(R.string.AttachPaidMedia, pluralString));
                                } else {
                                    i2 = R.string.AttachVideo;
                                    pluralString = LocaleController.getString(i2);
                                    string = StarsIntroActivity.replaceStars(LocaleController.formatString(R.string.AttachPaidMedia, pluralString));
                                }
                            } else if (size > 1) {
                                pluralString = LocaleController.formatPluralString("Photos", size, new Object[0]);
                                string = StarsIntroActivity.replaceStars(LocaleController.formatString(R.string.AttachPaidMedia, pluralString));
                            } else {
                                i2 = R.string.AttachPhoto;
                                pluralString = LocaleController.getString(i2);
                                string = StarsIntroActivity.replaceStars(LocaleController.formatString(R.string.AttachPaidMedia, pluralString));
                            }
                        } else if (this.thumbsCount <= 1) {
                            string = charSequence3.toString();
                        } else if (this.hasVideoThumb) {
                            ArrayList arrayList2 = this.groupMessages;
                            string = LocaleController.formatPluralString("Media", arrayList2 == null ? 0 : arrayList2.size(), new Object[0]);
                        } else {
                            ArrayList arrayList3 = this.groupMessages;
                            string = LocaleController.formatPluralString("Photos", arrayList3 == null ? 0 : arrayList3.size(), new Object[0]);
                        }
                        i3 = Theme.key_chats_actionMessage;
                    }
                    if (string instanceof String) {
                        string = ((String) string).replace('\n', ' ');
                    }
                    if (z) {
                        string = applyThumbs(string);
                    }
                    SpannableStringBuilder internal = formatInternal(i, string, charSequence);
                    if (!isForumCell()) {
                        try {
                            internal.setSpan(new ForegroundColorSpanThemable(i3, this.resourcesProvider), this.hasNameInMessage ? charSequence.length() + 2 : 0, internal.length(), 33);
                        } catch (Exception e) {
                            FileLog.e(e);
                        }
                    }
                    return internal;
                }
                MessageObject messageObject4 = this.message;
                CharSequence charSequenceReplaceNewLines = messageObject4.messageOwner.message;
                if (charSequenceReplaceNewLines == null) {
                    return new SpannableStringBuilder();
                }
                if (messageObject4.hasHighlightedWords()) {
                    CharSequence charSequence5 = this.message.messageTrimmedToHighlight;
                    if (charSequence5 != null) {
                        charSequenceReplaceNewLines = charSequence5;
                    }
                    int measuredWidth2 = getMeasuredWidth() - AndroidUtilities.dp(this.messagePaddingStart + 33);
                    if (this.hasNameInMessage) {
                        if (!TextUtils.isEmpty(charSequence)) {
                            measuredWidth2 = (int) (measuredWidth2 - this.currentMessagePaint.measureText(charSequence.toString()));
                        }
                        measuredWidth2 = (int) (measuredWidth2 - this.currentMessagePaint.measureText(": "));
                    }
                    if (measuredWidth2 > 0) {
                        charSequenceReplaceNewLines = AndroidUtilities.ellipsizeCenterEnd(charSequenceReplaceNewLines, this.message.highlightedWords.get(0), measuredWidth2, this.currentMessagePaint, NotificationCenter.walletPendingTransactionsChanged).toString();
                    }
                } else {
                    if (charSequenceReplaceNewLines.length() > 150) {
                        charSequenceReplaceNewLines = charSequenceReplaceNewLines.subSequence(0, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                    }
                    charSequenceReplaceNewLines = AndroidUtilities.replaceNewLines(charSequenceReplaceNewLines);
                }
                spannableString = new SpannableString(charSequenceReplaceNewLines);
                MessageObject messageObject5 = this.message;
                if (messageObject5 != null) {
                    messageObject5.spoilLoginCode();
                }
                MediaDataController.addTextStyleRuns(this.message, (Spannable) spannableString, 264);
                MessageObject messageObject6 = this.message;
                if (messageObject6 != null && (message = messageObject6.messageOwner) != null) {
                    ArrayList arrayList4 = message.entities;
                    TextPaint textPaint2 = this.currentMessagePaint;
                    MediaDataController.addAnimatedEmojiSpans(arrayList4, spannableString, textPaint2 != null ? textPaint2.getFontMetricsInt() : null);
                }
                if (z) {
                    spannableString = applyThumbs(spannableString);
                }
            }
        } else {
            spannableString = str;
        }
        return formatInternal(i, spannableString, charSequence);
    }

    public long getStarsPrice() {
        return this.starsPriceBlocked;
    }

    @Override // android.view.View
    public float getTranslationX() {
        return this.translationX;
    }

    @Override // org.telegram.ui.Cells.BaseCell, android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public boolean hasTags() {
        DialogCellTags dialogCellTags = this.tags;
        return (dialogCellTags == null || dialogCellTags.isEmpty()) ? false : true;
    }

    @Override // org.telegram.ui.Cells.BaseCell, android.view.View
    public void invalidate() {
        if (StoryViewer.animationInProgress) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public void invalidate(int i, int i2, int i3, int i4) {
        if (StoryViewer.animationInProgress) {
            return;
        }
        super.invalidate(i, i2, i3, i4);
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        if (drawable == this.translationDrawable || drawable == Theme.dialogs_archiveAvatarDrawable) {
            invalidate(drawable.getBounds());
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    public boolean isBlocked() {
        return this.premiumBlocked;
    }

    public boolean isDialogFolder() {
        return this.currentDialogFolderId > 0;
    }

    public boolean isFolderCell() {
        return this.currentDialogFolderId != 0;
    }

    public boolean isForumCell() {
        TLRPC.Chat chat;
        return (isDialogFolder() || (chat = this.chat) == null || (!chat.forum && (!ChatObject.isMonoForum(chat) || !ChatObject.canManageMonoForum(this.currentAccount, this.chat))) || this.isTopic) ? false : true;
    }

    public boolean isMoving() {
        return this.moving;
    }

    public boolean isPointInsideAvatar(float f, float f2) {
        return !LocaleController.isRTL ? f >= BitmapDescriptorFactory.HUE_RED && f < ((float) AndroidUtilities.dp(60.0f)) : f >= ((float) (getMeasuredWidth() - AndroidUtilities.dp(60.0f))) && f < ((float) getMeasuredWidth());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.avatarImage.onAttachedToWindow();
        int i = 0;
        while (true) {
            ImageReceiver[] imageReceiverArr = this.thumbImage;
            if (i >= imageReceiverArr.length) {
                break;
            }
            imageReceiverArr[i].onAttachedToWindow();
            i++;
        }
        resetPinnedArchiveState();
        this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack, this.messageLayout);
        this.animatedEmojiStack2 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack2, this.messageNameLayout);
        this.animatedEmojiStack3 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack3, this.buttonLayout);
        this.animatedEmojiStackName = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStackName, this.nameLayout);
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emojiStatus;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.attach();
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.botVerification;
        if (swapAnimatedEmojiDrawable2 != null) {
            swapAnimatedEmojiDrawable2.attach();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.isSliding = false;
        this.drawRevealBackground = false;
        this.currentRevealProgress = BitmapDescriptorFactory.HUE_RED;
        this.attachedToWindow = false;
        this.reorderIconProgress = (getIsPinned() && this.drawReorder) ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        this.avatarImage.onDetachedFromWindow();
        int i = 0;
        while (true) {
            ImageReceiver[] imageReceiverArr = this.thumbImage;
            if (i >= imageReceiverArr.length) {
                break;
            }
            imageReceiverArr[i].onDetachedFromWindow();
            i++;
        }
        RLottieDrawable rLottieDrawable = this.translationDrawable;
        if (rLottieDrawable != null) {
            rLottieDrawable.stop();
            this.translationDrawable.setProgress(BitmapDescriptorFactory.HUE_RED);
            this.translationDrawable.setCallback(null);
            this.translationDrawable = null;
            this.translationAnimationStarted = false;
        }
        DialogsAdapter.DialogsPreloader dialogsPreloader = this.preloader;
        if (dialogsPreloader != null) {
            dialogsPreloader.remove(this.currentDialogId);
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emojiStatus;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.detach();
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.botVerification;
        if (swapAnimatedEmojiDrawable2 != null) {
            swapAnimatedEmojiDrawable2.detach();
        }
        AnimatedEmojiSpan.release(this, this.animatedEmojiStack);
        AnimatedEmojiSpan.release(this, this.animatedEmojiStack2);
        AnimatedEmojiSpan.release(this, this.animatedEmojiStack3);
        AnimatedEmojiSpan.release(this, this.animatedEmojiStackName);
        this.storyParams.onDetachFromWindow();
        this.canvasButton = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1002:0x1909  */
    /* JADX WARN: Removed duplicated region for block: B:1012:0x1927  */
    /* JADX WARN: Removed duplicated region for block: B:1033:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0586  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0598  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x09e7  */
    /* JADX WARN: Removed duplicated region for block: B:362:0x0b2d  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x0b38  */
    /* JADX WARN: Removed duplicated region for block: B:374:0x0b5c  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0b5f  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x0b71  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x0ba7  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x0bb7  */
    /* JADX WARN: Removed duplicated region for block: B:422:0x0c53  */
    /* JADX WARN: Removed duplicated region for block: B:425:0x0c59  */
    /* JADX WARN: Removed duplicated region for block: B:487:0x0e64  */
    /* JADX WARN: Removed duplicated region for block: B:490:0x0e6a  */
    /* JADX WARN: Removed duplicated region for block: B:544:0x0f16  */
    /* JADX WARN: Removed duplicated region for block: B:545:0x0f18  */
    /* JADX WARN: Removed duplicated region for block: B:548:0x0f1e  */
    /* JADX WARN: Removed duplicated region for block: B:549:0x0f20  */
    /* JADX WARN: Removed duplicated region for block: B:551:0x0f25  */
    /* JADX WARN: Removed duplicated region for block: B:554:0x0f30  */
    /* JADX WARN: Removed duplicated region for block: B:575:0x0f98  */
    /* JADX WARN: Removed duplicated region for block: B:579:0x0f9f  */
    /* JADX WARN: Removed duplicated region for block: B:597:0x0fcb  */
    /* JADX WARN: Removed duplicated region for block: B:603:0x0fde  */
    /* JADX WARN: Removed duplicated region for block: B:610:0x0fef  */
    /* JADX WARN: Removed duplicated region for block: B:614:0x0ffb  */
    /* JADX WARN: Removed duplicated region for block: B:626:0x101d  */
    /* JADX WARN: Removed duplicated region for block: B:630:0x1035  */
    /* JADX WARN: Removed duplicated region for block: B:636:0x1087  */
    /* JADX WARN: Removed duplicated region for block: B:641:0x1095  */
    /* JADX WARN: Removed duplicated region for block: B:643:0x1099  */
    /* JADX WARN: Removed duplicated region for block: B:659:0x10e5  */
    /* JADX WARN: Removed duplicated region for block: B:715:0x11bd  */
    /* JADX WARN: Removed duplicated region for block: B:717:0x11c3  */
    /* JADX WARN: Removed duplicated region for block: B:720:0x11e1  */
    /* JADX WARN: Removed duplicated region for block: B:723:0x122c  */
    /* JADX WARN: Removed duplicated region for block: B:762:0x1309  */
    /* JADX WARN: Removed duplicated region for block: B:774:0x13a7  */
    /* JADX WARN: Removed duplicated region for block: B:776:0x13ad  */
    /* JADX WARN: Removed duplicated region for block: B:786:0x1437  */
    /* JADX WARN: Removed duplicated region for block: B:824:0x15cc  */
    /* JADX WARN: Removed duplicated region for block: B:834:0x1608  */
    /* JADX WARN: Removed duplicated region for block: B:837:0x1613  */
    /* JADX WARN: Removed duplicated region for block: B:838:0x1632  */
    /* JADX WARN: Removed duplicated region for block: B:841:0x1638  */
    /* JADX WARN: Removed duplicated region for block: B:853:0x1652  */
    /* JADX WARN: Removed duplicated region for block: B:857:0x1699  */
    /* JADX WARN: Removed duplicated region for block: B:864:0x16af  */
    /* JADX WARN: Removed duplicated region for block: B:867:0x16ba  */
    /* JADX WARN: Removed duplicated region for block: B:870:0x16c2  */
    /* JADX WARN: Removed duplicated region for block: B:873:0x16c9  */
    /* JADX WARN: Removed duplicated region for block: B:877:0x16d1  */
    /* JADX WARN: Removed duplicated region for block: B:879:0x16d5  */
    /* JADX WARN: Removed duplicated region for block: B:893:0x173e  */
    /* JADX WARN: Removed duplicated region for block: B:896:0x1747  */
    /* JADX WARN: Removed duplicated region for block: B:899:0x174e  */
    /* JADX WARN: Removed duplicated region for block: B:914:0x1790  */
    /* JADX WARN: Removed duplicated region for block: B:944:0x180d  */
    /* JADX WARN: Removed duplicated region for block: B:950:0x185d  */
    /* JADX WARN: Removed duplicated region for block: B:952:0x1863  */
    /* JADX WARN: Removed duplicated region for block: B:953:0x1865  */
    /* JADX WARN: Removed duplicated region for block: B:958:0x1876  */
    /* JADX WARN: Removed duplicated region for block: B:967:0x188d  */
    /* JADX WARN: Removed duplicated region for block: B:975:0x18a7  */
    /* JADX WARN: Removed duplicated region for block: B:982:0x18c0  */
    /* JADX WARN: Removed duplicated region for block: B:986:0x18d2  */
    /* JADX WARN: Removed duplicated region for block: B:992:0x18e5  */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r10v58 */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onDraw(Canvas canvas) {
        int color;
        int color2;
        int i;
        String string;
        RLottieDrawable rLottieDrawable;
        float f;
        float f2;
        int i2;
        float f3;
        String str;
        int i3;
        boolean z;
        boolean z2;
        RLottieDrawable rLottieDrawable2;
        int i4;
        float f4;
        Paint paint;
        int color3;
        int i5;
        float f5;
        Canvas canvas2;
        ?? r10;
        int i6;
        float f6;
        float f7;
        boolean z3;
        float f8;
        boolean z4;
        boolean z5;
        float f9;
        float measuredWidth;
        Paint paint2;
        TLRPC.TL_forumTopic tL_forumTopic;
        boolean z6;
        boolean z7;
        TLRPC.TL_forumTopic tL_forumTopic2;
        PullForegroundDrawable pullForegroundDrawable;
        float f10;
        int i7;
        Paint paint3;
        float alpha;
        float f11;
        float f12;
        boolean z8;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        float f13;
        int i13;
        int i14;
        Drawable drawable;
        boolean z9;
        boolean z10;
        Drawable drawable2;
        Canvas canvas3;
        int i15;
        boolean z11;
        char c;
        float fDp;
        int i16;
        Drawable drawable3;
        boolean z12;
        float f14;
        DialogCell dialogCell;
        Canvas canvas4;
        int i17;
        TextPaint textPaint;
        int i18;
        float f15;
        float fDp2;
        StaticLayout staticLayout;
        StaticLayout staticLayout2;
        TextPaint textPaint2;
        int i19;
        StaticLayout staticLayout3;
        AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans;
        ColorFilter adaptiveEmojiColorFilter;
        TextPaint textPaint3;
        int i20;
        CustomDialog customDialog;
        float fDp3;
        float measuredHeight;
        Paint paint4;
        float f16;
        float f17;
        Canvas canvas5;
        Paint paint5;
        PorterDuffXfermode porterDuffXfermode;
        int iSaveLayerAlpha;
        PullForegroundDrawable pullForegroundDrawable2;
        TLRPC.TL_forumTopic tL_forumTopic3;
        float f18 = 12.0f;
        float f19 = 12.5f;
        if (this.currentDialogId == 0 && this.customDialog == null) {
            return;
        }
        if (!this.visibleOnScreen && !this.drawingForBlur) {
            return;
        }
        if (this.drawArchive && ((this.currentDialogFolderId != 0 || (this.isTopic && (tL_forumTopic3 = this.forumTopic) != null && tL_forumTopic3.id == 1)) && (pullForegroundDrawable2 = this.archivedChatsDrawable) != null && pullForegroundDrawable2.outProgress == BitmapDescriptorFactory.HUE_RED && this.translationX == BitmapDescriptorFactory.HUE_RED)) {
            if (this.drawingForBlur) {
                return;
            }
            canvas.save();
            canvas.translate(BitmapDescriptorFactory.HUE_RED, (-this.translateY) - this.rightFragmentOffset);
            canvas.clipRect(0, 0, getMeasuredWidth(), getMeasuredHeight());
            this.archivedChatsDrawable.draw(canvas);
            canvas.restore();
            return;
        }
        if (this.clipProgress != BitmapDescriptorFactory.HUE_RED && Build.VERSION.SDK_INT != 24) {
            canvas.save();
            canvas.clipRect(BitmapDescriptorFactory.HUE_RED, this.topClip * this.clipProgress, getMeasuredWidth(), getMeasuredHeight() - ((int) (this.bottomClip * this.clipProgress)));
        }
        if (this.translationX == BitmapDescriptorFactory.HUE_RED && this.cornerProgress == BitmapDescriptorFactory.HUE_RED) {
            RLottieDrawable rLottieDrawable3 = this.translationDrawable;
            if (rLottieDrawable3 != null) {
                rLottieDrawable3.stop();
                this.translationDrawable.setProgress(BitmapDescriptorFactory.HUE_RED);
                this.translationDrawable.setCallback(null);
                this.translationDrawable = null;
                this.translationAnimationStarted = false;
            }
            i4 = 1;
        } else {
            canvas.save();
            canvas.translate(BitmapDescriptorFactory.HUE_RED, -this.translateY);
            if (this.overrideSwipeAction) {
                color = Theme.getColor(this.overrideSwipeActionBackgroundColorKey, this.resourcesProvider);
                color2 = Theme.getColor(this.overrideSwipeActionRevealBackgroundColorKey, this.resourcesProvider);
                String str2 = this.overrideSwipeActionStringKey;
                i = this.overrideSwipeActionStringId;
                string = LocaleController.getString(str2, i);
                rLottieDrawable = this.overrideSwipeActionDrawable;
            } else if (this.currentDialogFolderId != 0) {
                if (this.archiveHidden) {
                    color = Theme.getColor(Theme.key_chats_archivePinBackground, this.resourcesProvider);
                    color2 = Theme.getColor(Theme.key_chats_archiveBackground, this.resourcesProvider);
                    i = R.string.UnhideFromTop;
                    string = LocaleController.getString(i);
                    rLottieDrawable = Theme.dialogs_unpinArchiveDrawable;
                } else {
                    color = Theme.getColor(Theme.key_chats_archiveBackground, this.resourcesProvider);
                    color2 = Theme.getColor(Theme.key_chats_archivePinBackground, this.resourcesProvider);
                    i = R.string.HideOnTop;
                    string = LocaleController.getString(i);
                    rLottieDrawable = Theme.dialogs_pinArchiveDrawable;
                }
            } else if (this.promoDialog) {
                color = Theme.getColor(Theme.key_chats_archiveBackground, this.resourcesProvider);
                color2 = Theme.getColor(Theme.key_chats_archivePinBackground, this.resourcesProvider);
                i = R.string.PsaHide;
                string = LocaleController.getString(i);
                rLottieDrawable = Theme.dialogs_hidePsaDrawable;
            } else if (this.folderId == 0) {
                color = Theme.getColor(Theme.key_chats_archiveBackground, this.resourcesProvider);
                color2 = Theme.getColor(Theme.key_chats_archivePinBackground, this.resourcesProvider);
                if (SharedConfig.getChatSwipeAction(this.currentAccount) == 3) {
                    if (this.dialogMuted) {
                        i = R.string.SwipeUnmute;
                        string = LocaleController.getString(i);
                        rLottieDrawable = Theme.dialogs_swipeUnmuteDrawable;
                    } else {
                        i = R.string.SwipeMute;
                        string = LocaleController.getString(i);
                        rLottieDrawable = Theme.dialogs_swipeMuteDrawable;
                    }
                } else if (SharedConfig.getChatSwipeAction(this.currentAccount) == 4) {
                    i = R.string.SwipeDeleteChat;
                    string = LocaleController.getString(i);
                    color = Theme.getColor(Theme.key_dialogSwipeRemove, this.resourcesProvider);
                    rLottieDrawable = Theme.dialogs_swipeDeleteDrawable;
                } else if (SharedConfig.getChatSwipeAction(this.currentAccount) == 1) {
                    if (this.unreadCount > 0 || this.markUnread) {
                        i = R.string.SwipeMarkAsRead;
                        string = LocaleController.getString(i);
                        rLottieDrawable = Theme.dialogs_swipeReadDrawable;
                    } else {
                        i = R.string.SwipeMarkAsUnread;
                        string = LocaleController.getString(i);
                        rLottieDrawable = Theme.dialogs_swipeUnreadDrawable;
                    }
                } else if (SharedConfig.getChatSwipeAction(this.currentAccount) != 0) {
                    i = R.string.Archive;
                    string = LocaleController.getString(i);
                    rLottieDrawable = Theme.dialogs_archiveDrawable;
                } else if (getIsPinned()) {
                    i = R.string.SwipeUnpin;
                    string = LocaleController.getString(i);
                    rLottieDrawable = Theme.dialogs_swipeUnpinDrawable;
                } else {
                    i = R.string.SwipePin;
                    string = LocaleController.getString(i);
                    rLottieDrawable = Theme.dialogs_swipePinDrawable;
                }
            } else {
                color = Theme.getColor(Theme.key_chats_archivePinBackground, this.resourcesProvider);
                color2 = Theme.getColor(Theme.key_chats_archiveBackground, this.resourcesProvider);
                i = R.string.Unarchive;
                string = LocaleController.getString(i);
                rLottieDrawable = Theme.dialogs_unarchiveDrawable;
            }
            RLottieDrawable rLottieDrawable4 = rLottieDrawable;
            int i21 = color2;
            int i22 = i;
            String str3 = string;
            int i23 = i22;
            this.translationDrawable = rLottieDrawable4;
            if (!this.swipeCanceled || (rLottieDrawable2 = this.lastDrawTranslationDrawable) == null) {
                this.lastDrawTranslationDrawable = rLottieDrawable4;
                this.lastDrawSwipeMessageStringId = i23;
            } else {
                this.translationDrawable = rLottieDrawable2;
                i23 = this.lastDrawSwipeMessageStringId;
            }
            int i24 = i23;
            if (!this.translationAnimationStarted && Math.abs(this.translationX) > AndroidUtilities.dp(43.0f)) {
                this.translationAnimationStarted = true;
                this.translationDrawable.setProgress(BitmapDescriptorFactory.HUE_RED);
                this.translationDrawable.setCallback(this);
                this.translationDrawable.start();
            }
            float measuredWidth2 = this.translationX + getMeasuredWidth();
            if (this.currentRevealProgress < 1.0f) {
                Theme.dialogs_pinnedPaint.setColor(color);
                float measuredWidth3 = getMeasuredWidth();
                float measuredHeight2 = getMeasuredHeight();
                Paint paint6 = Theme.dialogs_pinnedPaint;
                f2 = BitmapDescriptorFactory.HUE_RED;
                f = measuredWidth2;
                canvas.drawRect(measuredWidth2 - AndroidUtilities.dp(8.0f), BitmapDescriptorFactory.HUE_RED, measuredWidth3, measuredHeight2, paint6);
                if (this.currentRevealProgress == BitmapDescriptorFactory.HUE_RED) {
                    if (Theme.dialogs_archiveDrawableRecolored) {
                        Theme.dialogs_archiveDrawable.setLayerColor("Arrow.**", Theme.getNonAnimatedColor(Theme.key_chats_archiveBackground));
                        z2 = false;
                        Theme.dialogs_archiveDrawableRecolored = false;
                    } else {
                        z2 = false;
                    }
                    if (Theme.dialogs_hidePsaDrawableRecolored) {
                        Theme.dialogs_hidePsaDrawable.beginApplyLayerColors();
                        RLottieDrawable rLottieDrawable5 = Theme.dialogs_hidePsaDrawable;
                        int i25 = Theme.key_chats_archiveBackground;
                        rLottieDrawable5.setLayerColor("Line 1.**", Theme.getNonAnimatedColor(i25));
                        Theme.dialogs_hidePsaDrawable.setLayerColor("Line 2.**", Theme.getNonAnimatedColor(i25));
                        Theme.dialogs_hidePsaDrawable.setLayerColor("Line 3.**", Theme.getNonAnimatedColor(i25));
                        Theme.dialogs_hidePsaDrawable.commitApplyLayerColors();
                        Theme.dialogs_hidePsaDrawableRecolored = z2;
                    }
                }
            } else {
                f = measuredWidth2;
                f2 = BitmapDescriptorFactory.HUE_RED;
            }
            int measuredWidth4 = (getMeasuredWidth() - AndroidUtilities.dp(43.0f)) - (this.translationDrawable.getIntrinsicWidth() / 2);
            int measuredHeight3 = (getMeasuredHeight() - AndroidUtilities.dp(54.0f)) / 2;
            int intrinsicWidth = (this.translationDrawable.getIntrinsicWidth() / 2) + measuredWidth4;
            int intrinsicHeight = (this.translationDrawable.getIntrinsicHeight() / 2) + measuredHeight3;
            if (this.currentRevealProgress > f2) {
                canvas.save();
                f3 = f;
                i2 = i24;
                str = str3;
                canvas.clipRect(f3 - AndroidUtilities.dp(8.0f), BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                Theme.dialogs_pinnedPaint.setColor(i21);
                canvas.drawCircle(intrinsicWidth, intrinsicHeight, ((float) Math.sqrt((intrinsicWidth * intrinsicWidth) + ((intrinsicHeight - getMeasuredHeight()) * (intrinsicHeight - getMeasuredHeight())))) * AndroidUtilities.accelerateInterpolator.getInterpolation(this.currentRevealProgress), Theme.dialogs_pinnedPaint);
                canvas.restore();
                if (Theme.dialogs_archiveDrawableRecolored) {
                    z = 1;
                } else {
                    Theme.dialogs_archiveDrawable.setLayerColor("Arrow.**", Theme.getNonAnimatedColor(Theme.key_chats_archivePinBackground));
                    z = 1;
                    Theme.dialogs_archiveDrawableRecolored = true;
                }
                i3 = z;
                if (!Theme.dialogs_hidePsaDrawableRecolored) {
                    Theme.dialogs_hidePsaDrawable.beginApplyLayerColors();
                    RLottieDrawable rLottieDrawable6 = Theme.dialogs_hidePsaDrawable;
                    int i26 = Theme.key_chats_archivePinBackground;
                    rLottieDrawable6.setLayerColor("Line 1.**", Theme.getNonAnimatedColor(i26));
                    Theme.dialogs_hidePsaDrawable.setLayerColor("Line 2.**", Theme.getNonAnimatedColor(i26));
                    Theme.dialogs_hidePsaDrawable.setLayerColor("Line 3.**", Theme.getNonAnimatedColor(i26));
                    Theme.dialogs_hidePsaDrawable.commitApplyLayerColors();
                    Theme.dialogs_hidePsaDrawableRecolored = z;
                    i3 = z;
                }
            } else {
                i2 = i24;
                f3 = f;
                str = str3;
                i3 = 1;
            }
            canvas.save();
            canvas.translate(measuredWidth4, measuredHeight3);
            float f20 = this.currentRevealBounceProgress;
            if (f20 != BitmapDescriptorFactory.HUE_RED && f20 != 1.0f) {
                float interpolation = this.interpolator.getInterpolation(f20) + 1.0f;
                canvas.scale(interpolation, interpolation, this.translationDrawable.getIntrinsicWidth() / 2, this.translationDrawable.getIntrinsicHeight() / 2);
            }
            BaseCell.setDrawableBounds((Drawable) this.translationDrawable, 0, 0);
            this.translationDrawable.draw(canvas);
            canvas.restore();
            canvas.clipRect(f3, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
            String str4 = str;
            int iCeil = (int) Math.ceil(Theme.dialogs_countTextPaint.measureText(str4));
            int i27 = i2;
            if (this.swipeMessageTextId != i27 || this.swipeMessageWidth != getMeasuredWidth()) {
                this.swipeMessageTextId = i27;
                this.swipeMessageWidth = getMeasuredWidth();
                TextPaint textPaint4 = Theme.dialogs_archiveTextPaint;
                int iMin = Math.min(AndroidUtilities.dp(80.0f), iCeil);
                Layout.Alignment alignment = Layout.Alignment.ALIGN_CENTER;
                StaticLayout staticLayout4 = new StaticLayout(str4, textPaint4, iMin, alignment, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.swipeMessageTextLayout = staticLayout4;
                if (staticLayout4.getLineCount() > i3) {
                    this.swipeMessageTextLayout = new StaticLayout(str4, Theme.dialogs_archiveTextPaintSmall, Math.min(AndroidUtilities.dp(82.0f), iCeil), alignment, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                }
            }
            if (this.swipeMessageTextLayout != null) {
                canvas.save();
                canvas.translate((getMeasuredWidth() - AndroidUtilities.dp(43.0f)) - (this.swipeMessageTextLayout.getWidth() / 2.0f), measuredHeight3 + AndroidUtilities.dp(38.0f) + (this.swipeMessageTextLayout.getLineCount() > i3 ? -AndroidUtilities.dp(4.0f) : BitmapDescriptorFactory.HUE_RED));
                this.swipeMessageTextLayout.draw(canvas);
                canvas.restore();
            }
            canvas.restore();
            i4 = i3;
        }
        if (this.translationX != BitmapDescriptorFactory.HUE_RED) {
            canvas.save();
            canvas.translate(this.translationX, BitmapDescriptorFactory.HUE_RED);
        }
        float fDp4 = AndroidUtilities.dp(8.0f) * this.cornerProgress;
        if (this.isSelected) {
            RectF rectF = this.rect;
            float measuredWidth5 = getMeasuredWidth();
            float fLerp = AndroidUtilities.lerp(getMeasuredHeight(), getCollapsedHeight(), this.rightFragmentOpenedProgress);
            f4 = BitmapDescriptorFactory.HUE_RED;
            rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, measuredWidth5, fLerp);
            this.rect.offset(BitmapDescriptorFactory.HUE_RED, (-this.translateY) + this.collapseOffset);
            canvas.drawRoundRect(this.rect, fDp4, fDp4, Theme.dialogs_tabletSeletedPaint);
        } else {
            f4 = BitmapDescriptorFactory.HUE_RED;
        }
        canvas.save();
        canvas.translate(f4, (-this.rightFragmentOffset) * this.rightFragmentOpenedProgress);
        if (this.currentDialogFolderId == 0 || (SharedConfig.archiveHidden && this.archiveBackgroundProgress == f4)) {
            if (!getIsPinned() && !this.drawPinBackground) {
                i5 = 0;
                canvas.restore();
                this.updateHelper.updateAnimationValues();
                if (this.collapseOffset != BitmapDescriptorFactory.HUE_RED) {
                    canvas.save();
                    canvas.translate(BitmapDescriptorFactory.HUE_RED, this.collapseOffset);
                }
                f5 = this.rightFragmentOpenedProgress;
                if (f5 == 1.0f) {
                    if (f5 != BitmapDescriptorFactory.HUE_RED) {
                        float fClamp = Utilities.clamp(f5 / 0.4f, 1.0f, BitmapDescriptorFactory.HUE_RED);
                        if (SharedConfig.getDevicePerformanceClass() >= 2) {
                            iSaveLayerAlpha = canvas.saveLayerAlpha(AndroidUtilities.dp(RightSlidingDialogContainer.getRightPaddingSize() + i4) - (AndroidUtilities.dp(8.0f) * (1.0f - fClamp)), BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), (int) ((1.0f - this.rightFragmentOpenedProgress) * 255.0f), 31);
                        } else {
                            int iSave = canvas.save();
                            canvas.clipRect(AndroidUtilities.dp(RightSlidingDialogContainer.getRightPaddingSize() + i4) - (AndroidUtilities.dp(8.0f) * (1.0f - fClamp)), BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                            iSaveLayerAlpha = iSave;
                        }
                        float f21 = (-(getMeasuredWidth() - AndroidUtilities.dp(74.0f))) * 0.7f * this.rightFragmentOpenedProgress;
                        f10 = BitmapDescriptorFactory.HUE_RED;
                        canvas.translate(f21, BitmapDescriptorFactory.HUE_RED);
                        i7 = iSaveLayerAlpha;
                    } else {
                        f10 = BitmapDescriptorFactory.HUE_RED;
                        i7 = -1;
                    }
                    if (this.translationX != f10 || this.cornerProgress != f10) {
                        canvas.save();
                        Theme.dialogs_pinnedPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider));
                        this.rect.set(getMeasuredWidth() - AndroidUtilities.dp(64.0f), BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                        this.rect.offset(BitmapDescriptorFactory.HUE_RED, -this.translateY);
                        canvas.drawRoundRect(this.rect, fDp4, fDp4, Theme.dialogs_pinnedPaint);
                        if (this.isSelected) {
                            canvas.drawRoundRect(this.rect, fDp4, fDp4, Theme.dialogs_tabletSeletedPaint);
                        }
                        if (this.currentDialogFolderId == 0 || (SharedConfig.archiveHidden && this.archiveBackgroundProgress == BitmapDescriptorFactory.HUE_RED)) {
                            if (getIsPinned() || this.drawPinBackground) {
                                Theme.dialogs_pinnedPaint.setColor(Theme.getColor(Theme.key_chats_pinnedOverlay, this.resourcesProvider));
                                paint3 = Theme.dialogs_pinnedPaint;
                                alpha = paint3.getAlpha();
                                f11 = this.rightFragmentOpenedProgress;
                                f12 = 1.0f;
                            }
                            canvas.restore();
                        } else {
                            f12 = 1.0f;
                            Theme.dialogs_pinnedPaint.setColor(AndroidUtilities.getOffsetColor(i5, Theme.getColor(Theme.key_chats_pinnedOverlay, this.resourcesProvider), this.archiveBackgroundProgress, 1.0f));
                            paint3 = Theme.dialogs_pinnedPaint;
                            alpha = paint3.getAlpha();
                            f11 = this.rightFragmentOpenedProgress;
                        }
                        paint3.setAlpha((int) (alpha * (f12 - f11)));
                        canvas.drawRoundRect(this.rect, fDp4, fDp4, Theme.dialogs_pinnedPaint);
                        canvas.restore();
                    }
                    if (this.translationX != BitmapDescriptorFactory.HUE_RED) {
                        float f22 = this.cornerProgress;
                        if (f22 < 1.0f) {
                            float f23 = f22 + 0.10666667f;
                            this.cornerProgress = f23;
                            if (f23 > 1.0f) {
                                this.cornerProgress = 1.0f;
                            }
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                    } else {
                        float f24 = this.cornerProgress;
                        if (f24 > BitmapDescriptorFactory.HUE_RED) {
                            float f25 = f24 - 0.10666667f;
                            this.cornerProgress = f25;
                            if (f25 < BitmapDescriptorFactory.HUE_RED) {
                                this.cornerProgress = BitmapDescriptorFactory.HUE_RED;
                            }
                            z8 = true;
                        }
                        z8 = false;
                    }
                    if (this.drawNameLock) {
                        BaseCell.setDrawableBounds(Theme.dialogs_lockDrawable, this.nameLockLeft, this.nameLockTop);
                        Theme.dialogs_lockDrawable.draw(canvas);
                    }
                    int iDp = AndroidUtilities.dp((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 10.0f : 13.0f);
                    if (((!this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || isForumCell()) && hasTags()) {
                        iDp -= AndroidUtilities.dp(isForumCell() ? 8.0f : 9.0f);
                    }
                    if (this.nameLayout != null) {
                        if (this.nameLayoutEllipsizeByGradient && !this.nameLayoutFits) {
                            if (this.nameLayoutEllipsizeLeft && this.fadePaint == null) {
                                Paint paint7 = new Paint();
                                this.fadePaint = paint7;
                                paint7.setShader(new LinearGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(24.0f), BitmapDescriptorFactory.HUE_RED, new int[]{-1, i5}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP));
                                paint5 = this.fadePaint;
                                porterDuffXfermode = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
                            } else {
                                if (this.fadePaintBack == null) {
                                    Paint paint8 = new Paint();
                                    this.fadePaintBack = paint8;
                                    paint8.setShader(new LinearGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(24.0f), BitmapDescriptorFactory.HUE_RED, new int[]{i5, -1}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP));
                                    paint5 = this.fadePaintBack;
                                    porterDuffXfermode = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
                                }
                                canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), 255, 31);
                                int i28 = this.nameLeft;
                                canvas.clipRect(i28, i5, this.nameWidth + i28, getMeasuredHeight());
                            }
                            paint5.setXfermode(porterDuffXfermode);
                            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), 255, 31);
                            int i282 = this.nameLeft;
                            canvas.clipRect(i282, i5, this.nameWidth + i282, getMeasuredHeight());
                        }
                        if (this.currentDialogFolderId != 0) {
                            TextPaint textPaint5 = Theme.dialogs_namePaint[this.paintIndex];
                            int color4 = Theme.getColor(Theme.key_chats_nameArchived, this.resourcesProvider);
                            textPaint5.linkColor = color4;
                            textPaint5.setColor(color4);
                        } else {
                            if (this.encryptedChat != null || ((customDialog = this.customDialog) != null && customDialog.type == 2)) {
                                textPaint3 = Theme.dialogs_namePaint[this.paintIndex];
                                i20 = Theme.key_chats_secretName;
                            } else {
                                textPaint3 = Theme.dialogs_namePaint[this.paintIndex];
                                i20 = Theme.key_chats_name;
                            }
                            int color5 = Theme.getColor(i20, this.resourcesProvider);
                            textPaint3.linkColor = color5;
                            textPaint3.setColor(color5);
                        }
                        canvas.save();
                        canvas.translate(this.nameLeft + this.nameLayoutTranslateX, iDp);
                        SpoilerEffect.layoutDrawMaybe(this.nameLayout, canvas);
                        StaticLayout staticLayout5 = this.nameLayout;
                        i8 = i7;
                        i11 = -1;
                        i9 = 1;
                        AnimatedEmojiSpan.drawAnimatedEmojis(canvas, staticLayout5, this.animatedEmojiStackName, -0.075f, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, getAdaptiveEmojiColorFilter(i5, staticLayout5.getPaint().getColor()));
                        canvas.restore();
                        if (!this.nameLayoutEllipsizeByGradient || this.nameLayoutFits) {
                            i10 = 2;
                        } else {
                            canvas.save();
                            if (this.nameLayoutEllipsizeLeft) {
                                canvas.translate(this.nameLeft, BitmapDescriptorFactory.HUE_RED);
                                fDp3 = AndroidUtilities.dp(24.0f);
                                measuredHeight = getMeasuredHeight();
                                canvas5 = canvas;
                                i10 = 2;
                                f16 = 0.0f;
                                f17 = 0.0f;
                                paint4 = this.fadePaint;
                            } else {
                                i10 = 2;
                                canvas.translate((this.nameLeft + this.nameWidth) - AndroidUtilities.dp(24.0f), BitmapDescriptorFactory.HUE_RED);
                                fDp3 = AndroidUtilities.dp(24.0f);
                                measuredHeight = getMeasuredHeight();
                                paint4 = this.fadePaintBack;
                                f16 = BitmapDescriptorFactory.HUE_RED;
                                f17 = BitmapDescriptorFactory.HUE_RED;
                                canvas5 = canvas;
                            }
                            canvas5.drawRect(f16, f17, fDp3, measuredHeight, paint4);
                            canvas.restore();
                            canvas.restore();
                        }
                    } else {
                        i8 = i7;
                        i9 = 1;
                        i10 = 2;
                        i11 = -1;
                    }
                    if (this.timeLayout != null && this.currentDialogFolderId == 0) {
                        canvas.save();
                        canvas.translate(this.timeLeft, this.timeTop);
                        SpoilerEffect.layoutDrawMaybe(this.timeLayout, canvas);
                        canvas.restore();
                    }
                    if (drawLock2()) {
                        Theme.dialogs_lock2Drawable.setBounds(this.lock2Left, this.timeTop + ((this.timeLayout.getHeight() - Theme.dialogs_lock2Drawable.getIntrinsicHeight()) / i10), this.lock2Left + Theme.dialogs_lock2Drawable.getIntrinsicWidth(), this.timeTop + ((this.timeLayout.getHeight() - Theme.dialogs_lock2Drawable.getIntrinsicHeight()) / i10) + Theme.dialogs_lock2Drawable.getIntrinsicHeight());
                        Theme.dialogs_lock2Drawable.draw(canvas);
                    }
                    if (this.messageNameLayout == null || isForumCell()) {
                        i12 = 4;
                        f13 = BitmapDescriptorFactory.HUE_RED;
                        i13 = 2;
                    } else {
                        if (this.currentDialogFolderId != 0) {
                            textPaint2 = Theme.dialogs_messageNamePaint;
                            i19 = Theme.key_chats_nameMessageArchived_threeLines;
                        } else if (this.draftMessage != null) {
                            textPaint2 = Theme.dialogs_messageNamePaint;
                            i19 = Theme.key_chats_draft;
                        } else {
                            textPaint2 = Theme.dialogs_messageNamePaint;
                            i19 = Theme.key_chats_nameMessage_threeLines;
                        }
                        int color6 = Theme.getColor(i19, this.resourcesProvider);
                        textPaint2.linkColor = color6;
                        textPaint2.setColor(color6);
                        canvas.save();
                        canvas.translate(this.messageNameLeft, this.messageNameTop);
                        try {
                            SpoilerEffect.layoutDrawMaybe(this.messageNameLayout, canvas);
                            staticLayout3 = this.messageNameLayout;
                            emojiGroupedSpans = this.animatedEmojiStack2;
                            adaptiveEmojiColorFilter = getAdaptiveEmojiColorFilter(i9, staticLayout3.getPaint().getColor());
                            i13 = 2;
                            f13 = BitmapDescriptorFactory.HUE_RED;
                            i12 = 4;
                        } catch (Exception e) {
                            e = e;
                            i12 = 4;
                            f13 = BitmapDescriptorFactory.HUE_RED;
                            i13 = 2;
                        }
                        try {
                            AnimatedEmojiSpan.drawAnimatedEmojis(canvas, staticLayout3, emojiGroupedSpans, -0.075f, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, adaptiveEmojiColorFilter);
                        } catch (Exception e2) {
                            e = e2;
                            FileLog.e(e);
                            canvas.restore();
                            if (this.messageLayout != null) {
                            }
                            if (this.buttonLayout == null) {
                            }
                            if (this.currentDialogFolderId == 0) {
                            }
                            if (this.drawBotVerified) {
                            }
                            if (this.drawUnmute) {
                            }
                            if (this.animatingArchiveAvatar) {
                            }
                            if (this.drawAvatar) {
                            }
                            if (this.animatingArchiveAvatar) {
                            }
                            if (this.avatarImage.getVisible()) {
                            }
                            if (this.rightFragmentOpenedProgress > f7) {
                            }
                            if (this.collapseOffset != f7) {
                            }
                            if (this.translationX != f7) {
                            }
                            if (this.drawArchive) {
                            }
                            if (this.useSeparator) {
                            }
                            if (this.clipProgress != f7) {
                            }
                            z4 = this.drawReorder;
                            if (!z4) {
                            }
                            if (this.archiveHidden) {
                            }
                            if (this.animatingArchiveAvatar) {
                            }
                            if (this.drawRevealBackground) {
                            }
                            if (z5) {
                            }
                        }
                        canvas.restore();
                    }
                    if (this.messageLayout != null) {
                        if (this.currentDialogFolderId == 0) {
                            textPaint = Theme.dialogs_messagePaint[this.paintIndex];
                            i18 = Theme.key_chats_message;
                        } else if (this.chat != null) {
                            textPaint = Theme.dialogs_messagePaint[this.paintIndex];
                            i18 = Theme.key_chats_nameMessageArchived;
                        } else {
                            textPaint = Theme.dialogs_messagePaint[this.paintIndex];
                            i18 = Theme.key_chats_messageArchived;
                        }
                        int color7 = Theme.getColor(i18, this.resourcesProvider);
                        textPaint.linkColor = color7;
                        textPaint.setColor(color7);
                        float fDp5 = AndroidUtilities.dp(14.0f);
                        DialogUpdateHelper dialogUpdateHelper = this.updateHelper;
                        float fDp6 = dialogUpdateHelper.typingOutToTop ? this.messageTop - (dialogUpdateHelper.typingProgres * fDp5) : this.messageTop + (dialogUpdateHelper.typingProgres * fDp5);
                        if (((!this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || isForumCell()) && hasTags()) {
                            fDp6 -= AndroidUtilities.dp(isForumCell() ? 10.0f : 11.0f);
                        }
                        if (this.updateHelper.typingProgres != 1.0f) {
                            canvas.save();
                            canvas.translate(this.messageLeft, fDp6);
                            int alpha2 = this.messageLayout.getPaint().getAlpha();
                            this.messageLayout.getPaint().setAlpha((int) (alpha2 * (1.0f - this.updateHelper.typingProgres)));
                            if (this.spoilers.isEmpty()) {
                                f15 = 1.0f;
                                SpoilerEffect.layoutDrawMaybe(this.messageLayout, canvas);
                                StaticLayout staticLayout6 = this.messageLayout;
                                AnimatedEmojiSpan.drawAnimatedEmojis(canvas, staticLayout6, this.animatedEmojiStack, -0.075f, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, getAdaptiveEmojiColorFilter(i13, staticLayout6.getPaint().getColor()));
                            } else {
                                try {
                                    canvas.save();
                                    SpoilerEffect.clipOutCanvas(canvas, this.spoilers);
                                    SpoilerEffect.layoutDrawMaybe(this.messageLayout, canvas);
                                    staticLayout2 = this.messageLayout;
                                    f15 = 1.0f;
                                } catch (Exception e3) {
                                    e = e3;
                                    f15 = 1.0f;
                                }
                                try {
                                    AnimatedEmojiSpan.drawAnimatedEmojis(canvas, staticLayout2, this.animatedEmojiStack, -0.075f, this.spoilers, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, getAdaptiveEmojiColorFilter(i13, staticLayout2.getPaint().getColor()));
                                    canvas.restore();
                                    for (int i29 = 0; i29 < this.spoilers.size(); i29 += i9) {
                                        SpoilerEffect spoilerEffect = (SpoilerEffect) this.spoilers.get(i29);
                                        spoilerEffect.setColor(this.messageLayout.getPaint().getColor());
                                        spoilerEffect.draw(canvas);
                                    }
                                } catch (Exception e4) {
                                    e = e4;
                                    FileLog.e(e);
                                    this.messageLayout.getPaint().setAlpha(alpha2);
                                    canvas.restore();
                                    canvas.save();
                                    DialogUpdateHelper dialogUpdateHelper2 = this.updateHelper;
                                    if (!dialogUpdateHelper2.typingOutToTop) {
                                    }
                                    if (this.useForceThreeLines) {
                                        fDp2 -= AndroidUtilities.dp(isForumCell() ? 10.0f : 11.0f);
                                        canvas.translate(this.typingLeft, fDp2);
                                        staticLayout = this.typingLayout;
                                        if (staticLayout != null) {
                                            int alpha3 = staticLayout.getPaint().getAlpha();
                                            this.typingLayout.getPaint().setAlpha((int) (alpha3 * this.updateHelper.typingProgres));
                                            this.typingLayout.draw(canvas);
                                            this.typingLayout.getPaint().setAlpha(alpha3);
                                        }
                                        canvas.restore();
                                        if (this.typingLayout != null) {
                                        }
                                        if (this.buttonLayout == null) {
                                        }
                                        if (this.currentDialogFolderId == 0) {
                                        }
                                        if (this.drawBotVerified) {
                                        }
                                        if (this.drawUnmute) {
                                        }
                                    } else {
                                        fDp2 -= AndroidUtilities.dp(isForumCell() ? 10.0f : 11.0f);
                                        canvas.translate(this.typingLeft, fDp2);
                                        staticLayout = this.typingLayout;
                                        if (staticLayout != null) {
                                        }
                                        canvas.restore();
                                        if (this.typingLayout != null) {
                                        }
                                        if (this.buttonLayout == null) {
                                        }
                                        if (this.currentDialogFolderId == 0) {
                                        }
                                        if (this.drawBotVerified) {
                                        }
                                        if (this.drawUnmute) {
                                        }
                                    }
                                    if (this.animatingArchiveAvatar) {
                                    }
                                    if (this.drawAvatar) {
                                    }
                                    if (this.animatingArchiveAvatar) {
                                    }
                                    if (this.avatarImage.getVisible()) {
                                    }
                                    if (this.rightFragmentOpenedProgress > f7) {
                                    }
                                    if (this.collapseOffset != f7) {
                                    }
                                    if (this.translationX != f7) {
                                    }
                                    if (this.drawArchive) {
                                    }
                                    if (this.useSeparator) {
                                    }
                                    if (this.clipProgress != f7) {
                                    }
                                    z4 = this.drawReorder;
                                    if (!z4) {
                                    }
                                    if (this.archiveHidden) {
                                    }
                                    if (this.animatingArchiveAvatar) {
                                    }
                                    if (this.drawRevealBackground) {
                                    }
                                    if (z5) {
                                    }
                                }
                            }
                            this.messageLayout.getPaint().setAlpha(alpha2);
                            canvas.restore();
                        } else {
                            f15 = 1.0f;
                        }
                        canvas.save();
                        DialogUpdateHelper dialogUpdateHelper22 = this.updateHelper;
                        fDp2 = !dialogUpdateHelper22.typingOutToTop ? this.messageTop + ((f15 - dialogUpdateHelper22.typingProgres) * fDp5) : this.messageTop - ((f15 - dialogUpdateHelper22.typingProgres) * fDp5);
                        if (((this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || isForumCell()) && hasTags()) {
                            fDp2 -= AndroidUtilities.dp(isForumCell() ? 10.0f : 11.0f);
                        }
                        canvas.translate(this.typingLeft, fDp2);
                        staticLayout = this.typingLayout;
                        if (staticLayout != null && this.updateHelper.typingProgres > f13) {
                            int alpha32 = staticLayout.getPaint().getAlpha();
                            this.typingLayout.getPaint().setAlpha((int) (alpha32 * this.updateHelper.typingProgres));
                            this.typingLayout.draw(canvas);
                            this.typingLayout.getPaint().setAlpha(alpha32);
                        }
                        canvas.restore();
                        if (this.typingLayout != null) {
                            int i30 = this.printingStringType;
                            if (i30 < 0) {
                                DialogUpdateHelper dialogUpdateHelper3 = this.updateHelper;
                                if (dialogUpdateHelper3.typingProgres > f13 && dialogUpdateHelper3.lastKnownTypingType >= 0) {
                                    if (i30 < 0) {
                                        i30 = this.updateHelper.lastKnownTypingType;
                                    }
                                    StatusDrawable chatStatusDrawable = Theme.getChatStatusDrawable(i30);
                                    if (chatStatusDrawable != null) {
                                        canvas.save();
                                        chatStatusDrawable.setColor(ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_chats_actionMessage), (int) (Color.alpha(r10) * this.updateHelper.typingProgres)));
                                        DialogUpdateHelper dialogUpdateHelper4 = this.updateHelper;
                                        float fDp7 = dialogUpdateHelper4.typingOutToTop ? this.messageTop + (fDp5 * (f15 - dialogUpdateHelper4.typingProgres)) : this.messageTop - (fDp5 * (f15 - dialogUpdateHelper4.typingProgres));
                                        if (((!this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || isForumCell()) && hasTags()) {
                                            fDp7 -= AndroidUtilities.dp(isForumCell() ? 10.0f : 11.0f);
                                        }
                                        if (i30 == i9 || i30 == i12) {
                                            canvas.translate(this.statusDrawableLeft, fDp7 + (i30 == i9 ? AndroidUtilities.dp(f15) : 0));
                                        } else {
                                            canvas.translate(this.statusDrawableLeft, fDp7 + ((AndroidUtilities.dp(18.0f) - chatStatusDrawable.getIntrinsicHeight()) / 2.0f));
                                        }
                                        chatStatusDrawable.draw(canvas);
                                        invalidate();
                                        canvas.restore();
                                    }
                                }
                            }
                        }
                    }
                    if (this.buttonLayout == null) {
                        canvas.save();
                        if (this.buttonBackgroundPaint == null) {
                            this.buttonBackgroundPaint = new Paint(i9);
                        }
                        if (this.canvasButton == null) {
                            CanvasButton canvasButton = new CanvasButton(this);
                            this.canvasButton = canvasButton;
                            canvasButton.setDelegate(new Runnable() { // from class: org.telegram.ui.Cells.DialogCell$$ExternalSyntheticLambda2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$onDraw$2();
                                }
                            });
                            this.canvasButton.setLongPress(new Runnable() { // from class: org.telegram.ui.Cells.DialogCell$$ExternalSyntheticLambda3
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$onDraw$3();
                                }
                            });
                        }
                        if (this.lastTopicMessageUnread && this.topMessageTopicEndIndex != this.topMessageTopicStartIndex && ((i17 = this.dialogsType) == 0 || i17 == 7 || i17 == 8)) {
                            this.canvasButton.setColor(ColorUtils.setAlphaComponent(this.currentMessagePaint.getColor(), Theme.isCurrentThemeDark() ? 36 : 26));
                            if (!this.buttonCreated) {
                                this.canvasButton.rewind();
                                int i31 = this.topMessageTopicEndIndex;
                                if (i31 != this.topMessageTopicStartIndex && i31 > 0) {
                                    float fDp8 = this.messageTop;
                                    if (((!this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || isForumCell()) && hasTags()) {
                                        fDp8 -= AndroidUtilities.dp(isForumCell() ? 10.0f : 11.0f);
                                    }
                                    RectF rectF2 = AndroidUtilities.rectTmp;
                                    float fDp9 = this.messageLeft + AndroidUtilities.dp(2.0f) + this.messageLayout.getPrimaryHorizontal(0);
                                    float f26 = this.messageLeft;
                                    StaticLayout staticLayout7 = this.messageLayout;
                                    rectF2.set(fDp9, fDp8, (f26 + staticLayout7.getPrimaryHorizontal(Math.min(staticLayout7.getText().length(), this.topMessageTopicEndIndex))) - AndroidUtilities.dp(3.0f), this.buttonTop - AndroidUtilities.dp(4.0f));
                                    rectF2.inset(-AndroidUtilities.dp(8.0f), -AndroidUtilities.dp(4.0f));
                                    if (rectF2.right > rectF2.left) {
                                        this.canvasButton.addRect(rectF2);
                                    }
                                }
                                float lineLeft = this.buttonLayout.getLineLeft(0);
                                RectF rectF3 = AndroidUtilities.rectTmp;
                                rectF3.set(this.buttonLeft + lineLeft + AndroidUtilities.dp(2.0f), this.buttonTop + AndroidUtilities.dp(2.0f), this.buttonLeft + lineLeft + this.buttonLayout.getLineWidth(0) + AndroidUtilities.dp(12.0f), this.buttonTop + this.buttonLayout.getHeight());
                                rectF3.inset(-AndroidUtilities.dp(8.0f), -AndroidUtilities.dp(3.0f));
                                this.canvasButton.addRect(rectF3);
                            }
                            this.canvasButton.draw(canvas);
                            Theme.dialogs_forum_arrowDrawable.setAlpha(R.styleable.AppCompatTheme_windowMinWidthMinor);
                            Drawable drawable4 = Theme.dialogs_forum_arrowDrawable;
                            RectF rectF4 = AndroidUtilities.rectTmp;
                            BaseCell.setDrawableBounds(drawable4, rectF4.right - AndroidUtilities.dp(18.0f), rectF4.top + ((rectF4.height() - Theme.dialogs_forum_arrowDrawable.getIntrinsicHeight()) / 2.0f));
                            Theme.dialogs_forum_arrowDrawable.draw(canvas);
                        }
                        canvas.translate(this.buttonLeft, this.buttonTop);
                        if (this.spoilers2.isEmpty()) {
                            SpoilerEffect.layoutDrawMaybe(this.buttonLayout, canvas);
                            StaticLayout staticLayout8 = this.buttonLayout;
                            AnimatedEmojiSpan.drawAnimatedEmojis(canvas, staticLayout8, this.animatedEmojiStack3, -0.075f, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, getAdaptiveEmojiColorFilter(3, staticLayout8.getPaint().getColor()));
                        } else {
                            try {
                                canvas.save();
                                SpoilerEffect.clipOutCanvas(canvas, this.spoilers2);
                                SpoilerEffect.layoutDrawMaybe(this.buttonLayout, canvas);
                                StaticLayout staticLayout9 = this.buttonLayout;
                                try {
                                    AnimatedEmojiSpan.drawAnimatedEmojis(canvas, staticLayout9, this.animatedEmojiStack3, -0.075f, this.spoilers2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, getAdaptiveEmojiColorFilter(3, staticLayout9.getPaint().getColor()));
                                    canvas.restore();
                                    for (int i32 = 0; i32 < this.spoilers2.size(); i32 += i9) {
                                        SpoilerEffect spoilerEffect2 = (SpoilerEffect) this.spoilers2.get(i32);
                                        spoilerEffect2.setColor(this.buttonLayout.getPaint().getColor());
                                        spoilerEffect2.draw(canvas);
                                    }
                                } catch (Exception e5) {
                                    e = e5;
                                    FileLog.e(e);
                                    canvas.restore();
                                    if (this.currentDialogFolderId == 0) {
                                    }
                                    if (this.drawBotVerified) {
                                    }
                                    if (this.drawUnmute) {
                                        if (this.dialogsType != i14) {
                                            if (this.drawVerified) {
                                            }
                                            drawable.draw(canvas);
                                            if (this.drawReorder) {
                                            }
                                        }
                                    }
                                    if (this.animatingArchiveAvatar) {
                                    }
                                    if (this.drawAvatar) {
                                    }
                                    if (this.animatingArchiveAvatar) {
                                    }
                                    if (this.avatarImage.getVisible()) {
                                    }
                                    if (this.rightFragmentOpenedProgress > f7) {
                                    }
                                    if (this.collapseOffset != f7) {
                                    }
                                    if (this.translationX != f7) {
                                    }
                                    if (this.drawArchive) {
                                    }
                                    if (this.useSeparator) {
                                    }
                                    if (this.clipProgress != f7) {
                                    }
                                    z4 = this.drawReorder;
                                    if (!z4) {
                                    }
                                    if (this.archiveHidden) {
                                    }
                                    if (this.animatingArchiveAvatar) {
                                    }
                                    if (this.drawRevealBackground) {
                                    }
                                    if (z5) {
                                    }
                                }
                            } catch (Exception e6) {
                                e = e6;
                            }
                        }
                        canvas.restore();
                    }
                    if (this.currentDialogFolderId == 0) {
                        int i33 = (this.drawClock ? 1 : 0) + (this.drawCheck1 ? 2 : 0) + (this.drawCheck2 ? 4 : 0);
                        int i34 = this.lastStatusDrawableParams;
                        if (i34 >= 0 && i34 != i33 && !this.statusDrawableAnimationInProgress) {
                            createStatusDrawableAnimator(i34, i33);
                        }
                        boolean z13 = this.statusDrawableAnimationInProgress;
                        if (z13) {
                            i33 = this.animateToStatusDrawableParams;
                        }
                        boolean z14 = (i33 & 1) != 0;
                        boolean z15 = (i33 & 2) != 0;
                        boolean z16 = (i33 & i12) != 0;
                        if (z13) {
                            int i35 = this.animateFromStatusDrawableParams;
                            boolean z17 = (i35 & 1) != 0;
                            boolean z18 = (i35 & 2) != 0;
                            boolean z19 = (i35 & i12) != 0;
                            if (z14 || z17 || !z19 || z18 || !z15 || !z16) {
                                f6 = 1.0f;
                                f7 = BitmapDescriptorFactory.HUE_RED;
                                dialogCell = this;
                                canvas4 = canvas;
                                boolean z20 = z18;
                                i14 = 2;
                                boolean z21 = z19;
                                i6 = 1;
                                dialogCell.drawCheckStatus(canvas4, z17, z20, z21, false, 1.0f - this.statusDrawableProgress);
                                f14 = this.statusDrawableProgress;
                                z12 = false;
                            } else {
                                float f27 = this.statusDrawableProgress;
                                f7 = BitmapDescriptorFactory.HUE_RED;
                                f6 = 1.0f;
                                i6 = 1;
                                drawCheckStatus(canvas, z14, z15, z16, true, f27);
                                i14 = 2;
                                this.lastStatusDrawableParams = (this.drawClock ? 1 : 0) + (!this.drawCheck1 ? 2 : 0) + (!this.drawCheck2 ? 4 : 0);
                            }
                        } else {
                            i14 = 2;
                            i6 = 1;
                            f6 = 1.0f;
                            f7 = BitmapDescriptorFactory.HUE_RED;
                            z12 = false;
                            f14 = 1.0f;
                            dialogCell = this;
                            canvas4 = canvas;
                        }
                        dialogCell.drawCheckStatus(canvas4, z14, z15, z16, z12, f14);
                        this.lastStatusDrawableParams = (this.drawClock ? 1 : 0) + (!this.drawCheck1 ? 2 : 0) + (!this.drawCheck2 ? 4 : 0);
                    } else {
                        i14 = 2;
                        i6 = 1;
                        f6 = 1.0f;
                        f7 = BitmapDescriptorFactory.HUE_RED;
                    }
                    if (this.drawBotVerified) {
                        int iDp2 = AndroidUtilities.dp((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 12.5f : 15.5f);
                        if (((!this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || isForumCell()) && hasTags()) {
                            iDp2 -= AndroidUtilities.dp(9.0f);
                        }
                        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.botVerification;
                        if (swapAnimatedEmojiDrawable != null) {
                            swapAnimatedEmojiDrawable.setBounds(this.nameLeft - AndroidUtilities.dp(19.0f), AndroidUtilities.dp(-1.0f) + iDp2, this.nameLeft - AndroidUtilities.dp(2.0f), iDp2 + AndroidUtilities.dp(16.0f));
                            this.botVerification.setColor(Integer.valueOf(Theme.getColor(Theme.key_chats_verifiedBackground, this.resourcesProvider)));
                            this.botVerification.draw(canvas);
                        }
                    }
                    boolean z22 = this.drawUnmute || this.dialogMuted;
                    if (this.dialogsType != i14 || ((!z22 && this.dialogMutedProgress <= f7) || this.drawVerified || this.drawScam != 0 || this.drawPremium)) {
                        if (this.drawVerified) {
                            if (this.drawPremium) {
                                int iDp3 = AndroidUtilities.dp((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 12.5f : 15.5f);
                                if (((!this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || isForumCell()) && hasTags()) {
                                    iDp3 -= AndroidUtilities.dp(9.0f);
                                }
                                AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.emojiStatus;
                                if (swapAnimatedEmojiDrawable2 != null) {
                                    swapAnimatedEmojiDrawable2.setBounds(this.nameMuteLeft - AndroidUtilities.dp(2.0f), iDp3 - AndroidUtilities.dp(4.0f), this.nameMuteLeft + AndroidUtilities.dp(20.0f), (iDp3 - AndroidUtilities.dp(4.0f)) + AndroidUtilities.dp(22.0f));
                                    this.emojiStatus.setColor(Integer.valueOf(Theme.getColor(Theme.key_chats_verifiedBackground, this.resourcesProvider)));
                                    this.emojiStatus.draw(canvas);
                                } else {
                                    drawable = PremiumGradient.getInstance().premiumStarDrawableMini;
                                    int iDp4 = this.nameMuteLeft - AndroidUtilities.dp(f6);
                                    if (!this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) {
                                        f19 = 15.5f;
                                    }
                                    BaseCell.setDrawableBounds(drawable, iDp4, AndroidUtilities.dp(f19));
                                }
                            } else if (this.drawScam != 0) {
                                if (!this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) {
                                    f18 = 15.0f;
                                }
                                int iDp5 = AndroidUtilities.dp(f18);
                                if (((!this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || isForumCell()) && hasTags()) {
                                    iDp5 -= AndroidUtilities.dp(9.0f);
                                }
                                BaseCell.setDrawableBounds((Drawable) (this.drawScam == i6 ? Theme.dialogs_scamDrawable : Theme.dialogs_fakeDrawable), this.nameMuteLeft, iDp5);
                                (this.drawScam == i6 ? Theme.dialogs_scamDrawable : Theme.dialogs_fakeDrawable).draw(canvas);
                            }
                            if (this.drawReorder || this.reorderIconProgress != f7) {
                                Theme.dialogs_reorderDrawable.setAlpha((int) (this.reorderIconProgress * 255.0f));
                                BaseCell.setDrawableBounds(Theme.dialogs_reorderDrawable, this.pinLeft, this.pinTop);
                                Theme.dialogs_reorderDrawable.draw(canvas);
                            }
                            if (!this.drawError) {
                                Theme.dialogs_errorDrawable.setAlpha((int) ((f6 - this.reorderIconProgress) * 255.0f));
                                this.rect.set(this.errorLeft, this.errorTop, r1 + AndroidUtilities.dp(23.0f), this.errorTop + AndroidUtilities.dp(23.0f));
                                RectF rectF5 = this.rect;
                                float f28 = AndroidUtilities.density * 11.5f;
                                canvas.drawRoundRect(rectF5, f28, f28, Theme.dialogs_errorPaint);
                                BaseCell.setDrawableBounds(Theme.dialogs_errorDrawable, this.errorLeft + AndroidUtilities.dp(5.5f), this.errorTop + AndroidUtilities.dp(5.0f));
                                drawable2 = Theme.dialogs_errorDrawable;
                            } else if (((this.drawCount || this.drawMention) && this.drawCount2) || this.countChangeProgress != f6 || this.drawReactionMention || this.reactionsMentionsChangeProgress != f6) {
                                if (this.isTopic) {
                                    z9 = this.topicMuted;
                                } else {
                                    TLRPC.Chat chat = this.chat;
                                    if (chat != null && chat.forum && this.forumTopic == null) {
                                        z10 = !this.hasUnmutedTopics;
                                        Canvas canvas6 = canvas;
                                        drawCounter(canvas, z10, this.countTop, this.countLeft, this.countLeftOld, 1.0f, false);
                                        if (this.drawMention) {
                                            Theme.dialogs_countPaint.setAlpha((int) ((f6 - this.reorderIconProgress) * 255.0f));
                                            this.rect.set(this.mentionLeft - AndroidUtilities.dp(5.5f), this.countTop, r1 + this.mentionWidth + AndroidUtilities.dp(11.0f), this.countTop + AndroidUtilities.dp(23.0f));
                                            Paint paint9 = (!z10 || this.folderId == 0) ? Theme.dialogs_countPaint : Theme.dialogs_countGrayPaint;
                                            RectF rectF6 = this.rect;
                                            float f29 = AndroidUtilities.density * 11.5f;
                                            canvas6.drawRoundRect(rectF6, f29, f29, paint9);
                                            if (this.mentionLayout != null) {
                                                Theme.dialogs_countTextPaint.setAlpha((int) ((f6 - this.reorderIconProgress) * 255.0f));
                                                canvas.save();
                                                canvas6.translate(this.mentionLeft, this.countTop + AndroidUtilities.dp(4.0f));
                                                this.mentionLayout.draw(canvas6);
                                                canvas.restore();
                                            } else {
                                                Theme.dialogs_mentionDrawable.setAlpha((int) ((f6 - this.reorderIconProgress) * 255.0f));
                                                BaseCell.setDrawableBounds(Theme.dialogs_mentionDrawable, this.mentionLeft - AndroidUtilities.dp(2.0f), this.countTop + AndroidUtilities.dp(3.2f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f));
                                                Theme.dialogs_mentionDrawable.draw(canvas6);
                                            }
                                        }
                                        if (this.drawReactionMention) {
                                            canvas3 = canvas6;
                                            if (this.reactionsMentionsChangeProgress != f6) {
                                                Theme.dialogs_reactionsCountPaint.setAlpha((int) ((f6 - this.reorderIconProgress) * 255.0f));
                                                this.rect.set(this.reactionMentionLeft - AndroidUtilities.dp(5.5f), this.countTop, r0 + AndroidUtilities.dp(23.0f), this.countTop + AndroidUtilities.dp(23.0f));
                                                Paint paint10 = Theme.dialogs_reactionsCountPaint;
                                                canvas.save();
                                                float f30 = this.reactionsMentionsChangeProgress;
                                                if (f30 != f6) {
                                                    if (!this.drawReactionMention) {
                                                        f30 = f6 - f30;
                                                    }
                                                    canvas6.scale(f30, f30, this.rect.centerX(), this.rect.centerY());
                                                }
                                                RectF rectF7 = this.rect;
                                                float f31 = AndroidUtilities.density * 11.5f;
                                                canvas6.drawRoundRect(rectF7, f31, f31, paint10);
                                                Theme.dialogs_reactionsMentionDrawable.setAlpha((int) ((f6 - this.reorderIconProgress) * 255.0f));
                                                BaseCell.setDrawableBounds(Theme.dialogs_reactionsMentionDrawable, this.reactionMentionLeft - AndroidUtilities.dp(2.0f), this.countTop + AndroidUtilities.dp(3.8f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f));
                                                Theme.dialogs_reactionsMentionDrawable.draw(canvas6);
                                                canvas.restore();
                                                canvas3 = canvas6;
                                            }
                                            if (this.thumbsCount <= 0) {
                                                float f32 = this.updateHelper.typingProgres;
                                                if (f32 != f6) {
                                                    if (f32 > f7) {
                                                        canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), (int) ((f6 - f32) * 255.0f), 31);
                                                        canvas3.translate(f7, (this.updateHelper.typingOutToTop ? -AndroidUtilities.dp(14.0f) : AndroidUtilities.dp(14.0f)) * this.updateHelper.typingProgres);
                                                    }
                                                    int i36 = 0;
                                                    while (i36 < this.thumbsCount) {
                                                        if (this.thumbImageSeen[i36]) {
                                                            if (this.thumbBackgroundPaint == null) {
                                                                Paint paint11 = new Paint(i6);
                                                                this.thumbBackgroundPaint = paint11;
                                                                paint11.setShadowLayer(AndroidUtilities.dp(1.34f), f7, AndroidUtilities.dp(0.34f), 402653184);
                                                                c = 0;
                                                                this.thumbBackgroundPaint.setColor(0);
                                                            } else {
                                                                c = 0;
                                                            }
                                                            RectF rectF8 = AndroidUtilities.rectTmp;
                                                            rectF8.set(this.thumbImage[i36].getImageX(), this.thumbImage[i36].getImageY(), this.thumbImage[i36].getImageX2(), this.thumbImage[i36].getImageY2());
                                                            canvas3.drawRoundRect(rectF8, this.thumbImage[i36].getRoundRadius()[c], this.thumbImage[i36].getRoundRadius()[i6], this.thumbBackgroundPaint);
                                                            this.thumbImage[i36].draw(canvas3);
                                                            if (this.drawSpoiler[i36]) {
                                                                Path path = this.thumbPath;
                                                                if (path == null) {
                                                                    this.thumbPath = new Path();
                                                                } else {
                                                                    path.rewind();
                                                                }
                                                                this.thumbPath.addRoundRect(rectF8, this.thumbImage[i36].getRoundRadius()[c], this.thumbImage[i36].getRoundRadius()[i6], Path.Direction.CW);
                                                                canvas.save();
                                                                canvas3.clipPath(this.thumbPath);
                                                                if (this.thumbSpoiler == null) {
                                                                    this.thumbSpoiler = new SpoilerEffect();
                                                                }
                                                                this.thumbSpoiler.setColor(ColorUtils.setAlphaComponent(-1, (int) (Color.alpha(i11) * 0.325f)));
                                                                this.thumbSpoiler.setBounds((int) this.thumbImage[i36].getImageX(), (int) this.thumbImage[i36].getImageY(), (int) this.thumbImage[i36].getImageX2(), (int) this.thumbImage[i36].getImageY2());
                                                                this.thumbSpoiler.draw(canvas3);
                                                                invalidate();
                                                                canvas.restore();
                                                            }
                                                            if (this.drawPlay[i36]) {
                                                                BaseCell.setDrawableBounds(Theme.dialogs_playDrawable, (int) (this.thumbImage[i36].getCenterX() - (Theme.dialogs_playDrawable.getIntrinsicWidth() / 2)), (int) (this.thumbImage[i36].getCenterY() - (Theme.dialogs_playDrawable.getIntrinsicHeight() / 2)));
                                                                Theme.dialogs_playDrawable.draw(canvas3);
                                                            }
                                                        }
                                                        i36 += i6;
                                                        i11 = -1;
                                                    }
                                                    i15 = -1;
                                                    z11 = false;
                                                    z11 = false;
                                                    if (this.updateHelper.typingProgres > f7) {
                                                        canvas.restore();
                                                    }
                                                } else {
                                                    i15 = -1;
                                                    z11 = false;
                                                }
                                                DialogCellTags dialogCellTags = this.tags;
                                                if (dialogCellTags != null && !dialogCellTags.isEmpty()) {
                                                    canvas.save();
                                                    canvas3.translate(this.tagsLeft, (getMeasuredHeight() - AndroidUtilities.dp(21.66f)) - (this.useSeparator ? 1 : 0));
                                                    this.tags.draw(canvas3, this.tagsRight - this.tagsLeft);
                                                    canvas.restore();
                                                }
                                                int i37 = i8;
                                                if (i37 != i15) {
                                                    canvas3.restoreToCount(i37);
                                                }
                                                z3 = z8;
                                                r10 = z11;
                                                canvas2 = canvas3;
                                            }
                                        }
                                    } else {
                                        z9 = this.dialogMuted;
                                    }
                                }
                                z10 = z9;
                                Canvas canvas62 = canvas;
                                drawCounter(canvas, z10, this.countTop, this.countLeft, this.countLeftOld, 1.0f, false);
                                if (this.drawMention) {
                                }
                                if (this.drawReactionMention) {
                                }
                            } else {
                                if (this.openBot) {
                                    canvas.save();
                                    float scale = this.openButtonBounce.getScale(0.05f);
                                    canvas.scale(scale, scale, this.openButtonRect.centerX(), this.openButtonRect.centerY());
                                    this.openButtonBackgroundPaint.setColor(Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider));
                                    RectF rectF9 = this.openButtonRect;
                                    canvas.drawRoundRect(rectF9, rectF9.height() / 2.0f, this.openButtonRect.height() / 2.0f, this.openButtonBackgroundPaint);
                                    Text text = this.openButtonText;
                                    if (text != null) {
                                        text.draw(canvas, this.openButtonRect.left + AndroidUtilities.dp(13.0f), this.openButtonRect.centerY(), Theme.getColor(Theme.key_featuredStickers_buttonText, this.resourcesProvider), 1.0f);
                                    }
                                    canvas.restore();
                                } else if (getIsPinned()) {
                                    Theme.dialogs_pinnedDrawable.setAlpha((int) ((f6 - this.reorderIconProgress) * 255.0f));
                                    BaseCell.setDrawableBounds(Theme.dialogs_pinnedDrawable, this.pinLeft, this.pinTop);
                                    drawable2 = Theme.dialogs_pinnedDrawable;
                                }
                                canvas3 = canvas;
                                if (this.thumbsCount <= 0) {
                                }
                            }
                            drawable2.draw(canvas);
                            canvas3 = canvas;
                            if (this.thumbsCount <= 0) {
                            }
                        } else {
                            if (!this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) {
                                f = 16.5f;
                            }
                            float fDp10 = AndroidUtilities.dp(f);
                            if (((!this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || isForumCell()) && hasTags()) {
                                fDp10 -= AndroidUtilities.dp(9.0f);
                            }
                            BaseCell.setDrawableBounds(Theme.dialogs_verifiedDrawable, this.nameMuteLeft - AndroidUtilities.dp(f6), fDp10);
                            BaseCell.setDrawableBounds(Theme.dialogs_verifiedCheckDrawable, this.nameMuteLeft - AndroidUtilities.dp(f6), fDp10);
                            Theme.dialogs_verifiedDrawable.draw(canvas);
                            drawable = Theme.dialogs_verifiedCheckDrawable;
                        }
                        drawable.draw(canvas);
                        if (this.drawReorder) {
                            Theme.dialogs_reorderDrawable.setAlpha((int) (this.reorderIconProgress * 255.0f));
                            BaseCell.setDrawableBounds(Theme.dialogs_reorderDrawable, this.pinLeft, this.pinTop);
                            Theme.dialogs_reorderDrawable.draw(canvas);
                            if (!this.drawError) {
                            }
                            drawable2.draw(canvas);
                            canvas3 = canvas;
                            if (this.thumbsCount <= 0) {
                            }
                        }
                    } else if (z22) {
                        float f33 = this.dialogMutedProgress;
                        if (f33 != f6) {
                            float f34 = f33 + 0.10666667f;
                            this.dialogMutedProgress = f34;
                            if (f34 > f6) {
                                this.dialogMutedProgress = f6;
                            } else {
                                invalidate();
                            }
                            float fDp11 = this.nameMuteLeft - AndroidUtilities.dp((!this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? BitmapDescriptorFactory.HUE_RED : 1.0f);
                            fDp = AndroidUtilities.dp(SharedConfig.useThreeLinesLayout ? 13.5f : 17.5f);
                            if (((this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || isForumCell()) && hasTags()) {
                                fDp -= AndroidUtilities.dp(isForumCell() ? 8.0f : 9.0f);
                            }
                            BaseCell.setDrawableBounds(Theme.dialogs_muteDrawable, fDp11, fDp);
                            BaseCell.setDrawableBounds(Theme.dialogs_unmuteDrawable, fDp11, fDp);
                            if (this.dialogMutedProgress != f6) {
                                canvas.save();
                                float f35 = this.dialogMutedProgress;
                                canvas.scale(f35, f35, Theme.dialogs_muteDrawable.getBounds().centerX(), Theme.dialogs_muteDrawable.getBounds().centerY());
                                if (this.drawUnmute) {
                                    Theme.dialogs_unmuteDrawable.setAlpha((int) (this.dialogMutedProgress * 255.0f));
                                    Theme.dialogs_unmuteDrawable.draw(canvas);
                                    drawable3 = Theme.dialogs_unmuteDrawable;
                                    i16 = 255;
                                } else {
                                    i16 = 255;
                                    Theme.dialogs_muteDrawable.setAlpha((int) (this.dialogMutedProgress * 255.0f));
                                    Theme.dialogs_muteDrawable.draw(canvas);
                                    drawable3 = Theme.dialogs_muteDrawable;
                                }
                                drawable3.setAlpha(i16);
                                canvas.restore();
                                if (this.drawReorder) {
                                }
                            } else {
                                drawable = this.drawUnmute ? Theme.dialogs_unmuteDrawable : Theme.dialogs_muteDrawable;
                                drawable.draw(canvas);
                                if (this.drawReorder) {
                                }
                            }
                        } else {
                            if (!z22) {
                                float f36 = this.dialogMutedProgress;
                                if (f36 != f7) {
                                    float f37 = f36 - 0.10666667f;
                                    this.dialogMutedProgress = f37;
                                    if (f37 < f7) {
                                        this.dialogMutedProgress = f7;
                                    }
                                }
                            }
                            if (this.useForceThreeLines) {
                                float fDp112 = this.nameMuteLeft - AndroidUtilities.dp((!this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? BitmapDescriptorFactory.HUE_RED : 1.0f);
                                fDp = AndroidUtilities.dp(SharedConfig.useThreeLinesLayout ? 13.5f : 17.5f);
                                if (this.useForceThreeLines) {
                                    fDp -= AndroidUtilities.dp(isForumCell() ? 8.0f : 9.0f);
                                    BaseCell.setDrawableBounds(Theme.dialogs_muteDrawable, fDp112, fDp);
                                    BaseCell.setDrawableBounds(Theme.dialogs_unmuteDrawable, fDp112, fDp);
                                    if (this.dialogMutedProgress != f6) {
                                    }
                                } else {
                                    fDp -= AndroidUtilities.dp(isForumCell() ? 8.0f : 9.0f);
                                    BaseCell.setDrawableBounds(Theme.dialogs_muteDrawable, fDp112, fDp);
                                    BaseCell.setDrawableBounds(Theme.dialogs_unmuteDrawable, fDp112, fDp);
                                    if (this.dialogMutedProgress != f6) {
                                    }
                                }
                            }
                        }
                    }
                } else {
                    canvas2 = canvas;
                    r10 = 0;
                    i6 = 1;
                    f6 = 1.0f;
                    f7 = BitmapDescriptorFactory.HUE_RED;
                    z3 = false;
                }
                if (this.animatingArchiveAvatar) {
                    canvas.save();
                    f8 = 170.0f;
                    float interpolation2 = this.interpolator.getInterpolation(this.animatingArchiveAvatarProgress / 170.0f) + f6;
                    canvas2.scale(interpolation2, interpolation2, this.avatarImage.getCenterX(), this.avatarImage.getCenterY());
                } else {
                    f8 = 170.0f;
                }
                if (this.drawAvatar && (!this.isTopic || (tL_forumTopic2 = this.forumTopic) == null || tL_forumTopic2.id != i6 || (pullForegroundDrawable = this.archivedChatsDrawable) == null || !pullForegroundDrawable.isDraw())) {
                    if (this.drawMonoforumAvatar) {
                        StoriesUtilities.AvatarStoryParams avatarStoryParams = this.storyParams;
                        avatarStoryParams.drawHiddenStoriesAsSegments = this.currentDialogFolderId != 0;
                        StoriesUtilities.drawAvatarWithStory(this.currentDialogId, canvas2, this.avatarImage, avatarStoryParams);
                    } else {
                        if (this.bubbleClip == null) {
                            this.bubbleClip = new PhotoBubbleClip();
                        }
                        this.bubbleClip.setBounds((int) this.storyParams.originalAvatarRect.centerX(), (int) this.storyParams.originalAvatarRect.centerY(), (int) (this.storyParams.originalAvatarRect.width() / 2.0f));
                        canvas.save();
                        canvas2.clipPath(this.bubbleClip);
                        this.avatarImage.setImageCoords(this.storyParams.originalAvatarRect);
                        this.avatarImage.draw(canvas2);
                        canvas.restore();
                    }
                }
                if (this.animatingArchiveAvatar) {
                    canvas.restore();
                }
                boolean z23 = (this.avatarImage.getVisible() && drawAvatarOverlays(canvas)) ? true : z3;
                if (this.rightFragmentOpenedProgress > f7 && this.currentDialogFolderId == 0) {
                    if (this.isTopic) {
                        TLRPC.Chat chat2 = this.chat;
                        if (chat2 != null && chat2.forum && this.forumTopic == null) {
                            z7 = !this.hasUnmutedTopics;
                            RectF rectF10 = this.storyParams.originalAvatarRect;
                            int iWidth = (int) (((rectF10.left + rectF10.width()) - this.countWidth) - AndroidUtilities.dp(5.0f));
                            RectF rectF11 = this.storyParams.originalAvatarRect;
                            drawCounter(canvas, z7, (int) ((this.avatarImage.getImageY() + this.storyParams.originalAvatarRect.height()) - AndroidUtilities.dp(22.0f)), iWidth, (int) (((rectF11.left + rectF11.width()) - this.countWidthOld) - AndroidUtilities.dp(5.0f)), this.rightFragmentOpenedProgress, true);
                        } else {
                            z6 = this.dialogMuted;
                        }
                    } else {
                        z6 = this.topicMuted;
                    }
                    z7 = z6;
                    RectF rectF102 = this.storyParams.originalAvatarRect;
                    int iWidth2 = (int) (((rectF102.left + rectF102.width()) - this.countWidth) - AndroidUtilities.dp(5.0f));
                    RectF rectF112 = this.storyParams.originalAvatarRect;
                    drawCounter(canvas, z7, (int) ((this.avatarImage.getImageY() + this.storyParams.originalAvatarRect.height()) - AndroidUtilities.dp(22.0f)), iWidth2, (int) (((rectF112.left + rectF112.width()) - this.countWidthOld) - AndroidUtilities.dp(5.0f)), this.rightFragmentOpenedProgress, true);
                }
                if (this.collapseOffset != f7) {
                    canvas.restore();
                }
                if (this.translationX != f7) {
                    canvas.restore();
                }
                if (this.drawArchive && ((this.currentDialogFolderId != 0 || (this.isTopic && (tL_forumTopic = this.forumTopic) != null && tL_forumTopic.id == i6)) && this.translationX == f7 && this.archivedChatsDrawable != null)) {
                    canvas.save();
                    canvas2.translate(f7, (-this.translateY) - (this.rightFragmentOffset * this.rightFragmentOpenedProgress));
                    canvas2.clipRect((int) r10, (int) r10, getMeasuredWidth(), getMeasuredHeight());
                    this.archivedChatsDrawable.draw(canvas2);
                    canvas.restore();
                }
                if (this.useSeparator) {
                    int iDp6 = (this.fullSeparator || !(this.currentDialogFolderId == 0 || !this.archiveHidden || this.fullSeparator2) || (this.fullSeparator2 && !this.archiveHidden)) ? 0 : AndroidUtilities.dp(this.messagePaddingStart);
                    if (this.rightFragmentOpenedProgress != f6) {
                        int alpha4 = Theme.dividerPaint.getAlpha();
                        float f38 = this.rightFragmentOpenedProgress;
                        if (f38 != f7) {
                            Theme.dividerPaint.setAlpha((int) (alpha4 * (f6 - f38)));
                        }
                        float measuredHeight4 = (getMeasuredHeight() - i6) - (this.rightFragmentOffset * this.rightFragmentOpenedProgress);
                        if (LocaleController.isRTL) {
                            measuredWidth = getMeasuredWidth() - iDp6;
                            paint2 = Theme.dividerPaint;
                            f9 = BitmapDescriptorFactory.HUE_RED;
                        } else {
                            f9 = iDp6;
                            measuredWidth = getMeasuredWidth();
                            paint2 = Theme.dividerPaint;
                        }
                        canvas.drawLine(f9, measuredHeight4, measuredWidth, measuredHeight4, paint2);
                        if (this.rightFragmentOpenedProgress != f7) {
                            Theme.dividerPaint.setAlpha(alpha4);
                        }
                    }
                }
                if (this.clipProgress != f7) {
                    if (Build.VERSION.SDK_INT != 24) {
                        canvas.restore();
                    } else {
                        Theme.dialogs_pinnedPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider));
                        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), this.topClip * this.clipProgress, Theme.dialogs_pinnedPaint);
                        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight() - ((int) (this.bottomClip * this.clipProgress)), getMeasuredWidth(), getMeasuredHeight(), Theme.dialogs_pinnedPaint);
                    }
                }
                z4 = this.drawReorder;
                if (!z4 && this.reorderIconProgress == f7) {
                    z5 = z23;
                } else if (z4) {
                    float f39 = this.reorderIconProgress;
                    if (f39 > f7) {
                        float f40 = f39 - 0.09411765f;
                        this.reorderIconProgress = f40;
                        if (f40 < f7) {
                            this.reorderIconProgress = f7;
                        }
                        z5 = true;
                    }
                    z5 = z23;
                } else {
                    float f41 = this.reorderIconProgress;
                    if (f41 < f6) {
                        float f42 = f41 + 0.09411765f;
                        this.reorderIconProgress = f42;
                        if (f42 > f6) {
                            this.reorderIconProgress = f6;
                        }
                        z5 = true;
                    }
                    z5 = z23;
                }
                if (this.archiveHidden) {
                    float f43 = this.archiveBackgroundProgress;
                    if (f43 > f7) {
                        float f44 = f43 - 0.069565214f;
                        this.archiveBackgroundProgress = f44;
                        if (f44 < f7) {
                            this.archiveBackgroundProgress = f7;
                        }
                        if (this.avatarDrawable.getAvatarType() == 2) {
                            this.avatarDrawable.setArchivedAvatarHiddenProgress(CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(this.archiveBackgroundProgress));
                        }
                        z5 = true;
                    }
                } else {
                    float f45 = this.archiveBackgroundProgress;
                    if (f45 < f6) {
                        float f46 = f45 + 0.069565214f;
                        this.archiveBackgroundProgress = f46;
                        if (f46 > f6) {
                            this.archiveBackgroundProgress = f6;
                        }
                        if (this.avatarDrawable.getAvatarType() == 2) {
                        }
                        z5 = true;
                    }
                }
                if (this.animatingArchiveAvatar) {
                    float f47 = this.animatingArchiveAvatarProgress + 16.0f;
                    this.animatingArchiveAvatarProgress = f47;
                    if (f47 >= f8) {
                        this.animatingArchiveAvatarProgress = f8;
                        this.animatingArchiveAvatar = r10;
                    }
                    z5 = true;
                }
                if (this.drawRevealBackground) {
                    float f48 = this.currentRevealBounceProgress;
                    if (f48 < f6) {
                        float f49 = f48 + 0.09411765f;
                        this.currentRevealBounceProgress = f49;
                        if (f49 > f6) {
                            this.currentRevealBounceProgress = f6;
                            z5 = true;
                        }
                    }
                    float f50 = this.currentRevealProgress;
                    if (f50 < f6) {
                        float f51 = f50 + 0.053333335f;
                        this.currentRevealProgress = f51;
                        if (f51 > f6) {
                            this.currentRevealProgress = f6;
                        }
                        z5 = true;
                    }
                } else {
                    if (this.currentRevealBounceProgress == f6) {
                        this.currentRevealBounceProgress = f7;
                        z5 = true;
                    }
                    float f52 = this.currentRevealProgress;
                    if (f52 > f7) {
                        float f53 = f52 - 0.053333335f;
                        this.currentRevealProgress = f53;
                        if (f53 < f7) {
                            this.currentRevealProgress = f7;
                        }
                        z5 = true;
                    }
                }
                if (z5) {
                    invalidate();
                    return;
                }
                return;
            }
            paint = Theme.dialogs_pinnedPaint;
            color3 = Theme.getColor(Theme.key_chats_pinnedOverlay, this.resourcesProvider);
        } else {
            paint = Theme.dialogs_pinnedPaint;
            color3 = AndroidUtilities.getOffsetColor(0, Theme.getColor(Theme.key_chats_pinnedOverlay, this.resourcesProvider), this.archiveBackgroundProgress, 1.0f);
        }
        paint.setColor(color3);
        Theme.dialogs_pinnedPaint.setAlpha((int) (r1.getAlpha() * (1.0f - this.rightFragmentOpenedProgress)));
        i5 = 0;
        canvas.drawRect(-this.xOffset, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight() - this.translateY, Theme.dialogs_pinnedPaint);
        canvas.restore();
        this.updateHelper.updateAnimationValues();
        if (this.collapseOffset != BitmapDescriptorFactory.HUE_RED) {
        }
        f5 = this.rightFragmentOpenedProgress;
        if (f5 == 1.0f) {
        }
        if (this.animatingArchiveAvatar) {
        }
        if (this.drawAvatar) {
            if (this.drawMonoforumAvatar) {
            }
        }
        if (this.animatingArchiveAvatar) {
        }
        if (this.avatarImage.getVisible()) {
        }
        if (this.rightFragmentOpenedProgress > f7) {
            if (this.isTopic) {
            }
            z7 = z6;
            RectF rectF1022 = this.storyParams.originalAvatarRect;
            int iWidth22 = (int) (((rectF1022.left + rectF1022.width()) - this.countWidth) - AndroidUtilities.dp(5.0f));
            RectF rectF1122 = this.storyParams.originalAvatarRect;
            drawCounter(canvas, z7, (int) ((this.avatarImage.getImageY() + this.storyParams.originalAvatarRect.height()) - AndroidUtilities.dp(22.0f)), iWidth22, (int) (((rectF1122.left + rectF1122.width()) - this.countWidthOld) - AndroidUtilities.dp(5.0f)), this.rightFragmentOpenedProgress, true);
        }
        if (this.collapseOffset != f7) {
        }
        if (this.translationX != f7) {
        }
        if (this.drawArchive) {
            canvas.save();
            canvas2.translate(f7, (-this.translateY) - (this.rightFragmentOffset * this.rightFragmentOpenedProgress));
            canvas2.clipRect((int) r10, (int) r10, getMeasuredWidth(), getMeasuredHeight());
            this.archivedChatsDrawable.draw(canvas2);
            canvas.restore();
        }
        if (this.useSeparator) {
        }
        if (this.clipProgress != f7) {
        }
        z4 = this.drawReorder;
        if (!z4) {
            if (z4) {
            }
        }
        if (this.archiveHidden) {
        }
        if (this.animatingArchiveAvatar) {
        }
        if (this.drawRevealBackground) {
        }
        if (z5) {
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        PullForegroundDrawable pullForegroundDrawable;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (isFolderCell() && (pullForegroundDrawable = this.archivedChatsDrawable) != null && SharedConfig.archiveHidden && pullForegroundDrawable.pullProgress == BitmapDescriptorFactory.HUE_RED) {
            accessibilityNodeInfo.setVisibleToUser(false);
        } else {
            accessibilityNodeInfo.addAction(16);
            accessibilityNodeInfo.addAction(32);
            if (!isFolderCell() && this.parentFragment != null && Build.VERSION.SDK_INT >= 21) {
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.acc_action_chat_preview, LocaleController.getString(R.string.AccActionChatPreview)));
            }
        }
        CheckBox2 checkBox2 = this.checkBox;
        if (checkBox2 == null || !checkBox2.isChecked()) {
            return;
        }
        accessibilityNodeInfo.setClassName("android.widget.CheckBox");
        accessibilityNodeInfo.setCheckable(true);
        accessibilityNodeInfo.setChecked(true);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.rightFragmentOpenedProgress == BitmapDescriptorFactory.HUE_RED && !this.isTopic && this.storyParams.checkOnTouchEvent(motionEvent, this)) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int iDp;
        if (this.currentDialogId == 0 && this.customDialog == null) {
            return;
        }
        if (this.checkBox != null) {
            int iDp2 = AndroidUtilities.dp(this.messagePaddingStart - ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 29 : 27));
            if (this.inPreviewMode) {
                iDp2 = AndroidUtilities.dp(8.0f);
                iDp = (getMeasuredHeight() - this.checkBox.getMeasuredHeight()) >> 1;
            } else {
                if (LocaleController.isRTL) {
                    iDp2 = (i3 - i) - iDp2;
                }
                iDp = AndroidUtilities.dp(this.chekBoxPaddingTop + ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 6 : 0));
            }
            CheckBox2 checkBox2 = this.checkBox;
            checkBox2.layout(iDp2, iDp, checkBox2.getMeasuredWidth() + iDp2, this.checkBox.getMeasuredHeight() + iDp);
        }
        int measuredHeight = (getMeasuredHeight() + getMeasuredWidth()) << 16;
        if (measuredHeight != this.lastSize || this.updateLayout) {
            this.updateLayout = false;
            this.lastSize = measuredHeight;
            try {
                buildLayout();
            } catch (Exception e) {
                FileLog.e(e);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        CheckBox2 checkBox2 = this.checkBox;
        if (checkBox2 != null) {
            checkBox2.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(24.0f), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(24.0f), 1073741824));
        }
        if (this.isTopic) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.dp(((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? this.heightThreeLines : this.heightDefault) + ((!hasTags() || ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) && !isForumCell())) ? 0 : isForumCell() ? this.addForumHeightForTags : this.addHeightForTags)) + (this.useSeparator ? 1 : 0));
            checkTwoLinesForName();
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i), computeHeight());
        this.topClip = 0;
        this.bottomClip = getMeasuredHeight();
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0190  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        String name;
        int i;
        int i2;
        int i3;
        MessageObject messageObject;
        int i4;
        MessageObject captionMessage;
        TLRPC.User user;
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        StringBuilder sb = new StringBuilder();
        if (this.currentDialogFolderId == 1) {
            name = LocaleController.getString(R.string.ArchivedChats);
        } else {
            if (this.encryptedChat != null) {
                sb.append(LocaleController.getString(R.string.AccDescrSecretChat));
                sb.append(". ");
            }
            if (!this.isTopic || this.forumTopic == null) {
                TLRPC.User user2 = this.user;
                if (user2 == null) {
                    TLRPC.Chat chat = this.chat;
                    if (chat != null) {
                        sb.append(LocaleController.getString(chat.broadcast ? R.string.AccDescrChannel : R.string.AccDescrGroup));
                        sb.append(". ");
                        name = this.chat.title;
                    }
                    if (this.drawVerified) {
                        sb.append(LocaleController.getString(R.string.AccDescrVerified));
                        sb.append(". ");
                    }
                    if (this.dialogMuted) {
                        sb.append(LocaleController.getString(R.string.AccDescrNotificationsMuted));
                        sb.append(". ");
                    }
                    if (isOnline()) {
                        sb.append(LocaleController.getString(R.string.AccDescrUserOnline));
                        sb.append(". ");
                    }
                    i2 = this.unreadCount;
                    if (i2 > 0) {
                        sb.append(LocaleController.formatPluralString("NewMessages", i2, new Object[0]));
                        sb.append(". ");
                    }
                    i3 = this.mentionCount;
                    if (i3 > 0) {
                        sb.append(LocaleController.formatPluralString("AccDescrMentionCount", i3, new Object[0]));
                        sb.append(". ");
                    }
                    if (this.reactionMentionCount > 0) {
                        sb.append(LocaleController.getString(R.string.AccDescrMentionReaction));
                        sb.append(". ");
                    }
                    messageObject = this.message;
                    if (messageObject != null && this.currentDialogFolderId == 0) {
                        i4 = this.lastMessageDate;
                        if (i4 == 0) {
                            i4 = messageObject.messageOwner.date;
                        }
                        String dateAudio = LocaleController.formatDateAudio(i4, true);
                        sb.append(!this.message.isOut() ? LocaleController.formatString("AccDescrSentDate", R.string.AccDescrSentDate, dateAudio) : LocaleController.formatString("AccDescrReceivedDate", R.string.AccDescrReceivedDate, dateAudio));
                        sb.append(". ");
                        if (this.chat != null && !this.message.isOut() && this.message.isFromUser() && this.message.messageOwner.action == null && (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.message.messageOwner.from_id.user_id))) != null) {
                            sb.append(ContactsController.formatName(user.first_name, user.last_name));
                            sb.append(". ");
                        }
                        if (this.encryptedChat == null) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(this.message.messageText);
                            if (!this.message.isMediaEmpty() && (captionMessage = getCaptionMessage()) != null && !TextUtils.isEmpty(captionMessage.caption)) {
                                if (sb2.length() > 0) {
                                    sb2.append(". ");
                                }
                                sb2.append(captionMessage.caption);
                            }
                            StaticLayout staticLayout = this.messageLayout;
                            int length = staticLayout == null ? -1 : staticLayout.getText().length();
                            if (length > 0) {
                                int length2 = sb2.length();
                                int iIndexOf = sb2.indexOf("\n", length);
                                if (iIndexOf < length2 && iIndexOf >= 0) {
                                    length2 = iIndexOf;
                                }
                                int iIndexOf2 = sb2.indexOf("\t", length);
                                if (iIndexOf2 < length2 && iIndexOf2 >= 0) {
                                    length2 = iIndexOf2;
                                }
                                int iIndexOf3 = sb2.indexOf(" ", length);
                                if (iIndexOf3 < length2 && iIndexOf3 >= 0) {
                                    length2 = iIndexOf3;
                                }
                                sb.append(sb2.substring(0, length2));
                            } else {
                                sb.append((CharSequence) sb2);
                            }
                        }
                    }
                    accessibilityEvent.setContentDescription(sb);
                    setContentDescription(sb);
                }
                if (UserObject.isReplyUser(user2)) {
                    i = R.string.RepliesTitle;
                } else if (UserObject.isAnonymous(this.user)) {
                    i = R.string.AnonymousForward;
                } else {
                    if (this.user.bot) {
                        sb.append(LocaleController.getString(R.string.Bot));
                        sb.append(". ");
                    }
                    TLRPC.User user3 = this.user;
                    if (user3.self) {
                        i = R.string.SavedMessages;
                    } else {
                        name = ContactsController.formatName(user3.first_name, user3.last_name);
                    }
                }
                name = LocaleController.getString(i);
            } else {
                sb.append(LocaleController.getString(R.string.AccDescrTopic));
                sb.append(". ");
                name = this.forumTopic.title;
            }
        }
        sb.append(name);
        sb.append(". ");
        if (this.drawVerified) {
        }
        if (this.dialogMuted) {
        }
        if (isOnline()) {
        }
        i2 = this.unreadCount;
        if (i2 > 0) {
        }
        i3 = this.mentionCount;
        if (i3 > 0) {
        }
        if (this.reactionMentionCount > 0) {
        }
        messageObject = this.message;
        if (messageObject != null) {
            i4 = this.lastMessageDate;
            if (i4 == 0) {
            }
            String dateAudio2 = LocaleController.formatDateAudio(i4, true);
            sb.append(!this.message.isOut() ? LocaleController.formatString("AccDescrSentDate", R.string.AccDescrSentDate, dateAudio2) : LocaleController.formatString("AccDescrReceivedDate", R.string.AccDescrReceivedDate, dateAudio2));
            sb.append(". ");
            if (this.chat != null) {
                sb.append(ContactsController.formatName(user.first_name, user.last_name));
                sb.append(". ");
            }
            if (this.encryptedChat == null) {
            }
        }
        accessibilityEvent.setContentDescription(sb);
        setContentDescription(sb);
    }

    public void onReorderStateChanged(boolean z, boolean z2) {
        if ((getIsPinned() || !z) && this.drawReorder != z) {
            this.drawReorder = z;
            this.reorderIconProgress = (!z2 ? z : !z) ? BitmapDescriptorFactory.HUE_RED : 1.0f;
            invalidate();
        } else {
            if (getIsPinned()) {
                return;
            }
            this.drawReorder = false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x006a, code lost:
    
        if (r6.getAction() == 3) goto L27;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        CanvasButton canvasButton;
        int i;
        if (this.rightFragmentOpenedProgress == BitmapDescriptorFactory.HUE_RED && !this.isTopic && this.storyParams.checkOnTouchEvent(motionEvent, this)) {
            return true;
        }
        DialogCellDelegate dialogCellDelegate = this.delegate;
        if (dialogCellDelegate == null || dialogCellDelegate.canClickButtonInside()) {
            if (this.openBot) {
                boolean zContains = this.openButtonRect.contains(motionEvent.getX(), motionEvent.getY());
                if (motionEvent.getAction() != 0 && motionEvent.getAction() != 2) {
                    if (this.openButtonBounce.isPressed() && motionEvent.getAction() == 1) {
                        Utilities.Callback callback = this.onOpenButtonClick;
                        if (callback != null) {
                            callback.run(this.user);
                        }
                    } else if (this.openButtonBounce.isPressed()) {
                    }
                    this.openButtonBounce.setPressed(false);
                    return true;
                }
                this.openButtonBounce.setPressed(zContains);
                if (zContains) {
                    return true;
                }
            }
            if (this.lastTopicMessageUnread && (canvasButton = this.canvasButton) != null && this.buttonLayout != null && (((i = this.dialogsType) == 0 || i == 7 || i == 8) && canvasButton.checkTouchEvent(motionEvent))) {
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        DialogsActivity dialogsActivity;
        if (i != R.id.acc_action_chat_preview || (dialogsActivity = this.parentFragment) == null) {
            return super.performAccessibilityAction(i, bundle);
        }
        dialogsActivity.showChatPreview(this);
        return true;
    }

    public void resetPinnedArchiveState() {
        boolean z = SharedConfig.archiveHidden;
        this.archiveHidden = z;
        float f = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
        this.archiveBackgroundProgress = f;
        this.avatarDrawable.setArchivedAvatarHiddenProgress(f);
        this.clipProgress = BitmapDescriptorFactory.HUE_RED;
        this.isSliding = false;
        this.reorderIconProgress = (getIsPinned() && this.drawReorder) ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        this.attachedToWindow = true;
        this.cornerProgress = BitmapDescriptorFactory.HUE_RED;
        setTranslationX(BitmapDescriptorFactory.HUE_RED);
        setTranslationY(BitmapDescriptorFactory.HUE_RED);
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emojiStatus;
        if (swapAnimatedEmojiDrawable != null && this.attachedToWindow) {
            swapAnimatedEmojiDrawable.attach();
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.botVerification;
        if (swapAnimatedEmojiDrawable2 == null || !this.attachedToWindow) {
            return;
        }
        swapAnimatedEmojiDrawable2.attach();
    }

    public void setArchivedPullAnimation(PullForegroundDrawable pullForegroundDrawable) {
        this.archivedChatsDrawable = pullForegroundDrawable;
    }

    public void setBottomClip(int i) {
        this.bottomClip = i;
    }

    public void setChecked(boolean z, boolean z2) {
        CheckBox2 checkBox2 = this.checkBox;
        if (checkBox2 != null || z) {
            if (checkBox2 == null) {
                CheckBox2 checkBox22 = new CheckBox2(getContext(), 21, this.resourcesProvider) { // from class: org.telegram.ui.Cells.DialogCell.2
                    @Override // android.view.View
                    public void invalidate() {
                        super.invalidate();
                        DialogCell.this.invalidate();
                    }
                };
                this.checkBox = checkBox22;
                checkBox22.setColor(-1, Theme.key_windowBackgroundWhite, Theme.key_checkboxCheck);
                this.checkBox.setDrawUnchecked(false);
                this.checkBox.setDrawBackgroundAsArc(3);
                addView(this.checkBox);
            }
            this.checkBox.setChecked(z, z2);
            checkTtl();
        }
    }

    public void setClipProgress(float f) {
        this.clipProgress = f;
        invalidate();
    }

    public void setCustomMessage(String str) {
        if (TextUtils.equals(this.customMessage, str)) {
            return;
        }
        this.customMessage = str;
        buildLayout();
        requestLayout();
    }

    public void setDialog(long j, MessageObject messageObject, int i, boolean z, boolean z2) {
        if (this.currentDialogId != j) {
            this.lastStatusDrawableParams = -1;
        }
        this.currentDialogId = j;
        this.lastDialogChangedTime = System.currentTimeMillis();
        this.message = messageObject;
        this.useMeForMyMessages = z;
        this.isDialogCell = false;
        this.lastMessageDate = i;
        this.currentEditDate = messageObject != null ? messageObject.messageOwner.edit_date : 0;
        this.unreadCount = 0;
        this.markUnread = false;
        this.messageId = messageObject != null ? messageObject.getId() : 0;
        this.mentionCount = 0;
        this.reactionMentionCount = 0;
        this.lastUnreadState = messageObject != null && messageObject.isUnread();
        MessageObject messageObject2 = this.message;
        if (messageObject2 != null) {
            this.lastSendState = messageObject2.messageOwner.send_state;
        }
        update(0, z2);
    }

    public void setDialog(TLRPC.Dialog dialog, int i, int i2) {
        if (this.currentDialogId != dialog.id) {
            ValueAnimator valueAnimator = this.statusDrawableAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.statusDrawableAnimator.cancel();
            }
            this.statusDrawableAnimationInProgress = false;
            this.lastStatusDrawableParams = -1;
        }
        this.currentDialogId = dialog.id;
        this.lastDialogChangedTime = System.currentTimeMillis();
        this.isDialogCell = true;
        if (dialog instanceof TLRPC.TL_dialogFolder) {
            this.currentDialogFolderId = ((TLRPC.TL_dialogFolder) dialog).folder.id;
            PullForegroundDrawable pullForegroundDrawable = this.archivedChatsDrawable;
            if (pullForegroundDrawable != null) {
                pullForegroundDrawable.setCell(this);
            }
        } else {
            this.currentDialogFolderId = 0;
        }
        this.dialogsType = i;
        showPremiumBlocked(i == 3);
        if (this.tags == null) {
            this.tags = new DialogCellTags(this);
        }
        this.folderId = i2;
        this.messageId = 0;
        if (update(0, false)) {
            requestLayout();
        }
        checkOnline();
        checkGroupCall();
        checkChatTheme();
        checkTtl();
    }

    public void setDialog(CustomDialog customDialog) {
        this.customDialog = customDialog;
        this.messageId = 0;
        update(0);
        checkOnline();
        checkGroupCall();
        checkChatTheme();
        checkTtl();
    }

    public void setDialogCellDelegate(DialogCellDelegate dialogCellDelegate) {
        this.delegate = dialogCellDelegate;
    }

    public void setDialogSelected(boolean z) {
        if (this.isSelected != z) {
            invalidate();
        }
        this.isSelected = z;
    }

    public void setForumTopic(TLRPC.TL_forumTopic tL_forumTopic, long j, MessageObject messageObject, boolean z, boolean z2) {
        PullForegroundDrawable pullForegroundDrawable;
        this.forumTopic = tL_forumTopic;
        this.isTopic = tL_forumTopic != null;
        if (this.currentDialogId != j) {
            this.lastStatusDrawableParams = -1;
        }
        if (messageObject != null) {
            Drawable drawable = messageObject.topicIconDrawable[0];
            if (drawable instanceof ForumBubbleDrawable) {
                ((ForumBubbleDrawable) drawable).setColor(tL_forumTopic.icon_color);
            }
        }
        this.currentDialogId = j;
        this.lastDialogChangedTime = System.currentTimeMillis();
        this.message = messageObject;
        this.isDialogCell = false;
        this.showTopicIconInName = z;
        if (messageObject != null) {
            TLRPC.Message message = messageObject.messageOwner;
            this.lastMessageDate = message.date;
            this.currentEditDate = message.edit_date;
            this.markUnread = false;
            this.messageId = messageObject.getId();
            this.lastUnreadState = messageObject.isUnread();
        }
        MessageObject messageObject2 = this.message;
        if (messageObject2 != null) {
            this.lastSendState = messageObject2.messageOwner.send_state;
        }
        if (!z2) {
            this.lastStatusDrawableParams = -1;
        }
        if (tL_forumTopic != null) {
            this.groupMessages = tL_forumTopic.groupedMessages;
        }
        TLRPC.TL_forumTopic tL_forumTopic2 = this.forumTopic;
        if (tL_forumTopic2 != null && tL_forumTopic2.id == 1 && (pullForegroundDrawable = this.archivedChatsDrawable) != null) {
            pullForegroundDrawable.setCell(this);
        }
        update(0, z2);
    }

    public void setIsTransitionSupport(boolean z) {
        this.isTransitionSupport = z;
    }

    public void setMoving(boolean z) {
        this.moving = z;
    }

    public void setOpenBotButton(boolean z) {
        if (this.openBot == z) {
            return;
        }
        if (this.openButtonText == null) {
            this.openButtonText = new Text(LocaleController.getString(R.string.BotOpen), 14.0f, AndroidUtilities.bold());
        }
        this.openBot = z;
        this.openButtonBounce.setPressed(false);
    }

    public void setPinForced(boolean z) {
        this.drawPinForced = z;
        if (getMeasuredWidth() > 0 && getMeasuredHeight() > 0) {
            buildLayout();
        }
        invalidate();
    }

    public void setPreloader(DialogsAdapter.DialogsPreloader dialogsPreloader) {
        this.preloader = dialogsPreloader;
    }

    public void setRightFragmentOpenedProgress(float f) {
        if (this.rightFragmentOpenedProgress != f) {
            this.rightFragmentOpenedProgress = f;
            invalidate();
        }
    }

    public void setSliding(boolean z) {
        this.isSliding = z;
    }

    public void setTopClip(int i) {
        this.topClip = i;
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        if (f == this.translationX) {
            return;
        }
        this.translationX = f;
        RLottieDrawable rLottieDrawable = this.translationDrawable;
        if (rLottieDrawable != null && f == BitmapDescriptorFactory.HUE_RED) {
            rLottieDrawable.setProgress(BitmapDescriptorFactory.HUE_RED);
            this.translationAnimationStarted = false;
            this.archiveHidden = SharedConfig.archiveHidden;
            this.currentRevealProgress = BitmapDescriptorFactory.HUE_RED;
            this.isSliding = false;
        }
        float f2 = this.translationX;
        if (f2 != BitmapDescriptorFactory.HUE_RED) {
            this.isSliding = true;
        } else {
            this.currentRevealBounceProgress = BitmapDescriptorFactory.HUE_RED;
            this.currentRevealProgress = BitmapDescriptorFactory.HUE_RED;
            this.drawRevealBackground = false;
        }
        if (this.isSliding && !this.swipeCanceled) {
            boolean z = this.drawRevealBackground;
            boolean z2 = Math.abs(f2) >= ((float) getMeasuredWidth()) * 0.45f;
            this.drawRevealBackground = z2;
            if (z != z2 && this.archiveHidden == SharedConfig.archiveHidden) {
                try {
                    performHapticFeedback(3, 2);
                } catch (Exception unused) {
                }
            }
        }
        invalidate();
    }

    public void setVisible(boolean z) {
        if (this.visibleOnScreen == z) {
            return;
        }
        this.visibleOnScreen = z;
        if (z) {
            invalidate();
        }
    }

    public void showPremiumBlocked(boolean z) {
        Runnable runnableListen;
        Runnable runnable = this.unsubscribePremiumBlocked;
        if (z != (runnable != null)) {
            if (!z && runnable != null) {
                runnable.run();
                runnableListen = null;
            } else if (!z) {
                return;
            } else {
                runnableListen = NotificationCenter.getInstance(this.currentAccount).listen(this, NotificationCenter.userIsPremiumBlockedUpadted, new Utilities.Callback() { // from class: org.telegram.ui.Cells.DialogCell$$ExternalSyntheticLambda6
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$showPremiumBlocked$5((Object[]) obj);
                    }
                });
            }
            this.unsubscribePremiumBlocked = runnableListen;
        }
    }

    public void startOutAnimation() {
        PullForegroundDrawable pullForegroundDrawable;
        float bitmapWidth;
        PullForegroundDrawable pullForegroundDrawable2 = this.archivedChatsDrawable;
        if (pullForegroundDrawable2 != null) {
            if (this.isTopic) {
                pullForegroundDrawable2.outCy = AndroidUtilities.dp(24.0f);
                this.archivedChatsDrawable.outCx = AndroidUtilities.dp(24.0f);
                pullForegroundDrawable = this.archivedChatsDrawable;
                bitmapWidth = BitmapDescriptorFactory.HUE_RED;
                pullForegroundDrawable.outRadius = BitmapDescriptorFactory.HUE_RED;
            } else {
                pullForegroundDrawable2.outCy = this.storyParams.originalAvatarRect.centerY();
                this.archivedChatsDrawable.outCx = this.storyParams.originalAvatarRect.centerX();
                this.archivedChatsDrawable.outRadius = this.storyParams.originalAvatarRect.width() / 2.0f;
                if (MessagesController.getInstance(this.currentAccount).getStoriesController().hasHiddenStories()) {
                    this.archivedChatsDrawable.outRadius -= AndroidUtilities.dpf2(3.5f);
                }
                pullForegroundDrawable = this.archivedChatsDrawable;
                bitmapWidth = this.avatarImage.getBitmapWidth();
            }
            pullForegroundDrawable.outImageSize = bitmapWidth;
            this.archivedChatsDrawable.startOutAnimation();
        }
    }

    public boolean update(int i) {
        return update(i, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x049a A[PHI: r8
      0x049a: PHI (r8v33 boolean) = (r8v32 boolean), (r8v37 boolean) binds: [B:215:0x03d6, B:222:0x03ef] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:270:0x04af  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x04b4  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x04ba  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x04c6  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x04dd  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x0537  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x05ac  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x05d4  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x05de  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x06b0  */
    /* JADX WARN: Removed duplicated region for block: B:369:0x06b9  */
    /* JADX WARN: Removed duplicated region for block: B:418:0x0828  */
    /* JADX WARN: Removed duplicated region for block: B:419:0x082a  */
    /* JADX WARN: Removed duplicated region for block: B:431:0x087b  */
    /* JADX WARN: Removed duplicated region for block: B:439:0x088c  */
    /* JADX WARN: Removed duplicated region for block: B:442:0x0893  */
    /* JADX WARN: Removed duplicated region for block: B:443:0x0895  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0195  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean update(int i, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        long dialogId;
        AvatarDrawable avatarDrawable;
        int i2;
        MessageObject messageObject;
        boolean z7;
        boolean z8;
        boolean z9;
        TLRPC.User user;
        int iDp;
        TLRPC.Chat chat;
        ValueAnimator valueAnimator;
        TimeInterpolator overshootInterpolator;
        ValueAnimator valueAnimator2;
        TimeInterpolator overshootInterpolator2;
        boolean z10;
        boolean z11;
        int i3;
        TLRPC.Chat chat2;
        MessagesController messagesController;
        boolean z12;
        MessageObject messageObject2;
        int i4;
        int i5;
        int archiveUnreadCount;
        int i6;
        int i7;
        TLRPC.Chat chat3;
        MessageObject messageObject3;
        long botVerificationIcon;
        boolean z13;
        boolean zIsForumCell = isForumCell();
        boolean z14 = false;
        this.drawAvatarSelector = false;
        this.ttlPeriod = 0;
        CustomDialog customDialog = this.customDialog;
        if (customDialog != null) {
            this.lastMessageDate = customDialog.date;
            int i8 = customDialog.unread_count;
            this.lastUnreadState = i8 != 0;
            this.unreadCount = i8;
            this.drawPin = customDialog.pinned;
            this.dialogMuted = customDialog.muted;
            this.hasUnmutedTopics = false;
            this.avatarDrawable.setInfo(customDialog.id, customDialog.name, null);
            this.avatarImage.setImage(null, "50_50", this.avatarDrawable, null, 0L);
            int i9 = 0;
            while (true) {
                ImageReceiver[] imageReceiverArr = this.thumbImage;
                if (i9 >= imageReceiverArr.length) {
                    break;
                }
                imageReceiverArr[i9].setImageBitmap((Drawable) null);
                i9++;
            }
            this.drawMonoforumAvatar = false;
            this.avatarImage.setRoundRadius(AndroidUtilities.dp(28.0f));
            this.drawUnmute = false;
            z6 = zIsForumCell;
            z7 = false;
            z8 = false;
        } else {
            int i10 = this.unreadCount;
            boolean z15 = this.reactionMentionCount != 0;
            boolean z16 = this.markUnread;
            this.hasUnmutedTopics = false;
            this.readOutboxMaxId = -1;
            if (this.isDialogCell) {
                TLRPC.Dialog dialog = (TLRPC.Dialog) MessagesController.getInstance(this.currentAccount).dialogs_dict.get(this.currentDialogId);
                if (dialog != null) {
                    this.readOutboxMaxId = dialog.read_outbox_max_id;
                    this.ttlPeriod = dialog.ttl_period;
                    if (i == 0) {
                        this.clearingDialog = MessagesController.getInstance(this.currentAccount).isClearingDialog(dialog.id);
                        ArrayList arrayList = (ArrayList) MessagesController.getInstance(this.currentAccount).dialogMessage.get(dialog.id);
                        this.groupMessages = arrayList;
                        MessageObject messageObject4 = (arrayList == null || arrayList.size() <= 0) ? null : (MessageObject) this.groupMessages.get(0);
                        this.message = messageObject4;
                        this.lastUnreadState = messageObject4 != null && messageObject4.isUnread();
                        TLRPC.Chat chat4 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-dialog.id));
                        if (chat4 != null && (chat4.forum || (chat4.monoforum && ChatObject.canManageMonoForum(this.currentAccount, chat4)))) {
                            int[] forumUnreadCount = MessagesController.getInstance(this.currentAccount).getTopicsController().getForumUnreadCount(chat4.id);
                            this.unreadCount = forumUnreadCount[0];
                            this.mentionCount = forumUnreadCount[1];
                            this.reactionMentionCount = forumUnreadCount[2];
                            this.hasUnmutedTopics = forumUnreadCount[3] != 0;
                        } else if (dialog instanceof TLRPC.TL_dialogFolder) {
                            this.unreadCount = MessagesStorage.getInstance(this.currentAccount).getArchiveUnreadCount();
                            this.mentionCount = 0;
                            this.reactionMentionCount = 0;
                        } else {
                            this.unreadCount = dialog.unread_count;
                            this.mentionCount = dialog.unread_mentions_count;
                            this.reactionMentionCount = dialog.unread_reactions_count;
                        }
                        if (ChatObject.isMonoForum(chat4)) {
                            this.mentionCount = 0;
                        }
                        this.markUnread = dialog.unread_mark;
                        MessageObject messageObject5 = this.message;
                        this.currentEditDate = messageObject5 != null ? messageObject5.messageOwner.edit_date : 0;
                        this.lastMessageDate = dialog.last_message_date;
                        int i11 = this.dialogsType;
                        if (i11 == 7 || i11 == 8) {
                            MessagesController.DialogFilter dialogFilter = MessagesController.getInstance(this.currentAccount).selectedDialogFilter[this.dialogsType == 8 ? (char) 1 : (char) 0];
                            z13 = dialogFilter != null && dialogFilter.pinnedDialogs.indexOfKey(dialog.id) >= 0;
                        } else if (this.currentDialogFolderId != 0 || !dialog.pinned) {
                        }
                        this.drawPin = z13;
                        MessageObject messageObject6 = this.message;
                        if (messageObject6 != null) {
                            this.lastSendState = messageObject6.messageOwner.send_state;
                        }
                    }
                } else {
                    this.unreadCount = 0;
                    this.mentionCount = 0;
                    this.reactionMentionCount = 0;
                    this.currentEditDate = 0;
                    this.lastMessageDate = 0;
                    this.clearingDialog = false;
                }
                long j = this.currentDialogId;
                this.drawAvatarSelector = j != 0 && j == RightSlidingDialogContainer.fragmentDialogId;
            } else {
                this.drawPin = false;
            }
            TLRPC.TL_forumTopic tL_forumTopic = this.forumTopic;
            if (tL_forumTopic != null) {
                this.unreadCount = tL_forumTopic.unread_count;
                this.mentionCount = tL_forumTopic.unread_mentions_count;
                this.reactionMentionCount = tL_forumTopic.unread_reactions_count;
            }
            if (this.dialogsType == 2) {
                this.drawPin = false;
            }
            DialogCellTags dialogCellTags = this.tags;
            if (dialogCellTags != null) {
                boolean zIsEmpty = dialogCellTags.isEmpty();
                z2 = zIsForumCell;
                if (this.tags.update(this.currentAccount, this.dialogsType, this.currentDialogId)) {
                    if (zIsEmpty != this.tags.isEmpty()) {
                        z3 = true;
                        z4 = true;
                    } else {
                        z3 = false;
                        z4 = false;
                    }
                    z5 = true;
                }
                if (i == 0) {
                    TLRPC.User user2 = this.user;
                    if (user2 != null && !MessagesController.isSupportUser(user2) && !this.user.bot && (i & MessagesController.UPDATE_MASK_STATUS) != 0) {
                        this.user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.user.id));
                        if (this.wasDrawnOnline != isOnline()) {
                            z5 = true;
                        }
                    }
                    if ((i & MessagesController.UPDATE_MASK_EMOJI_STATUS) != 0) {
                        if (this.user != null) {
                            TLRPC.User user3 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.user.id));
                            this.user = user3;
                            if (user3 == null || DialogObject.getEmojiStatusDocumentId(user3.emoji_status) == 0) {
                                this.nameLayoutEllipsizeByGradient = true;
                                this.emojiStatus.set(PremiumGradient.getInstance().premiumStarDrawableMini, z);
                                this.emojiStatus.setParticles(false, z);
                            } else {
                                this.nameLayoutEllipsizeByGradient = true;
                                this.emojiStatus.set(DialogObject.getEmojiStatusDocumentId(this.user.emoji_status), z);
                                this.emojiStatus.setParticles(DialogObject.isEmojiStatusCollectible(this.user.emoji_status), z);
                            }
                            botVerificationIcon = DialogObject.getBotVerificationIcon(this.user);
                            z5 = true;
                        } else {
                            botVerificationIcon = 0;
                        }
                        if (this.chat != null) {
                            TLRPC.Chat chat5 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.chat.id));
                            this.chat = chat5;
                            if (chat5 == null || DialogObject.getEmojiStatusDocumentId(chat5.emoji_status) == 0) {
                                this.nameLayoutEllipsizeByGradient = true;
                                this.emojiStatus.set(PremiumGradient.getInstance().premiumStarDrawableMini, z);
                                this.emojiStatus.setParticles(false, z);
                            } else {
                                this.nameLayoutEllipsizeByGradient = true;
                                this.emojiStatus.set(DialogObject.getEmojiStatusDocumentId(this.chat.emoji_status), z);
                                this.emojiStatus.setParticles(DialogObject.isEmojiStatusCollectible(this.chat.emoji_status), z);
                            }
                            botVerificationIcon = DialogObject.getBotVerificationIcon(this.chat);
                            z5 = true;
                        }
                        if (botVerificationIcon != 0) {
                            z12 = !this.drawBotVerified;
                            this.botVerification.set(botVerificationIcon, z);
                        } else {
                            z12 = this.drawBotVerified;
                            this.botVerification.set((Drawable) null, z);
                        }
                    } else {
                        z12 = false;
                    }
                    if ((this.isDialogCell || this.isTopic) && (i & MessagesController.UPDATE_MASK_USER_PRINT) != 0) {
                        CharSequence printingString = MessagesController.getInstance(this.currentAccount).getPrintingString(this.currentDialogId, getTopicId(), true);
                        CharSequence charSequence = this.lastPrintString;
                        if ((charSequence != null && printingString == null) || ((charSequence == null && printingString != null) || (charSequence != null && !charSequence.equals(printingString)))) {
                            z12 = true;
                        }
                    }
                    if (!z12 && (i & MessagesController.UPDATE_MASK_MESSAGE_TEXT) != 0 && (messageObject3 = this.message) != null && messageObject3.messageText != this.lastMessageString) {
                        z12 = true;
                    }
                    if (!z12 && (i & MessagesController.UPDATE_MASK_CHAT) != 0 && this.chat != null) {
                        TLRPC.Chat chat6 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.chat.id));
                        if ((chat6 != null && chat6.call_active && chat6.call_not_empty) != this.hasCall) {
                            z12 = true;
                        }
                    }
                    if (!z12 && (i & MessagesController.UPDATE_MASK_AVATAR) != 0 && ((chat3 = this.chat) == null || (chat3.monoforum && ChatObject.canManageMonoForum(this.currentAccount, chat3)))) {
                        ForumFormattedNames forumFormattedNames = this.forumFormattedNames;
                        if (forumFormattedNames != null) {
                            forumFormattedNames.invalidateSpans();
                        }
                        z12 = true;
                    }
                    if (!z12 && (i & MessagesController.UPDATE_MASK_NAME) != 0 && this.chat == null) {
                        z12 = true;
                    }
                    if (!z12 && (i & MessagesController.UPDATE_MASK_CHAT_AVATAR) != 0 && this.user == null) {
                        z12 = true;
                    }
                    if (!z12 && (i & MessagesController.UPDATE_MASK_CHAT_NAME) != 0 && this.user == null) {
                        z12 = true;
                    }
                    if (z12) {
                        z6 = z2;
                        if (!z12 && (i & MessagesController.UPDATE_MASK_SEND_STATE) != 0 && (messageObject2 = this.message) != null) {
                            i4 = this.lastSendState;
                            i5 = messageObject2.messageOwner.send_state;
                            if (i4 != i5) {
                                this.lastSendState = i5;
                                z12 = true;
                            }
                        }
                        if (!z12) {
                            invalidate();
                            return z3;
                        }
                    } else {
                        MessageObject messageObject7 = this.message;
                        if (messageObject7 != null && this.lastUnreadState != messageObject7.isUnread()) {
                            this.lastUnreadState = this.message.isUnread();
                            z12 = true;
                        }
                        if (this.isDialogCell) {
                            TLRPC.Dialog dialog2 = (TLRPC.Dialog) MessagesController.getInstance(this.currentAccount).dialogs_dict.get(this.currentDialogId);
                            TLRPC.Chat chat7 = dialog2 == null ? null : MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-dialog2.id));
                            if (chat7 == null || !(chat7.forum || (chat7.monoforum && ChatObject.canManageMonoForum(this.currentAccount, chat7)))) {
                                z6 = z2;
                                if (dialog2 instanceof TLRPC.TL_dialogFolder) {
                                    archiveUnreadCount = MessagesStorage.getInstance(this.currentAccount).getArchiveUnreadCount();
                                } else if (dialog2 != null) {
                                    archiveUnreadCount = dialog2.unread_count;
                                    int i12 = dialog2.unread_mentions_count;
                                    i6 = dialog2.unread_reactions_count;
                                    i7 = i12;
                                } else {
                                    archiveUnreadCount = 0;
                                }
                                i6 = 0;
                                i7 = 0;
                            } else {
                                z6 = z2;
                                int[] forumUnreadCount2 = MessagesController.getInstance(this.currentAccount).getTopicsController().getForumUnreadCount(chat7.id);
                                archiveUnreadCount = forumUnreadCount2[0];
                                i7 = forumUnreadCount2[1];
                                int i13 = forumUnreadCount2[2];
                                this.hasUnmutedTopics = forumUnreadCount2[3] != 0;
                                i6 = i13;
                            }
                            int i14 = ChatObject.isMonoForum(chat7) ? 0 : i7;
                            if (dialog2 != null && (this.unreadCount != archiveUnreadCount || this.markUnread != dialog2.unread_mark || this.mentionCount != i14 || this.reactionMentionCount != i6)) {
                                this.unreadCount = archiveUnreadCount;
                                this.mentionCount = i14;
                                this.markUnread = dialog2.unread_mark;
                                this.reactionMentionCount = i6;
                                z12 = true;
                            }
                        }
                        if (!z12) {
                            i4 = this.lastSendState;
                            i5 = messageObject2.messageOwner.send_state;
                            if (i4 != i5) {
                            }
                        }
                        if (!z12) {
                        }
                    }
                } else {
                    z6 = z2;
                }
                this.user = null;
                this.chat = null;
                this.encryptedChat = null;
                if (this.currentDialogFolderId == 0) {
                    this.dialogMuted = false;
                    this.drawUnmute = false;
                    MessageObject messageObjectFindFolderTopMessage = findFolderTopMessage();
                    this.message = messageObjectFindFolderTopMessage;
                    dialogId = messageObjectFindFolderTopMessage != null ? messageObjectFindFolderTopMessage.getDialogId() : 0L;
                } else {
                    this.drawUnmute = false;
                    if (this.forumTopic != null) {
                        boolean zIsDialogMuted = MessagesController.getInstance(this.currentAccount).isDialogMuted(this.currentDialogId, 0L);
                        boolean zIsDialogMuted2 = MessagesController.getInstance(this.currentAccount).isDialogMuted(this.currentDialogId, this.forumTopic.id);
                        this.topicMuted = zIsDialogMuted2;
                        if (zIsDialogMuted == zIsDialogMuted2) {
                            this.dialogMuted = false;
                            this.drawUnmute = false;
                        } else {
                            this.dialogMuted = zIsDialogMuted2;
                            this.drawUnmute = !zIsDialogMuted2;
                        }
                    } else {
                        this.dialogMuted = this.isDialogCell && MessagesController.getInstance(this.currentAccount).isDialogMuted(this.currentDialogId, (long) getTopicId());
                    }
                    dialogId = this.currentDialogId;
                }
                if (dialogId != 0) {
                    if (DialogObject.isEncryptedDialog(dialogId)) {
                        TLRPC.EncryptedChat encryptedChat = MessagesController.getInstance(this.currentAccount).getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(dialogId)));
                        this.encryptedChat = encryptedChat;
                        if (encryptedChat != null) {
                            messagesController = MessagesController.getInstance(this.currentAccount);
                            dialogId = this.encryptedChat.user_id;
                            this.user = messagesController.getUser(Long.valueOf(dialogId));
                        }
                        if (this.useMeForMyMessages && this.user != null && this.message.isOutOwner()) {
                            this.user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(UserConfig.getInstance(this.currentAccount).clientUserId));
                        }
                    } else if (DialogObject.isUserDialog(dialogId)) {
                        messagesController = MessagesController.getInstance(this.currentAccount);
                        this.user = messagesController.getUser(Long.valueOf(dialogId));
                        if (this.useMeForMyMessages) {
                            this.user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(UserConfig.getInstance(this.currentAccount).clientUserId));
                        }
                    } else {
                        TLRPC.Chat chat8 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-dialogId));
                        this.chat = chat8;
                        if (!this.isDialogCell && chat8 != null && chat8.migrated_to != null && (chat2 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.chat.migrated_to.channel_id))) != null) {
                            this.chat = chat2;
                        }
                        if (this.useMeForMyMessages) {
                        }
                    }
                }
                if (this.currentDialogFolderId == 0) {
                    Theme.dialogs_archiveAvatarDrawable.setCallback(this);
                    avatarDrawable = this.avatarDrawable;
                    i2 = 2;
                } else {
                    if (!this.useFromUserAsAvatar || (messageObject = this.message) == null) {
                        TLRPC.User user4 = this.user;
                        if (user4 != null) {
                            this.avatarDrawable.setInfo(this.currentAccount, user4);
                            if (UserObject.isReplyUser(this.user)) {
                                avatarDrawable = this.avatarDrawable;
                                i2 = 12;
                            } else if (UserObject.isAnonymous(this.user)) {
                                avatarDrawable = this.avatarDrawable;
                                i2 = 21;
                            } else if (UserObject.isUserSelf(this.user) && this.isSavedDialog && !this.isMonoForumTopicDialog) {
                                avatarDrawable = this.avatarDrawable;
                                i2 = 22;
                            } else if (!UserObject.isUserSelf(this.user) || this.useMeForMyMessages || this.isMonoForumTopicDialog) {
                                this.avatarImage.setForUserOrChat(this.user, this.avatarDrawable, null, true, 1, false);
                            } else {
                                avatarDrawable = this.avatarDrawable;
                                i2 = 1;
                            }
                        } else {
                            TLRPC.Chat chat9 = this.chat;
                            if (chat9 != null) {
                                if (chat9.monoforum) {
                                    ForumUtilities.setMonoForumAvatar(this.currentAccount, chat9, this.avatarDrawable, this.avatarImage);
                                    this.avatarDrawable.setScaleSize(1.0f);
                                } else {
                                    this.avatarDrawable.setInfo(this.currentAccount, chat9);
                                    this.avatarImage.setForUserOrChat(chat9, this.avatarDrawable);
                                }
                            }
                            if (z || ((i10 == this.unreadCount && z16 == this.markUnread) || (this.isDialogCell && System.currentTimeMillis() - this.lastDialogChangedTime <= 100))) {
                                z7 = z3;
                                z8 = z4;
                            } else {
                                ValueAnimator valueAnimator3 = this.countAnimator;
                                if (valueAnimator3 != null) {
                                    valueAnimator3.cancel();
                                }
                                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                                this.countAnimator = valueAnimatorOfFloat;
                                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.DialogCell$$ExternalSyntheticLambda0
                                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                    public final void onAnimationUpdate(ValueAnimator valueAnimator4) {
                                        this.f$0.lambda$update$0(valueAnimator4);
                                    }
                                });
                                this.countAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.DialogCell.3
                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public void onAnimationEnd(Animator animator) {
                                        DialogCell.this.countChangeProgress = 1.0f;
                                        DialogCell.this.countOldLayout = null;
                                        DialogCell.this.countAnimationStableLayout = null;
                                        DialogCell.this.countAnimationInLayout = null;
                                        DialogCell.this.invalidate();
                                    }
                                });
                                if ((i10 == 0 || this.markUnread) && (this.markUnread || !z16)) {
                                    this.countAnimator.setDuration(220L);
                                    valueAnimator2 = this.countAnimator;
                                    overshootInterpolator2 = new OvershootInterpolator();
                                } else {
                                    if (this.unreadCount == 0) {
                                        this.countAnimator.setDuration(150L);
                                    } else {
                                        this.countAnimator.setDuration(430L);
                                    }
                                    valueAnimator2 = this.countAnimator;
                                    overshootInterpolator2 = CubicBezierInterpolator.DEFAULT;
                                }
                                valueAnimator2.setInterpolator(overshootInterpolator2);
                                if (this.drawCount && this.drawCount2 && this.countLayout != null) {
                                    String str = String.format("%d", Integer.valueOf(i10));
                                    String str2 = String.format("%d", Integer.valueOf(this.unreadCount));
                                    if (str.length() == str2.length()) {
                                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
                                        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(str2);
                                        SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(str2);
                                        int i15 = 0;
                                        while (i15 < str.length()) {
                                            if (str.charAt(i15) == str2.charAt(i15)) {
                                                z10 = z3;
                                                int i16 = i15 + 1;
                                                spannableStringBuilder.setSpan(new EmptyStubSpan(), i15, i16, 0);
                                                spannableStringBuilder2.setSpan(new EmptyStubSpan(), i15, i16, 0);
                                                z11 = z4;
                                                i3 = 1;
                                            } else {
                                                z10 = z3;
                                                z11 = z4;
                                                i3 = 1;
                                                spannableStringBuilder3.setSpan(new EmptyStubSpan(), i15, i15 + 1, 0);
                                            }
                                            i15 += i3;
                                            z3 = z10;
                                            z4 = z11;
                                        }
                                        z7 = z3;
                                        z8 = z4;
                                        int iMax = Math.max(AndroidUtilities.dp(12.0f), (int) Math.ceil(Theme.dialogs_countTextPaint.measureText(str)));
                                        TextPaint textPaint = Theme.dialogs_countTextPaint;
                                        Layout.Alignment alignment = Layout.Alignment.ALIGN_CENTER;
                                        this.countOldLayout = new StaticLayout(spannableStringBuilder, textPaint, iMax, alignment, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                                        this.countAnimationStableLayout = new StaticLayout(spannableStringBuilder3, Theme.dialogs_countTextPaint, iMax, alignment, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                                        this.countAnimationInLayout = new StaticLayout(spannableStringBuilder2, Theme.dialogs_countTextPaint, iMax, alignment, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                                    } else {
                                        z7 = z3;
                                        z8 = z4;
                                        this.countOldLayout = this.countLayout;
                                    }
                                } else {
                                    z7 = z3;
                                    z8 = z4;
                                }
                                this.countWidthOld = this.countWidth;
                                this.countLeftOld = this.countLeft;
                                this.countAnimationIncrement = this.unreadCount > i10;
                                this.countAnimator.start();
                            }
                            boolean z17 = this.reactionMentionCount == 0;
                            if (!z && z17 != z15) {
                                ValueAnimator valueAnimator4 = this.reactionsMentionsAnimator;
                                if (valueAnimator4 != null) {
                                    valueAnimator4.cancel();
                                }
                                this.reactionsMentionsChangeProgress = BitmapDescriptorFactory.HUE_RED;
                                ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                                this.reactionsMentionsAnimator = valueAnimatorOfFloat2;
                                valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.DialogCell$$ExternalSyntheticLambda1
                                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                    public final void onAnimationUpdate(ValueAnimator valueAnimator5) {
                                        this.f$0.lambda$update$1(valueAnimator5);
                                    }
                                });
                                this.reactionsMentionsAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.DialogCell.4
                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public void onAnimationEnd(Animator animator) {
                                        DialogCell.this.reactionsMentionsChangeProgress = 1.0f;
                                        DialogCell.this.invalidate();
                                    }
                                });
                                ValueAnimator valueAnimator5 = this.reactionsMentionsAnimator;
                                if (z17) {
                                    valueAnimator5.setDuration(220L);
                                    valueAnimator = this.reactionsMentionsAnimator;
                                    overshootInterpolator = new OvershootInterpolator();
                                } else {
                                    valueAnimator5.setDuration(150L);
                                    valueAnimator = this.reactionsMentionsAnimator;
                                    overshootInterpolator = CubicBezierInterpolator.DEFAULT;
                                }
                                valueAnimator.setInterpolator(overshootInterpolator);
                                this.reactionsMentionsAnimator.start();
                            }
                            z9 = isFolderCell() && (chat = this.chat) != null && chat.monoforum;
                            this.drawMonoforumAvatar = z9;
                            ImageReceiver imageReceiver = this.avatarImage;
                            if (z9) {
                                TLRPC.Chat chat10 = this.chat;
                                iDp = AndroidUtilities.dp(((chat10 == null || !chat10.forum || this.currentDialogFolderId != 0 || this.useFromUserAsAvatar) && (this.isSavedDialog || (user = this.user) == null || !user.self || !MessagesController.getInstance(this.currentAccount).savedViewAsChats)) ? 28.0f : 16.0f);
                            } else {
                                iDp = 1;
                            }
                            imageReceiver.setRoundRadius(iDp);
                            z14 = z5;
                        }
                    } else {
                        this.avatarDrawable.setInfo(this.currentAccount, messageObject.getFromPeerObject());
                        this.avatarImage.setForUserOrChat(this.message.getFromPeerObject(), this.avatarDrawable);
                    }
                    if (z) {
                        z7 = z3;
                        z8 = z4;
                        if (this.reactionMentionCount == 0) {
                        }
                        if (!z) {
                            if (isFolderCell()) {
                                this.drawMonoforumAvatar = z9;
                                ImageReceiver imageReceiver2 = this.avatarImage;
                                if (z9) {
                                }
                                imageReceiver2.setRoundRadius(iDp);
                                z14 = z5;
                            }
                        }
                    }
                }
                avatarDrawable.setAvatarType(i2);
                this.avatarImage.setImage(null, null, this.avatarDrawable, null, this.user, 0);
                if (z) {
                }
            } else {
                z2 = zIsForumCell;
            }
            z3 = false;
            z4 = false;
            z5 = false;
            if (i == 0) {
            }
            this.user = null;
            this.chat = null;
            this.encryptedChat = null;
            if (this.currentDialogFolderId == 0) {
            }
            if (dialogId != 0) {
            }
            if (this.currentDialogFolderId == 0) {
            }
            avatarDrawable.setAvatarType(i2);
            this.avatarImage.setImage(null, null, this.avatarDrawable, null, this.user, 0);
            if (z) {
            }
        }
        boolean z18 = (this.isTopic || (getMeasuredWidth() == 0 && getMeasuredHeight() == 0)) ? z8 : true;
        if (!z14) {
            int i17 = this.storyParams.currentState;
            StoriesUtilities.getPredictiveUnreadState(MessagesController.getInstance(this.currentAccount).getStoriesController(), getDialogId());
        }
        if (!z) {
            this.dialogMutedProgress = (this.dialogMuted || this.drawUnmute) ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            ValueAnimator valueAnimator6 = this.countAnimator;
            if (valueAnimator6 != null) {
                valueAnimator6.cancel();
            }
        }
        invalidate();
        if (isForumCell() != z6) {
            z7 = true;
        }
        if (z18) {
            if (this.attachedToWindow) {
                buildLayout();
            } else {
                this.updateLayout = true;
            }
        }
        updatePremiumBlocked(z);
        return z7;
    }

    public void updateMessageThumbs() {
        TLRPC.Message message;
        int i;
        MessageObject messageObject = this.message;
        if (messageObject == null) {
            return;
        }
        String restrictionReason = MessagesController.getInstance(messageObject.currentAccount).getRestrictionReason(this.message.messageOwner.restriction_reason);
        MessageObject messageObject2 = this.message;
        int i2 = 0;
        if (messageObject2 != null && (message = messageObject2.messageOwner) != null) {
            TLRPC.MessageMedia messageMedia = message.media;
            if (messageMedia instanceof TLRPC.TL_messageMediaPaidMedia) {
                this.thumbsCount = 0;
                this.hasVideoThumb = false;
                TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) messageMedia;
                int i3 = 0;
                while (i2 < tL_messageMediaPaidMedia.extended_media.size() && this.thumbsCount < 3) {
                    TLRPC.MessageExtendedMedia messageExtendedMedia = tL_messageMediaPaidMedia.extended_media.get(i2);
                    if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMediaPreview) {
                        i = i3 + 1;
                        setThumb(i3, ((TLRPC.TL_messageExtendedMediaPreview) messageExtendedMedia).thumb);
                    } else if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia) {
                        i = i3 + 1;
                        setThumb(i3, ((TLRPC.TL_messageExtendedMedia) messageExtendedMedia).media);
                    } else {
                        i2++;
                    }
                    i3 = i;
                    i2++;
                }
                return;
            }
        }
        ArrayList arrayList = this.groupMessages;
        if (arrayList != null && arrayList.size() > 1 && TextUtils.isEmpty(restrictionReason) && this.currentDialogFolderId == 0 && this.encryptedChat == null) {
            this.thumbsCount = 0;
            this.hasVideoThumb = false;
            Collections.sort(this.groupMessages, Comparator$CC.comparingInt(new ToIntFunction() { // from class: org.telegram.ui.Cells.DialogCell$$ExternalSyntheticLambda4
                @Override // j$.util.function.ToIntFunction
                public final int applyAsInt(Object obj) {
                    return ((MessageObject) obj).getId();
                }
            }));
            while (i2 < Math.min(3, this.groupMessages.size())) {
                MessageObject messageObject3 = (MessageObject) this.groupMessages.get(i2);
                if (messageObject3 != null && !messageObject3.needDrawBluredPreview() && (messageObject3.isPhoto() || messageObject3.isNewGif() || messageObject3.isVideo() || messageObject3.isRoundVideo() || messageObject3.isStoryMedia())) {
                    String str = messageObject3.isWebpage() ? messageObject3.messageOwner.media.webpage.type : null;
                    if (!"app".equals(str) && !"profile".equals(str) && !"article".equals(str) && (str == null || !str.startsWith("telegram_"))) {
                        setThumb(i2, messageObject3);
                    }
                }
                i2++;
            }
            return;
        }
        MessageObject messageObject4 = this.message;
        if (messageObject4 == null || this.currentDialogFolderId != 0) {
            return;
        }
        this.thumbsCount = 0;
        this.hasVideoThumb = false;
        if (messageObject4.needDrawBluredPreview()) {
            return;
        }
        if (this.message.isPhoto() || this.message.isNewGif() || this.message.isVideo() || this.message.isRoundVideo() || this.message.isStoryMedia()) {
            String str2 = this.message.isWebpage() ? this.message.messageOwner.media.webpage.type : null;
            if ("app".equals(str2) || "profile".equals(str2) || "article".equals(str2)) {
                return;
            }
            if (str2 == null || !str2.startsWith("telegram_")) {
                setThumb(0, this.message);
            }
        }
    }
}
